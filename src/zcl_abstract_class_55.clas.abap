CLASS zcl_abstract_class_55 DEFINITION ABSTRACT
  PUBLIC
*  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

  METHODS say_my_name ABSTRACT IMPORTING VALUE(name) TYPE string
                               RETURNING VALUE(result) TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_abstract_class_55 IMPLEMENTATION.
ENDCLASS.
