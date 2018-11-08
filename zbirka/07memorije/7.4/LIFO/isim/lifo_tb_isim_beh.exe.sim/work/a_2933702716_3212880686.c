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
static const char *ng0 = "D:/LPRS1_git/LPRS1/zbirka/07memorije/7.4/LIFO/lifo.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_2933702716_3212880686_p_0(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    unsigned int t8;
    char *t9;
    unsigned char t10;
    unsigned int t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    int t17;
    int t18;
    unsigned char t19;
    int t20;
    unsigned int t21;

LAB0:    xsi_set_current_line(55, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 5296);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(56, ng0);
    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(65, ng0);
    t1 = (t0 + 2952U);
    t3 = *((char **)t1);
    t17 = *((int *)t3);
    t2 = (t17 == 10);
    if (t2 != 0)
        goto LAB10;

LAB12:    xsi_set_current_line(68, ng0);
    t1 = (t0 + 5616);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t9 = *((char **)t7);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);

LAB11:    xsi_set_current_line(72, ng0);
    t1 = (t0 + 2952U);
    t3 = *((char **)t1);
    t17 = *((int *)t3);
    t18 = (t17 - 1);
    t2 = (t18 == 0);
    if (t2 != 0)
        goto LAB13;

LAB15:    xsi_set_current_line(75, ng0);
    t1 = (t0 + 5552);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t9 = *((char **)t7);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);

LAB14:    xsi_set_current_line(79, ng0);
    t1 = (t0 + 1352U);
    t3 = *((char **)t1);
    t5 = *((unsigned char *)t3);
    t6 = (t5 == (unsigned char)3);
    if (t6 == 1)
        goto LAB19;

LAB20:    t2 = (unsigned char)0;

LAB21:    if (t2 != 0)
        goto LAB16;

LAB18:
LAB17:    xsi_set_current_line(85, ng0);
    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t5 = *((unsigned char *)t3);
    t6 = (t5 == (unsigned char)3);
    if (t6 == 1)
        goto LAB25;

LAB26:    t2 = (unsigned char)0;

LAB27:    if (t2 != 0)
        goto LAB22;

LAB24:
LAB23:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(57, ng0);
    t3 = xsi_get_transient_memory(80U);
    memset(t3, 0, 80U);
    t7 = t3;
    t8 = (8U * 1U);
    t9 = t7;
    memset(t9, (unsigned char)2, t8);
    t10 = (t8 != 0);
    if (t10 == 1)
        goto LAB8;

