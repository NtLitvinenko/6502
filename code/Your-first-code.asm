; By NTLDev (ntlitvinenko)
; All registers : A, X, Y
; Set Register A : LDA
; for set X to 30 for example
LDX #30          ; Register X to 30
; Or Y to 0 :)
LDY #0
; If you want set register from int use LDY #0, if you want to set register from pointer use LDY #$addr

loop:
  DEX            ;Decrement ( -1 to X, DEX)
  BNE loop       ; If last result not zero 
                 ; Jump to function loop (this function)
  INY            ; Increment Y (+1 to Y, DEY)
  LDX #30        ; X set to 30
  JMP loop       ; JuMP to loop

;;;
; ALL THIS IS Decimal int system (0 - 10)
; But then (when compiling) its all converts to HEX (0-F)
;;;
;  If you want code:
;  https://www.masswerk.at/6502/assembler.html
;  Emulate:
;  https://www.masswerk.at/6502/