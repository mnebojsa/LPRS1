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
static const char *ng0 = "D:/LPRS1_git/LPRS1/zbirka/08projektovanje_procesora/8.13/AddSub/ALCell_tb.vhd";
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_1547198987_1035706684(char *, char *, char *, char *, char *, char *);


static void work_a_0547707173_2372691052_p_0(char *t0)
{
    char t18[16];
    char t19[16];
    char *t1;
    char *t2;
    int64 t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned char t14;
    int t15;
    int t16;
    int t17;
    int t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;

LAB0:    t1 = (t0 + 3152U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(84, ng0);
    t3 = (100 * 1000LL);
    t2 = (t0 + 2960);
    xsi_process_wait(t2, t3);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(86, ng0);
    t2 = (t0 + 6143);
    t5 = (t0 + 3536);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 3U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(87, ng0);
    t2 = (t0 + 1992U);
    t4 = *((char **)t2);
    t10 = (2 - 2);
    t11 = (t10 * -1);
    t12 = (1U * t11);
    t13 = (0 + t12);
    t2 = (t4 + t13);
    t14 = *((unsigned char *)t2);
    t5 = (t0 + 3600);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t14;
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(88, ng0);
    t2 = (t0 + 1992U);
    t4 = *((char **)t2);
    t10 = (1 - 2);
    t11 = (t10 * -1);
    t12 = (1U * t11);
    t13 = (0 + t12);
    t2 = (t4 + t13);
    t14 = *((unsigned char *)t2);
    t5 = (t0 + 3664);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t14;
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(89, ng0);
    t2 = (t0 + 1992U);
    t4 = *((char **)t2);
    t10 = (0 - 2);
    t11 = (t10 * -1);
    t12 = (1U * t11);
    t13 = (0 + t12);
    t2 = (t4 + t13);
    t14 = *((unsigned char *)t2);
    t5 = (t0 + 3728);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t14;
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(91, ng0);
    t2 = (t0 + 6146);
    *((int *)t2) = 0;
    t4 = (t0 + 6150);
    *((int *)t4) = 3;
    t10 = 0;
    t15 = 3;

LAB8:    if (t10 <= t15)
        goto LAB9;

LAB11:    xsi_set_current_line(102, ng0);

LAB30:    *((char **)t1) = &&LAB31;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB9:    xsi_set_current_line(92, ng0);
    t5 = (t0 + 6154);
    *((int *)t5) = 0;
    t6 = (t0 + 6158);
    *((int *)t6) = 8;
    t16 = 0;
    t17 = 8;

LAB12:    if (t16 <= t17)
        goto LAB13;

LAB15:    xsi_set_current_line(99, ng0);
    t2 = (t0 + 1512U);
    t4 = *((char **)t2);
    t2 = (t0 + 6092U);
    t5 = (t0 + 6165);
    t7 = (t19 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 0;
    t8 = (t7 + 4U);
    *((int *)t8) = 2;
    t8 = (t7 + 8U);
    *((int *)t8) = 1;
    t16 = (2 - 0);
    t11 = (t16 * 1);
    t11 = (t11 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t11;
    t8 = ieee_p_1242562249_sub_1547198987_1035706684(IEEE_P_1242562249, t18, t4, t2, t5, t19);
    t9 = (t0 + 3536);
    t21 = (t9 + 56U);
    t22 = *((char **)t21);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    memcpy(t24, t8, 3U);
    xsi_driver_first_trans_fast(t9);
    xsi_set_current_line(100, ng0);
    t3 = (50 * 1000LL);
    t2 = (t0 + 2960);
    xsi_process_wait(t2, t3);

LAB25:    *((char **)t1) = &&LAB26;
    goto LAB1;

LAB10:    t2 = (t0 + 6146);
    t10 = *((int *)t2);
    t4 = (t0 + 6150);
    t15 = *((int *)t4);
    if (t10 == t15)
        goto LAB11;

LAB27:    t16 = (t10 + 1);
    t10 = t16;
    t5 = (t0 + 6146);
    *((int *)t5) = t10;
    goto LAB8;

LAB13:    xsi_set_current_line(93, ng0);
    t3 = (20 * 1000LL);
    t7 = (t0 + 2960);
    xsi_process_wait(t7, t3);

LAB18:    *((char **)t1) = &&LAB19;
    goto LAB1;

LAB14:    t2 = (t0 + 6154);
    t16 = *((int *)t2);
    t4 = (t0 + 6158);
    t17 = *((int *)t4);
    if (t16 == t17)
        goto LAB15;

LAB22:    t20 = (t16 + 1);
    t16 = t20;
    t5 = (t0 + 6154);
    *((int *)t5) = t16;
    goto LAB12;

LAB16:    xsi_set_current_line(94, ng0);
    t2 = (t0 + 1992U);
    t4 = *((char **)t2);
    t2 = (t0 + 6108U);
    t5 = (t0 + 6162);
    t7 = (t19 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 0;
    t8 = (t7 + 4U);
    *((int *)t8) = 2;
    t8 = (t7 + 8U);
    *((int *)t8) = 1;
    t20 = (2 - 0);
    t11 = (t20 * 1);
    t11 = (t11 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t11;
    t8 = ieee_p_1242562249_sub_1547198987_1035706684(IEEE_P_1242562249, t18, t4, t2, t5, t19);
    t9 = (t18 + 12U);
    t11 = *((unsigned int *)t9);
    t12 = (1U * t11);
    t14 = (3U != t12);
    if (t14 == 1)
        goto LAB20;

LAB21:    t21 = (t0 + 3792);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    memcpy(t25, t8, 3U);
    xsi_driver_first_trans_fast(t21);
    xsi_set_current_line(95, ng0);
    t2 = (t0 + 1992U);
    t4 = *((char **)t2);
    t20 = (2 - 2);
    t11 = (t20 * -1);
    t12 = (1U * t11);
    t13 = (0 + t12);
    t2 = (t4 + t13);
    t14 = *((unsigned char *)t2);
    t5 = (t0 + 3600);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t14;
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(96, ng0);
    t2 = (t0 + 1992U);
    t4 = *((char **)t2);
    t20 = (1 - 2);
    t11 = (t20 * -1);
    t12 = (1U * t11);
    t13 = (0 + t12);
    t2 = (t4 + t13);
    t14 = *((unsigned char *)t2);
    t5 = (t0 + 3664);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t14;
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(97, ng0);
    t2 = (t0 + 1992U);
    t4 = *((char **)t2);
    t20 = (0 - 2);
    t11 = (t20 * -1);
    t12 = (1U * t11);
    t13 = (0 + t12);
    t2 = (t4 + t13);
    t14 = *((unsigned char *)t2);
    t5 = (t0 + 3728);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t14;
    xsi_driver_first_trans_fast(t5);
    goto LAB14;

LAB17:    goto LAB16;

LAB19:    goto LAB17;

LAB20:    xsi_size_not_matching(3U, t12, 0);
    goto LAB21;

LAB23:    goto LAB10;

LAB24:    goto LAB23;

LAB26:    goto LAB24;

LAB28:    goto LAB2;

LAB29:    goto LAB28;

LAB31:    goto LAB29;

}


extern void work_a_0547707173_2372691052_init()
{
	static char *pe[] = {(void *)work_a_0547707173_2372691052_p_0};
	xsi_register_didat("work_a_0547707173_2372691052", "isim/ALCell_tb_isim_beh.exe.sim/work/a_0547707173_2372691052.didat");
	xsi_register_executes(pe);
}
