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
static const char *ng0 = "D:/LPRS1_git/LPRS1/zbirka/08projektovanje_procesora/8.8/mul/mul.vhd";
extern char *IEEE_P_1242562249;

int ieee_p_1242562249_sub_1657552908_1035706684(char *, char *, char *);


static void work_a_3764543196_1516540902_p_0(char *t0)
{
    char *t1;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(116, ng0);

LAB3:    t1 = (t0 + 12384);
    t3 = (3U != 3U);
    if (t3 == 1)
        goto LAB5;

LAB6:    t4 = (t0 + 7312);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 3U);
    xsi_driver_first_trans_delta(t4, 0U, 3U, 0LL);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(3U, 3U, 0);
    goto LAB6;

}

static void work_a_3764543196_1516540902_p_1(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    int t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    xsi_set_current_line(144, ng0);

LAB3:    t1 = (t0 + 3112U);
    t2 = *((char **)t1);
    t1 = (t0 + 12200U);
    t3 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t2, t1);
    t4 = (4 + t3);
    t5 = (t0 + 7376);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((int *)t9) = t4;
    xsi_driver_first_trans_fast(t5);

LAB2:    t10 = (t0 + 7184);
    *((int *)t10) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3764543196_1516540902_p_2(char *t0)
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

LAB0:    xsi_set_current_line(145, ng0);

LAB3:    t1 = (t0 + 3112U);
    t2 = *((char **)t1);
    t1 = (t0 + 12200U);
    t3 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t2, t1);
    t4 = (t0 + 7440);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = t3;
    xsi_driver_first_trans_fast(t4);

LAB2:    t9 = (t0 + 7200);
    *((int *)t9) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3764543196_1516540902_p_3(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    int t4;
    unsigned int t5;
    char *t6;
    int t7;
    unsigned int t8;
    unsigned int t9;
    char *t10;
    char *t11;
    int t12;
    char *t13;
    int t14;
    int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned char t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;

LAB0:    xsi_set_current_line(146, ng0);

LAB3:    t1 = (t0 + 4232U);
    t2 = *((char **)t1);
    t1 = (t0 + 4392U);
    t3 = *((char **)t1);
    t4 = *((int *)t3);
    t5 = (7 - t4);
    t1 = (t0 + 4552U);
    t6 = *((char **)t1);
    t7 = *((int *)t6);
    xsi_vhdl_check_range_of_slice(7, 0, -1, t4, t7, -1);
    t8 = (t5 * 1U);
    t9 = (0 + t8);
    t1 = (t2 + t9);
    t10 = (t0 + 4392U);
    t11 = *((char **)t10);
    t12 = *((int *)t11);
    t10 = (t0 + 4552U);
    t13 = *((char **)t10);
    t14 = *((int *)t13);
    t15 = (t14 - t12);
    t16 = (t15 * -1);
    t16 = (t16 + 1);
    t17 = (1U * t16);
    t18 = (4U != t17);
    if (t18 == 1)
        goto LAB5;

LAB6:    t10 = (t0 + 7504);
    t19 = (t10 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t1, 4U);
    xsi_driver_first_trans_fast(t10);

LAB2:    t23 = (t0 + 7216);
    *((int *)t23) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(4U, t17, 0);
    goto LAB6;

}

static void work_a_3764543196_1516540902_p_4(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(175, ng0);

LAB3:    t1 = (t0 + 4232U);
    t2 = *((char **)t1);
    t1 = (t0 + 7568);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 7232);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_3764543196_1516540902_init()
{
	static char *pe[] = {(void *)work_a_3764543196_1516540902_p_0,(void *)work_a_3764543196_1516540902_p_1,(void *)work_a_3764543196_1516540902_p_2,(void *)work_a_3764543196_1516540902_p_3,(void *)work_a_3764543196_1516540902_p_4};
	xsi_register_didat("work_a_3764543196_1516540902", "isim/mul_tb_isim_beh.exe.sim/work/a_3764543196_1516540902.didat");
	xsi_register_executes(pe);
}
