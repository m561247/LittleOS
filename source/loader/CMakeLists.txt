project(loader LANGUAGES C)

# 使用自定義的鏈接器
set(CMAKE_EXE_LINKER_FLAGS "-m elf_i386 -Ttext=0x8000")
set(CMAKE_C_LINK_EXECUTABLE "${LINKER_TOOL} <OBJECTS> ${CMAKE_EXE_LINKER_FLAGS} -o ${PROJECT_BINARY_DIR}/${PROJECT_NAME}.elf")

# 將所有 assmebly、c 加入工程
# 注意保證 start.asm 在最前頭
file(GLOB C_LIST "*.c" "*.h")
add_executable(${PROJECT_NAME} start.S ${C_LIST})

# lbin文件生成，寫入到 image 目錄下
add_custom_command(TARGET ${PROJECT_NAME}
                   POST_BUILD
                   COMMAND ${OBJCOPY_TOOL} -O binary ${PROJECT_NAME}.elf ${CMAKE_SOURCE_DIR}/../../image/${PROJECT_NAME}.bin
                   COMMAND ${OBJDUMP_TOOL} -x -d -S -m i8086 ${PROJECT_BINARY_DIR}/${PROJECT_NAME}.elf > ${PROJECT_NAME}_dis.txt
                   COMMAND ${READELF_TOOL} -a ${PROJECT_BINARY_DIR}/${PROJECT_NAME}.elf > ${PROJECT_NAME}_elf.txt
)