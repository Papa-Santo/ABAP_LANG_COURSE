CLASS zcl_internal_tab_55 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_internal_tab_55 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    TYPES: BEGIN OF employee_row,
             id         TYPE i,
             first_name TYPE c LENGTH 20,
             last_name  TYPE c LENGTH 20,
             department TYPE c LENGTH 2,
             full_name  TYPE c LENGTH 40,
           END OF employee_row.

    DATA: employees_table TYPE SORTED TABLE OF employee_row WITH UNIQUE KEY id.

    employees_table = VALUE #(
    ( id = 1 first_name = 'Papa' last_name = 'Santo' department = 'IT' )
    ( id = 3 first_name = 'Katie' last_name = 'Carney' department = 'HR' )
    ).

*    out->write( employees_table ).

* Inserting a table

    DATA: employee TYPE employee_row.

    employee-id = 2.
    employee-first_name = 'Lisa'.
    employee-last_name = 'Turtle'.
    employee-department = 'SA'.

    INSERT employee INTO TABLE employees_table.

*    out->write( employees_table ).

* Modify a table

    CLEAR employee.

    employee-id = 3.
    employee-first_name = 'Someone'.
    employee-last_name = 'Works-Here'.
    employee-department = 'SA'.

    MODIFY TABLE employees_table FROM employee.

*        out->write( employees_table ).

* Failed Insert

*    INSERT VALUE #(  id = 2 first_name = 'No' last_name = 'Name' department = 'HR' ) INTO TABLE employees_table.
*    IF sy-subrc = 0.
*        out->write( 'Inserted' ).
*    ELSE.
*        DATA(subrc) = sy-subrc.
*        out->write( |Failed sy-subrc = { subrc }| ).
*    ENDIF.

* FILTERING

*    DATA(filtered_tab) = FILTER #( employees_table WHERE id < 3 ).
*    out->write( filtered_tab ).

* READING TABLES

    READ TABLE employees_table WITH KEY id = 2 INTO DATA(employee_two).
*    out->write( employee_two ).

*    DATA(employee_one) = employees_table[ id = 1 ].
*    out->write( employee_one ).

* Modifying With Row

*    employee_one-full_name = 'OOOOOPS'.
*
*    MODIFY TABLE employees_table FROM employee_one.
*    out->write( employees_table ).

* Table to Structure With Like Line Of

    DATA: tab_line LIKE LINE OF employees_table.
*          out->write( tab_line ).

* Basic Table Loop

*    LOOP AT employees_table INTO DATA(employee_line).
*
*        employee_line-full_name = |{ employee_line-first_name } { employee_line-last_name }|.
*
*        MODIFY TABLE employees_table FROM employee_line.
*
*    ENDLOOP.
*
*    out->write( employees_table ).

* Field Symbol

*    out->write( employees_table ).
*
*    LOOP AT employees_table ASSIGNING FIELD-SYMBOL(<fs_employee>).
*
*        <fs_employee>-full_name = |{ <fs_employee>-first_name } { <fs_employee>-last_name }|.
*
*    ENDLOOP.
*
*     out->write( employees_table ).

* Reference

*    out->write( employees_table ).
*
*    LOOP AT employees_table REFERENCE INTO DATA(employee_ref).
*
*        out->write( employee_ref ).
*        employee_ref->full_name = |{ employee_ref->first_name } { employee_ref->last_name }|.
*
*    ENDLOOP.
*
*     out->write( employees_table ).

* BASE

    DATA(employee_one) = employees_table[ id = 1 ].

    MODIFY TABLE employees_table FROM VALUE #( BASE employee_one full_name = 'This Is A Mistake' ).

    out->write( employees_table ).

  ENDMETHOD.
ENDCLASS.
