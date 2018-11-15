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
static const char *ng0 = "D:/LPRS1_git/LPRS1/LPRS1_Lab08/procesor/procesor/ALU.vhd";
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_1547198987_1035706684(char *, char *, char *, char *, char *, char *);
char *ieee_p_1242562249_sub_1547270861_1035706684(char *, char *, char *, char *, char *, char *);


static void work_a_4049492552_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(49, ng0);

LAB3:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 5008);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 16U);
    xsi_driver_first_trans_fast(t1);

LAB2:    t7 = (t0 + 4864);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_4049492552_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(50, ng0);

LAB3:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 5072);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 16U);
    xsi_driver_first_trans_fast(t1);

LAB2:    t7 = (t0 + 4880);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_4049492552_3212880686_p_2(char *t0)
{
    char t8[16];
    char t11[16];
    char t16[16];
    char *t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned int t5;
    char *t6;
    char *t7;
    char *t9;
    char *t10;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    unsigned int t21;
    unsigned int t22;
    unsigned char t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;

LAB0:    xsi_set_current_line(54, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 7814);
    t4 = 1;
    if (1U == 1U)
        goto LAB5;

LAB6:    t4 = 0;

LAB7:    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(57, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t3 = ((IEEE_P_1242562249) + 3000);
    t6 = (t0 + 7668U);
    t1 = xsi_base_array_concat(t1, t11, t3, (char)99, (unsigned char)2, (char)97, t2, t6, (char)101);
    t7 = (t0 + 1992U);
    t9 = *((char **)t7);
    t10 = ((IEEE_P_1242562249) + 3000);
    t12 = (t0 + 7684U);
    t7 = xsi_base_array_concat(t7, t16, t10, (char)99, (unsigned char)2, (char)97, t9, t12, (char)101);
    t13 = ieee_p_1242562249_sub_1547270861_1035706684(IEEE_P_1242562249, t8, t1, t11, t7, t16);
    t14 = (t8 + 12U);
    t5 = *((unsigned int *)t14);
    t21 = (1U * t5);
    t4 = (17U != t21);
    if (t4 == 1)
        goto LAB13;

LAB14:    t15 = (t0 + 5136);
    t17 = (t15 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t13, 17U);
    xsi_driver_first_trans_fast(t15);

LAB3:    t1 = (t0 + 4896);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(55, ng0);
    t9 = (t0 + 1832U);
    t10 = *((char **)t9);
    t12 = ((IEEE_P_1242562249) + 3000);
    t13 = (t0 + 7668U);
    t9 = xsi_base_array_concat(t9, t11, t12, (char)99, (unsigned char)2, (char)97, t10, t13, (char)101);
    t14 = (t0 + 1992U);
    t15 = *((char **)t14);
    t17 = ((IEEE_P_1242562249) + 3000);
    t18 = (t0 + 7684U);
    t14 = xsi_base_array_concat(t14, t16, t17, (char)99, (unsigned char)2, (char)97, t15, t18, (char)101);
    t19 = ieee_p_1242562249_sub_1547198987_1035706684(IEEE_P_1242562249, t8, t9, t11, t14, t16);
    t20 = (t8 + 12U);
    t21 = *((unsigned int *)t20);
    t22 = (1U * t21);
    t23 = (17U != t22);
    if (t23 == 1)
        goto LAB11;

LAB12:    t24 = (t0 + 5136);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    memcpy(t28, t19, 17U);
    xsi_driver_first_trans_fast(t24);
    goto LAB3;

LAB5:    t5 = 0;

LAB8:    if (t5 < 1U)
        goto LAB9;
    else
        goto LAB7;

LAB9:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB6;

LAB10:    t5 = (t5 + 1);
    goto LAB8;

LAB11:    xsi_size_not_matching(17U, t22, 0);
    goto LAB12;

LAB13:    xsi_size_not_matching(17U, t21, 0);
    goto LAB14;

}

static void work_a_4049492552_3212880686_p_3(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;

LAB0:    xsi_set_current_line(61, ng0);

LAB3:    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t3 = (16 - 1);
    t4 = (16 - t3);
    t5 = (t4 * 1U);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = (t0 + 5200);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 16U);
    xsi_driver_first_trans_fast_port(t7);

LAB2:    t12 = (t0 + 4912);
    *((int *)t12) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_4049492552_3212880686_p_4(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(62, ng0);

LAB3:    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t3 = (16 - 16);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 5264);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t7;
    xsi_driver_first_trans_fast_port(t8);

LAB2:    t13 = (t0 + 4928);
    *((int *)t13) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_4049492552_3212880686_init()
{
	static char *pe[] = {(void *)work_a_4049492552_3212880686_p_0,(void *)work_a_4049492552_3212880686_p_1,(void *)work_a_4049492552_3212880686_p_2,(void *)work_a_4049492552_3212880686_p_3,(void *)work_a_4049492552_3212880686_p_4};
	xsi_register_didat("work_a_4049492552_3212880686", "isim/ALU_tb_isim_beh.exe.sim/work/a_4049492552_3212880686.didat");
	xsi_register_executes(pe);
}
