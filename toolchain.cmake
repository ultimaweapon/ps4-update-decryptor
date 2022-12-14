set(CMAKE_SYSTEM_NAME Generic)

set(CMAKE_C_COMPILER clang)
set(CMAKE_C_COMPILER_TARGET x86_64-pc-freebsd12-elf)
set(CMAKE_C_FLAGS_INIT "-fPIC -funwind-tables -nostdinc -isystem $ENV{OO_PS4_TOOLCHAIN}/include")
set(CMAKE_C_LINK_EXECUTABLE "ld.lld -m elf_x86_64 -pie --script $ENV{OO_PS4_TOOLCHAIN}/link.x --eh-frame-hdr -L$ENV{OO_PS4_TOOLCHAIN}/lib -lc -lkernel -lc++ $ENV{OO_PS4_TOOLCHAIN}/lib/crt1.o <CMAKE_C_LINK_FLAGS> <LINK_FLAGS> <OBJECTS> -o <TARGET> <LINK_LIBRARIES>")

set(CMAKE_FIND_ROOT_PATH $ENV{OO_PS4_TOOLCHAIN})
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)

set(CMAKE_TRY_COMPILE_TARGET_TYPE STATIC_LIBRARY)
