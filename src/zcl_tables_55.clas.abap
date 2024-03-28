CLASS zcl_tables_55 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_tables_55 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

      TYPES: BEGIN OF sample_row,
             id       TYPE i,
             name     TYPE c LENGTH 20,
             category TYPE c LENGTH 20,
             country  TYPE c LENGTH 3,
           END OF sample_row.

* Standard Tables

    DATA: standard_tab TYPE STANDARD TABLE OF sample_row.

          standard_tab = VALUE #(
          ( id = 1 name = 'Apple' category = 'Fruits' country = 'USA' )
          ( id = 3 name = 'Rice' category = 'Grain' country = 'TH' )
          ( id = 2 name = 'Chicken' category = 'Meat' country = 'MX' )
          ).

          out->write( standard_tab ).

    " Search is any column 0(n)
    " can append without the id (or keys in general) being in order
    " can be modified
    " can be sorted


* Sorted Table

    DATA: sorted_tab TYPE SORTED TABLE OF sample_row WITH UNIQUE KEY id.

    sorted_tab = VALUE #(
    ( id = 1 name = 'Apple' category = 'Fruits' country = 'USA' )
    ( id = 2 name = 'Chicken' category = 'Meat' country = 'MX' )
    ( id = 3 name = 'Rice' category = 'Grain' country = 'TH' )
    ).

    out->write( sorted_tab ).

    " Searching with the key is 0(log n): Binary search
    " Sorted Non-Unique Key would be 0(log n) + 0(n) for records with the same key
    " Only appends if id is in the correct order
    " Modify used to update

* Hashed Table

    DATA: hashed_tab TYPE HASHED TABLE OF sample_row WITH UNIQUE KEY id name.

    hashed_tab = VALUE #(
    ( id = 1 name = 'Apple' category = 'Fruits' country = 'USA' )
    ( id = 2 name = 'Chicken' category = 'Meat' country = 'MX' )
    ( id = 3 name = 'Rice' category = 'Grain' country = 'TH' )
    ).

    out->write( hashed_tab ).

    " Searching with the key is 0(1) - direct access with hashed key
    " Sorted by hash
    " Searching without the full hash is as slow as a standard table
    " Modify to update
  ENDMETHOD.
ENDCLASS.





