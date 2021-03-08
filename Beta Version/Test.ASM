;this taken from ben Eater and change bit (Thanks BEN for all good work)
;Assembly language vs. machine code — 6502 part 3 (go Look on youtube)
    .org $8000
reset:
    Lda #$ff
    Sta $6002
    
loop:
    lda #$55
    sta $6000

    lda #$aa
    sta $6000

    jmp loop


    .org $fffa
    .word $0000 ; IRQ vector
    .word reset ; Reset vector
    .word $0000 ; MNI vector