#include "MD5.h"
#include "bsp_flash.h"

/*
 * Constants defined by the MD5 algorithm
 */
#define A 0x67452301
#define B 0xefcdab89
#define C 0x98badcfe
#define D 0x10325476

static const uint8_t S[] =
{
    7, 12, 17, 22, 7, 12, 17, 22, 7, 12, 17, 22, 7, 12, 17, 22,
    5,  9, 14, 20, 5,  9, 14, 20, 5,  9, 14, 20, 5,  9, 14, 20,
    4, 11, 16, 23, 4, 11, 16, 23, 4, 11, 16, 23, 4, 11, 16, 23,
    6, 10, 15, 21, 6, 10, 15, 21, 6, 10, 15, 21, 6, 10, 15, 21
};

static const uint32_t K[] =
{
    0xd76aa478, 0xe8c7b756, 0x242070db, 0xc1bdceee,
    0xf57c0faf, 0x4787c62a, 0xa8304613, 0xfd469501,
    0x698098d8, 0x8b44f7af, 0xffff5bb1, 0x895cd7be,
    0x6b901122, 0xfd987193, 0xa679438e, 0x49b40821,
    0xf61e2562, 0xc040b340, 0x265e5a51, 0xe9b6c7aa,
    0xd62f105d, 0x02441453, 0xd8a1e681, 0xe7d3fbc8,
    0x21e1cde6, 0xc33707d6, 0xf4d50d87, 0x455a14ed,
    0xa9e3e905, 0xfcefa3f8, 0x676f02d9, 0x8d2a4c8a,
    0xfffa3942, 0x8771f681, 0x6d9d6122, 0xfde5380c,
    0xa4beea44, 0x4bdecfa9, 0xf6bb4b60, 0xbebfbc70,
    0x289b7ec6, 0xeaa127fa, 0xd4ef3085, 0x04881d05,
    0xd9d4d039, 0xe6db99e5, 0x1fa27cf8, 0xc4ac5665,
    0xf4292244, 0x432aff97, 0xab9423a7, 0xfc93a039,
    0x655b59c3, 0x8f0ccc92, 0xffeff47d, 0x85845dd1,
    0x6fa87e4f, 0xfe2ce6e0, 0xa3014314, 0x4e0811a1,
    0xf7537e82, 0xbd3af235, 0x2ad7d2bb, 0xeb86d391
};

/*
 * Padding used to make the size (in bits) of the input congruent to 448 mod 512
 */
static uint8_t PADDING[] =
{
    0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
};

/*
 * Bit-manipulation functions defined by the MD5 algorithm
 */
#define F(X, Y, Z) ((X & Y) | (~X & Z))
#define G(X, Y, Z) ((X & Z) | (Y & ~Z))
#define H(X, Y, Z) (X ^ Y ^ Z)
#define I(X, Y, Z) (Y ^ (X | ~Z))

typedef struct{
    uint64_t size;        // Size of input in bytes
    uint32_t buffer[4];   // Current accumulation of hash
    uint8_t input[64];    // Input to be used in the next step
    uint8_t digest[16];   // Result of algorithm
}MD5Context;

MD5Context ctx;

/*
 * Rotates a 32-bit word left by n bits
 */
uint32_t rotateLeft(uint32_t x, uint32_t n){
    return (x << n) | (x >> (32 - n));
}


/*
 * Initialize a context
 */
/**
 * @brief : 初始化MD5上下文，清零数据长度，并设置MD5初始寄存器值A/B/C/D
 * @param : 无
 * @return : 无
 */
void md5Init(void){
    ctx.size = (uint64_t)0;

    ctx.buffer[0] = (uint32_t)A;
    ctx.buffer[1] = (uint32_t)B;
    ctx.buffer[2] = (uint32_t)C;
    ctx.buffer[3] = (uint32_t)D;
}

/*
 * Add some amount of input to the context
 *
 * If the input fills out a block of 512 bits, apply the algorithm (md5Step)
 * and save the result in the buffer. Also updates the overall size.
 */
/**
 * @brief : 向MD5算法输入一段数据，可被多次调用，用于分块计算MD5
 * @param *input_buffer: 输入数据缓冲区指针
 * @param input_len: 输入数据长度，单位为字节
 * @return : 无
 */
void md5Update(uint8_t *input_buffer, size_t input_len){
    uint32_t input[16];
    uint16_t offset = ctx.size % 64;
    ctx.size += (uint64_t)input_len;

    // Copy each byte in input_buffer into the next space in our context input
    for (uint16_t i = 0; i < input_len; ++i)
    {
        ctx.input[offset++] = (uint8_t)*(input_buffer + i);

        // If we've filled our context input, copy it into our local array input
        // then reset the offset to 0 and fill in a new buffer.
        // Every time we fill out a chunk, we run it through the algorithm
        // to enable some back and forth between cpu and i/o
        if(offset % 64 == 0){
            for (uint16_t j = 0; j < 16; ++j)
            {
                // Convert to little-endian
                // The local variable `input` our 512-bit chunk separated into 32-bit words
                // we can use in calculations
                input[j] = (uint32_t)(ctx.input[(j * 4) + 3]) << 24 |
                           (uint32_t)(ctx.input[(j * 4) + 2]) << 16 |
                           (uint32_t)(ctx.input[(j * 4) + 1]) <<  8 |
                           (uint32_t)(ctx.input[(j * 4)]);
            }
            md5Step(ctx.buffer, input);
            offset = 0;
        }
    }
}

/*
 * Pad the current input to get to 448 bytes, append the size in bits to the very end,
 * and save the result of the final iteration into digest.
 */
