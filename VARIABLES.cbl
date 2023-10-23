      ******************************************************************
      * Author: Rafael Maltez
      * Date: 23/10/2023
      * Purpose: Undestand variable declaration in COBOL
      * Tectonics: cobc
      ******************************************************************
        IDENTIFICATION DIVISION.
       PROGRAM-ID. VARIABLES.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-NAME PIC X(13) VALUE SPACES.
       01 WS-AGE PIC 9(2) VALUE ZEROS.
       01 WS-DATE.
           02 WS-DAY PIC X(02).
           02 WS-SEP-1 PIC X(1).
           02 WS-MONTH PIC X(02).
           02 WS-SEP-2 PIC X(1).
           02 WS-YEAR PIC X(4).
       PROCEDURE DIVISION.
       0000-MAIN.
            MOVE "Rafael Maltez" TO WS-NAME
            MOVE 34 TO WS-AGE
            DISPLAY "Name: " WS-NAME
            DISPLAY "Age: " WS-AGE
            MOVE '21/10/2023' TO WS-DATE
            DISPLAY "Date: " WS-DATE
            DISPLAY "Day: " WS-DAY
            DISPLAY "Month: " WS-MONTH
            DISPLAY "Year: " WS-YEAR
            STOP RUN.
       END PROGRAM VARIABLES.
