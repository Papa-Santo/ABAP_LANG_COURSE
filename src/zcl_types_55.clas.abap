CLASS zcl_types_55 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_types_55 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
*    out->write( 'Hello World' ). " comment

* Individual Data Types

    DATA: char TYPE c LENGTH 1 VALUE 'C'.

    DATA: str TYPE string VALUE `I am a string`,
          num TYPE n LENGTH 3 VALUE 102.

*    out->write( char ).
*    out->write( str ).
*    out->write( num ).

    DATA: integ TYPE i VALUE 3,
          flo   TYPE f VALUE 3210,
          pack  TYPE p LENGTH 5 DECIMALS 2 VALUE '12345.99',
          time  TYPE t VALUE '123011',
          date  TYPE d VALUE '20301231'.

    TYPES: BEGIN OF abap_types,
             integ TYPE i,
             flo   TYPE f,
             pack  TYPE p LENGTH 5 DECIMALS 2,
             time  TYPE t,
             date  TYPE d,
           END OF abap_types.

    DATA: abap_types_struct TYPE abap_types.

    abap_types_struct-integ = integ.
    abap_types_struct-flo = flo.
    abap_types_struct-pack = pack.
    abap_types_struct-time = time.
    abap_types_struct-date = date.

*    out->write( abap_types_struct ).

    DATA(char_type) = 'char'.
    DATA(str_type) = |I am another string { char_type }|.

*    out->write( str_type ).

* Table Types

    TYPES: BEGIN OF id_and_name,
            id TYPE i,
            name TYPE c LENGTH 20,
           END OF id_and_name,

           id_and_name_tab TYPE TABLE OF id_and_name WITH EMPTY KEY.

    DATA: print_tab TYPE id_and_name_tab.

    print_tab = VALUE #( ( id = 1 name = 'Santo' )
                         ( id = 2 name = 'Katie' ) ).

*                         out->write( print_tab ).


* INSERTING Internal Table

    DATA: idn TYPE id_and_name.

    idn-id = 3.
    idn-name = 'Tracy'.

    INSERT idn INTO TABLE print_tab.

*     out->write( print_tab ).

*     out->write( idn ).

     CLEAR idn.

*          out->write( idn ).

* APPEND AN INTERNAL TABLE

    idn-id = 4.
    idn-name = 'Flimflam'.

    APPEND idn TO print_tab.

*     out->write( print_tab ).

     DATA: str_data TYPE string VALUE `Hello`,
           char_data TYPE c LENGTH 3.

* Implicit Conversion

    char_data = str_data.
*    out->write( char_data ).

* Explicit Conversion
    TYPES: three_char TYPE c LENGTH 3.

    out->write( CONV three_char( str_data ) ).


  ENDMETHOD.
ENDCLASS.
