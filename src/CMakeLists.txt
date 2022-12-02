add_executable(eboot
    decrypt.c
    main.c
    pup.c
    pupup.c)

add_custom_command(TARGET eboot POST_BUILD COMMAND $ENV{OO_PS4_TOOLCHAIN}/bin/linux/create-fself
    -in=${CMAKE_CURRENT_BINARY_DIR}/eboot
    -out=${CMAKE_CURRENT_BINARY_DIR}/eboot.oelf
    --eboot ${CMAKE_CURRENT_BINARY_DIR}/eboot.bin
    --paid 0x3800000000000011
    BYPRODUCTS ${CMAKE_CURRENT_BINARY_DIR}/eboot.bin
    VERBATIM)