LAB9:    t12 = (t0 + 5424);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t3, 80U);
    xsi_driver_first_trans_fast(t12);
    xsi_set_current_line(58, ng0);
    t1 = xsi_get_transient_memory(8U);
    memset(t1, 0, 8U);
    t3 = t1;
    memset(t3, (unsigned char)2, 8U);
    t4 = (t0 + 5488);
    t7 = (t4 + 56U);
    t9 = *((char **)t7);
    t12 = (t9 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 8U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(59, ng0);
    t1 = (t0 + 5552);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t9 = *((char **)t7);
    *((unsigned char *)t9) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(60, ng0);
    t1 = (t0 + 5616);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t9 = *((char **)t7);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(61, ng0);
    t1 = (t0 + 5680);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t9 = *((char **)t7);
    *((int *)t9) = 1;
    xsi_driver_first_trans_fast(t1);
    goto LAB6;

LAB8:    t11 = (80U / t8);
    xsi_mem_set_data(t7, t7, t8, t11);
    goto LAB9;

LAB10:    xsi_set_current_line(66, ng0);
    t1 = (t0 + 5616);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t9 = (t7 + 56U);
    t12 = *((char **)t9);
    *((unsigned char *)t12) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB11;

LAB13:    xsi_set_current_line(73, ng0);
    t1 = (t0 + 5552);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t9 = (t7 + 56U);
    t12 = *((char **)t9);
    *((unsigned char *)t12) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB14;

LAB16:    xsi_set_current_line(80, ng0);
    t1 = (t0 + 1672U);
    t7 = *((char **)t1);
    t1 = (t0 + 2952U);
    t9 = *((char **)t1);
    t17 = *((int *)t9);
    t18 = (t17 - 1);
    t20 = (t18 - 9);
    t8 = (t20 * -1);
    t11 = (8U * t8);
    t21 = (0U + t11);
    t1 = (t0 + 5424);
    t12 = (t1 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t7, 8U);
    xsi_driver_first_trans_delta(t1, t21, 8U, 0LL);
    xsi_set_current_line(81, ng0);
    t1 = (t0 + 2952U);
    t3 = *((char **)t1);
    t17 = *((int *)t3);
    t18 = (t17 + 1);
    t1 = (t0 + 5680);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t9 = (t7 + 56U);
    t12 = *((char **)t9);
    *((int *)t12) = t18;
    xsi_driver_first_trans_fast(t1);
    goto LAB17;

LAB19:    t1 = (t0 + 2792U);
    t4 = *((char **)t1);
    t10 = *((unsigned char *)t4);
    t19 = (t10 == (unsigned char)2);
    t2 = t19;
    goto LAB21;

LAB22:    xsi_set_current_line(86, ng0);
    t1 = (t0 + 2312U);
    t7 = *((char **)t1);
    t1 = (t0 + 2952U);
    t9 = *((char **)t1);
    t17 = *((int *)t9);
    t18 = (t17 - 1);
    t20 = (t18 - 9);
    t8 = (t20 * -1);
    xsi_vhdl_check_range_of_index(9, 0, -1, t18);
    t11 = (8U * t8);
    t21 = (0 + t11);
    t1 = (t7 + t21);
    t12 = (t0 + 5488);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t1, 8U);
    xsi_driver_first_trans_fast(t12);
    xsi_set_current_line(87, ng0);
    t1 = xsi_get_transient_memory(8U);
    memset(t1, 0, 8U);
    t3 = t1;
    memset(t3, (unsigned char)2, 8U);
    t4 = (t0 + 2952U);
    t7 = *((char **)t4);
    t17 = *((int *)t7);
    t18 = (t17 - 1);
    t20 = (t18 - 9);
    t8 = (t20 * -1);
    t11 = (8U * t8);
    t21 = (0U + t11);
    t4 = (t0 + 5424);
    t9 = (t4 + 56U);
    t12 = *((char **)t9);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t1, 8U);
    xsi_driver_first_trans_delta(t4, t21, 8U, 0LL);
    xsi_set_current_line(88, ng0);
    t1 = (t0 + 2952U);
    t3 = *((char **)t1);
    t17 = *((int *)t3);
    t18 = (t17 - 1);
    t1 = (t0 + 5680);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t9 = (t7 + 56U);
    t12 = *((char **)t9);
    *((int *)t12) = t18;
    xsi_driver_first_trans_fast(t1);
    goto LAB23;

LAB25:    t1 = (t0 + 2632U);
    t4 = *((char **)t1);
    t10 = *((unsigned char *)t4);
    t19 = (t10 == (unsigned char)2);
    t2 = t19;
    goto LAB27;

}

static void work_a_2933702716_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(95, ng0);

LAB3:    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t1 = (t0 + 5744);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 5312);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_2933702716_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(96, ng0);

LAB3:    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 5808);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 5328);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_2933702716_3212880686_p_3(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(97, ng0);

LAB3:    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 5872);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 5344);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_2933702716_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2933702716_3212880686_p_0,(void *)work_a_2933702716_3212880686_p_1,(void *)work_a_2933702716_3212880686_p_2,(void *)work_a_2933702716_3212880686_p_3};
	xsi_register_didat("work_a_2933702716_3212880686", "isim/lifo_tb_isim_beh.exe.sim/work/a_2933702716_3212880686.didat");
	xsi_register_executes(pe);
}
