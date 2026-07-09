REPORT zalv_report_demo.

TYPES: BEGIN OF ty_employee,
         empid TYPE i,
         name  TYPE string,
         dept  TYPE string,
       END OF ty_employee.

DATA: gt_employee TYPE TABLE OF ty_employee,
      gs_employee TYPE ty_employee.

gs_employee-empid = 101.
gs_employee-name = 'Amaan'.
gs_employee-dept = 'IT'.
APPEND gs_employee TO gt_employee.

LOOP AT gt_employee INTO gs_employee.
  WRITE: / gs_employee-empid,
           gs_employee-name,
           gs_employee-dept.
ENDLOOP.
