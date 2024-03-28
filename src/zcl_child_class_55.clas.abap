CLASS zcl_child_class_55 DEFINITION INHERITING FROM zcl_parent_class_55
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

  DATA: sub_class_name_var TYPE string.

    METHODS constructor
      IMPORTING VALUE(name) TYPE string
                VALUE(job)  TYPE string
                VALUE(sub_class_name_var) TYPE string
      RAISING   cx_abap_auth_check_exception.

    METHODS add_three_numbers_from_parent
      IMPORTING num_1             TYPE i
                num_2             TYPE i
                num_3             TYPE i
      RETURNING VALUE(return_val) TYPE i.

    METHODS two_numbers REDEFINITION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_child_class_55 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
  ENDMETHOD.
  METHOD add_three_numbers_from_parent.
    DATA: res TYPE i.
    me->add_three_numbers(
        EXPORTING num_one = num_1
                  num_two = num_2
                  num_three = num_3
        IMPORTING result = res
     ).

    return_val = res.


  ENDMETHOD.

  METHOD two_numbers.
    result = num_one + num_two.
  ENDMETHOD.

  METHOD constructor.

    super->constructor( name = name job = job ).
    me->sub_class_name_var = sub_class_name_var.

  ENDMETHOD.

ENDCLASS.
