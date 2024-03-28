CLASS zcl_math_exp_55 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_math_exp_55 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  DATA: num TYPE i.
*
*  num = 1 + 2.
*
*  num = num + 1.
*
*  num += 1.
*
*  num -= 1.

*  num = 2 * 3.

*  num = 4 / 2.

*    num = 1 / 8.

    DATA: pack TYPE p LENGTH 5 DECIMALS 3.

*    pack = 1 / 8.

*    num = 3 ** 2.

*    num = 3 MOD 2.
*
*    out->write( num ).

*    out->write( 3 ** 2 ).

* CONV

*    pack = '0.597'.
*    out->write( |Converting a pack to an int 0.597: { CONV i( pack ) }| ).

*    pack = 1 DIV 8.
*    out->write( pack ).

* Reduce

    DATA(total) = REDUCE i(
                            INIT sum = 0
                            FOR i = 1 UNTIL i = 5
                            NEXT sum += i
     ).

     out->write( total ).


  ENDMETHOD.
ENDCLASS.
