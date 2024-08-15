
project(shell LANGUAGES C)  

# 使用自訂的連結器
# 加入對應的庫
set(LIBS_FLAGS "-L ${CMAKE_BINARY_DIR}/source/applib/ -lapp -L ${CMAKE_BINARY_DIR}/../../newlib/i686-elf/lib -lm -lc")
set(CMAKE_EXE_LINKER_FLAGS "-m elf_i386 -T ${PROJECT_SOURCE_DIR}/link.lds ${LIBS_FLAGS}")
set(CMAKE_C_LINK_EXECUTABLE "${LINKER_TOOL} <OBJECTS> ${CMAKE_EXE_LINKER_FLAGS} -o ${PROJECT_BINARY_DIR}/${PROJECT_NAME}.elf")

include_directories(
    ${PROJECT_SOURCE_DIR}/../applib/
)

# 將所有的彙編、C檔加入工程
# 注意保證start.asm在最前頭
file(GLOB C_LIST "*.c" "*.h" "*.S")
add_executable(${PROJECT_NAME} ${C_LIST})

# 不帶除錯資訊的elf生成，何種更小，寫入到image目錄下
add_custom_command(TARGET ${PROJECT_NAME}
                   POST_BUILD
                   COMMAND ${OBJCOPY_TOOL} -S ${PROJECT_NAME}.elf ${CMAKE_SOURCE_DIR}/../../image/${PROJECT_NAME}.elf
                   COMMAND ${OBJDUMP_TOOL} -x -d -S -m i386 ${PROJECT_BINARY_DIR}/${PROJECT_NAME}.elf > ${PROJECT_NAME}_dis.txt
                   COMMAND ${READELF_TOOL} -a ${PROJECT_BINARY_DIR}/${PROJECT_NAME}.elf > ${PROJECT_NAME}_elf.txt
)