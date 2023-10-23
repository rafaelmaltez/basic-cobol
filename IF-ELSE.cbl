      ******************************************************************
      * Author: Rafael Maltez
      * Date: 21/10/2023
      * Purpose: Understand if else statments in COBOL
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. IF-ELSE.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-AGE PIC 9(2) VALUE 17.
       01 WS-CAN-DRIVE PIC X(3).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "Enter your age: "
           ACCEPT WS-AGE
           IF WS-AGE < 18
               MOVE "NO" TO WS-CAN-DRIVE
           ELSE
               MOVE "YES" TO WS-CAN-DRIVE
           END-IF
           DISPLAY "Is allowed to drive? " WS-CAN-DRIVE
            STOP RUN.
       END PROGRAM IF-ELSE.
