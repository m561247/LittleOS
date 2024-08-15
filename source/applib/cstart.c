
#include "lib_syscall.h"
#include <stdlib.h>

int main (int argc, char ** argv);

extern uint8_t __bss_start__[], __bss_end__[];


void cstart (int argc, char ** argv) {
    // 清空 bss 區，注意這是必須的！！！
    // 像 newlib 庫中有些代碼就依賴於此，未清空時數據未知，導致調用sbrk時申請很大記憶體空間
    uint8_t * start = __bss_start__;
    while (start < __bss_end__) {
        *start++ = 0;
    }

    exit(main(argc, argv));
}