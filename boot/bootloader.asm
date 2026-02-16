; Ardvark
;
; by: Timur Rudzinsky (timrud210@gmail.com)
;
; Bootloader

use16
org 07C00h

%include "/home/tim/Ardvark/boot/tools"

clear_screen

times 510 - ($ - $$) db 0
dw 0AA55h
