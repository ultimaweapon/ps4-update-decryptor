#ifndef __DEFINES
#define __DEFINES

#include <assert.h>

#define CHECK_SIZE(x, y) static_assert(sizeof(x) == y, #x)

#endif
