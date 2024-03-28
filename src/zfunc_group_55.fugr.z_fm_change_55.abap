FUNCTION Z_FM_CHANGE_55.
*"----------------------------------------------------------------------
*"*"Local Interface:
*"  IMPORTING
*"     REFERENCE(NUM_ONE) TYPE  I
*"     VALUE(NUM_TWO) TYPE  I DEFAULT 5
*"  EXPORTING
*"     REFERENCE(RESULT) TYPE  STRING
*"  CHANGING
*"     REFERENCE(REF_CHANGED) TYPE REF TO  I
*"     REFERENCE(VAL_CHANGED) TYPE  I
*"----------------------------------------------------------------------
* Value allows you direct access to importing parameters
    " num_one = 4 - this is an error
    " num_two = 7 - this will work

    ref_changed->* = ref_changed->* + 10.
    val_changed = val_changed + 10.

    result = num_one + num_two.

.






ENDFUNCTION.
