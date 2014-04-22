#ifndef  __ARM_DIV64_H__
#define  __ARM_DIV64_H__

#include <types.h>

/**
 * The toolchain we use have some helper functions which can help us cope with the division problems.
 * We could write down the division directly, the compiler will call approciate helper function to handle it.
 */
uint32_t do_div(uint64_t *n, uint32_t base);
#endif /* !__ARM_DIV64_H__ */
