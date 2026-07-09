REPORT zopen_sql_demo

DATA: lt_spfli TYPE TABLE OF spfli,
      ls_spfli TYPE spfli.

SELECT * FROM spfli
  INTO TABLE lt_spfli
  UP TO 10 ROWS.

LOOP AT lt_spfli INTO ls_spfli.
  WRITE: / ls_spfli-carrid,
           ls_spfli-connid,
           ls_spfli-cityfrom,
           ls_spfli-cityto.
ENDLOOP.
