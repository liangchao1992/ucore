#include <types.h>
uint32_t do_div(uint64_t *n, uint32_t base)
{
	uint32_t remainder = *n % base;
        *n = *n / base;
        return remainder;
}

