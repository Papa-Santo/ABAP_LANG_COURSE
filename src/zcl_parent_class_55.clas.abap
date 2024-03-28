CLASS zcl_parent_class_55 DEFINITION
  PUBLIC
*  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
* Available to all instances

    METHODS two_numbers
      IMPORTING VALUE(num_one) TYPE i
                VALUE(num_two) TYPE i
      RETURNING VALUE(result)  TYPE i.

    DATA: greeting_public TYPE string VALUE `Why hello there public!`.
    CLASS-DATA: greeting_public_class_data TYPE string VALUE `Why hello there public class data!`.

    DATA: name TYPE string,
          job  TYPE string.

    METHODS constructor
      IMPORTING VALUE(name) TYPE string
                VALUE(job)  TYPE string
      RAISING   cx_abap_auth_check_exception.

    CLASS-METHODS get_instance_count
      RETURNING VALUE(result) TYPE i.

*    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
* Accessible To This Class and CHILDREN
    METHODS add_three_numbers
      IMPORTING VALUE(num_one)   TYPE i
                VALUE(num_two)   TYPE i
                VALUE(num_three) TYPE i
      EXPORTING result           TYPE i.
  PRIVATE SECTION.
* Available only in this class or friend classes
    CLASS-DATA: instance_count TYPE i VALUE 0.

    METHODS add_instance.

ENDCLASS.



CLASS zcl_parent_class_55 IMPLEMENTATION.

  METHOD two_numbers.
* Return both numbers in one data object
    DATA(numbers_combined) = |{ num_one }{ num_two }|.
    result = numbers_combined.

  ENDMETHOD.

  METHOD constructor.

    IF get_instance_count(  ) > 1.
      RAISE EXCEPTION NEW cx_abap_auth_check_exception( ).
    ENDIF.

    me->name = name.
    me->job = job.

    add_instance(  ).
  ENDMETHOD.

  METHOD get_instance_count.
    result = instance_count.
  ENDMETHOD.

  METHOD add_instance.
    instance_count += 1.
  ENDMETHOD.

  METHOD add_three_numbers.
    result = num_one + num_two + num_three.
  ENDMETHOD.

ENDCLASS.
