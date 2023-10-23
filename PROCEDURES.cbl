      ******************************************************************
      * Author: Rafael Maltez
      * Date: 21/10/2023
      * Purpose: Practice how to create and call a procedure in COBOL
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROCEDURES-EXAMPLE.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-STUDENT-GRADES.
           02 WS-GRADE-1 PIC 9(2).
           02 WS-GRADE-2 PIC 9(2).
           02 WS-GRADE-AVERAGE PIC 9(2)V99.
       01 WS-EVALUATION PIC X(10).

       PROCEDURE DIVISION.
       0000-MAIN-PROCEDURE.
           DISPLAY "Enter first grade:"
           ACCEPT WS-GRADE-1.
           DISPLAY "Enter second grade:"
           ACCEPT WS-GRADE-2.
           PERFORM 1000-CALCULATE-AVERAGE THRU 1000-END.
           DISPLAY "Student average: " WS-GRADE-AVERAGE
           DISPLAY "Student evaluation: " WS-EVALUATION
           STOP RUN.
       0000-END. EXIT.

       1000-CALCULATE-AVERAGE.
           COMPUTE WS-GRADE-AVERAGE = (WS-GRADE-1 + WS-GRADE-2) / 2
           EVALUATE WS-GRADE-AVERAGE
               WHEN < 5
                   MOVE "VERY BAD" TO WS-EVALUATION
               WHEN < 7
                   MOVE "AVERAGE" TO WS-EVALUATION
               WHEN < 9
                   MOVE "GOOD" TO WS-EVALUATION
               WHEN < 10
                   MOVE "VERY GOOD" TO WS-EVALUATION
               WHEN = 10
                   MOVE "EXCELENT" TO WS-EVALUATION
           END-EVALUATE.
       1000-END. EXIT.
