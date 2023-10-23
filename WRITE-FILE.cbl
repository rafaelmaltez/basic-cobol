      ******************************************************************
      * Author: Rafael Maltez
      * Date:21/10/2023
      * Purpose: Practice writing simple files in COBOL
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. WRITING-FILES.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT OUTPUT-FILE-DATA ASSIGN TO '..\output-data.txt'
           ORGANIZATION IS LINE SEQUENTIAL.
       DATA DIVISION.
       FILE SECTION.
       FD OUTPUT-FILE-DATA.
       01 OUTPUT-REGISTER.
           02 CLIENT-CODE PIC 999.
           02 COMMA-CHAR PIC X(1).
           02 CLIENT-NAME PIC X(20).
           02 COMMA-CHAR-2 PIC X(1).
           02 CLIENT-CITY PIC X(20).
       WORKING-STORAGE SECTION.
       01 WS-KEEP-REGISTERING PIC X(1) VALUE 'S'.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            OPEN OUTPUT OUTPUT-FILE-DATA.
           PERFORM UNTIL WS-KEEP-REGISTERING = 'N'
               DISPLAY "Client code: "
               ACCEPT CLIENT-CODE
               MOVE ',' TO COMMA-CHAR
               DISPLAY "Cliente name:"
               ACCEPT CLIENT-NAME
               MOVE ',' TO COMMA-CHAR-2
               DISPLAY "Client city: "
               ACCEPT CLIENT-CITY
               WRITE OUTPUT-REGISTER
               DISPLAY "Register another client? (Y/N)"
               ACCEPT WS-KEEP-REGISTERING
           END-PERFORM
           CLOSE OUTPUT-FILE-DATA
           STOP RUN.
       END PROGRAM WRITING-FILES.
