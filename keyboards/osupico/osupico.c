#include "quantum.h"

void matrix_io_delay(void) { __asm__ volatile("nop"); }
#ifdef waitInputPinDelay
#undef waitInputPinDelay
#define waitInputPinDelay(x, ...)
#endif
