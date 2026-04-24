# 1 "../Middle/md5.c"
# 1 "E:\\KF_Workspace\\Project_WorkSpace\\TEST_Prj\\Release//"
# 1 "<command-line>"
# 1 "../Middle/md5.c"
# 1 "../Middle/MD5.h" 1



# 1 "D:/ResearchSoftware/KungFu32/ChipONCC32/include/Sys/stdio.h" 1
# 12 "D:/ResearchSoftware/KungFu32/ChipONCC32/include/Sys/stdio.h"
# 1 "D:/ResearchSoftware/KungFu32/ChipONCC32/include/Sys/stdarg.h" 1
# 18 "D:/ResearchSoftware/KungFu32/ChipONCC32/include/Sys/stdarg.h"
typedef unsigned char * va_list;
# 13 "D:/ResearchSoftware/KungFu32/ChipONCC32/include/Sys/stdio.h" 2
# 32 "D:/ResearchSoftware/KungFu32/ChipONCC32/include/Sys/stdio.h"
typedef void *STREAM;
# 74 "D:/ResearchSoftware/KungFu32/ChipONCC32/include/Sys/stdio.h"
extern char getchar (void);
extern char fgetchar (STREAM *stream);

extern int putchar (int c);
extern int fputchar (int c,STREAM *stream);
# 145 "D:/ResearchSoftware/KungFu32/ChipONCC32/include/Sys/stdio.h"
extern int puts (const char *);
extern int fputs(const char *str,STREAM *stream);
extern int fwrite(const char *str,unsigned int Size,unsigned int N, STREAM *stream);




extern char _scanf_buf_[256];

extern char getche(void);






extern char * gets(char * s);
extern char * cgets(char * s);

extern int scanf (const char * fmt, ...);
extern int vscanf (const char * fmt, va_list ap);

extern int fscanf (const char * str,const char * fmt, ...);
extern int sscanf (const char * str,const char * fmt, ...);

extern int vsscanf(const char * str,const char * fmt, va_list ap);




extern int printf (const char *fmt, ...);

extern int fprintf (STREAM *stream, const char *fmt, ...);

extern int sprintf (char *str, const char *fmt, ...);
extern int snprintf (char *str, unsigned int n, const char *format, ...);




extern int vprintf (const char *fmt, va_list ap);
extern int vfprintf (STREAM *stream, const char *fmt, va_list ap);
extern int vsprintf (char *str, const char *fmt, va_list ap);
extern int vsnprintf (char *s, unsigned int n, const char *format, va_list ap);
# 212 "D:/ResearchSoftware/KungFu32/ChipONCC32/include/Sys/stdio.h"
extern void printf_small (const char *fmt, ...);
extern void printf_tiny (const char *fmt, ...);
# 5 "../Middle/MD5.h" 2
# 1 "D:/ResearchSoftware/KungFu32/ChipONCC32/include/Sys/stdint.h" 1
# 16 "D:/ResearchSoftware/KungFu32/ChipONCC32/include/Sys/stdint.h"
# 1 "D:/ResearchSoftware/KungFu32/ChipONCC32/include/Sys/stddef.h" 1
# 24 "D:/ResearchSoftware/KungFu32/ChipONCC32/include/Sys/stddef.h"
typedef int ptrdiff_t;





typedef unsigned int size_t;




typedef unsigned short wchar_t;
# 17 "D:/ResearchSoftware/KungFu32/ChipONCC32/include/Sys/stdint.h" 2




typedef signed char int8_t;
typedef unsigned char uint8_t;
typedef short int16_t;
typedef unsigned short uint16_t;
typedef int int32_t;
typedef unsigned int uint32_t;
typedef long long int64_t;
typedef unsigned long long uint64_t;


typedef signed char int_least8_t;
typedef unsigned char uint_least8_t;
typedef short int_least16_t;
typedef unsigned short uint_least16_t;
typedef int int_least32_t;
typedef unsigned int uint_least32_t;
typedef long long int_least64_t;
typedef unsigned long long uint_least64_t;





typedef char int_fast8_t;
typedef unsigned char uint_fast8_t;
typedef short int_fast16_t;
typedef unsigned short uint_fast16_t;
typedef int int_fast32_t;
typedef unsigned int uint_fast32_t;
typedef long long int_fast64_t;
typedef unsigned long long uint_fast64_t;
# 60 "D:/ResearchSoftware/KungFu32/ChipONCC32/include/Sys/stdint.h"
  typedef int intptr_t;
