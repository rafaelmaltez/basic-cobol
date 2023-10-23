     ******************************************************************
      * Author: Rafael Maltez
      * Date: 23/10/2023
      * Purpose: Practice how to use Copy Books in COBOL
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. COPY-BOOK.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       COPY CLIENT-DATA.
       PROCEDURE DIVISION.
       0000-MAIN.
           MOVE "12345" TO WS-REGISTER OF WS-CLIENT.
           MOVE "12346" TO WS-REGISTER OF WS-CLIENT-PARTNER.
           DISPLAY "Client Register: " WS-REGISTER OF WS-CLIENT
           DISPLAY "Client Partner Register "
               WS-REGISTER OF WS-CLIENT-PARTNER.
       END PROGRAM COPY-BOOK.
