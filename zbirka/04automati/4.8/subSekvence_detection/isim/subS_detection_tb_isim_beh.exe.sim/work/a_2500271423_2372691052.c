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
static const char *ng0 = "D:/LPRS1_git/LPRS1/zbirka/04automati/4.8/subSekvence_detection/subS_detection_tb.vhd";
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_1919365254_1035706684(char *, char *, char *, char *, int );


static void work_a_2500271423_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int64 t8;

LAB0:    t1 = (t0 + 3072U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(79, ng0);
    t2 = (t0 + 3952);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(80, ng0);
    t2 = (t0 + 1968U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 2880);
    xsi_process_wait(t2, t8);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(81, ng0);
    t2 = (t0 + 3952);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(82, ng0);
    t2 = (t0 + 1968U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 2880);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_2500271423_2372691052_p_1(char *t0)
{
    char t21[16];
    char *t1;
    char *t2;
    char *t3;
    int t4;
    int t5;
    char *t6;
    char *t7;
    int t8;
    int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    unsigned char t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    int64 t20;

LAB0:    t1 = (t0 + 3320U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(89, ng0);
    t2 = (t0 + 6720);
    *((int *)t2) = 0;
    t3 = (t0 + 6724);
    *((int *)t3) = 3;
    t4 = 0;
    t5 = 3;

LAB4:    if (t4 <= t5)
        goto LAB5;

LAB7:    xsi_set_current_line(93, ng0);
    t2 = (t0 + 2088U);
    t3 = *((char **)t2);
    t2 = (t0 + 6676U);
    t6 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t21, t3, t2, 1);
    t7 = (t0 + 2088U);
    t13 = *((char **)t7);
    t7 = (t13 + 0);
    t15 = (t21 + 12U);
    t10 = *((unsigned int *)t15);
    t11 = (1U * t10);
    memcpy(t7, t6, t11);
    goto LAB2;

LAB5:    xsi_set_current_line(90, ng0);
    t6 = (t0 + 2088U);
    t7 = *((char **)t6);
    t6 = (t0 + 6720);
    t8 = *((int *)t6);
    t9 = (t8 - 3);
    t10 = (t9 * -1);
    xsi_vhdl_check_range_of_index(3, 0, -1, *((int *)t6));
    t11 = (1U * t10);
    t12 = (0 + t11);
    t13 = (t7 + t12);
    t14 = *((unsigned char *)t13);
    t15 = (t0 + 4016);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    *((unsigned char *)t19) = t14;
    xsi_driver_first_trans_fast(t15);
    xsi_set_current_line(91, ng0);
    t2 = (t0 + 1968U);
    t3 = *((char **)t2);
    t20 = *((int64 *)t3);
    t2 = (t0 + 3128);
    xsi_process_wait(t2, t20);

LAB10:    *((char **)t1) = &&LAB11;

LAB1:    return;
LAB6:    t2 = (t0 + 6720);
    t4 = *((int *)t2);
    t3 = (t0 + 6724);
    t5 = *((int *)t3);
    if (t4 == t5)
        goto LAB7;

LAB12:    t8 = (t4 + 1);
    t4 = t8;
    t6 = (t0 + 6720);
    *((int *)t6) = t4;
    goto LAB4;

LAB8:    goto LAB6;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_2500271423_2372691052_p_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;

LAB0:    t1 = (t0 + 3568U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(106, ng0);
    t2 = (t0 + 4080);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(107, ng0);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

}


extern void work_a_2500271423_2372691052_init()
{
	static char *pe[] = {(void *)work_a_2500271423_2372691052_p_0,(void *)work_a_2500271423_2372691052_p_1,(void *)work_a_2500271423_2372691052_p_2};
	xsi_register_didat("work_a_2500271423_2372691052", "isim/subS_detection_tb_isim_beh.exe.sim/work/a_2500271423_2372691052.didat");
	xsi_register_executes(pe);
}
