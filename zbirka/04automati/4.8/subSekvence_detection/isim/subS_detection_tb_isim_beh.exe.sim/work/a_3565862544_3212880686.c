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
static const char *ng0 = "D:/LPRS1_git/LPRS1/zbirka/04automati/4.8/subSekvence_detection/subSDetect.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1605435078_503743352(char *, unsigned char , unsigned char );
unsigned char ieee_p_2592010699_sub_1690584930_503743352(char *, unsigned char );
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_3565862544_3212880686_p_0(char *t0)
{
    char t16[16];
    char t17[16];
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
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    int t18;
    unsigned int t19;
    char *t20;
    char *t21;
    int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned char t25;
    int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned char t30;
    unsigned char t31;
    int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned char t36;
    unsigned char t37;
    char *t38;
    char *t39;

LAB0:    xsi_set_current_line(50, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 3968);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(51, ng0);
    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)2);
    if (t6 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(55, ng0);
    t1 = (t0 + 1352U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t1 = (t0 + 1832U);
    t4 = *((char **)t1);
    t13 = (3 - 3);
    t14 = (t13 * 1U);
    t15 = (0 + t14);
    t1 = (t4 + t15);
    t8 = ((IEEE_P_2592010699) + 4024);
    t9 = (t17 + 0U);
    t10 = (t9 + 0U);
    *((int *)t10) = 3;
    t10 = (t9 + 4U);
    *((int *)t10) = 1;
    t10 = (t9 + 8U);
    *((int *)t10) = -1;
    t18 = (1 - 3);
    t19 = (t18 * -1);
    t19 = (t19 + 1);
    t10 = (t9 + 12U);
    *((unsigned int *)t10) = t19;
    t7 = xsi_base_array_concat(t7, t16, t8, (char)99, t2, (char)97, t1, t17, (char)101);
    t19 = (1U + 3U);
    t5 = (4U != t19);
    if (t5 == 1)
        goto LAB8;

LAB9:    t10 = (t0 + 4080);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t20 = (t12 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t7, 4U);
    xsi_driver_first_trans_fast(t10);
    xsi_set_current_line(56, ng0);
    t1 = (t0 + 1832U);
    t3 = *((char **)t1);
    t18 = (3 - 3);
    t13 = (t18 * -1);
    t14 = (1U * t13);
    t15 = (0 + t14);
    t1 = (t3 + t15);
    t2 = *((unsigned char *)t1);
    t4 = (t0 + 1832U);
    t7 = *((char **)t4);
    t22 = (2 - 3);
    t19 = (t22 * -1);
    t23 = (1U * t19);
    t24 = (0 + t23);
    t4 = (t7 + t24);
    t5 = *((unsigned char *)t4);
    t6 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t5);
    t25 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t2, t6);
    t8 = (t0 + 1832U);
    t9 = *((char **)t8);
    t26 = (1 - 3);
    t27 = (t26 * -1);
    t28 = (1U * t27);
    t29 = (0 + t28);
    t8 = (t9 + t29);
    t30 = *((unsigned char *)t8);
    t31 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t25, t30);
    t10 = (t0 + 1832U);
    t11 = *((char **)t10);
    t32 = (0 - 3);
    t33 = (t32 * -1);
    t34 = (1U * t33);
    t35 = (0 + t34);
    t10 = (t11 + t35);
    t36 = *((unsigned char *)t10);
    t37 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t31, t36);
    t12 = (t0 + 4144);
    t20 = (t12 + 56U);
    t21 = *((char **)t20);
    t38 = (t21 + 56U);
    t39 = *((char **)t38);
    *((unsigned char *)t39) = t37;
    xsi_driver_first_trans_fast(t12);

LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(52, ng0);
    t3 = (t0 + 6592);
    t8 = (t0 + 4080);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t3, 4U);
    xsi_driver_first_trans_fast(t8);
    xsi_set_current_line(53, ng0);
    t1 = (t0 + 4144);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB6;

LAB8:    xsi_size_not_matching(4U, t19, 0);
    goto LAB9;

}

static void work_a_3565862544_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(61, ng0);

LAB3:    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t1 = (t0 + 4208);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 4U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 3984);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3565862544_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(62, ng0);

LAB3:    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 4272);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 4000);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_3565862544_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3565862544_3212880686_p_0,(void *)work_a_3565862544_3212880686_p_1,(void *)work_a_3565862544_3212880686_p_2};
	xsi_register_didat("work_a_3565862544_3212880686", "isim/subS_detection_tb_isim_beh.exe.sim/work/a_3565862544_3212880686.didat");
	xsi_register_executes(pe);
}
