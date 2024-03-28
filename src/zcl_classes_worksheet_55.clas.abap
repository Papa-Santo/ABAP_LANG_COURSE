CLASS zcl_classes_worksheet_55 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_classes_worksheet_55 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

* Class Basics


    TRY.
*        DATA(p_cl_one) = NEW zcl_parent_class_55(
*                        name = `Shredder` job = `Fight Turtles` ).

        DATA(c_cl_one) = NEW zcl_child_class_55(
                name = 'Fred'
                job = 'Rock Mining'
                sub_class_name_var = 'Flinstone' ).

*        out->write( c_cl_one->name ).
*        out->write( c_cl_one->sub_class_name_var ).

*        DATA(res_i) = c_cl_one->add_three_numbers_from_parent(
*            num_1 = 1
*            num_2 = 2
*            num_3 = 3
*         ).
*
*         out->write( res_i ).

*    out->write( p_cl_one->two_numbers( num_one = 7 num_two = 11 ) ).
*
*    out->write( c_cl_one->two_numbers( num_one = 7 num_two = 11 ) ).

* Narrow Casting - all child classes are instances of parent class
        DATA: p_cl_three TYPE REF TO zcl_parent_class_55.

*        out->write( xsdbool( c_cl_one IS INSTANCE OF zcl_parent_class_55 ) ).

        p_cl_three = c_cl_one.

*        out->write( p_cl_three->two_numbers( num_one = 4 num_two = 2 ) ).


*    out->write( ZCL_PARENT_CLASS_55=>get_instance_count(  ) ).

*
*    DATA(p_cl_two) = NEW zcl_parent_class_55(
*                    name = `Turtle` job = `Eat Pizza` ).
      CATCH cx_abap_auth_check_exception.
        out->write( 'Already Instanciated' ).
    ENDTRY.
*
*    out->write( p_cl_one->get_instance_count( ) ).
*    out->write( p_cl_one-> )

*    out->write( p_cl_one->job ).
*
*    out->write( p_cl_two->name ).
*    out->write( p_cl_two->job ).
*    out->write( p_cl_one->greeting_public ).
*    out->write( p_cl_one->greeting_public_class_data ).
*    out->write( ZCL_PARENT_CLASS_55=>greeting_public_class_data ).

*    DATA(res) = p_cl_one->two_numbers( num_one = 9 num_two = 3 ).
*    out->write( res ).

    DATA(interface_class) = NEW zcl_interface_55(  ).
    out->write( interface_class->z_if_add_55~add_two( n1 = 1 n2 = 2 ) ).
    out->write( interface_class->z_if_add_55~add_three(
                                n1 = 1 n2 = 2 n3 = 3
    ) ).

  ENDMETHOD.
ENDCLASS.