# 69 "D:/ResearchSoftware/KungFu32/ChipONCC32/include/Sys/stdint.h"
  typedef unsigned int uintptr_t;




typedef long long intmax_t;
typedef unsigned long long uintmax_t;
# 6 "../Middle/MD5.h" 2
# 1 "D:/ResearchSoftware/KungFu32/ChipONCC32/include/Sys/string.h" 1
# 26 "D:/ResearchSoftware/KungFu32/ChipONCC32/include/Sys/string.h"
extern int ffs (int);
extern int ffsl (long);
extern int ffsll (long long);
extern void * memchr(const void *, int, size_t);
extern int memcmp(const void *, const void *, size_t);
extern void * memcpy(void *, const void *, size_t);
extern void * memmove(void *, const void *, size_t);
extern void * memset(void *, int, size_t);
extern int strcasecmp (const char *, const char *);
extern char * strcat(char *, const char *);
extern char * strchr(const char *, int);
extern int strcmp(const char *, const char *);
extern int strcoll(const char *, const char *);
extern char * strcpy(char *, const char *);
extern size_t strcspn(const char *, const char *);

extern size_t strlen(const char *);
extern int strncasecmp (const char *, const char *, size_t);
extern char * strncat(char *, const char *, size_t);
extern int strncmp(const char *, const char *, size_t);
extern char * strncpy(char *, const char *, size_t);
extern char * strpbrk(const char *, const char *);
extern char * strrchr(const char *, int);
extern size_t strspn(const char *, const char *);
extern char * strstr(const char *, const char *);
extern char * strtok(char *, const char *);
extern size_t strxfrm(char *, const char *, size_t);


extern char * strdup(const char *);
# 7 "../Middle/MD5.h" 2
# 1 "D:/ResearchSoftware/KungFu32/ChipONCC32/include/Sys/stdlib.h" 1
# 12 "D:/ResearchSoftware/KungFu32/ChipONCC32/include/Sys/stdlib.h"
# 1 "D:/ResearchSoftware/KungFu32/ChipONCC32/include/Sys/malloc.h" 1





extern void *calloc(size_t , size_t );





void *realloc(void *ptr_par,size_t n);




extern void free(void * );







extern void *malloc(size_t );
# 13 "D:/ResearchSoftware/KungFu32/ChipONCC32/include/Sys/stdlib.h" 2
# 40 "D:/ResearchSoftware/KungFu32/ChipONCC32/include/Sys/stdlib.h"
typedef struct
{
  int quot;
  int rem;
} div_t;

typedef struct
{
  long quot;
  long rem;
} ldiv_t;


typedef struct
{
  long long int quot;
  long long int rem;
} lldiv_t;

extern long long llabs ( long long );
extern long long atoll ( const char * );
extern lldiv_t lldiv ( long long, long long );


extern int abs ( int );
extern long labs ( long );
extern void _Exit ( int ) __attribute__((__noreturn__));
extern void exit ( int ) __attribute__((__noreturn__));


extern double atof ( const char * );
extern int atoi ( const char * );
extern long atol ( const char * );



extern void uitoa (unsigned int, char *, unsigned char);
extern void itoa (int, char*, unsigned char);


extern void ultoa (unsigned long, char *, unsigned char);
extern void ltoa (long, char*, unsigned char);
# 100 "D:/ResearchSoftware/KungFu32/ChipONCC32/include/Sys/stdlib.h"
extern void ftoa(float, char*, unsigned char);



extern div_t div ( int, int );
extern ldiv_t ldiv ( long, long );
extern void * bsearch ( const void *, const void *, size_t, size_t,
                                           int (*)( const void *, const void * ) );
extern char * getenv ( const char * );
extern void qsort ( void *, size_t, size_t,
                                           int (*)( const void *, const void * ) );
extern int rand ( void );
extern void srand ( unsigned int );


extern long strtol (const char *st, char **endptr, int base);
extern unsigned long strtoul (const char *st, char **endptr, int base);
extern long long strtoll (const char *st, char **endptr, int base);
extern unsigned long long strtoull (const char *st, char **endptr,int base);
extern float strtof (const char *st, char **endptr);
extern double strtod (const char *st, char **endptr);
# 8 "../Middle/MD5.h" 2



