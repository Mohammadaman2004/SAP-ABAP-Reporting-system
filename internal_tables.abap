REPORT zinternal_tables_demo.

TYPES: BEGIN OF ty_employee,
         empid TYPE i,
         name  TYPE string,
         dept  TYPE string,
       END OF ty_employee.

DATA: lt_employee TYPE TABLE OF ty_employee,
      ls_employee TYPE ty_employee.

ls_employee-empid = 101.
ls_employee-name  = 'Amaan'.
ls_employee-dept  = 'IT'.
APPEND ls_employee TO lt_employee.

ls_employee-empid = 102.
ls_employee-name  = 'Rahul'.
ls_employee-dept  = 'HR'.
APPEND ls_employee TO lt_employee.

LOOP AT lt_employee INTO ls_employee.
  WRITE: / ls_employee-empid,
           ls_employee-name,
           ls_employee-dept.
ENDLOOP.
