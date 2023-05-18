A:      EQU 80h
B:      EQU 81h
C:      EQU 82h
D:      EQU 83h
E:      EQU 84h
F:      EQU 85h
    LD ACC, 0
    ST ACC, [E]
    ST ACC, [F]
TOFIRST:
    LD IX, [C]
    SUB IX, 0
    BZ TOSECOND
    BA LOOP1
LOOP1:
    RCF
    LD ACC, [E]
    ADC ACC, [A]
    ST ACC, [E]
    BNC PASS1
    LD ACC, [F]
    ADD ACC, 1
    ST ACC, [F]
PASS1:
    SUB IX, 1
    BZ TOSECOND
    BA  LOOP1
TOSECOND:
    LD IX, [C]
    SUB IX, 0
    BZ TOTHERD
    BA LOOP2
LOOP2:
    RCF
    LD ACC, [F]
    ADD ACC, [B]
    ST ACC, [F]
    SUB IX, 1
    BZ TOTHERD
    BA LOOP2
TOTHERD:
    LD IX, [D]
    SUB IX, 0
    BZ EXIT
    BA LOOP3
LOOP3:
    RCF
    LD ACC, [F]
    ADD ACC, [A]
    ST ACC, [F]
    SUB IX, 1
    BZ EXIT
    BA LOOP3
EXIT:
    HLT
    END

0028 x 04CD = C008