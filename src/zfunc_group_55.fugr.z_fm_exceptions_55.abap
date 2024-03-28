FUNCTION z_fm_exceptions_55.
*"----------------------------------------------------------------------
*"*"Local Interface:
*"  IMPORTING
*"     VALUE(NUM_ONE) TYPE  I
*"     VALUE(NUM_TWO) TYPE  I
*"  EXPORTING
*"     REFERENCE(RESULT) TYPE  I
*"  RAISING
*"      CX_SY_ZERODIVIDE
*"----------------------------------------------------------------------
    IF num_two = 0.
        RAISE EXCEPTION TYPE cx_sy_zerodivide.
    ENDIF.

    result = num_one. " / num_two.
.






ENDFUNCTION.
