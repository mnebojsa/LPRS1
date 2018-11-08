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
static const char *ng0 = "D:/LPRS1_git/LPRS1/zbirka/08projektovanje_procesora/8.1/ALU_ver1/shift.vhd";
extern char *IEEE_P_2592010699;



static void work_a_3327597146_3990940387_p_0(char *t0)
{
    char t22[16];
    char t23[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    int t5;
    char *t6;
    char *t7;
    int t8;
    char *t9;
    char *t10;
    int t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t24;
    unsigned char t25;

LAB0:    t1 = (t0 + 2512U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(42, ng0);
    t2 = (t0 + 1192U);
    t3 = *((char **)t2);
    t2 = (t0 + 4698);
    t5 = xsi_mem_cmp(t2, t3, 2U);
    if (t5 == 1)
        goto LAB5;

LAB9:    t6 = (t0 + 4700);
    t8 = xsi_mem_cmp(t6, t3, 2U);
    if (t8 == 1)
        goto LAB6;

LAB10:    t9 = (t0 + 4702);
    t11 = xsi_mem_cmp(t9, t3, 2U);
    if (t11 == 1)
        goto LAB7;

LAB11:
LAB8:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t19 = (3 - 3);
    t20 = (t19 * 1U);
    t21 = (0 + t20);
    t2 = (t3 + t21);
    t4 = (t0 + 2912);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 4U);
    xsi_driver_first_trans_fast_port(t4);

LAB4:    xsi_set_current_line(42, ng0);

LAB19:    t2 = (t0 + 2832);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB20;

LAB1:    return;
LAB5:    xsi_set_current_line(43, ng0);
    t12 = (t0 + 4704);
    t14 = (t0 + 2912);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t12, 4U);
    xsi_driver_first_trans_fast_port(t14);
    goto LAB4;

LAB6:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t19 = (3 - 2);
    t20 = (t19 * 1U);
    t21 = (0 + t20);
    t2 = (t3 + t21);
    t6 = ((IEEE_P_2592010699) + 4024);
    t7 = (t23 + 0U);
    t9 = (t7 + 0U);
    *((int *)t9) = 2;
    t9 = (t7 + 4U);
    *((int *)t9) = 0;
    t9 = (t7 + 8U);
    *((int *)t9) = -1;
    t5 = (0 - 2);
    t24 = (t5 * -1);
    t24 = (t24 + 1);
    t9 = (t7 + 12U);
    *((unsigned int *)t9) = t24;
    t4 = xsi_base_array_concat(t4, t22, t6, (char)97, t2, t23, (char)99, (unsigned char)2, (char)101);
    t24 = (3U + 1U);
    t25 = (4U != t24);
    if (t25 == 1)
        goto LAB13;

LAB14:    t9 = (t0 + 2912);
    t10 = (t9 + 56U);
    t12 = *((char **)t10);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t4, 4U);
    xsi_driver_first_trans_fast_port(t9);
    goto LAB4;

LAB7:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t19 = (3 - 3);
    t20 = (t19 * 1U);
    t21 = (0 + t20);
    t2 = (t3 + t21);
    t6 = ((IEEE_P_2592010699) + 4024);
    t7 = (t23 + 0U);
    t9 = (t7 + 0U);
    *((int *)t9) = 3;
    t9 = (t7 + 4U);
    *((int *)t9) = 1;
    t9 = (t7 + 8U);
    *((int *)t9) = -1;
    t5 = (1 - 3);
    t24 = (t5 * -1);
    t24 = (t24 + 1);
    t9 = (t7 + 12U);
    *((unsigned int *)t9) = t24;
    t4 = xsi_base_array_concat(t4, t22, t6, (char)99, (unsigned char)2, (char)97, t2, t23, (char)101);
    t24 = (1U + 3U);
    t25 = (4U != t24);
    if (t25 == 1)
        goto LAB15;

LAB16:    t9 = (t0 + 2912);
    t10 = (t9 + 56U);
    t12 = *((char **)t10);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t4, 4U);
    xsi_driver_first_trans_fast_port(t9);
    goto LAB4;

LAB12:;
LAB13:    xsi_size_not_matching(4U, t24, 0);
    goto LAB14;

LAB15:    xsi_size_not_matching(4U, t24, 0);
    goto LAB16;

LAB17:    t3 = (t0 + 2832);
    *((int *)t3) = 0;
    goto LAB2;

LAB18:    goto LAB17;

LAB20:    goto LAB18;

}


extern void work_a_3327597146_3990940387_init()
{
	static char *pe[] = {(void *)work_a_3327597146_3990940387_p_0};
	xsi_register_didat("work_a_3327597146_3990940387", "isim/testbench_isim_beh.exe.sim/work/a_3327597146_3990940387.didat");
	xsi_register_executes(pe);
}
