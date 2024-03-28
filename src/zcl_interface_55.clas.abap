CLASS zcl_interface_55 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES z_if_add_55.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_interface_55 IMPLEMENTATION.
  METHOD z_if_add_55~add_three.
    sum = n1 + n2 + n3.
  ENDMETHOD.

  METHOD z_if_add_55~add_two.
    sum = n1 + n2.
  ENDMETHOD.

ENDCLASS.
