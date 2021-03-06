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
static const char *ng0 = "D:/LPRS1_git/LPRS1/zbirka/06slozeni_digitalni_sistemi/6.5/digSys_6_5/dig.vhd";
extern char *IEEE_P_2592010699;



static void work_a_0358891719_3212880686_p_0(char *t0)
{
    char t4[16];
    char t10[16];
    char t15[16];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t16;
    char *t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned char t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;

LAB0:    xsi_set_current_line(110, ng0);

LAB3:    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t1 = (t0 + 2472U);
    t3 = *((char **)t1);
    t5 = ((IEEE_P_2592010699) + 4024);
    t6 = (t0 + 7872U);
    t7 = (t0 + 7856U);
    t1 = xsi_base_array_concat(t1, t4, t5, (char)97, t2, t6, (char)97, t3, t7, (char)101);
    t8 = (t0 + 2312U);
    t9 = *((char **)t8);
    t11 = ((IEEE_P_2592010699) + 4024);
    t12 = (t0 + 7840U);
    t8 = xsi_base_array_concat(t8, t10, t11, (char)97, t1, t4, (char)97, t9, t12, (char)101);
    t13 = (t0 + 2152U);
    t14 = *((char **)t13);
    t16 = ((IEEE_P_2592010699) + 4024);
    t17 = (t0 + 7824U);
    t13 = xsi_base_array_concat(t13, t15, t16, (char)97, t8, t10, (char)97, t14, t17, (char)101);
    t18 = (4U + 4U);
    t19 = (t18 + 4U);
    t20 = (t19 + 4U);
    t21 = (16U != t20);
    if (t21 == 1)
        goto LAB5;

LAB6:    t22 = (t0 + 4352);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    memcpy(t26, t13, 16U);
    xsi_driver_first_trans_fast(t22);

LAB2:    t27 = (t0 + 4272);
    *((int *)t27) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(16U, t20, 0);
    goto LAB6;

}


extern void work_a_0358891719_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0358891719_3212880686_p_0};
	xsi_register_didat("work_a_0358891719_3212880686", "isim/digSys_6_5_tb_isim_beh.exe.sim/work/a_0358891719_3212880686.didat");
	xsi_register_executes(pe);
}
