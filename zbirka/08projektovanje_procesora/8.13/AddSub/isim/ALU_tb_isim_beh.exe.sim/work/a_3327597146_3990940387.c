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
static const char *ng0 = "D:/LPRS1_git/LPRS1/zbirka/08projektovanje_procesora/8.13/AddSub/shift.vhd";
extern char *IEEE_P_2592010699;



static void work_a_3327597146_3990940387_p_0(char *t0)
{
    char t25[16];
    char t26[16];
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
    int t14;
    char *t15;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t27;
    unsigned char t28;

LAB0:    t1 = (t0 + 2512U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(42, ng0);
    t2 = (t0 + 1192U);
    t3 = *((char **)t2);
    t2 = (t0 + 4690);
    t5 = xsi_mem_cmp(t2, t3, 2U);
    if (t5 == 1)
        goto LAB5;

LAB10:    t6 = (t0 + 4692);
    t8 = xsi_mem_cmp(t6, t3, 2U);
    if (t8 == 1)
        goto LAB6;

LAB11:    t9 = (t0 + 4694);
    t11 = xsi_mem_cmp(t9, t3, 2U);
    if (t11 == 1)
        goto LAB7;

LAB12:    t12 = (t0 + 4696);
    t14 = xsi_mem_cmp(t12, t3, 2U);
    if (t14 == 1)
        goto LAB8;

LAB13:
LAB9:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 4702);
    t4 = (t0 + 2912);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 4U);
    xsi_driver_first_trans_fast_port(t4);

LAB4:    xsi_set_current_line(42, ng0);

LAB21:    t2 = (t0 + 2832);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB22;

LAB1:    return;
LAB5:    xsi_set_current_line(43, ng0);
    t15 = (t0 + 4698);
    t17 = (t0 + 2912);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t15, 4U);
    xsi_driver_first_trans_fast_port(t17);
    goto LAB4;

LAB6:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t22 = (3 - 2);
    t23 = (t22 * 1U);
    t24 = (0 + t23);
    t2 = (t3 + t24);
    t6 = ((IEEE_P_2592010699) + 4024);
    t7 = (t26 + 0U);
    t9 = (t7 + 0U);
    *((int *)t9) = 2;
    t9 = (t7 + 4U);
    *((int *)t9) = 0;
    t9 = (t7 + 8U);
    *((int *)t9) = -1;
    t5 = (0 - 2);
    t27 = (t5 * -1);
    t27 = (t27 + 1);
    t9 = (t7 + 12U);
    *((unsigned int *)t9) = t27;
    t4 = xsi_base_array_concat(t4, t25, t6, (char)97, t2, t26, (char)99, (unsigned char)2, (char)101);
    t27 = (3U + 1U);
    t28 = (4U != t27);
    if (t28 == 1)
        goto LAB15;

LAB16:    t9 = (t0 + 2912);
    t10 = (t9 + 56U);
    t12 = *((char **)t10);
    t13 = (t12 + 56U);
    t15 = *((char **)t13);
    memcpy(t15, t4, 4U);
    xsi_driver_first_trans_fast_port(t9);
    goto LAB4;

LAB7:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t22 = (3 - 3);
    t23 = (t22 * 1U);
    t24 = (0 + t23);
    t2 = (t3 + t24);
    t6 = ((IEEE_P_2592010699) + 4024);
    t7 = (t26 + 0U);
    t9 = (t7 + 0U);
    *((int *)t9) = 3;
    t9 = (t7 + 4U);
    *((int *)t9) = 1;
    t9 = (t7 + 8U);
    *((int *)t9) = -1;
    t5 = (1 - 3);
    t27 = (t5 * -1);
    t27 = (t27 + 1);
    t9 = (t7 + 12U);
    *((unsigned int *)t9) = t27;
    t4 = xsi_base_array_concat(t4, t25, t6, (char)99, (unsigned char)2, (char)97, t2, t26, (char)101);
    t27 = (1U + 3U);
    t28 = (4U != t27);
    if (t28 == 1)
        goto LAB17;

LAB18:    t9 = (t0 + 2912);
    t10 = (t9 + 56U);
    t12 = *((char **)t10);
    t13 = (t12 + 56U);
    t15 = *((char **)t13);
    memcpy(t15, t4, 4U);
    xsi_driver_first_trans_fast_port(t9);
    goto LAB4;

LAB8:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t22 = (3 - 3);
    t23 = (t22 * 1U);
    t24 = (0 + t23);
    t2 = (t3 + t24);
    t4 = (t0 + 2912);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 4U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB14:;
LAB15:    xsi_size_not_matching(4U, t27, 0);
    goto LAB16;

LAB17:    xsi_size_not_matching(4U, t27, 0);
    goto LAB18;

LAB19:    t3 = (t0 + 2832);
    *((int *)t3) = 0;
    goto LAB2;

LAB20:    goto LAB19;

LAB22:    goto LAB20;

}


extern void work_a_3327597146_3990940387_init()
{
	static char *pe[] = {(void *)work_a_3327597146_3990940387_p_0};
	xsi_register_didat("work_a_3327597146_3990940387", "isim/ALU_tb_isim_beh.exe.sim/work/a_3327597146_3990940387.didat");
	xsi_register_executes(pe);
}
