      ******************************************************************
      * Author: Rafael Maltez
      * Date: 21/10/2023
      * Purpose: Print Hello World into terminal
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. HELLOWORLD.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-MESSAGE PIC X(13).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           MOVE "Hello World!" TO WS-MESSAGE.
           DISPLAY WS-MESSAGE.
           STOP RUN.
       END PROGRAM HELLOWORLD.
