CLASS zcl_function_mods_55 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_function_mods_55 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

*  DATA: res TYPE i.
*
*  CALL FUNCTION 'Z_FM_SAMP_55'
*    EXPORTING num_one = 5
*    IMPORTING result = res.
*
*    out->write( res ).

* Function with changing parameters

*    DATA(change_me_ref) = NEW i( 3 ).
*
*    DATA(change_me_val) = 4.
*
*    DATA: str_res TYPE string.
*
*    CALL FUNCTION 'Z_FM_CHANGE_55'
*        EXPORTING
*            num_one = 1
*            num_two = 2
*         IMPORTING
*            result = str_res
*         CHANGING
*            ref_changed = change_me_ref
*            val_changed = change_me_val.
*
*    out->write( str_res ).
*    out->write( change_me_ref->* ).
*    out->write( change_me_val ).

* EXCEPTIONS

    DATA: res_i TYPE i.

    TRY.
        CALL FUNCTION 'Z_FM_EXCEPTIONS_55'
            EXPORTING
                num_one = 2
                num_two = 0
            IMPORTING
                result = res_i.

    CATCH cx_sy_zerodivide.
        out->write( 'Cannot divide by 0' ).

    ENDTRY.

  ENDMETHOD.
ENDCLASS.