void md5Init(void);
void md5Update(uint8_t *input, size_t input_len);
void md5Finalize(uint8_t *ret_md5_data);
void md5Step(uint32_t *buffer, uint32_t *input);

void md5String(char *input, uint8_t *result);
# 2 "../Middle/md5.c" 2
# 11 "../Middle/md5.c"
static const uint8_t S[] =
{
    7, 12, 17, 22, 7, 12, 17, 22, 7, 12, 17, 22, 7, 12, 17, 22,
    5, 9, 14, 20, 5, 9, 14, 20, 5, 9, 14, 20, 5, 9, 14, 20,
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
# 62 "../Middle/md5.c"
typedef struct{
    uint64_t size;
    uint32_t buffer[4];
    uint8_t input[64];
    uint8_t digest[16];
}MD5Context;

MD5Context ctx;




uint32_t rotateLeft(uint32_t x, uint32_t n){
    return (x << n) | (x >> (32 - n));
}





void md5Init(void){
    ctx.size = (uint64_t)0;

    ctx.buffer[0] = (uint32_t)0x67452301;
    ctx.buffer[1] = (uint32_t)0xefcdab89;
    ctx.buffer[2] = (uint32_t)0x98badcfe;
    ctx.buffer[3] = (uint32_t)0x10325476;
}







void md5Update(uint8_t *input_buffer, size_t input_len){
    uint32_t input[16];
    uint16_t offset = ctx.size % 64;
    ctx.size += (uint64_t)input_len;


    for (uint16_t i = 0; i < input_len; ++i)
    {
        ctx.input[offset++] = (uint8_t)*(input_buffer + i);





        if(offset % 64 == 0){
            for (uint16_t j = 0; j < 16; ++j)
            {



                input[j] = (uint32_t)(ctx.input[(j * 4) + 3]) << 24 |
                           (uint32_t)(ctx.input[(j * 4) + 2]) << 16 |
                           (uint32_t)(ctx.input[(j * 4) + 1]) << 8 |
                           (uint32_t)(ctx.input[(j * 4)]);
            }
            md5Step(ctx.buffer, input);
            offset = 0;
        }
    }
}





void md5Finalize(uint8_t *ret_md5_data){
    uint32_t input[16];
    uint16_t offset = ctx.size % 64;
    uint16_t padding_length = offset < 56 ? 56 - offset : (56 + 64) - offset;


    md5Update(PADDING, padding_length);
    ctx.size -= (uint64_t)padding_length;



    for (uint16_t j = 0; j < 14; ++j)
    {
        input[j] = (uint32_t)(ctx.input[(j * 4) + 3]) << 24 |
                   (uint32_t)(ctx.input[(j * 4) + 2]) << 16 |
                   (uint32_t)(ctx.input[(j * 4) + 1]) << 8 |
                   (uint32_t)(ctx.input[(j * 4)]);
    }
    input[14] = (uint32_t)(ctx.size * 8);
    input[15] = (uint32_t)((ctx.size * 8) >> 32);

    md5Step(ctx.buffer, input);


    for (uint16_t i = 0; i < 4; ++i)
    {
        ctx.digest[(i * 4) + 0] = (uint8_t)((ctx.buffer[i] & 0x000000FF));
        ctx.digest[(i * 4) + 1] = (uint8_t)((ctx.buffer[i] & 0x0000FF00) >> 8);
        ctx.digest[(i * 4) + 2] = (uint8_t)((ctx.buffer[i] & 0x00FF0000) >> 16);
        ctx.digest[(i * 4) + 3] = (uint8_t)((ctx.buffer[i] & 0xFF000000) >> 24);
    }

    memcpy(ret_md5_data, ctx.digest, 16);
}




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
                E = ((BB & CC) | (~BB & DD));
                j = i;
                break;
            case 1:
                E = ((BB & DD) | (CC & ~DD));
                j = ((i * 5) + 1) & 0x0f;
                break;
            case 2:
                E = (BB ^ CC ^ DD);
                j = ((i * 3) + 5) & 0x0f;
                break;
            default:
                E = (CC ^ (BB | ~DD));
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





void md5String(char *input, uint8_t *result){
    md5Init();
    md5Update((uint8_t *)input, strlen(input));


    memcpy(result, ctx.digest, 16);
}
