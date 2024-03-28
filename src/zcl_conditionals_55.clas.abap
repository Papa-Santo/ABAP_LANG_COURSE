CLASS zcl_conditionals_55 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_conditionals_55 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

* if else statements

*DATA(str_one) = |ABC|.
*DATA(str_two) = |ABD|.
*
*IF str_one = str_two.
*    out->write( 'EQUAL' ).
*ELSE.
*    out->write( 'Not Equal' ).
*ENDIF.

* Switch Statement

*    DATA(switch_num) = 20.
*m
*    DATA(switch_res) = SWITCH string( switch_num
*        WHEN 1 THEN 'It is one'
*        WHEN 2 THEN |It is two|
*        ELSE 'It is more than two'
*    ).
*
*    out->write( switch_res ).

* Case Statements

*    DATA(case_chars) = 'Not in whens'.
*    Data: case_result Type c LENGTH 20.
*
*    CASE case_chars.
*        WHEN 'I am an option'.
*            case_result = 'first when'.
*        WHEN 'I am second option'.
*            case_result = 'second when'.
*        WHEN OTHERS.
*            case_result = 'not found'.
*    ENDCASE.
*
*    out->write( case_result ).

* In Line XSDBOOL with logical operators

*    out->write( |ABAP TRUE = { ABAP_TRUE }| ).
*    out->write( |ABAP FALSE = { ABAP_FALSE }| ).
*
*    DATA(num_for_bool) = 11.
*    DATA(is_larger_than_ten) = xsdbool( num_for_bool > 10 ).
*    out->write( is_larger_than_ten ).

* = / EQ    = EQUAL TO
* <> / NE   = Not Equal To
* < / LT    = Less Than
* > / GT    = Greater Than
* <= / LE   = Less Than Or Equal To
* >= / GE   = Greater Than Or Equal To
* a BETWEEN b and c (INTERVAL TEST)

    DATA(num_for_bool) = 8.

    DATA(is_between) = xsdbool( num_for_bool BETWEEN 5 AND 9 ).
    out->write( |is_between = { is_between }| ).

  ENDMETHOD.
ENDCLASS.
