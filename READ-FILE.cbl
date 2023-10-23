      ******************************************************************
      * Author: Rafael Maltez
      * Date: 21/10/2023
      * Purpose: Practice reading simple files in COBOL
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. READING-FILES.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT FILE-DATA ASSIGN TO '..\clients.txt'
           ORGANIZATION IS LINE SEQUENTIAL.

       DATA DIVISION.
       FILE SECTION.
       FD FILE-DATA.
       01 REGISTER.
           05 CLIENT-CODE PIC 999.
           05 COMMA-CHAR PIC X(1).
           05 CLIENT-NAME PIC X(20).

       WORKING-STORAGE SECTION.
       01 FILE-END PIC X(1) VALUE 'N'.
       01 PROGRAM-END PIC X(1) VALUE 'N'.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
       OPEN INPUT FILE-DATA
       PERFORM UNTIL FILE-END = 'Y'
           READ FILE-DATA
               AT END
                   MOVE 'Y' TO FILE-END
               NOT AT END
                   DISPLAY "Client code: " CLIENT-CODE
                   DISPLAY "Client name: " CLIENT-NAME
           END-READ
       END-PERFORM
       CLOSE FILE-DATA
       STOP RUN.
       END PROGRAM READING-FILES.
