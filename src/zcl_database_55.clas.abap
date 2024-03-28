CLASS zcl_database_55 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_database_55 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

* INSERTING A DB TABLE

*    DATA: pop_tab TYPE STANDARD TABLE OF ztb_db_lesson_55.
*
*    GET TIME STAMP FIELD DATA(t_stamp).
*
*    pop_tab = VALUE #(
*    ( id = 1 name = 'French Fries' descriptions = 'Thin Fried Potato' country = 'FR' last_changed_at = t_stamp )
*    ( id = 2 name = 'Bratwurst' descriptions = 'Seasoned Sausage' country = 'DE' last_changed_at = t_stamp )
*    ( id = 3 name = 'Chicken Samosa' descriptions = 'Chicken Filled Pastry' country = 'IN' last_changed_at = t_stamp )
*    ).
*
*    TRY.
*        INSERT ztb_db_lesson_55 FROM TABLE @pop_tab.
*        out->write( 'Success' ).
*    CATCH cx_sy_open_sql_db INTO DATA(exref).
*        DATA(msg_text) = exref->if_message~get_text(  ).
*        out->write( msg_text ).
*    ENDTRY.

* READ FROM DB TABLE

    SELECT *
    FROM ztb_db_lesson_55
    INTO TABLE @DATA(local_table).

*    out->write( local_table ).

* CORRESPONDING

    TYPES: BEGIN OF sm_row,
            id TYPE i,
            country TYPE c LENGTH 3,
            new_field TYPE c LENGTH 40,
           END OF sm_row.

    DATA: local_sm_tab TYPE SORTED TABLE OF sm_row WITH UNIQUE KEY id.
*
*    SELECT *
*    FROM ztb_db_lesson_55
*    INTO CORRESPONDING FIELDS OF TABLE @local_sm_tab.
*
*    out->write( local_sm_tab ).

* MAPPING

    local_sm_tab = CORRESPONDING #( local_table MAPPING new_field = descriptions ).
*    out->write( local_sm_tab ).

    DATA(found) = local_sm_tab[ new_field = 'Seasoned Sausage' ].
    out->write( found ).


  ENDMETHOD.
ENDCLASS.
