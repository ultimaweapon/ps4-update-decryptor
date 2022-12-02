# Convert ELF to SELF.
execute_process(COMMAND $ENV{OO_PS4_TOOLCHAIN}/bin/linux/create-fself
    -in=${CMAKE_CURRENT_BINARY_DIR}/eboot
    -out=${CMAKE_CURRENT_BINARY_DIR}/eboot.oelf
    --eboot ${CMAKE_CURRENT_BINARY_DIR}/eboot.bin
    --paid 0x3800000000000011
    COMMAND_ECHO STDOUT
    COMMAND_ERROR_IS_FATAL ANY)
