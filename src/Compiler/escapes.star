/* Automatically generated, do not edit */

star.comp.escapes{
  import star.
  import star.comp.types.

  public escapeType:(string)=>tipe.
  escapeType("_exit") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*integer")])),tupleType([])).
  escapeType("_command_line") => tpExp(tpExp(tpFun("->",2),tupleType([])),tpExp(tpFun("star.core*list",1),tipe("star.core*string"))).
  escapeType("_abort") => allType(kVar("s"),allType(kVar("t"),tpExp(tpExp(tpFun("->",2),tupleType([kVar("s"),kVar("t")])),tupleType([])))).
  escapeType("_identical") => allType(kVar("t"),tpExp(tpExp(tpFun("->",2),tupleType([kVar("t"),kVar("t")])),tipe("star.core*boolean"))).
  escapeType("_definedLbl") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*string"),tipe("star.core*integer")])),tipe("star.core*boolean")).
  escapeType("_callLbl") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*string"),tipe("star.core*integer"),tpExp(tpFun("star.core*list",1),tpExp(tpFun("star.core*list",1),tipe("star.core*string")))])),tupleType([])).
  escapeType("_int_plus") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*integer"),tipe("star.core*integer")])),tipe("star.core*integer")).
  escapeType("_int_minus") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*integer"),tipe("star.core*integer")])),tipe("star.core*integer")).
  escapeType("_int_times") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*integer"),tipe("star.core*integer")])),tipe("star.core*integer")).
  escapeType("_int_div") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*integer"),tipe("star.core*integer")])),tipe("star.core*integer")).
  escapeType("_int_mod") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*integer"),tipe("star.core*integer")])),tipe("star.core*integer")).
  escapeType("_int_hash") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*integer")])),tipe("star.core*integer")).
  escapeType("_flt_plus") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*float"),tipe("star.core*float")])),tipe("star.core*float")).
  escapeType("_flt_minus") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*float"),tipe("star.core*float")])),tipe("star.core*float")).
  escapeType("_flt_times") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*float"),tipe("star.core*float")])),tipe("star.core*float")).
  escapeType("_flt_div") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*float"),tipe("star.core*float")])),tipe("star.core*float")).
  escapeType("_flt_mod") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*float"),tipe("star.core*float")])),tipe("star.core*float")).
  escapeType("_int_abs") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*integer")])),tipe("star.core*integer")).
  escapeType("_flt_abs") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*integer")])),tipe("star.core*integer")).
  escapeType("_int_eq") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*integer"),tipe("star.core*integer")])),tipe("star.core*boolean")).
  escapeType("_int_lt") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*integer"),tipe("star.core*integer")])),tipe("star.core*boolean")).
  escapeType("_int_ge") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*integer"),tipe("star.core*integer")])),tipe("star.core*boolean")).
  escapeType("_flt_eq") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*float"),tipe("star.core*float"),tipe("star.core*float")])),tipe("star.core*boolean")).
  escapeType("_flt_lt") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*float"),tipe("star.core*float")])),tipe("star.core*boolean")).
  escapeType("_flt_ge") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*float"),tipe("star.core*float")])),tipe("star.core*boolean")).
  escapeType("_int2flt") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*integer")])),tipe("star.core*float")).
  escapeType("_flt2int") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*float")])),tipe("star.core*integer")).
  escapeType("_flt_hash") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*float")])),tipe("star.core*integer")).
  escapeType("_flt_pwr") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*float"),tipe("star.core*float")])),tipe("star.core*float")).
  escapeType("sqrt") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*float")])),tipe("star.core*float")).
  escapeType("_exp") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*float")])),tipe("star.core*float")).
  escapeType("log") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*float")])),tipe("star.core*float")).
  escapeType("log10") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*float")])),tipe("star.core*float")).
  escapeType("pi") => tpExp(tpExp(tpFun("->",2),tupleType([])),tipe("star.core*float")).
  escapeType("sin") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*float")])),tipe("star.core*float")).
  escapeType("cos") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*float")])),tipe("star.core*float")).
  escapeType("tan") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*float")])),tipe("star.core*float")).
  escapeType("asin") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*float")])),tipe("star.core*float")).
  escapeType("acos") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*float")])),tipe("star.core*float")).
  escapeType("atan") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*float")])),tipe("star.core*float")).
  escapeType("trunc") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*float")])),tipe("star.core*float")).
  escapeType("floor") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*float")])),tipe("star.core*float")).
  escapeType("ceil") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*float")])),tipe("star.core*float")).
  escapeType("integral") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*float")])),tipe("star.core*boolean")).
  escapeType("_irand") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*integer")])),tipe("star.core*integer")).
  escapeType("_ldexp") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*float"),tipe("star.core*integer")])),tipe("star.core*float")).
  escapeType("_frexp") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*float")])),tupleType([tipe("star.core*float"),tipe("star.core*integer")])).
  escapeType("_modf") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*float")])),tupleType([tipe("star.core*float"),tipe("star.core*integer")])).
  escapeType("_band") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*integer"),tipe("star.core*integer")])),tipe("star.core*integer")).
  escapeType("_bor") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*integer"),tipe("star.core*integer")])),tipe("star.core*integer")).
  escapeType("_bxor") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*integer"),tipe("star.core*integer")])),tipe("star.core*integer")).
  escapeType("_blsl") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*integer"),tipe("star.core*integer")])),tipe("star.core*integer")).
  escapeType("_blsr") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*integer"),tipe("star.core*integer")])),tipe("star.core*integer")).
  escapeType("_basr") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*integer"),tipe("star.core*integer")])),tipe("star.core*integer")).
  escapeType("_bnot") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*integer")])),tipe("star.core*integer")).
  escapeType("_nthb") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*integer"),tipe("star.core*integer")])),tipe("star.core*boolean")).
  escapeType("_bcount") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*integer")])),tipe("star.core*integer")).
  escapeType("_cell") => allType(kVar("t"),tpExp(tpExp(tpFun("->",2),tupleType([kVar("t")])),ref(kVar("t")))).
  escapeType("_get") => allType(kVar("t"),tpExp(tpExp(tpFun("->",2),tupleType([ref(kVar("t"))])),kVar("t"))).
  escapeType("_assign") => allType(kVar("t"),tpExp(tpExp(tpFun("->",2),tupleType([ref(kVar("t")),kVar("t")])),kVar("t"))).
  escapeType("_isDefinedVr") => allType(kVar("t"),tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*string")])),tipe("star.core*boolean"))).
  escapeType("_definedVr") => allType(kVar("t"),tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*string")])),kVar("t"))).
  escapeType("_defineVr") => allType(kVar("t"),tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*string"),kVar("t")])),tipe("star.core*boolean"))).
  escapeType("_tuple_nth") => allType(kVar("t"),allType(kVar("e"),tpExp(tpExp(tpFun("->",2),tupleType([kVar("t"),tipe("star.core*integer")])),kVar("e")))).
  escapeType("_tuple_set_nth") => allType(kVar("t"),allType(kVar("e"),tpExp(tpExp(tpFun("->",2),tupleType([kVar("t"),tipe("star.core*integer"),kVar("e")])),tipe("star.core*boolean")))).
  escapeType("_list_empty") => allType(kVar("t"),tpExp(tpExp(tpFun("->",2),tupleType([tpExp(tpFun("star.core*list",1),kVar("t"))])),tipe("star.core*boolean"))).
  escapeType("_list_size") => allType(kVar("t"),tpExp(tpExp(tpFun("->",2),tupleType([tpExp(tpFun("star.core*list",1),kVar("t"))])),tipe("star.core*integer"))).
  escapeType("_list_nth") => allType(kVar("t"),tpExp(tpExp(tpFun("->",2),tupleType([tpExp(tpFun("star.core*list",1),kVar("t")),tipe("star.core*integer")])),kVar("t"))).
  escapeType("_list_append") => allType(kVar("t"),tpExp(tpExp(tpFun("->",2),tupleType([tpExp(tpFun("star.core*list",1),kVar("t")),kVar("t")])),tpExp(tpFun("star.core*list",1),kVar("t")))).
  escapeType("_list_prepend") => allType(kVar("t"),tpExp(tpExp(tpFun("->",2),tupleType([tpExp(tpFun("star.core*list",1),kVar("t")),kVar("t")])),tpExp(tpFun("star.core*list",1),kVar("t")))).
  escapeType("_list_insert") => allType(kVar("t"),tpExp(tpExp(tpFun("->",2),tupleType([tpExp(tpFun("star.core*list",1),kVar("t")),tipe("star.core*integer"),kVar("t")])),tpExp(tpFun("star.core*list",1),kVar("t")))).
  escapeType("_list_replace") => allType(kVar("t"),tpExp(tpExp(tpFun("->",2),tupleType([tpExp(tpFun("star.core*list",1),kVar("t")),tipe("star.core*integer"),kVar("t")])),tpExp(tpFun("star.core*list",1),kVar("t")))).
  escapeType("_list_remove") => allType(kVar("t"),tpExp(tpExp(tpFun("->",2),tupleType([tpExp(tpFun("star.core*list",1),kVar("t")),tipe("star.core*integer")])),tpExp(tpFun("star.core*list",1),kVar("t")))).
  escapeType("_list_slice") => allType(kVar("t"),tpExp(tpExp(tpFun("->",2),tupleType([tpExp(tpFun("star.core*list",1),kVar("t")),tipe("star.core*integer"),tipe("star.core*integer")])),tpExp(tpFun("star.core*list",1),kVar("t")))).
  escapeType("_list_front") => allType(kVar("t"),tpExp(tpExp(tpFun("->",2),tupleType([tpExp(tpFun("star.core*list",1),kVar("t")),tipe("star.core*integer")])),tpExp(tpFun("star.core*list",1),kVar("t")))).
  escapeType("_list_back") => allType(kVar("t"),tpExp(tpExp(tpFun("->",2),tupleType([tpExp(tpFun("star.core*list",1),kVar("t")),tipe("star.core*integer")])),tpExp(tpFun("star.core*list",1),kVar("t")))).
  escapeType("_list_nil") => allType(kVar("t"),tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*integer")])),tpExp(tpFun("star.core*list",1),kVar("t")))).
  escapeType("_list_concat") => allType(kVar("t"),tpExp(tpExp(tpFun("->",2),tupleType([tpExp(tpFun("star.core*list",1),kVar("t")),tpExp(tpFun("star.core*list",1),kVar("t"))])),tpExp(tpFun("star.core*list",1),kVar("t")))).
  escapeType("_list_flatten") => allType(kVar("t"),tpExp(tpExp(tpFun("->",2),tupleType([tpExp(tpFun("star.core*list",1),tpExp(tpFun("star.core*list",1),kVar("t")))])),tpExp(tpFun("star.core*list",1),kVar("t")))).
  escapeType("_list_reverse") => allType(kVar("t"),tpExp(tpExp(tpFun("->",2),tupleType([tpExp(tpFun("star.core*list",1),kVar("t"))])),tpExp(tpFun("star.core*list",1),kVar("t")))).
  escapeType("_cwd") => tpExp(tpExp(tpFun("->",2),tupleType([])),tipe("star.core*string")).
  escapeType("_cd") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*string")])),tpExp(tpFun("star.core*resultType",1),tipe("star.core*string"))).
  escapeType("_rm") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*string")])),tpExp(tpFun("star.core*resultType",1),tipe("star.core*string"))).
  escapeType("_mv") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*string"),tipe("star.core*string")])),tpExp(tpFun("star.core*resultType",1),tipe("star.core*string"))).
  escapeType("_mkdir") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*string"),tipe("star.core*integer")])),tpExp(tpFun("star.core*resultType",1),tipe("star.core*string"))).
  escapeType("_rmdir") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*string")])),tpExp(tpFun("star.core*resultType",1),tipe("star.core*string"))).
  escapeType("_isdir") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*string")])),tipe("star.core*boolean")).
  escapeType("_file_chmod") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*string"),tipe("star.core*integer")])),tpExp(tpFun("star.core*resultType",1),tipe("star.core*string"))).
  escapeType("_ls") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*string")])),tpExp(tpFun("star.core*list",1),tipe("star.core*string"))).
  escapeType("_repo") => tpExp(tpExp(tpFun("->",2),tupleType([])),tipe("star.core*string")).
  escapeType("_file_mode") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*string")])),tipe("star.core*integer")).
  escapeType("_file_present") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*string")])),tipe("star.core*boolean")).
  escapeType("_file_type") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*string")])),tipe("star.core*integer")).
  escapeType("_file_size") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*string")])),tipe("star.core*integer")).
  escapeType("_file_modified") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*string")])),tipe("star.core*integer")).
  escapeType("_file_date") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*string")])),tupleType([tipe("star.core*integer"),tipe("star.core*integer"),tipe("star.core*integer")])).
  escapeType("_openInFile") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*string"),tipe("star.core*integer")])),tipe("star.io*fileHandle")).
  escapeType("_openOutFile") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*string"),tipe("star.core*integer")])),tipe("star.io*fileHandle")).
  escapeType("_openAppendFile") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*string"),tipe("star.core*integer")])),tipe("star.io*fileHandle")).
  escapeType("_openAppendIOFile") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*string"),tipe("star.core*integer")])),tipe("star.io*fileHandle")).
  escapeType("_popen") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*string"),tpExp(tpFun("star.core*list",1),tipe("star.core*string")),tpExp(tpFun("star.core*list",1),tupleType([tipe("star.core*string"),tipe("star.core*string")]))])),tupleType([tipe("star.io*fileHandle"),tipe("star.io*fileHandle"),tipe("star.io*fileHandle")])).
  escapeType("_close") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.io*fileHandle")])),tpExp(tpFun("star.core*resultType",1),tipe("star.core*string"))).
  escapeType("_end_of_file") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.io*fileHandle")])),tipe("star.core*boolean")).
  escapeType("_ready_to_read") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.io*fileHandle")])),tipe("star.core*boolean")).
  escapeType("_ready_to_write") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.io*fileHandle")])),tipe("star.core*boolean")).
  escapeType("_inchars") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.io*fileHandle"),tipe("star.core*integer")])),tipe("star.core*string")).
  escapeType("_inbytes") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.io*fileHandle"),tipe("star.core*integer")])),tpExp(tpFun("star.core*list",1),tipe("star.core*integer"))).
  escapeType("_inchar") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.io*fileHandle")])),tipe("star.core*integer")).
  escapeType("_inbyte") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.io*fileHandle")])),tipe("star.core*integer")).
  escapeType("_inline") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.io*fileHandle")])),tipe("star.core*string")).
  escapeType("_intext") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.io*fileHandle"),tipe("star.core*string")])),tipe("star.core*string")).
  escapeType("_outchar") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.io*fileHandle"),tipe("star.core*integer")])),tpExp(tpFun("star.core*resultType",1),tipe("star.core*string"))).
  escapeType("_outbyte") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.io*fileHandle"),tipe("star.core*integer")])),tpExp(tpFun("star.core*resultType",1),tipe("star.core*string"))).
  escapeType("_outbytes") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.io*fileHandle"),tpExp(tpFun("star.core*list",1),tipe("star.core*integer"))])),tpExp(tpFun("star.core*resultType",1),tipe("star.core*string"))).
  escapeType("_outtext") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.io*fileHandle"),tipe("star.core*string")])),tpExp(tpFun("star.core*resultType",1),tipe("star.core*string"))).
  escapeType("_stdfile") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*integer")])),tipe("star.io*fileHandle")).
  escapeType("_fposition") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.io*fileHandle")])),tipe("star.core*integer")).
  escapeType("_fseek") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.io*fileHandle"),tipe("star.core*integer")])),tpExp(tpFun("star.core*resultType",1),tipe("star.core*string"))).
  escapeType("_flush") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.io*fileHandle")])),tpExp(tpFun("star.core*resultType",1),tipe("star.core*string"))).
  escapeType("_flushall") => tpExp(tpExp(tpFun("->",2),tupleType([])),tupleType([])).
  escapeType("_setfileencoding") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.io*fileHandle"),tipe("star.core*integer")])),tpExp(tpFun("star.core*resultType",1),tipe("star.core*string"))).
  escapeType("_get_file") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*string")])),tipe("star.core*string")).
  escapeType("_put_file") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*string"),tipe("star.core*string")])),tupleType([])).
  escapeType("_show") => tpExp(tpExp(tpFun("->",2),tupleType([tupleType([tipe("star.core*string"),tipe("star.core*integer"),tipe("star.core*integer"),tipe("star.core*integer"),tipe("star.core*integer")]),tipe("star.core*string")])),tupleType([])).
  escapeType("_install_pkg") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*string")])),tpExp(tpFun("star.core*list",1),tupleType([tipe("star.core*string"),tipe("star.core*string")]))).
  escapeType("_pkg_is_present") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*string"),tipe("star.core*string")])),tipe("star.core*boolean")).
  escapeType("_logmsg") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*string")])),tpExp(tpFun("star.core*resultType",1),tipe("star.core*string"))).
  escapeType("_connect") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*string"),tipe("star.core*integer"),tipe("star.core*integer")])),tupleType([tipe("star.io*fileHandle"),tipe("star.io*fileHandle")])).
  escapeType("_listen") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*integer")])),tipe("star.io*fileHandle")).
  escapeType("_accept") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.io*fileHandle")])),tupleType([tipe("star.io*fileHandle"),tipe("star.io*fileHandle"),tipe("star.core*string"),tipe("star.core*integer"),tipe("star.core*string")])).
  escapeType("_hosttoip") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*string")])),tpExp(tpFun("star.core*list",1),tipe("star.core*string"))).
  escapeType("_iptohost") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*string")])),tipe("star.core*string")).
  escapeType("_delay") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*float")])),tpExp(tpFun("star.core*resultType",1),tipe("star.core*string"))).
  escapeType("_sleep") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*float")])),tpExp(tpFun("star.core*resultType",1),tipe("star.core*string"))).
  escapeType("_now") => tpExp(tpExp(tpFun("->",2),tupleType([])),tipe("star.core*float")).
  escapeType("_today") => tpExp(tpExp(tpFun("->",2),tupleType([])),tipe("star.core*float")).
  escapeType("_ticks") => tpExp(tpExp(tpFun("->",2),tupleType([])),tipe("star.core*float")).
  escapeType("_time2date") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*float")])),tupleType([tipe("star.core*integer"),tipe("star.core*integer"),tipe("star.core*integer"),tipe("star.core*integer"),tipe("star.core*integer"),tipe("star.core*integer"),tipe("star.core*float"),tipe("star.core*integer"),tipe("star.core*integer")])).
  escapeType("_time2utc") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*float")])),tupleType([tipe("star.core*integer"),tipe("star.core*integer"),tipe("star.core*integer"),tipe("star.core*integer"),tipe("star.core*integer"),tipe("star.core*integer"),tipe("star.core*float"),tipe("star.core*integer"),tipe("star.core*integer")])).
  escapeType("_date2time") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*integer"),tipe("star.core*integer"),tipe("star.core*integer"),tipe("star.core*integer"),tipe("star.core*integer"),tipe("star.core*float"),tipe("star.core*integer")])),tipe("star.core*float")).
  escapeType("_utc2time") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*integer"),tipe("star.core*integer"),tipe("star.core*integer"),tipe("star.core*integer"),tipe("star.core*integer"),tipe("star.core*float"),tipe("star.core*integer")])),tipe("star.core*float")).
  escapeType("_isCcChar") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*integer")])),tipe("star.core*boolean")).
  escapeType("_isCfChar") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*integer")])),tipe("star.core*boolean")).
  escapeType("_isCnChar") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*integer")])),tipe("star.core*boolean")).
  escapeType("_isCoChar") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*integer")])),tipe("star.core*boolean")).
  escapeType("_isCsChar") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*integer")])),tipe("star.core*boolean")).
  escapeType("_isLlChar") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*integer")])),tipe("star.core*boolean")).
  escapeType("_isLmChar") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*integer")])),tipe("star.core*boolean")).
  escapeType("_isLoChar") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*integer")])),tipe("star.core*boolean")).
  escapeType("_isLtChar") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*integer")])),tipe("star.core*boolean")).
  escapeType("_isLuChar") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*integer")])),tipe("star.core*boolean")).
  escapeType("_isMcChar") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*integer")])),tipe("star.core*boolean")).
  escapeType("_isMeChar") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*integer")])),tipe("star.core*boolean")).
  escapeType("_isMnChar") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*integer")])),tipe("star.core*boolean")).
  escapeType("_isNdChar") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*integer")])),tipe("star.core*boolean")).
  escapeType("_isNlChar") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*integer")])),tipe("star.core*boolean")).
  escapeType("_isNoChar") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*integer")])),tipe("star.core*boolean")).
  escapeType("_isPcChar") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*integer")])),tipe("star.core*boolean")).
  escapeType("_isPdChar") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*integer")])),tipe("star.core*boolean")).
  escapeType("_isPeChar") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*integer")])),tipe("star.core*boolean")).
  escapeType("_isPfChar") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*integer")])),tipe("star.core*boolean")).
  escapeType("_isPiChar") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*integer")])),tipe("star.core*boolean")).
  escapeType("_isPoChar") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*integer")])),tipe("star.core*boolean")).
  escapeType("_isPsChar") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*integer")])),tipe("star.core*boolean")).
  escapeType("_isScChar") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*integer")])),tipe("star.core*boolean")).
  escapeType("_isSkChar") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*integer")])),tipe("star.core*boolean")).
  escapeType("_isSmChar") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*integer")])),tipe("star.core*boolean")).
  escapeType("_isSoChar") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*integer")])),tipe("star.core*boolean")).
  escapeType("_isZlChar") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*integer")])),tipe("star.core*boolean")).
  escapeType("_isZpChar") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*integer")])),tipe("star.core*boolean")).
  escapeType("_isZsChar") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*integer")])),tipe("star.core*boolean")).
  escapeType("_isLetterChar") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*integer")])),tipe("star.core*boolean")).
  escapeType("_digitCode") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*integer")])),tipe("star.core*integer")).
  escapeType("_int2str") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*integer"),tipe("star.core*integer"),tipe("star.core*integer"),tipe("star.core*integer")])),tipe("star.core*string")).
  escapeType("_flt2str") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*float"),tipe("star.core*integer"),tipe("star.core*integer"),tipe("star.core*integer"),tipe("star.core*boolean")])),tipe("star.core*string")).
  escapeType("_int_format") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*integer"),tipe("star.core*string")])),tipe("star.core*string")).
  escapeType("_flt_format") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*float"),tipe("star.core*string")])),tipe("star.core*string")).
  escapeType("_str2flt") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*string")])),tipe("star.core*float")).
  escapeType("_str2int") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*string")])),tipe("star.core*integer")).
  escapeType("_str_eq") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*string"),tipe("star.core*string")])),tipe("star.core*boolean")).
  escapeType("_str_lt") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*string"),tipe("star.core*string")])),tipe("star.core*boolean")).
  escapeType("_str_ge") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*string"),tipe("star.core*string")])),tipe("star.core*boolean")).
  escapeType("_str_hash") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*string")])),tipe("star.core*integer")).
  escapeType("_str_len") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*string")])),tipe("star.core*integer")).
  escapeType("_str_gen") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*string")])),tipe("star.core*string")).
  escapeType("_stringOf") => allType(kVar("t"),tpExp(tpExp(tpFun("->",2),tupleType([kVar("t"),tipe("star.core*integer")])),tipe("star.core*string"))).
  escapeType("_explode") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*string")])),tpExp(tpFun("star.core*list",1),tipe("star.core*integer"))).
  escapeType("_implode") => tpExp(tpExp(tpFun("->",2),tupleType([tpExp(tpFun("star.core*list",1),tipe("star.core*integer"))])),tipe("star.core*string")).
  escapeType("_str_find") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*string"),tipe("star.core*string"),tipe("star.core*integer")])),tipe("star.core*integer")).
  escapeType("_sub_str") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*string"),tipe("star.core*integer"),tipe("star.core*integer")])),tipe("star.core*string")).
  escapeType("_str_split") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*string"),tipe("star.core*integer")])),tupleType([tipe("star.core*string"),tipe("star.core*string")])).
  escapeType("_str_concat") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*string"),tipe("star.core*string")])),tipe("star.core*string")).
  escapeType("_str_reverse") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*string")])),tipe("star.core*string")).
  escapeType("_str_start") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*string"),tipe("star.core*string")])),tipe("star.core*boolean")).
  escapeType("_str_multicat") => tpExp(tpExp(tpFun("->",2),tupleType([tpExp(tpFun("star.core*list",1),tipe("star.core*string"))])),tipe("star.core*string")).
  escapeType("_str_hdtl") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*string")])),tupleType([tipe("star.core*integer"),tipe("star.core*string")])).
  escapeType("_str_back") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*string")])),tupleType([tipe("star.core*string"),tipe("star.core*integer")])).
  escapeType("_str_cons") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*integer"),tipe("star.core*string")])),tipe("star.core*string")).
  escapeType("_str_apnd") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*string"),tipe("star.core*integer")])),tipe("star.core*string")).
  escapeType("_getenv") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*string"),tipe("star.core*string")])),tipe("star.core*string")).
  escapeType("_setenv") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*string"),tipe("star.core*string")])),tpExp(tpFun("star.core*resultType",1),tipe("star.core*string"))).
  escapeType("_envir") => tpExp(tpExp(tpFun("->",2),tupleType([])),tpExp(tpFun("star.core*list",1),tupleType([tipe("star.core*string"),tipe("star.core*string")]))).
  escapeType("_getlogin") => tpExp(tpExp(tpFun("->",2),tupleType([])),tipe("star.core*string")).
  escapeType("_fork") => tpExp(tpExp(tpFun("->",2),tupleType([tpExp(tpExp(tpFun("->",2),tupleType([])),tpExp(tpFun("star.core*resultType",1),tipe("star.core*string")))])),tipe("star.thread*thread")).
  escapeType("_thread") => tpExp(tpExp(tpFun("->",2),tupleType([])),tipe("star.thread*thread")).
  escapeType("_kill") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.thread*thread")])),tpExp(tpFun("star.core*resultType",1),tipe("star.core*string"))).
  escapeType("_thread_state") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.thread*thread")])),tipe("star.thread*processState")).
  escapeType("_waitfor") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.thread*thread")])),tpExp(tpFun("star.core*resultType",1),tipe("star.core*string"))).
  escapeType("_shell") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*string"),tpExp(tpFun("star.core*list",1),tipe("star.core*string")),tpExp(tpFun("star.core*list",1),tupleType([tipe("star.core*string"),tipe("star.core*string")]))])),tipe("star.core*integer")).
  escapeType("_newLock") => tpExp(tpExp(tpFun("->",2),tupleType([])),tipe("star.thread*lock")).
  escapeType("_acquireLock") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.thread*lock"),tipe("star.core*float")])),tpExp(tpFun("star.core*resultType",1),tipe("star.core*string"))).
  escapeType("_waitLock") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.thread*lock"),tipe("star.core*float")])),tpExp(tpFun("star.core*resultType",1),tipe("star.core*string"))).
  escapeType("_releaseLock") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.thread*lock")])),tpExp(tpFun("star.core*resultType",1),tipe("star.core*string"))).
  escapeType("_ins_debug") => tpExp(tpExp(tpFun("->",2),tupleType([])),tupleType([])).
  escapeType("_stackTrace") => tpExp(tpExp(tpFun("->",2),tupleType([])),tupleType([])).
  escapeType("_assert") => tpExp(tpExp(tpFun("->",2),tupleType([tipe("star.core*boolean"),tupleType([tipe("star.core*string"),tipe("star.core*integer"),tipe("star.core*integer"),tipe("star.core*integer"),tipe("star.core*integer")])])),tupleType([])).

  public isEscape:(string)=>boolean.
  isEscape("_exit") => true.
  isEscape("_command_line") => true.
  isEscape("_abort") => true.
  isEscape("_identical") => true.
  isEscape("_definedLbl") => true.
  isEscape("_callLbl") => true.
  isEscape("_int_plus") => true.
  isEscape("_int_minus") => true.
  isEscape("_int_times") => true.
  isEscape("_int_div") => true.
  isEscape("_int_mod") => true.
  isEscape("_int_hash") => true.
  isEscape("_flt_plus") => true.
  isEscape("_flt_minus") => true.
  isEscape("_flt_times") => true.
  isEscape("_flt_div") => true.
  isEscape("_flt_mod") => true.
  isEscape("_int_abs") => true.
  isEscape("_flt_abs") => true.
  isEscape("_int_eq") => true.
  isEscape("_int_lt") => true.
  isEscape("_int_ge") => true.
  isEscape("_flt_eq") => true.
  isEscape("_flt_lt") => true.
  isEscape("_flt_ge") => true.
  isEscape("_int2flt") => true.
  isEscape("_flt2int") => true.
  isEscape("_flt_hash") => true.
  isEscape("_flt_pwr") => true.
  isEscape("sqrt") => true.
  isEscape("_exp") => true.
  isEscape("log") => true.
  isEscape("log10") => true.
  isEscape("pi") => true.
  isEscape("sin") => true.
  isEscape("cos") => true.
  isEscape("tan") => true.
  isEscape("asin") => true.
  isEscape("acos") => true.
  isEscape("atan") => true.
  isEscape("trunc") => true.
  isEscape("floor") => true.
  isEscape("ceil") => true.
  isEscape("integral") => true.
  isEscape("_irand") => true.
  isEscape("_ldexp") => true.
  isEscape("_frexp") => true.
  isEscape("_modf") => true.
  isEscape("_band") => true.
  isEscape("_bor") => true.
  isEscape("_bxor") => true.
  isEscape("_blsl") => true.
  isEscape("_blsr") => true.
  isEscape("_basr") => true.
  isEscape("_bnot") => true.
  isEscape("_nthb") => true.
  isEscape("_bcount") => true.
  isEscape("_cell") => true.
  isEscape("_get") => true.
  isEscape("_assign") => true.
  isEscape("_isDefinedVr") => true.
  isEscape("_definedVr") => true.
  isEscape("_defineVr") => true.
  isEscape("_tuple_nth") => true.
  isEscape("_tuple_set_nth") => true.
  isEscape("_list_empty") => true.
  isEscape("_list_size") => true.
  isEscape("_list_nth") => true.
  isEscape("_list_append") => true.
  isEscape("_list_prepend") => true.
  isEscape("_list_insert") => true.
  isEscape("_list_replace") => true.
  isEscape("_list_remove") => true.
  isEscape("_list_slice") => true.
  isEscape("_list_front") => true.
  isEscape("_list_back") => true.
  isEscape("_list_nil") => true.
  isEscape("_list_concat") => true.
  isEscape("_list_flatten") => true.
  isEscape("_list_reverse") => true.
  isEscape("_cwd") => true.
  isEscape("_cd") => true.
  isEscape("_rm") => true.
  isEscape("_mv") => true.
  isEscape("_mkdir") => true.
  isEscape("_rmdir") => true.
  isEscape("_isdir") => true.
  isEscape("_file_chmod") => true.
  isEscape("_ls") => true.
  isEscape("_repo") => true.
  isEscape("_file_mode") => true.
  isEscape("_file_present") => true.
  isEscape("_file_type") => true.
  isEscape("_file_size") => true.
  isEscape("_file_modified") => true.
  isEscape("_file_date") => true.
  isEscape("_openInFile") => true.
  isEscape("_openOutFile") => true.
  isEscape("_openAppendFile") => true.
  isEscape("_openAppendIOFile") => true.
  isEscape("_popen") => true.
  isEscape("_close") => true.
  isEscape("_end_of_file") => true.
  isEscape("_ready_to_read") => true.
  isEscape("_ready_to_write") => true.
  isEscape("_inchars") => true.
  isEscape("_inbytes") => true.
  isEscape("_inchar") => true.
  isEscape("_inbyte") => true.
  isEscape("_inline") => true.
  isEscape("_intext") => true.
  isEscape("_outchar") => true.
  isEscape("_outbyte") => true.
  isEscape("_outbytes") => true.
  isEscape("_outtext") => true.
  isEscape("_stdfile") => true.
  isEscape("_fposition") => true.
  isEscape("_fseek") => true.
  isEscape("_flush") => true.
  isEscape("_flushall") => true.
  isEscape("_setfileencoding") => true.
  isEscape("_get_file") => true.
  isEscape("_put_file") => true.
  isEscape("_show") => true.
  isEscape("_install_pkg") => true.
  isEscape("_pkg_is_present") => true.
  isEscape("_logmsg") => true.
  isEscape("_connect") => true.
  isEscape("_listen") => true.
  isEscape("_accept") => true.
  isEscape("_hosttoip") => true.
  isEscape("_iptohost") => true.
  isEscape("_delay") => true.
  isEscape("_sleep") => true.
  isEscape("_now") => true.
  isEscape("_today") => true.
  isEscape("_ticks") => true.
  isEscape("_time2date") => true.
  isEscape("_time2utc") => true.
  isEscape("_date2time") => true.
  isEscape("_utc2time") => true.
  isEscape("_isCcChar") => true.
  isEscape("_isCfChar") => true.
  isEscape("_isCnChar") => true.
  isEscape("_isCoChar") => true.
  isEscape("_isCsChar") => true.
  isEscape("_isLlChar") => true.
  isEscape("_isLmChar") => true.
  isEscape("_isLoChar") => true.
  isEscape("_isLtChar") => true.
  isEscape("_isLuChar") => true.
  isEscape("_isMcChar") => true.
  isEscape("_isMeChar") => true.
  isEscape("_isMnChar") => true.
  isEscape("_isNdChar") => true.
  isEscape("_isNlChar") => true.
  isEscape("_isNoChar") => true.
  isEscape("_isPcChar") => true.
  isEscape("_isPdChar") => true.
  isEscape("_isPeChar") => true.
  isEscape("_isPfChar") => true.
  isEscape("_isPiChar") => true.
  isEscape("_isPoChar") => true.
  isEscape("_isPsChar") => true.
  isEscape("_isScChar") => true.
  isEscape("_isSkChar") => true.
  isEscape("_isSmChar") => true.
  isEscape("_isSoChar") => true.
  isEscape("_isZlChar") => true.
  isEscape("_isZpChar") => true.
  isEscape("_isZsChar") => true.
  isEscape("_isLetterChar") => true.
  isEscape("_digitCode") => true.
  isEscape("_int2str") => true.
  isEscape("_flt2str") => true.
  isEscape("_int_format") => true.
  isEscape("_flt_format") => true.
  isEscape("_str2flt") => true.
  isEscape("_str2int") => true.
  isEscape("_str_eq") => true.
  isEscape("_str_lt") => true.
  isEscape("_str_ge") => true.
  isEscape("_str_hash") => true.
  isEscape("_str_len") => true.
  isEscape("_str_gen") => true.
  isEscape("_stringOf") => true.
  isEscape("_explode") => true.
  isEscape("_implode") => true.
  isEscape("_str_find") => true.
  isEscape("_sub_str") => true.
  isEscape("_str_split") => true.
  isEscape("_str_concat") => true.
  isEscape("_str_reverse") => true.
  isEscape("_str_start") => true.
  isEscape("_str_multicat") => true.
  isEscape("_str_hdtl") => true.
  isEscape("_str_back") => true.
  isEscape("_str_cons") => true.
  isEscape("_str_apnd") => true.
  isEscape("_getenv") => true.
  isEscape("_setenv") => true.
  isEscape("_envir") => true.
  isEscape("_getlogin") => true.
  isEscape("_fork") => true.
  isEscape("_thread") => true.
  isEscape("_kill") => true.
  isEscape("_thread_state") => true.
  isEscape("_waitfor") => true.
  isEscape("_shell") => true.
  isEscape("_newLock") => true.
  isEscape("_acquireLock") => true.
  isEscape("_waitLock") => true.
  isEscape("_releaseLock") => true.
  isEscape("_ins_debug") => true.
  isEscape("_stackTrace") => true.
  isEscape("_assert") => true.
  isEscape(_) default => false.
}.
