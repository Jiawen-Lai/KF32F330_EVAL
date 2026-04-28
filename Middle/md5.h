#ifndef MD5_H
#define MD5_H

#include <stdio.h>
#include <stdint.h>
#include <string.h>
#include <stdlib.h>



void md5Init(void);
void md5Update(uint8_t *input, size_t input_len);
void md5Finalize(uint8_t *ret_md5_data);
void md5Step(uint32_t *buffer, uint32_t *input);

void md5String(char *input, uint8_t *result);
void md5Flash(uint32_t start_addr, uint32_t size, uint8_t *result);

#endif
