/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2020 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

#if defined(_WIN32)
 #include "stdio.h"
 #define IKI_DLLESPEC __declspec(dllimport)
#else
 #define IKI_DLLESPEC
#endif
#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2020 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

#if defined(_WIN32)
 #include "stdio.h"
 #define IKI_DLLESPEC __declspec(dllimport)
#else
 #define IKI_DLLESPEC
#endif
#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern int main(int, char**);
IKI_DLLESPEC extern void execute_1142(char*, char *);
IKI_DLLESPEC extern void execute_1145(char*, char *);
IKI_DLLESPEC extern void execute_1152(char*, char *);
IKI_DLLESPEC extern void execute_1155(char*, char *);
IKI_DLLESPEC extern void execute_1156(char*, char *);
IKI_DLLESPEC extern void execute_1160(char*, char *);
IKI_DLLESPEC extern void execute_1163(char*, char *);
IKI_DLLESPEC extern void execute_1164(char*, char *);
IKI_DLLESPEC extern void execute_1165(char*, char *);
IKI_DLLESPEC extern void execute_53(char*, char *);
IKI_DLLESPEC extern void execute_54(char*, char *);
IKI_DLLESPEC extern void execute_59(char*, char *);
IKI_DLLESPEC extern void execute_60(char*, char *);
IKI_DLLESPEC extern void execute_61(char*, char *);
IKI_DLLESPEC extern void execute_62(char*, char *);
IKI_DLLESPEC extern void execute_63(char*, char *);
IKI_DLLESPEC extern void execute_64(char*, char *);
IKI_DLLESPEC extern void execute_65(char*, char *);
IKI_DLLESPEC extern void execute_66(char*, char *);
IKI_DLLESPEC extern void execute_67(char*, char *);
IKI_DLLESPEC extern void execute_69(char*, char *);
IKI_DLLESPEC extern void execute_73(char*, char *);
IKI_DLLESPEC extern void execute_74(char*, char *);
IKI_DLLESPEC extern void execute_97(char*, char *);
IKI_DLLESPEC extern void execute_131(char*, char *);
IKI_DLLESPEC extern void execute_132(char*, char *);
IKI_DLLESPEC extern void execute_134(char*, char *);
IKI_DLLESPEC extern void execute_136(char*, char *);
IKI_DLLESPEC extern void execute_142(char*, char *);
IKI_DLLESPEC extern void execute_552(char*, char *);
IKI_DLLESPEC extern void execute_557(char*, char *);
IKI_DLLESPEC extern void execute_562(char*, char *);
IKI_DLLESPEC extern void execute_579(char*, char *);
IKI_DLLESPEC extern void execute_584(char*, char *);
IKI_DLLESPEC extern void execute_589(char*, char *);
IKI_DLLESPEC extern void execute_631(char*, char *);
IKI_DLLESPEC extern void execute_632(char*, char *);
IKI_DLLESPEC extern void execute_633(char*, char *);
IKI_DLLESPEC extern void execute_1147(char*, char *);
IKI_DLLESPEC extern void execute_1148(char*, char *);
IKI_DLLESPEC extern void execute_1149(char*, char *);
IKI_DLLESPEC extern void execute_1150(char*, char *);
IKI_DLLESPEC extern void execute_1151(char*, char *);
IKI_DLLESPEC extern void execute_1158(char*, char *);
IKI_DLLESPEC extern void execute_1159(char*, char *);
IKI_DLLESPEC extern void transaction_0(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
IKI_DLLESPEC extern void transaction_78(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_327(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_334(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_341(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_348(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_355(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_362(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_369(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_376(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_383(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_390(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_397(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_404(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_411(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_418(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_425(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_432(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_439(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_446(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_453(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_460(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_467(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_474(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_481(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_488(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_495(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_502(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_509(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_516(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_523(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_530(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_537(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_544(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_551(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_558(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_565(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_572(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_579(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_586(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_593(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_600(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_607(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_614(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_621(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_628(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_635(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_642(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_649(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_656(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_663(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_670(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_677(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_684(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_691(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_698(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_705(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_712(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_719(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_726(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_733(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_740(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_747(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_754(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_761(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_768(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_775(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_782(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_789(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_796(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_803(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_810(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_817(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_824(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_831(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_838(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_845(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_852(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_859(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_866(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_873(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_880(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_887(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_894(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_901(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_908(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_915(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_922(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_929(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_936(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_943(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_950(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_957(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_964(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_971(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_978(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_985(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_992(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_999(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1006(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1013(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1020(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1027(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1034(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1041(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1048(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1055(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1062(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1069(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1076(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1083(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1090(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1097(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1104(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1111(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1118(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1125(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1132(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1139(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1146(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1153(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1160(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1167(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1174(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1181(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1188(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1195(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1202(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1209(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1216(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[176] = {(funcp)execute_1142, (funcp)execute_1145, (funcp)execute_1152, (funcp)execute_1155, (funcp)execute_1156, (funcp)execute_1160, (funcp)execute_1163, (funcp)execute_1164, (funcp)execute_1165, (funcp)execute_53, (funcp)execute_54, (funcp)execute_59, (funcp)execute_60, (funcp)execute_61, (funcp)execute_62, (funcp)execute_63, (funcp)execute_64, (funcp)execute_65, (funcp)execute_66, (funcp)execute_67, (funcp)execute_69, (funcp)execute_73, (funcp)execute_74, (funcp)execute_97, (funcp)execute_131, (funcp)execute_132, (funcp)execute_134, (funcp)execute_136, (funcp)execute_142, (funcp)execute_552, (funcp)execute_557, (funcp)execute_562, (funcp)execute_579, (funcp)execute_584, (funcp)execute_589, (funcp)execute_631, (funcp)execute_632, (funcp)execute_633, (funcp)execute_1147, (funcp)execute_1148, (funcp)execute_1149, (funcp)execute_1150, (funcp)execute_1151, (funcp)execute_1158, (funcp)execute_1159, (funcp)transaction_0, (funcp)vhdl_transfunc_eventcallback, (funcp)transaction_78, (funcp)transaction_327, (funcp)transaction_334, (funcp)transaction_341, (funcp)transaction_348, (funcp)transaction_355, (funcp)transaction_362, (funcp)transaction_369, (funcp)transaction_376, (funcp)transaction_383, (funcp)transaction_390, (funcp)transaction_397, (funcp)transaction_404, (funcp)transaction_411, (funcp)transaction_418, (funcp)transaction_425, (funcp)transaction_432, (funcp)transaction_439, (funcp)transaction_446, (funcp)transaction_453, (funcp)transaction_460, (funcp)transaction_467, (funcp)transaction_474, (funcp)transaction_481, (funcp)transaction_488, (funcp)transaction_495, (funcp)transaction_502, (funcp)transaction_509, (funcp)transaction_516, (funcp)transaction_523, (funcp)transaction_530, (funcp)transaction_537, (funcp)transaction_544, (funcp)transaction_551, (funcp)transaction_558, (funcp)transaction_565, (funcp)transaction_572, (funcp)transaction_579, (funcp)transaction_586, (funcp)transaction_593, (funcp)transaction_600, (funcp)transaction_607, (funcp)transaction_614, (funcp)transaction_621, (funcp)transaction_628, (funcp)transaction_635, (funcp)transaction_642, (funcp)transaction_649, (funcp)transaction_656, (funcp)transaction_663, (funcp)transaction_670, (funcp)transaction_677, (funcp)transaction_684, (funcp)transaction_691, (funcp)transaction_698, (funcp)transaction_705, (funcp)transaction_712, (funcp)transaction_719, (funcp)transaction_726, (funcp)transaction_733, (funcp)transaction_740, (funcp)transaction_747, (funcp)transaction_754, (funcp)transaction_761, (funcp)transaction_768, (funcp)transaction_775, (funcp)transaction_782, (funcp)transaction_789, (funcp)transaction_796, (funcp)transaction_803, (funcp)transaction_810, (funcp)transaction_817, (funcp)transaction_824, (funcp)transaction_831, (funcp)transaction_838, (funcp)transaction_845, (funcp)transaction_852, (funcp)transaction_859, (funcp)transaction_866, (funcp)transaction_873, (funcp)transaction_880, (funcp)transaction_887, (funcp)transaction_894, (funcp)transaction_901, (funcp)transaction_908, (funcp)transaction_915, (funcp)transaction_922, (funcp)transaction_929, (funcp)transaction_936, (funcp)transaction_943, (funcp)transaction_950, (funcp)transaction_957, (funcp)transaction_964, (funcp)transaction_971, (funcp)transaction_978, (funcp)transaction_985, (funcp)transaction_992, (funcp)transaction_999, (funcp)transaction_1006, (funcp)transaction_1013, (funcp)transaction_1020, (funcp)transaction_1027, (funcp)transaction_1034, (funcp)transaction_1041, (funcp)transaction_1048, (funcp)transaction_1055, (funcp)transaction_1062, (funcp)transaction_1069, (funcp)transaction_1076, (funcp)transaction_1083, (funcp)transaction_1090, (funcp)transaction_1097, (funcp)transaction_1104, (funcp)transaction_1111, (funcp)transaction_1118, (funcp)transaction_1125, (funcp)transaction_1132, (funcp)transaction_1139, (funcp)transaction_1146, (funcp)transaction_1153, (funcp)transaction_1160, (funcp)transaction_1167, (funcp)transaction_1174, (funcp)transaction_1181, (funcp)transaction_1188, (funcp)transaction_1195, (funcp)transaction_1202, (funcp)transaction_1209, (funcp)transaction_1216};
const int NumRelocateId= 176;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/Assemblage_func_synth/xsim.reloc",  (void **)funcTab, 176);
	iki_vhdl_file_variable_register(dp + 278400);
	iki_vhdl_file_variable_register(dp + 278456);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/Assemblage_func_synth/xsim.reloc");
}

	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/Assemblage_func_synth/xsim.reloc");

	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern SYSTEMCLIB_IMP_DLLSPEC int xsim_argc_copy ;
extern SYSTEMCLIB_IMP_DLLSPEC char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_xsimdir_location_if_remapped(argc, argv)  ;
    iki_set_sv_type_file_path_name("xsim.dir/Assemblage_func_synth/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/Assemblage_func_synth/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/Assemblage_func_synth/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, (void*)0, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
