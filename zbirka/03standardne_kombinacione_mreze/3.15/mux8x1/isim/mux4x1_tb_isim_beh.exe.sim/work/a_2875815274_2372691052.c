/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "D:/LPRS1_git/LPRS1/zbirka/03standardne_kombinacione_mreze/3.15/mux8x1/mux4x1_tb.vhd";
extern char *IEEE_P_1242562249;
extern char *IEEE_P_2592010699;

char *ieee_p_1242562249_sub_1547198987_1035706684(char *, char *, char *, char *, char *, char *);
unsigned char ieee_p_2592010699_sub_1605435078_503743352(char *, unsigned char , unsigned char );
unsigned char ieee_p_2592010699_sub_1690584930_503743352(char *, unsigned char );
unsigned char ieee_p_2592010699_sub_2545490612_503743352(char *, unsigned char , unsigned char );


static void work_a_2875815274_2372691052_p_0(char *t0)
{
    char t6[16];
    char *t1;
    char *t2;
    char *t3;
    int64 t4;
    char *t5;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    unsigned int t12;
    unsigned int t13;

LAB0:    t1 = (t0 + 3272U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(78, ng0);
    t2 = (t0 + 1808U);
    t3 = *((char **)t2);
    t4 = *((int64 *)t3);
    t2 = (t0 + 3080);
    xsi_process_wait(t2, t4);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(79, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t2 = (t0 + 2168U);
    t5 = *((char **)t2);
    t2 = (t5 + 0);
    memcpy(t2, t3, 4U);
    xsi_set_current_line(80, ng0);
    t2 = (t0 + 2168U);
    t3 = *((char **)t2);
    t2 = (t0 + 7392U);
    t5 = (t0 + 1928U);
    t7 = *((char **)t5);
    t5 = (t0 + 7360U);
    t8 = ieee_p_1242562249_sub_1547198987_1035706684(IEEE_P_1242562249, t6, t3, t2, t7, t5);
    t9 = (t0 + 2168U);
    t10 = *((char **)t9);
    t9 = (t10 + 0);
    t11 = (t6 + 12U);
    t12 = *((unsigned int *)t11);
    t13 = (1U * t12);
    memcpy(t9, t8, t13);
    xsi_set_current_line(81, ng0);
    t2 = (t0 + 2168U);
    t3 = *((char **)t2);
    t2 = (t0 + 4416);
    t5 = (t2 + 56U);
    t7 = *((char **)t5);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t3, 4U);
    xsi_driver_first_trans_fast(t2);
    goto LAB2;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

}

static void work_a_2875815274_2372691052_p_1(char *t0)
{
    char t7[16];
    char *t1;
    char *t2;
    char *t3;
    int64 t4;
    int64 t5;
    char *t6;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;

LAB0:    t1 = (t0 + 3520U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(88, ng0);
    t2 = (t0 + 1808U);
    t3 = *((char **)t2);
    t4 = *((int64 *)t3);
    t5 = (t4 * 16);
    t2 = (t0 + 3328);
    xsi_process_wait(t2, t5);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(89, ng0);
    t2 = (t0 + 1192U);
    t3 = *((char **)t2);
    t2 = (t0 + 2288U);
    t6 = *((char **)t2);
    t2 = (t6 + 0);
    memcpy(t2, t3, 2U);
    xsi_set_current_line(90, ng0);
    t2 = (t0 + 2288U);
    t3 = *((char **)t2);
    t2 = (t0 + 7408U);
    t6 = (t0 + 2048U);
    t8 = *((char **)t6);
    t6 = (t0 + 7376U);
    t9 = ieee_p_1242562249_sub_1547198987_1035706684(IEEE_P_1242562249, t7, t3, t2, t8, t6);
    t10 = (t0 + 2288U);
    t11 = *((char **)t10);
    t10 = (t11 + 0);
    t12 = (t7 + 12U);
    t13 = *((unsigned int *)t12);
    t14 = (1U * t13);
    memcpy(t10, t9, t14);
    xsi_set_current_line(91, ng0);
    t2 = (t0 + 2288U);
    t3 = *((char **)t2);
    t2 = (t0 + 4480);
    t6 = (t2 + 56U);
    t8 = *((char **)t6);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t3, 2U);
    xsi_driver_first_trans_fast(t2);
    goto LAB2;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

}

static void work_a_2875815274_2372691052_p_2(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    char *t10;
    int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned char t15;
    unsigned char t16;
    unsigned char t17;
    char *t18;
    char *t19;
    int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned char t24;
    unsigned char t25;
    char *t26;
    char *t27;
    int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned char t32;
    unsigned char t33;
    char *t34;
    char *t35;
    int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned char t40;
    unsigned char t41;
    char *t42;
    char *t43;
    int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned char t48;
    unsigned char t49;
    unsigned char t50;
    char *t51;
    char *t52;
    int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned char t57;
    char *t58;
    char *t59;
    int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned char t64;
    unsigned char t65;
    unsigned char t66;
    char *t67;
    char *t68;
    int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned char t73;
    unsigned char t74;
    unsigned char t75;
    char *t76;
    char *t77;
    int t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    unsigned char t82;
    char *t83;
    char *t84;
    int t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    unsigned char t89;
    unsigned char t90;
    char *t91;
    char *t92;
    int t93;
    unsigned int t94;
    unsigned int t95;
    unsigned int t96;
    unsigned char t97;
    unsigned char t98;
    unsigned char t99;
    char *t100;
    char *t101;
    char *t102;
    char *t103;
    char *t104;

LAB0:    xsi_set_current_line(97, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = (1 - 1);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t7);
    t9 = (t0 + 1192U);
    t10 = *((char **)t9);
    t11 = (0 - 1);
    t12 = (t11 * -1);
    t13 = (1U * t12);
    t14 = (0 + t13);
    t9 = (t10 + t14);
    t15 = *((unsigned char *)t9);
    t16 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t15);
    t17 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t8, t16);
    t18 = (t0 + 1032U);
    t19 = *((char **)t18);
    t20 = (0 - 3);
    t21 = (t20 * -1);
    t22 = (1U * t21);
    t23 = (0 + t22);
    t18 = (t19 + t23);
    t24 = *((unsigned char *)t18);
    t25 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t17, t24);
    t26 = (t0 + 1192U);
    t27 = *((char **)t26);
    t28 = (1 - 1);
    t29 = (t28 * -1);
    t30 = (1U * t29);
    t31 = (0 + t30);
    t26 = (t27 + t31);
    t32 = *((unsigned char *)t26);
    t33 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t32);
    t34 = (t0 + 1192U);
    t35 = *((char **)t34);
    t36 = (0 - 1);
    t37 = (t36 * -1);
    t38 = (1U * t37);
    t39 = (0 + t38);
    t34 = (t35 + t39);
    t40 = *((unsigned char *)t34);
    t41 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t33, t40);
    t42 = (t0 + 1032U);
    t43 = *((char **)t42);
    t44 = (1 - 3);
    t45 = (t44 * -1);
    t46 = (1U * t45);
    t47 = (0 + t46);
    t42 = (t43 + t47);
    t48 = *((unsigned char *)t42);
    t49 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t41, t48);
    t50 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t25, t49);
    t51 = (t0 + 1192U);
    t52 = *((char **)t51);
    t53 = (1 - 1);
    t54 = (t53 * -1);
    t55 = (1U * t54);
    t56 = (0 + t55);
    t51 = (t52 + t56);
    t57 = *((unsigned char *)t51);
    t58 = (t0 + 1192U);
    t59 = *((char **)t58);
    t60 = (0 - 1);
    t61 = (t60 * -1);
    t62 = (1U * t61);
    t63 = (0 + t62);
    t58 = (t59 + t63);
    t64 = *((unsigned char *)t58);
    t65 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t64);
    t66 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t57, t65);
    t67 = (t0 + 1032U);
    t68 = *((char **)t67);
    t69 = (2 - 3);
    t70 = (t69 * -1);
    t71 = (1U * t70);
    t72 = (0 + t71);
    t67 = (t68 + t72);
    t73 = *((unsigned char *)t67);
    t74 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t66, t73);
    t75 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t50, t74);
    t76 = (t0 + 1192U);
    t77 = *((char **)t76);
    t78 = (1 - 1);
    t79 = (t78 * -1);
    t80 = (1U * t79);
    t81 = (0 + t80);
    t76 = (t77 + t81);
    t82 = *((unsigned char *)t76);
    t83 = (t0 + 1192U);
    t84 = *((char **)t83);
    t85 = (0 - 1);
    t86 = (t85 * -1);
    t87 = (1U * t86);
    t88 = (0 + t87);
    t83 = (t84 + t88);
    t89 = *((unsigned char *)t83);
    t90 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t82, t89);
    t91 = (t0 + 1032U);
    t92 = *((char **)t91);
    t93 = (3 - 3);
    t94 = (t93 * -1);
    t95 = (1U * t94);
    t96 = (0 + t95);
    t91 = (t92 + t96);
    t97 = *((unsigned char *)t91);
    t98 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t90, t97);
    t99 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t75, t98);
    t100 = (t0 + 4544);
    t101 = (t100 + 56U);
    t102 = *((char **)t101);
    t103 = (t102 + 56U);
    t104 = *((char **)t103);
    *((unsigned char *)t104) = t99;
    xsi_driver_first_trans_fast(t100);
    xsi_set_current_line(102, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t7 = *((unsigned char *)t2);
    t1 = (t0 + 1512U);
    t9 = *((char **)t1);
    t8 = *((unsigned char *)t9);
    t15 = (t7 == t8);
    if (t15 == 0)
        goto LAB2;

LAB3:    t1 = (t0 + 4336);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    t1 = (t0 + 7461);
    xsi_report(t1, 37U, (unsigned char)2);
    goto LAB3;

}

static void work_a_2875815274_2372691052_p_3(char *t0)
{
    char *t1;
    char *t2;
    int64 t3;

LAB0:    t1 = (t0 + 4016U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(112, ng0);
    t3 = (100 * 1000LL);
    t2 = (t0 + 3824);
    xsi_process_wait(t2, t3);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(115, ng0);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}


extern void work_a_2875815274_2372691052_init()
{
	static char *pe[] = {(void *)work_a_2875815274_2372691052_p_0,(void *)work_a_2875815274_2372691052_p_1,(void *)work_a_2875815274_2372691052_p_2,(void *)work_a_2875815274_2372691052_p_3};
	xsi_register_didat("work_a_2875815274_2372691052", "isim/mux4x1_tb_isim_beh.exe.sim/work/a_2875815274_2372691052.didat");
	xsi_register_executes(pe);
}
