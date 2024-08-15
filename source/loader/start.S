
  	// 16位
  	.code16
 	.text
 	.extern loader_entry
	.global _start
_start:
 	jmp loader_entry

	// 32位
	.code32
	.text
	.global protect_mode_entry
	.extern load_kernel
protect_mode_entry:
	mov $16, %ax		
	mov %ax, %ds
    mov %ax, %ss
    mov %ax, %es
    mov %ax, %fs
    mov %ax, %gs

    // long jump
    jmp $8, $load_kernel


