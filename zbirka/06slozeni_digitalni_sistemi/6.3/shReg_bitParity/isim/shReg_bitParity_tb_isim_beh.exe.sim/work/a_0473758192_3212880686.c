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
static const char *ng0 = "D:/LPRS1_git/LPRS1/zbirka/06slozeni_digitalni_sistemi/6.3/shReg_bitParity/sh_reg.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_0473758192_3212880686_p_0(char *t0)
{
    char t13[16];
    char t21[16];
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    unsigned int t14;
    unsigned char t15;
    char *t16;
    char *t17;
    int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t22;

LAB0:    xsi_set_current_line(50, ng0);
    t1 = (t0 + 1632U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 4040);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(51, ng0);
    t3 = (t0 + 1512U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)2);
    if (t6 != 0)
        goto LAB5;

LAB7:    t1 = (t0 + 1352U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t5 = (t2 == (unsigned char)3);
    if (t5 != 0)
        goto LAB8;

LAB9:    t1 = (t0 + 1192U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t5 = (t2 == (unsigned char)3);
    if (t5 != 0)
        goto LAB12;

LAB13:    xsi_set_current_line(59, ng0);
    t1 = (t0 + 2152U);
    t3 = *((char **)t1);
    t1 = (t0 + 4136);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t3, 5U);
    xsi_driver_first_trans_fast(t1);

LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(52, ng0);
    t3 = (t0 + 6755);
    t8 = (t0 + 4136);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t3, 5U);
    xsi_driver_first_trans_fast(t8);
    goto LAB6;

LAB8:    xsi_set_current_line(54, ng0);
    t1 = (t0 + 1832U);
    t4 = *((char **)t1);
    t6 = *((unsigned char *)t4);
    t1 = (t0 + 1032U);
    t7 = *((char **)t1);
    t8 = ((IEEE_P_2592010699) + 4024);
    t9 = (t0 + 6700U);
    t1 = xsi_base_array_concat(t1, t13, t8, (char)99, t6, (char)97, t7, t9, (char)101);
    t14 = (1U + 4U);
    t15 = (5U != t14);
    if (t15 == 1)
        goto LAB10;

LAB11:    t10 = (t0 + 4136);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t16 = (t12 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t1, 5U);
    xsi_driver_first_trans_fast(t10);
    goto LAB6;

LAB10:    xsi_size_not_matching(5U, t14, 0);
    goto LAB11;

LAB12:    xsi_set_current_line(56, ng0);
    t1 = (t0 + 2152U);
    t4 = *((char **)t1);
    t18 = (4 - 4);
    t14 = (t18 * -1);
    t19 = (1U * t14);
    t20 = (0 + t19);
    t1 = (t4 + t20);
    t6 = *((unsigned char *)t1);
    t7 = (t0 + 4200);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = t6;
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(57, ng0);
    t1 = (t0 + 2152U);
    t3 = *((char **)t1);
    t14 = (4 - 3);
    t19 = (t14 * 1U);
    t20 = (0 + t19);
    t1 = (t3 + t20);
    t7 = ((IEEE_P_2592010699) + 4024);
    t8 = (t21 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 3;
    t9 = (t8 + 4U);
    *((int *)t9) = 0;
    t9 = (t8 + 8U);
    *((int *)t9) = -1;
    t18 = (0 - 3);
    t22 = (t18 * -1);
    t22 = (t22 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t22;
    t4 = xsi_base_array_concat(t4, t13, t7, (char)97, t1, t21, (char)99, (unsigned char)2, (char)101);
    t22 = (4U + 1U);
    t2 = (5U != t22);
    if (t2 == 1)
        goto LAB14;

LAB15:    t9 = (t0 + 4136);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t16 = *((char **)t12);
    memcpy(t16, t4, 5U);
    xsi_driver_first_trans_fast(t9);
    goto LAB6;

LAB14:    xsi_size_not_matching(5U, t22, 0);
    goto LAB15;

}

static void work_a_0473758192_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(64, ng0);

LAB3:    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 4264);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 4056);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_0473758192_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0473758192_3212880686_p_0,(void *)work_a_0473758192_3212880686_p_1};
	xsi_register_didat("work_a_0473758192_3212880686", "isim/shReg_bitParity_tb_isim_beh.exe.sim/work/a_0473758192_3212880686.didat");
	xsi_register_executes(pe);
}
