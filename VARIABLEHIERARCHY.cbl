      ******************************************************************
      * Author: Rafael Maltez
      * Date: 23/10/2023
      * Purpose: Undestand variables hierarchy in COBOL
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. VARIABLE-HIERARCHY.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-CLIENT.
           02 WS-REGISTER PIC X(5).
           02 WS-NAME.
               03 WS-FIRST-NAME PIC X(10).
               03 WS-LAST-NAME PIC X(10).
           02 WS-CLIENT-ADDRESS.
               03 WS-STREET PIC X(20).
               03 WS-NUMBER PIC 9(5).
               03 WS-STATE PIC X(2).
               03 WS-CEP PIC 9(8).

       01 WS-CLIENT-PARTNER.
           02 WS-REGISTER PIC X(5).
           02 WS-NAME.
               03 WS-FIRST-NAME PIC X(10).
               03 WS-LAST-NAME PIC X(10).
           02 WS-CLIENT-ADDRESS.
               03 WS-STREET PIC X(20).
               03 WS-NUMBER PIC 9(5).
               03 WS-STATE PIC X(2).
               03 WS-CEP PIC 9(8).
       PROCEDURE DIVISION.
       0000-MAIN.
           MOVE "12345" TO WS-REGISTER OF WS-CLIENT.
           MOVE "12346" TO WS-REGISTER OF WS-CLIENT-PARTNER.
           DISPLAY "Client Register: " WS-REGISTER OF WS-CLIENT
           DISPLAY "Client Partner Register "
               WS-REGISTER OF WS-CLIENT-PARTNER.
       END PROGRAM VARIABLE-HIERARCHY.
