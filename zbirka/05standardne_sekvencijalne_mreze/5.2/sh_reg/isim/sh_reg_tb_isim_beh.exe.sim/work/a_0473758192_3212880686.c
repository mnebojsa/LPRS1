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
static const char *ng0 = "D:/LPRS1_git/LPRS1/zbirka/05standardne_sekvencijalne_mreze/5.2/sh_reg/sh_reg.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_0473758192_3212880686_p_0(char *t0)
{
    char t26[16];
    char t27[16];
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
    int t13;
    int t14;
    int t15;
    int t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t28;

LAB0:    xsi_set_current_line(62, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 3880);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(63, ng0);
    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)2);
    if (t6 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(66, ng0);
    t1 = (t0 + 1352U);
    t3 = *((char **)t1);
    t1 = (t0 + 6438);
    t13 = xsi_mem_cmp(t1, t3, 2U);
    if (t13 == 1)
        goto LAB9;

LAB14:    t7 = (t0 + 6440);
    t14 = xsi_mem_cmp(t7, t3, 2U);
    if (t14 == 1)
        goto LAB10;

LAB15:    t9 = (t0 + 6442);
    t15 = xsi_mem_cmp(t9, t3, 2U);
    if (t15 == 1)
        goto LAB11;

LAB16:    t11 = (t0 + 6444);
    t16 = xsi_mem_cmp(t11, t3, 2U);
    if (t16 == 1)
        goto LAB12;

LAB17:
LAB13:    xsi_set_current_line(75, ng0);
    t1 = (t0 + 6446);
    t4 = (t0 + 3976);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 4U);
    xsi_driver_first_trans_fast(t4);

LAB8:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(64, ng0);
    t3 = (t0 + 6434);
    t8 = (t0 + 3976);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t3, 4U);
    xsi_driver_first_trans_fast(t8);
    goto LAB6;

LAB9:    xsi_set_current_line(68, ng0);
    t17 = (t0 + 1832U);
    t18 = *((char **)t17);
    t17 = (t0 + 3976);
    t19 = (t17 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t18, 4U);
    xsi_driver_first_trans_fast(t17);
    goto LAB8;

LAB10:    xsi_set_current_line(70, ng0);
    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t1 = (t0 + 2152U);
    t4 = *((char **)t1);
    t23 = (3 - 3);
    t24 = (t23 * 1U);
    t25 = (0 + t24);
    t1 = (t4 + t25);
    t8 = ((IEEE_P_2592010699) + 4024);
    t9 = (t27 + 0U);
    t10 = (t9 + 0U);
    *((int *)t10) = 3;
    t10 = (t9 + 4U);
    *((int *)t10) = 1;
    t10 = (t9 + 8U);
    *((int *)t10) = -1;
    t13 = (1 - 3);
    t28 = (t13 * -1);
    t28 = (t28 + 1);
    t10 = (t9 + 12U);
    *((unsigned int *)t10) = t28;
    t7 = xsi_base_array_concat(t7, t26, t8, (char)99, t2, (char)97, t1, t27, (char)101);
    t28 = (1U + 3U);
    t5 = (4U != t28);
    if (t5 == 1)
        goto LAB19;

LAB20:    t10 = (t0 + 3976);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t17 = (t12 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t7, 4U);
    xsi_driver_first_trans_fast(t10);
    goto LAB8;

LAB11:    xsi_set_current_line(72, ng0);
    t1 = (t0 + 2152U);
    t3 = *((char **)t1);
    t23 = (3 - 2);
    t24 = (t23 * 1U);
    t25 = (0 + t24);
    t1 = (t3 + t25);
    t4 = (t0 + 1672U);
    t7 = *((char **)t4);
    t2 = *((unsigned char *)t7);
    t8 = ((IEEE_P_2592010699) + 4024);
    t9 = (t27 + 0U);
    t10 = (t9 + 0U);
    *((int *)t10) = 2;
    t10 = (t9 + 4U);
    *((int *)t10) = 0;
    t10 = (t9 + 8U);
    *((int *)t10) = -1;
    t13 = (0 - 2);
    t28 = (t13 * -1);
    t28 = (t28 + 1);
    t10 = (t9 + 12U);
    *((unsigned int *)t10) = t28;
    t4 = xsi_base_array_concat(t4, t26, t8, (char)97, t1, t27, (char)99, t2, (char)101);
    t28 = (3U + 1U);
    t5 = (4U != t28);
    if (t5 == 1)
        goto LAB21;

LAB22:    t10 = (t0 + 3976);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t17 = (t12 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t4, 4U);
    xsi_driver_first_trans_fast(t10);
    goto LAB8;

LAB12:    xsi_set_current_line(74, ng0);
    t1 = (t0 + 2152U);
    t3 = *((char **)t1);
    t1 = (t0 + 3976);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t3, 4U);
    xsi_driver_first_trans_fast(t1);
    goto LAB8;

LAB18:;
LAB19:    xsi_size_not_matching(4U, t28, 0);
    goto LAB20;

LAB21:    xsi_size_not_matching(4U, t28, 0);
    goto LAB22;

}

static void work_a_0473758192_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(81, ng0);

LAB3:    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t1 = (t0 + 4040);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 4U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 3896);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_0473758192_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0473758192_3212880686_p_0,(void *)work_a_0473758192_3212880686_p_1};
	xsi_register_didat("work_a_0473758192_3212880686", "isim/sh_reg_tb_isim_beh.exe.sim/work/a_0473758192_3212880686.didat");
	xsi_register_executes(pe);
}
