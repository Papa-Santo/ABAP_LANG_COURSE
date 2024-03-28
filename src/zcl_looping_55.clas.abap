CLASS zcl_looping_55 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_looping_55 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

* While Loop

*    WHILE sy-index <= 5.
*        out->write( sy-index ).
*    ENDWHILE.

* Do Loop

*    DO 5 TIMES.
*        out->write( sy-index ).
*
*        IF sy-index = 3.
*            EXIT.
*        ENDIF.
*
*    ENDDO.

        TYPES: BEGIN OF employee_row,
             id         TYPE i,
             first_name TYPE c LENGTH 20,
             last_name  TYPE c LENGTH 20,
             department TYPE c LENGTH 2,
             full_name  TYPE c LENGTH 40,
           END OF employee_row.

    DATA: employees_table TYPE STANDARD TABLE OF employee_row WITH NON-UNIQUE KEY id.

    DO 5 TIMES.
        APPEND VALUE #( id = sy-index ) TO employees_table.
    ENDDO.

*    out->write( employees_table ).

* For Loop

    DATA: for_tab TYPE STANDARD TABLE OF employee_row WITH NON-UNIQUE KEY id.

    for_tab = VALUE #(
        FOR emp IN employees_table ( id = emp-id * 3 )
     ).


    SORT for_tab BY id DESCENDING.

        out->write( for_tab ).

  ENDMETHOD.
ENDCLASS.
