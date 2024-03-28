INTERFACE z_if_add_55
  PUBLIC .

  METHODS add_two
    IMPORTING VALUE(n1) TYPE i
              VALUE(n2) TYPE i
    RETURNING VALUE(sum) TYPE i.

  METHODS add_three
      IMPORTING VALUE(n1) TYPE i
              VALUE(n2) TYPE i
              VALUE(n3) TYPE i
    RETURNING VALUE(sum) TYPE i.

ENDINTERFACE.
