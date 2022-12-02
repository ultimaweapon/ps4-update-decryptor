# Compile all source to FreeBSD ELF.
add_executable(eboot
    decrypt.c
    main.c
    pup.c
    pupup.c)

# Create PKG.
add_custom_command(TARGET eboot POST_BUILD
    COMMAND $ENV{OO_PS4_TOOLCHAIN}/bin/linux/create-fself
        -in=${CMAKE_CURRENT_BINARY_DIR}/eboot
        -out=${CMAKE_CURRENT_BINARY_DIR}/eboot.oelf
        --eboot ${CMAKE_SOURCE_DIR}/eboot.bin
        --paid 0x3800000000000011
    COMMAND $ENV{OO_PS4_TOOLCHAIN}/bin/linux/create-gp4
        -out ${CMAKE_SOURCE_DIR}/project.gp4
        --content-id=IV0000-ULMA10000_00-UPDATEDECRYPTOR0
        --files eboot.bin sce_sys/about/right.sprx sce_sys/param.sfo sce_sys/icon0.png
    BYPRODUCTS ${CMAKE_SOURCE_DIR}/eboot.bin ${CMAKE_SOURCE_DIR}/project.gp4
    VERBATIM)
