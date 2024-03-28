CLASS zcl_strings_55 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_strings_55 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    DATA(string_data) = `I am a string`.
    DATA(char_data) = 'I am a char'.

* STRING LENGTH
*    out->write( strlen( string_data ) ).

* Char LENGTH


* STRING FUNCTIONS

*    out->write( to_upper( string_data ) ).
*    out->write( to_lower( string_data ) ).

* Replace

*    out->write( replace( val = `I am batmans buddy` sub = `b` with = `f` occ = -1 ) ).

*    out->write( substring( val = `I am pacman` off = 2 ) ).

*    out->write( substring( val = `I am pacman` off = 2 len = 6 ) ).

*    out->write( substring( val = `I am pacman` len = 6 ) ).

* CHAR SUBCHARS

*    out->write( char_data+2 ).
*    out->write( char_data+2(6) ).
*    out->write( char_data(6) ).

* substring

*    out->write( substring_from( val = `I am pacman` sub = 'am' ) ).

*    out->write( substring_to( val = `I am pacman` sub = 'am' ) ).

*    out->write( substring_after( val = `I am pacman` sub = 'am' ) ).

*    out->write( substring_before( val = `I am pacman` sub = 'am' ) ).

* FIND

*    out->write( find( val = `I am pacman` sub = `pag` )  ).
*    out->write( find( val = `I am pacman` sub = `pac` )  ).

*    out->write( find( val = `I am pacman` pcre = `[A-Z]` )  ).

* FIND ANY OF

*    out->write( find_any_of( val = `I am pacman` sub = `pag` )  ).
*    out->write( find_any_of( val = `I am pacman` sub = `pc` )  ).

* REVERSE

*    out->write( reverse( `This String` ) ).

* INSERT

*    out->write( insert( val = `This String` sub = ` is a` off = 4 ) ).

* CONCATENATE

*    CONCATENATE `This is` `a string` into DATA(concat_res).
*    CONCATENATE `This is` `a string` into DATA(concat_res) SEPARATED BY ` `.
*    out->write( concat_res ).

* SPLIT

*    DATA(split_me) = |split, me|.
*    SPLIT split_me at `,` into data(s1) data(s2).
*    out->write( s1 ).
*    out->write( s2 ).

* SHIFT

*    DATA(shift_me) = |shift me|.
*    SHIFT shift_me by 2 PLACES.

* SHIFT shift_me right by 2 PLACES.
* SHIFT shift_me CIRCULAR by 2 PLACES.

*  out->write( shift_left( val = shift_me places = 2 ) ).

*    SHIFT shift_me up to `ft`.
*
*    out->write( shift_me ).

* CONDENSE

    DATA(condense_me) = |  Condense Me |.

*    CONDENSE condense_me.

    CONDENSE condense_me NO-GAPS.

    out->write( condense_me ).


  ENDMETHOD.
ENDCLASS.
