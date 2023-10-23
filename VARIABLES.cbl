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
       PROCEDURE DIVISION.
       0000-MAIN.
            MOVE "Rafael Maltez" TO WS-NAME
            MOVE 34 TO WS-AGE
            DISPLAY "Name: " WS-NAME
            DISPLAY "Age: " WS-AGE
            STOP RUN.
       END PROGRAM VARIABLES.
