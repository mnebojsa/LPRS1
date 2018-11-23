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
static const char *ng0 = "D:/LPRS1_git/LPRS1/LPRS1_Lab09/procRamRom/multiplekser.vhd";
extern char *IEEE_P_1242562249;

int ieee_p_1242562249_sub_1657552908_1035706684(char *, char *, char *);


static void work_a_1148178443_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;

LAB0:    xsi_set_current_line(48, ng0);

LAB3:    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 6144U);
    t3 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t2, t1);
    t4 = (t0 + 3896);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = t3;
    xsi_driver_first_trans_fast(t4);

LAB2:    t9 = (t0 + 3800);
    *((int *)t9) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_1148178443_3212880686_p_1(char *t0)
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
    int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned char t27;
    unsigned char t28;
    char *t29;
    char *t30;
    int t31;
    int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
    char *t41;
    char *t42;
    unsigned char t43;
    unsigned char t44;
    char *t45;
    int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    char *t50;
    char *t51;
    char *t52;
    char *t53;
    char *t54;
    char *t55;
    char *t56;
    int t57;
    int t58;
    unsigned char t59;
    char *t60;
    char *t61;
    int t62;
    int t63;
    int t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    char *t68;
    char *t69;
    char *t70;
    char *t71;
    char *t72;
    char *t73;
    char *t74;
    char *t75;
    char *t76;
    char *t77;
    char *t78;
    char *t79;
    char *t80;

LAB0:    xsi_set_current_line(50, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = (1 - 1);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t7 == (unsigned char)3);
    if (t8 != 0)
        goto LAB3;

LAB4:    t21 = (t0 + 1352U);
    t22 = *((char **)t21);
    t23 = (0 - 1);
    t24 = (t23 * -1);
    t25 = (1U * t24);
    t26 = (0 + t25);
    t21 = (t22 + t26);
    t27 = *((unsigned char *)t21);
    t28 = (t27 == (unsigned char)3);
    if (t28 != 0)
        goto LAB5;

LAB6:    t41 = (t0 + 1192U);
    t42 = *((char **)t41);
    t43 = *((unsigned char *)t42);
    t44 = (t43 == (unsigned char)3);
    if (t44 != 0)
        goto LAB7;

LAB8:    t55 = (t0 + 1832U);
    t56 = *((char **)t55);
    t57 = *((int *)t56);
    t58 = (11 - 3);
    t59 = (t57 < t58);
    if (t59 != 0)
        goto LAB9;

LAB10:
LAB11:    t73 = xsi_get_transient_memory(16U);
    memset(t73, 0, 16U);
    t74 = t73;
    memset(t74, (unsigned char)2, 16U);
    t75 = (t0 + 3960);
    t76 = (t75 + 56U);
    t77 = *((char **)t76);
    t78 = (t77 + 56U);
    t79 = *((char **)t78);
    memcpy(t79, t73, 16U);
    xsi_driver_first_trans_fast_port(t75);

LAB2:    t80 = (t0 + 3816);
    *((int *)t80) = 1;

LAB1:    return;
LAB3:    t9 = (t0 + 1032U);
    t10 = *((char **)t9);
    t11 = (11 - 1);
    t12 = (t11 - 0);
    t13 = (t12 * 1);
    t14 = (16U * t13);
    t15 = (0 + t14);
    t9 = (t10 + t15);
    t16 = (t0 + 3960);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t9, 16U);
    xsi_driver_first_trans_fast_port(t16);
    goto LAB2;

LAB5:    t29 = (t0 + 1032U);
    t30 = *((char **)t29);
    t31 = (11 - 2);
    t32 = (t31 - 0);
    t33 = (t32 * 1);
    t34 = (16U * t33);
    t35 = (0 + t34);
    t29 = (t30 + t35);
    t36 = (t0 + 3960);
    t37 = (t36 + 56U);
    t38 = *((char **)t37);
    t39 = (t38 + 56U);
    t40 = *((char **)t39);
    memcpy(t40, t29, 16U);
    xsi_driver_first_trans_fast_port(t36);
    goto LAB2;

LAB7:    t41 = (t0 + 1032U);
    t45 = *((char **)t41);
    t46 = (0 - 0);
    t47 = (t46 * 1);
    t48 = (16U * t47);
    t49 = (0 + t48);
    t41 = (t45 + t49);
    t50 = (t0 + 3960);
    t51 = (t50 + 56U);
    t52 = *((char **)t51);
    t53 = (t52 + 56U);
    t54 = *((char **)t53);
    memcpy(t54, t41, 16U);
    xsi_driver_first_trans_fast_port(t50);
    goto LAB2;

LAB9:    t55 = (t0 + 1032U);
    t60 = *((char **)t55);
    t55 = (t0 + 1832U);
    t61 = *((char **)t55);
    t62 = *((int *)t61);
    t63 = (t62 + 1);
    t64 = (t63 - 0);
    t65 = (t64 * 1);
    xsi_vhdl_check_range_of_index(0, 10, 1, t63);
    t66 = (16U * t65);
    t67 = (0 + t66);
    t55 = (t60 + t67);
    t68 = (t0 + 3960);
    t69 = (t68 + 56U);
    t70 = *((char **)t69);
    t71 = (t70 + 56U);
    t72 = *((char **)t71);
    memcpy(t72, t55, 16U);
    xsi_driver_first_trans_fast_port(t68);
    goto LAB2;

LAB12:    goto LAB2;

}


extern void work_a_1148178443_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1148178443_3212880686_p_0,(void *)work_a_1148178443_3212880686_p_1};
	xsi_register_didat("work_a_1148178443_3212880686", "isim/top_m_tb_isim_beh.exe.sim/work/a_1148178443_3212880686.didat");
	xsi_register_executes(pe);
}
