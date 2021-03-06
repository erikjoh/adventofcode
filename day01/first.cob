IDENTIFICATION DIVISION.
PROGRAM-ID. AOC0101.

DATA DIVISION.
    WORKING-STORAGE SECTION.
    78 N VALUE 200.
    01 INP PIC X(4).
    01 ARRAY.
        05 A PIC 9(4) OCCURS N TIMES.
    01 I PIC 9(4).
    01 J PIC 9(4).
    01 ANSWER PIC 9(6).

PROCEDURE DIVISION.
    PERFORM VARYING I FROM 1 BY 1 UNTIL I = N
        ACCEPT INP
        UNSTRING INP
           INTO A(I)
    END-PERFORM.
    PERFORM VARYING I FROM 1 BY 1 UNTIL I = N
        PERFORM VARYING J FROM 1 BY 1 UNTIL J = N
            IF A(I) + A(J) = 2020 THEN
                MULTIPLY A(I) BY A(J) GIVING ANSWER
                DISPLAY ANSWER
                STOP RUN
            END-IF
        END-PERFORM
    END-PERFORM.
