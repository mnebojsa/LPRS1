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
static const char *ng0 = "D:/LPRS1_git/LPRS1/zbirka/06slozeni_digitalni_sistemi/6.6/digSys_6_6/dec3x8.vhd";
extern char *IEEE_P_2592010699;



static void work_a_0556873335_2751351155_p_0(char *t0)
{
    char t20[16];
    char t22[16];
    char t32[16];
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
    char *t16;
    char *t17;
    char *t18;
    unsigned char t19;
    char *t21;
    char *t23;
    char *t24;
    int t25;
    unsigned int t26;
    unsigned char t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    unsigned int t33;

LAB0:    t1 = (t0 + 2832U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t2 = (t0 + 5640);
    t5 = xsi_mem_cmp(t2, t3, 2U);
    if (t5 == 1)
        goto LAB5;

LAB10:    t6 = (t0 + 5642);
    t8 = xsi_mem_cmp(t6, t3, 2U);
    if (t8 == 1)
        goto LAB6;

LAB11:    t9 = (t0 + 5644);
    t11 = xsi_mem_cmp(t9, t3, 2U);
    if (t11 == 1)
        goto LAB7;

LAB12:    t12 = (t0 + 5646);
    t14 = xsi_mem_cmp(t12, t3, 2U);
    if (t14 == 1)
        goto LAB8;

LAB13:
LAB9:    xsi_set_current_line(45, ng0);
    t2 = (t0 + 5658);
    t4 = (t0 + 3496);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 4U);
    xsi_driver_first_trans_fast_port(t4);

LAB4:    xsi_set_current_line(44, ng0);

LAB25:    t2 = (t0 + 3400);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB26;

LAB1:    return;
LAB5:    xsi_set_current_line(45, ng0);
    t15 = (t0 + 5648);
    t17 = (t0 + 1032U);
    t18 = *((char **)t17);
    t19 = *((unsigned char *)t18);
    t21 = ((IEEE_P_2592010699) + 4024);
    t23 = (t22 + 0U);
    t24 = (t23 + 0U);
    *((int *)t24) = 0;
    t24 = (t23 + 4U);
    *((int *)t24) = 2;
    t24 = (t23 + 8U);
    *((int *)t24) = 1;
    t25 = (2 - 0);
    t26 = (t25 * 1);
    t26 = (t26 + 1);
    t24 = (t23 + 12U);
    *((unsigned int *)t24) = t26;
    t17 = xsi_base_array_concat(t17, t20, t21, (char)97, t15, t22, (char)99, t19, (char)101);
    t26 = (3U + 1U);
    t27 = (4U != t26);
    if (t27 == 1)
        goto LAB15;

LAB16:    t24 = (t0 + 3496);
    t28 = (t24 + 56U);
    t29 = *((char **)t28);
    t30 = (t29 + 56U);
    t31 = *((char **)t30);
    memcpy(t31, t17, 4U);
    xsi_driver_first_trans_fast_port(t24);
    goto LAB4;

LAB6:    xsi_set_current_line(45, ng0);
    t2 = (t0 + 5651);
    t4 = (t0 + 1032U);
    t6 = *((char **)t4);
    t19 = *((unsigned char *)t6);
    t7 = ((IEEE_P_2592010699) + 4024);
    t9 = (t22 + 0U);
    t10 = (t9 + 0U);
    *((int *)t10) = 0;
    t10 = (t9 + 4U);
    *((int *)t10) = 1;
    t10 = (t9 + 8U);
    *((int *)t10) = 1;
    t5 = (1 - 0);
    t26 = (t5 * 1);
    t26 = (t26 + 1);
    t10 = (t9 + 12U);
    *((unsigned int *)t10) = t26;
    t4 = xsi_base_array_concat(t4, t20, t7, (char)97, t2, t22, (char)99, t19, (char)101);
    t12 = ((IEEE_P_2592010699) + 4024);
    t10 = xsi_base_array_concat(t10, t32, t12, (char)97, t4, t20, (char)99, (unsigned char)2, (char)101);
    t26 = (2U + 1U);
    t33 = (t26 + 1U);
    t27 = (4U != t33);
    if (t27 == 1)
        goto LAB17;

LAB18:    t13 = (t0 + 3496);
    t15 = (t13 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t10, 4U);
    xsi_driver_first_trans_fast_port(t13);
    goto LAB4;

LAB7:    xsi_set_current_line(45, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t19 = *((unsigned char *)t3);
    t4 = ((IEEE_P_2592010699) + 4024);
    t2 = xsi_base_array_concat(t2, t20, t4, (char)99, (unsigned char)2, (char)99, t19, (char)101);
    t6 = (t0 + 5653);
    t10 = ((IEEE_P_2592010699) + 4024);
    t12 = (t32 + 0U);
    t13 = (t12 + 0U);
    *((int *)t13) = 0;
    t13 = (t12 + 4U);
    *((int *)t13) = 1;
    t13 = (t12 + 8U);
    *((int *)t13) = 1;
    t5 = (1 - 0);
    t26 = (t5 * 1);
    t26 = (t26 + 1);
    t13 = (t12 + 12U);
    *((unsigned int *)t13) = t26;
    t9 = xsi_base_array_concat(t9, t22, t10, (char)97, t2, t20, (char)97, t6, t32, (char)101);
    t26 = (1U + 1U);
    t33 = (t26 + 2U);
    t27 = (4U != t33);
    if (t27 == 1)
        goto LAB19;

LAB20:    t13 = (t0 + 3496);
    t15 = (t13 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t9, 4U);
    xsi_driver_first_trans_fast_port(t13);
    goto LAB4;

LAB8:    xsi_set_current_line(45, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t19 = *((unsigned char *)t3);
    t2 = (t0 + 5655);
    t7 = ((IEEE_P_2592010699) + 4024);
    t9 = (t22 + 0U);
    t10 = (t9 + 0U);
    *((int *)t10) = 0;
    t10 = (t9 + 4U);
    *((int *)t10) = 2;
    t10 = (t9 + 8U);
    *((int *)t10) = 1;
    t5 = (2 - 0);
    t26 = (t5 * 1);
    t26 = (t26 + 1);
    t10 = (t9 + 12U);
    *((unsigned int *)t10) = t26;
    t6 = xsi_base_array_concat(t6, t20, t7, (char)99, t19, (char)97, t2, t22, (char)101);
    t26 = (1U + 3U);
    t27 = (4U != t26);
    if (t27 == 1)
        goto LAB21;

LAB22:    t10 = (t0 + 3496);
    t12 = (t10 + 56U);
    t13 = *((char **)t12);
    t15 = (t13 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t6, 4U);
    xsi_driver_first_trans_fast_port(t10);
    goto LAB4;

LAB14:;
LAB15:    xsi_size_not_matching(4U, t26, 0);
    goto LAB16;

LAB17:    xsi_size_not_matching(4U, t33, 0);
    goto LAB18;

LAB19:    xsi_size_not_matching(4U, t33, 0);
    goto LAB20;

LAB21:    xsi_size_not_matching(4U, t26, 0);
    goto LAB22;

LAB23:    t3 = (t0 + 3400);
    *((int *)t3) = 0;
    goto LAB2;

LAB24:    goto LAB23;

LAB26:    goto LAB24;

}

static void work_a_0556873335_2751351155_p_1(char *t0)
{
    char t20[16];
    char t22[16];
    char t32[16];
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
    char *t16;
    char *t17;
    char *t18;
    unsigned char t19;
    char *t21;
    char *t23;
    char *t24;
    int t25;
    unsigned int t26;
    unsigned char t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    unsigned int t33;

LAB0:    t1 = (t0 + 3080U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(51, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t2 = (t0 + 5662);
    t5 = xsi_mem_cmp(t2, t3, 2U);
    if (t5 == 1)
        goto LAB5;

LAB10:    t6 = (t0 + 5664);
    t8 = xsi_mem_cmp(t6, t3, 2U);
    if (t8 == 1)
        goto LAB6;

LAB11:    t9 = (t0 + 5666);
    t11 = xsi_mem_cmp(t9, t3, 2U);
    if (t11 == 1)
        goto LAB7;

LAB12:    t12 = (t0 + 5668);
    t14 = xsi_mem_cmp(t12, t3, 2U);
    if (t14 == 1)
        goto LAB8;

LAB13:
LAB9:    xsi_set_current_line(52, ng0);
    t2 = (t0 + 5680);
    t4 = (t0 + 3560);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 4U);
    xsi_driver_first_trans_fast_port(t4);

LAB4:    xsi_set_current_line(51, ng0);

LAB25:    t2 = (t0 + 3416);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB26;

LAB1:    return;
LAB5:    xsi_set_current_line(52, ng0);
    t15 = (t0 + 5670);
    t17 = (t0 + 1192U);
    t18 = *((char **)t17);
    t19 = *((unsigned char *)t18);
    t21 = ((IEEE_P_2592010699) + 4024);
    t23 = (t22 + 0U);
    t24 = (t23 + 0U);
    *((int *)t24) = 0;
    t24 = (t23 + 4U);
    *((int *)t24) = 2;
    t24 = (t23 + 8U);
    *((int *)t24) = 1;
    t25 = (2 - 0);
    t26 = (t25 * 1);
    t26 = (t26 + 1);
    t24 = (t23 + 12U);
    *((unsigned int *)t24) = t26;
    t17 = xsi_base_array_concat(t17, t20, t21, (char)97, t15, t22, (char)99, t19, (char)101);
    t26 = (3U + 1U);
    t27 = (4U != t26);
    if (t27 == 1)
        goto LAB15;

LAB16:    t24 = (t0 + 3560);
    t28 = (t24 + 56U);
    t29 = *((char **)t28);
    t30 = (t29 + 56U);
    t31 = *((char **)t30);
    memcpy(t31, t17, 4U);
    xsi_driver_first_trans_fast_port(t24);
    goto LAB4;

LAB6:    xsi_set_current_line(52, ng0);
    t2 = (t0 + 5673);
    t4 = (t0 + 1192U);
    t6 = *((char **)t4);
    t19 = *((unsigned char *)t6);
    t7 = ((IEEE_P_2592010699) + 4024);
    t9 = (t22 + 0U);
    t10 = (t9 + 0U);
    *((int *)t10) = 0;
    t10 = (t9 + 4U);
    *((int *)t10) = 1;
    t10 = (t9 + 8U);
    *((int *)t10) = 1;
    t5 = (1 - 0);
    t26 = (t5 * 1);
    t26 = (t26 + 1);
    t10 = (t9 + 12U);
    *((unsigned int *)t10) = t26;
    t4 = xsi_base_array_concat(t4, t20, t7, (char)97, t2, t22, (char)99, t19, (char)101);
    t12 = ((IEEE_P_2592010699) + 4024);
    t10 = xsi_base_array_concat(t10, t32, t12, (char)97, t4, t20, (char)99, (unsigned char)2, (char)101);
    t26 = (2U + 1U);
    t33 = (t26 + 1U);
    t27 = (4U != t33);
    if (t27 == 1)
        goto LAB17;

LAB18:    t13 = (t0 + 3560);
    t15 = (t13 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t10, 4U);
    xsi_driver_first_trans_fast_port(t13);
    goto LAB4;

LAB7:    xsi_set_current_line(52, ng0);
    t2 = (t0 + 1192U);
    t3 = *((char **)t2);
    t19 = *((unsigned char *)t3);
    t4 = ((IEEE_P_2592010699) + 4024);
    t2 = xsi_base_array_concat(t2, t20, t4, (char)99, (unsigned char)2, (char)99, t19, (char)101);
    t6 = (t0 + 5675);
    t10 = ((IEEE_P_2592010699) + 4024);
    t12 = (t32 + 0U);
    t13 = (t12 + 0U);
    *((int *)t13) = 0;
    t13 = (t12 + 4U);
    *((int *)t13) = 1;
    t13 = (t12 + 8U);
    *((int *)t13) = 1;
    t5 = (1 - 0);
    t26 = (t5 * 1);
    t26 = (t26 + 1);
    t13 = (t12 + 12U);
    *((unsigned int *)t13) = t26;
    t9 = xsi_base_array_concat(t9, t22, t10, (char)97, t2, t20, (char)97, t6, t32, (char)101);
    t26 = (1U + 1U);
    t33 = (t26 + 2U);
    t27 = (4U != t33);
    if (t27 == 1)
        goto LAB19;

LAB20:    t13 = (t0 + 3560);
    t15 = (t13 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t9, 4U);
    xsi_driver_first_trans_fast_port(t13);
    goto LAB4;

LAB8:    xsi_set_current_line(52, ng0);
    t2 = (t0 + 1192U);
    t3 = *((char **)t2);
    t19 = *((unsigned char *)t3);
    t2 = (t0 + 5677);
    t7 = ((IEEE_P_2592010699) + 4024);
    t9 = (t22 + 0U);
    t10 = (t9 + 0U);
    *((int *)t10) = 0;
    t10 = (t9 + 4U);
    *((int *)t10) = 2;
    t10 = (t9 + 8U);
    *((int *)t10) = 1;
    t5 = (2 - 0);
    t26 = (t5 * 1);
    t26 = (t26 + 1);
    t10 = (t9 + 12U);
    *((unsigned int *)t10) = t26;
    t6 = xsi_base_array_concat(t6, t20, t7, (char)99, t19, (char)97, t2, t22, (char)101);
    t26 = (1U + 3U);
    t27 = (4U != t26);
    if (t27 == 1)
        goto LAB21;

LAB22:    t10 = (t0 + 3560);
    t12 = (t10 + 56U);
    t13 = *((char **)t12);
    t15 = (t13 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t6, 4U);
    xsi_driver_first_trans_fast_port(t10);
    goto LAB4;

LAB14:;
LAB15:    xsi_size_not_matching(4U, t26, 0);
    goto LAB16;

LAB17:    xsi_size_not_matching(4U, t33, 0);
    goto LAB18;

LAB19:    xsi_size_not_matching(4U, t33, 0);
    goto LAB20;

LAB21:    xsi_size_not_matching(4U, t26, 0);
    goto LAB22;

LAB23:    t3 = (t0 + 3416);
    *((int *)t3) = 0;
    goto LAB2;

LAB24:    goto LAB23;

LAB26:    goto LAB24;

}


extern void work_a_0556873335_2751351155_init()
{
	static char *pe[] = {(void *)work_a_0556873335_2751351155_p_0,(void *)work_a_0556873335_2751351155_p_1};
	xsi_register_didat("work_a_0556873335_2751351155", "isim/digSys_6_6_tb_isim_beh.exe.sim/work/a_0556873335_2751351155.didat");
	xsi_register_executes(pe);
}
