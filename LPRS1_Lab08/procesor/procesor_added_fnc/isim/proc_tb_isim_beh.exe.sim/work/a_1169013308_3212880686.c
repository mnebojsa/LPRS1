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
static const char *ng0 = "D:/LPRS1_git/LPRS1/LPRS1_Lab08/procesor/procesor/multiplekser.vhd";
extern char *IEEE_P_1242562249;

int ieee_p_1242562249_sub_1657552908_1035706684(char *, char *, char *);


static void work_a_1169013308_3212880686_p_0(char *t0)
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

LAB0:    xsi_set_current_line(51, ng0);

LAB3:    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 7092U);
    t3 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t2, t1);
    t4 = (t0 + 4376);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = t3;
    xsi_driver_first_trans_fast(t4);

LAB2:    t9 = (t0 + 4280);
    *((int *)t9) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_1169013308_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    int t6;
    int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    unsigned char t18;
    unsigned char t19;
    char *t20;
    int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    int t32;
    unsigned char t33;
    char *t34;
    char *t35;
    int t36;
    int t37;
    int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    char *t46;
    char *t47;
    char *t48;
    char *t49;
    char *t50;
    char *t51;
    char *t52;
    char *t53;
    char *t54;

LAB0:    xsi_set_current_line(53, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB3;

LAB4:    t16 = (t0 + 1192U);
    t17 = *((char **)t16);
    t18 = *((unsigned char *)t17);
    t19 = (t18 == (unsigned char)3);
    if (t19 != 0)
        goto LAB5;

LAB6:    t30 = (t0 + 1992U);
    t31 = *((char **)t30);
    t32 = *((int *)t31);
    t33 = (t32 < 10);
    if (t33 != 0)
        goto LAB7;

LAB8:
LAB9:    t47 = xsi_get_transient_memory(16U);
    memset(t47, 0, 16U);
    t48 = t47;
    memset(t48, (unsigned char)2, 16U);
    t49 = (t0 + 4440);
    t50 = (t49 + 56U);
    t51 = *((char **)t50);
    t52 = (t51 + 56U);
    t53 = *((char **)t52);
    memcpy(t53, t47, 16U);
    xsi_driver_first_trans_fast_port(t49);

LAB2:    t54 = (t0 + 4296);
    *((int *)t54) = 1;

LAB1:    return;
LAB3:    t1 = (t0 + 1032U);
    t5 = *((char **)t1);
    t6 = (10 - 1);
    t7 = (t6 - 0);
    t8 = (t7 * 1);
    t9 = (16U * t8);
    t10 = (0 + t9);
    t1 = (t5 + t10);
    t11 = (t0 + 4440);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t1, 16U);
    xsi_driver_first_trans_fast_port(t11);
    goto LAB2;

LAB5:    t16 = (t0 + 1032U);
    t20 = *((char **)t16);
    t21 = (0 - 0);
    t22 = (t21 * 1);
    t23 = (16U * t22);
    t24 = (0 + t23);
    t16 = (t20 + t24);
    t25 = (t0 + 4440);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    memcpy(t29, t16, 16U);
    xsi_driver_first_trans_fast_port(t25);
    goto LAB2;

LAB7:    t30 = (t0 + 1032U);
    t34 = *((char **)t30);
    t30 = (t0 + 1992U);
    t35 = *((char **)t30);
    t36 = *((int *)t35);
    t37 = (t36 + 1);
    t38 = (t37 - 0);
    t39 = (t38 * 1);
    xsi_vhdl_check_range_of_index(0, 9, 1, t37);
    t40 = (16U * t39);
    t41 = (0 + t40);
    t30 = (t34 + t41);
    t42 = (t0 + 4440);
    t43 = (t42 + 56U);
    t44 = *((char **)t43);
    t45 = (t44 + 56U);
    t46 = *((char **)t45);
    memcpy(t46, t30, 16U);
    xsi_driver_first_trans_fast_port(t42);
    goto LAB2;

LAB10:    goto LAB2;

}


extern void work_a_1169013308_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1169013308_3212880686_p_0,(void *)work_a_1169013308_3212880686_p_1};
	xsi_register_didat("work_a_1169013308_3212880686", "isim/proc_tb_isim_beh.exe.sim/work/a_1169013308_3212880686.didat");
	xsi_register_executes(pe);
}