/**
 * @brief : 完成MD5计算，进行数据填充、追加长度，并输出最终16字节MD5结果
 * @param *ret_md5_data: 输出MD5结果的缓冲区，长度至少为16字节
 * @return : 无
 */
void md5Finalize(uint8_t *ret_md5_data){
    uint32_t input[16];
    uint16_t offset = ctx.size % 64;
    uint16_t padding_length = offset < 56 ? 56 - offset : (56 + 64) - offset;

    // Fill in the padding and undo the changes to size that resulted from the update
    md5Update(PADDING, padding_length);
    ctx.size -= (uint64_t)padding_length;

    // Do a final update (internal to this function)
    // Last two 32-bit words are the two halves of the size (converted from bytes to bits)
    for (uint16_t j = 0; j < 14; ++j)
    {
        input[j] = (uint32_t)(ctx.input[(j * 4) + 3]) << 24 |
                   (uint32_t)(ctx.input[(j * 4) + 2]) << 16 |
                   (uint32_t)(ctx.input[(j * 4) + 1]) <<  8 |
                   (uint32_t)(ctx.input[(j * 4)]);
    }
    input[14] = (uint32_t)(ctx.size * 8);
    input[15] = (uint32_t)((ctx.size * 8) >> 32);

    md5Step(ctx.buffer, input);

    // Move the result into digest (convert from little-endian)
    for (uint16_t i = 0; i < 4; ++i)
    {
        ctx.digest[(i * 4) + 0] = (uint8_t)((ctx.buffer[i] & 0x000000FF));
        ctx.digest[(i * 4) + 1] = (uint8_t)((ctx.buffer[i] & 0x0000FF00) >>  8);
        ctx.digest[(i * 4) + 2] = (uint8_t)((ctx.buffer[i] & 0x00FF0000) >> 16);
        ctx.digest[(i * 4) + 3] = (uint8_t)((ctx.buffer[i] & 0xFF000000) >> 24);
    }

    memcpy(ret_md5_data, ctx.digest, 16);
}

/*
 * Step on 512 bits of input with the main MD5 algorithm.
 */
/**
 * @brief : 对一个512bit数据块执行一次MD5核心压缩运算
 * @param *buffer: MD5当前状态缓冲区，包含A/B/C/D四个32位变量
 * @param *input: 当前512bit数据块，按16个32位小端数据传入
 * @return : 无
 */
void md5Step(uint32_t *buffer, uint32_t *input){
    uint32_t AA = buffer[0];
    uint32_t BB = buffer[1];
    uint32_t CC = buffer[2];
    uint32_t DD = buffer[3];

    uint32_t E;

    uint16_t j;

    for (uint16_t i = 0; i < 64; ++i)
    {
        switch(i >> 4){
            case 0:
                E = F(BB, CC, DD);
                j = i;
                break;
            case 1:
                E = G(BB, CC, DD);
                j = ((i * 5) + 1) & 0x0f;
                break;
            case 2:
                E = H(BB, CC, DD);
                j = ((i * 3) + 5) & 0x0f;
                break;
            default:
                E = I(BB, CC, DD);
                j = (i * 7) & 0x0f;
                break;
        }

        uint32_t temp = DD;
        DD = CC;
        CC = BB;
        BB = BB + rotateLeft(AA + E + K[i] + input[j], S[i]);
        AA = temp;
    }

    buffer[0] += AA;
    buffer[1] += BB;
    buffer[2] += CC;
    buffer[3] += DD;
}

/*
 * Functions that run the algorithm on the provided input and put the digest into result.
 * result should be able to store 16 bytes.
 */
/**
 * @brief : 计算字符串的MD5值
 * @param *input: 输入字符串，以'\0'结尾
 * @param *result: 输出MD5结果的缓冲区，长度至少为16字节
 * @return : 无
 */
void md5String(char *input, uint8_t *result){
    md5Init();
    md5Update((uint8_t *)input, strlen(input));
    md5Finalize(result);

    // memcpy(result, ctx.digest, 16);
}

///**
// * @brief : 计算文件内容的MD5值，按1024字节分块读取文件并更新MD5
// * @param *file: 已打开的文件指针，文件读取位置应在需要计算MD5的起始位置
// * @param *result: 输出MD5结果的缓冲区，长度至少为16字节
// * @return : 无
// */
//void md5File(FILE *file, uint8_t *result){
//    uint8_t *input_buffer = malloc(1024);
//    size_t input_size = 0;
//
//    if(input_buffer == NULL){
//        return;
//    }
//
//    md5Init();
//
//    while((input_size = fread(input_buffer, 1, 1024, file)) > 0){
//        md5Update(input_buffer, input_size);
//    }
//
//    md5Finalize(result);
//
//    free(input_buffer);
//}

/**
 * @brief : 计算Flash指定区域的MD5值，按固定大小128字节分块读取Flash并更新MD5
 * @param start_addr: 需要计算MD5的Flash起始地址
 * @param size: 需要计算MD5的数据长度，单位为字节
 * @param *result: 输出MD5结果的缓冲区，长度至少为16字节
 * @return : 无
 */
void md5Flash(uint32_t start_addr, uint32_t size, uint8_t* result)
{
    uint8_t input_buffer[128];
    uint32_t offset = 0;
    uint32_t read_len = 0;

    md5Init();

    while (offset < size)
    {
        read_len = size - offset;
        if (read_len > sizeof(input_buffer))
        {
            read_len = sizeof(input_buffer);
        }

        flash_read_nbyte(start_addr + offset, input_buffer, read_len);
        md5Update(input_buffer, read_len);

        offset += read_len;
    }

    md5Finalize(result);
}
