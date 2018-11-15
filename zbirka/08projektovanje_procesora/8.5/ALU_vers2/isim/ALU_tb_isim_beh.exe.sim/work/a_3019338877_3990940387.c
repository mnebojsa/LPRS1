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
static const char *ng0 = "D:/LPRS1_git/LPRS1/zbirka/08projektovanje_procesora/8.5/ALU_vers2/ALCell.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1690584930_503743352(char *, unsigned char );
unsigned char ieee_p_2592010699_sub_2507238156_503743352(char *, unsigned char , unsigned char );
unsigned char ieee_p_2592010699_sub_2545490612_503743352(char *, unsigned char , unsigned char );


static void work_a_3019338877_3990940387_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    int t5;
    char *t6;
    char *t7;
    int t8;
    char *t9;
    int t11;
    char *t12;
    int t14;
    char *t15;
    int t17;
    char *t18;
    int t20;
    char *t21;
    int t23;
    char *t24;
    int t26;
    char *t27;
    char *t28;
    unsigned char t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    unsigned char t34;

LAB0:    t1 = (t0 + 3792U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(60, ng0);
    t2 = (t0 + 1512U);
    t3 = *((char **)t2);
    t2 = (t0 + 8447);
    t5 = xsi_mem_cmp(t2, t3, 3U);
    if (t5 == 1)
        goto LAB5;

LAB14:    t6 = (t0 + 8450);
    t8 = xsi_mem_cmp(t6, t3, 3U);
    if (t8 == 1)
        goto LAB6;

LAB15:    t9 = (t0 + 8453);
    t11 = xsi_mem_cmp(t9, t3, 3U);
    if (t11 == 1)
        goto LAB7;

LAB16:    t12 = (t0 + 8456);
    t14 = xsi_mem_cmp(t12, t3, 3U);
    if (t14 == 1)
        goto LAB8;

LAB17:    t15 = (t0 + 8459);
    t17 = xsi_mem_cmp(t15, t3, 3U);
    if (t17 == 1)
        goto LAB9;

LAB18:    t18 = (t0 + 8462);
    t20 = xsi_mem_cmp(t18, t3, 3U);
    if (t20 == 1)
        goto LAB10;

LAB19:    t21 = (t0 + 8465);
    t23 = xsi_mem_cmp(t21, t3, 3U);
    if (t23 == 1)
        goto LAB11;

LAB20:    t24 = (t0 + 8468);
    t26 = xsi_mem_cmp(t24, t3, 3U);
    if (t26 == 1)
        goto LAB12;

LAB21:
LAB13:    xsi_set_current_line(61, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t29 = *((unsigned char *)t3);
    t2 = (t0 + 5248);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    *((unsigned char *)t9) = t29;
    xsi_driver_first_trans_fast(t2);

LAB4:    xsi_set_current_line(60, ng0);

LAB25:    t2 = (t0 + 5104);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB26;

LAB1:    return;
LAB5:    xsi_set_current_line(61, ng0);
    t27 = (t0 + 1032U);
    t28 = *((char **)t27);
    t29 = *((unsigned char *)t28);
    t27 = (t0 + 5248);
    t30 = (t27 + 56U);
    t31 = *((char **)t30);
    t32 = (t31 + 56U);
    t33 = *((char **)t32);
    *((unsigned char *)t33) = t29;
    xsi_driver_first_trans_fast(t27);
    goto LAB4;

LAB6:    xsi_set_current_line(61, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t29 = *((unsigned char *)t3);
    t2 = (t0 + 5248);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    *((unsigned char *)t9) = t29;
    xsi_driver_first_trans_fast(t2);
    goto LAB4;

LAB7:    xsi_set_current_line(61, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t29 = *((unsigned char *)t3);
    t2 = (t0 + 5248);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    *((unsigned char *)t9) = t29;
    xsi_driver_first_trans_fast(t2);
    goto LAB4;

LAB8:    xsi_set_current_line(61, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t29 = *((unsigned char *)t3);
    t2 = (t0 + 5248);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    *((unsigned char *)t9) = t29;
    xsi_driver_first_trans_fast(t2);
    goto LAB4;

LAB9:    xsi_set_current_line(61, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t29 = *((unsigned char *)t3);
    t2 = (t0 + 5248);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    *((unsigned char *)t9) = t29;
    xsi_driver_first_trans_fast(t2);
    goto LAB4;

LAB10:    xsi_set_current_line(61, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t29 = *((unsigned char *)t3);
    t2 = (t0 + 5248);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    *((unsigned char *)t9) = t29;
    xsi_driver_first_trans_fast(t2);
    goto LAB4;

LAB11:    xsi_set_current_line(61, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t29 = *((unsigned char *)t3);
    t2 = (t0 + 5248);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    *((unsigned char *)t9) = t29;
    xsi_driver_first_trans_fast(t2);
    goto LAB4;

LAB12:    xsi_set_current_line(61, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t29 = *((unsigned char *)t3);
    t34 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t29);
    t2 = (t0 + 5248);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    *((unsigned char *)t9) = t34;
    xsi_driver_first_trans_fast(t2);
    goto LAB4;

LAB22:;
LAB23:    t3 = (t0 + 5104);
    *((int *)t3) = 0;
    goto LAB2;

LAB24:    goto LAB23;

LAB26:    goto LAB24;

}

static void work_a_3019338877_3990940387_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    int t5;
    char *t6;
    char *t7;
    int t8;
    char *t9;
    int t11;
    char *t12;
    int t14;
    char *t15;
    int t17;
    char *t18;
    int t20;
    char *t21;
    int t23;
    char *t24;
    int t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    unsigned char t32;
    unsigned char t33;

LAB0:    t1 = (t0 + 4040U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(71, ng0);
    t2 = (t0 + 1512U);
    t3 = *((char **)t2);
    t2 = (t0 + 8471);
    t5 = xsi_mem_cmp(t2, t3, 3U);
    if (t5 == 1)
        goto LAB5;

LAB14:    t6 = (t0 + 8474);
    t8 = xsi_mem_cmp(t6, t3, 3U);
    if (t8 == 1)
        goto LAB6;

LAB15:    t9 = (t0 + 8477);
    t11 = xsi_mem_cmp(t9, t3, 3U);
    if (t11 == 1)
        goto LAB7;

LAB16:    t12 = (t0 + 8480);
    t14 = xsi_mem_cmp(t12, t3, 3U);
    if (t14 == 1)
        goto LAB8;

LAB17:    t15 = (t0 + 8483);
    t17 = xsi_mem_cmp(t15, t3, 3U);
    if (t17 == 1)
        goto LAB9;

LAB18:    t18 = (t0 + 8486);
    t20 = xsi_mem_cmp(t18, t3, 3U);
    if (t20 == 1)
        goto LAB10;

LAB19:    t21 = (t0 + 8489);
    t23 = xsi_mem_cmp(t21, t3, 3U);
    if (t23 == 1)
        goto LAB11;

LAB20:    t24 = (t0 + 8492);
    t26 = xsi_mem_cmp(t24, t3, 3U);
    if (t26 == 1)
        goto LAB12;

LAB21:
LAB13:    xsi_set_current_line(72, ng0);
    t2 = (t0 + 1192U);
    t3 = *((char **)t2);
    t32 = *((unsigned char *)t3);
    t2 = (t0 + 5312);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    *((unsigned char *)t9) = t32;
    xsi_driver_first_trans_fast(t2);

LAB4:    xsi_set_current_line(71, ng0);

LAB25:    t2 = (t0 + 5120);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB26;

LAB1:    return;
LAB5:    xsi_set_current_line(72, ng0);
    t27 = (t0 + 5312);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    t30 = (t29 + 56U);
    t31 = *((char **)t30);
    *((unsigned char *)t31) = (unsigned char)2;
    xsi_driver_first_trans_fast(t27);
    goto LAB4;

LAB6:    xsi_set_current_line(72, ng0);
    t2 = (t0 + 1192U);
    t3 = *((char **)t2);
    t32 = *((unsigned char *)t3);
    t2 = (t0 + 5312);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    *((unsigned char *)t9) = t32;
    xsi_driver_first_trans_fast(t2);
    goto LAB4;

LAB7:    xsi_set_current_line(72, ng0);
    t2 = (t0 + 1192U);
    t3 = *((char **)t2);
    t32 = *((unsigned char *)t3);
    t33 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t32);
    t2 = (t0 + 5312);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    *((unsigned char *)t9) = t33;
    xsi_driver_first_trans_fast(t2);
    goto LAB4;

LAB8:    xsi_set_current_line(72, ng0);
    t2 = (t0 + 5312);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    goto LAB4;

LAB9:    xsi_set_current_line(72, ng0);
    t2 = (t0 + 1192U);
    t3 = *((char **)t2);
    t32 = *((unsigned char *)t3);
    t2 = (t0 + 5312);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    *((unsigned char *)t9) = t32;
    xsi_driver_first_trans_fast(t2);
    goto LAB4;

LAB10:    xsi_set_current_line(72, ng0);
    t2 = (t0 + 1192U);
    t3 = *((char **)t2);
    t32 = *((unsigned char *)t3);
    t2 = (t0 + 5312);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    *((unsigned char *)t9) = t32;
    xsi_driver_first_trans_fast(t2);
    goto LAB4;

LAB11:    xsi_set_current_line(72, ng0);
    t2 = (t0 + 1192U);
    t3 = *((char **)t2);
    t32 = *((unsigned char *)t3);
    t2 = (t0 + 5312);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    *((unsigned char *)t9) = t32;
    xsi_driver_first_trans_fast(t2);
    goto LAB4;

LAB12:    xsi_set_current_line(72, ng0);
    t2 = (t0 + 5312);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    goto LAB4;

LAB22:;
LAB23:    t3 = (t0 + 5120);
    *((int *)t3) = 0;
    goto LAB2;

LAB24:    goto LAB23;

LAB26:    goto LAB24;

}

static void work_a_3019338877_3990940387_p_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    int t5;
    char *t6;
    char *t7;
    int t8;
    char *t9;
    int t11;
    char *t12;
    int t14;
    char *t15;
    int t17;
    char *t18;
    int t20;
    char *t21;
    int t23;
    char *t24;
    int t26;
    char *t27;
    char *t28;
    unsigned char t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    unsigned char t34;

LAB0:    t1 = (t0 + 4288U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(82, ng0);
    t2 = (t0 + 1512U);
    t3 = *((char **)t2);
    t2 = (t0 + 8495);
    t5 = xsi_mem_cmp(t2, t3, 3U);
    if (t5 == 1)
        goto LAB5;

LAB14:    t6 = (t0 + 8498);
    t8 = xsi_mem_cmp(t6, t3, 3U);
    if (t8 == 1)
        goto LAB6;

LAB15:    t9 = (t0 + 8501);
    t11 = xsi_mem_cmp(t9, t3, 3U);
    if (t11 == 1)
        goto LAB7;

LAB16:    t12 = (t0 + 8504);
    t14 = xsi_mem_cmp(t12, t3, 3U);
    if (t14 == 1)
        goto LAB8;

LAB17:    t15 = (t0 + 8507);
    t17 = xsi_mem_cmp(t15, t3, 3U);
    if (t17 == 1)
        goto LAB9;

LAB18:    t18 = (t0 + 8510);
    t20 = xsi_mem_cmp(t18, t3, 3U);
    if (t20 == 1)
        goto LAB10;

LAB19:    t21 = (t0 + 8513);
    t23 = xsi_mem_cmp(t21, t3, 3U);
    if (t23 == 1)
        goto LAB11;

LAB20:    t24 = (t0 + 8516);
    t26 = xsi_mem_cmp(t24, t3, 3U);
    if (t26 == 1)
        goto LAB12;

LAB21:
LAB13:    xsi_set_current_line(83, ng0);
    t2 = (t0 + 5376);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);

LAB4:    xsi_set_current_line(82, ng0);

LAB25:    t2 = (t0 + 5136);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB26;

LAB1:    return;
LAB5:    xsi_set_current_line(83, ng0);
    t27 = (t0 + 1352U);
    t28 = *((char **)t27);
    t29 = *((unsigned char *)t28);
    t27 = (t0 + 5376);
    t30 = (t27 + 56U);
    t31 = *((char **)t30);
    t32 = (t31 + 56U);
    t33 = *((char **)t32);
    *((unsigned char *)t33) = t29;
    xsi_driver_first_trans_fast(t27);
    goto LAB4;

LAB6:    xsi_set_current_line(83, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t29 = *((unsigned char *)t3);
    t2 = (t0 + 5376);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    *((unsigned char *)t9) = t29;
    xsi_driver_first_trans_fast(t2);
    goto LAB4;

LAB7:    xsi_set_current_line(83, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t29 = *((unsigned char *)t3);
    t2 = (t0 + 5376);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    *((unsigned char *)t9) = t29;
    xsi_driver_first_trans_fast(t2);
    goto LAB4;

LAB8:    xsi_set_current_line(83, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t29 = *((unsigned char *)t3);
    t34 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t29);
    t2 = (t0 + 5376);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    *((unsigned char *)t9) = t34;
    xsi_driver_first_trans_fast(t2);
    goto LAB4;

LAB9:    xsi_set_current_line(83, ng0);
    t2 = (t0 + 5376);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    goto LAB4;

LAB10:    xsi_set_current_line(83, ng0);
    t2 = (t0 + 5376);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    goto LAB4;

LAB11:    xsi_set_current_line(83, ng0);
    t2 = (t0 + 5376);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    goto LAB4;

LAB12:    xsi_set_current_line(83, ng0);
    t2 = (t0 + 5376);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    goto LAB4;

LAB22:;
LAB23:    t3 = (t0 + 5136);
    *((int *)t3) = 0;
    goto LAB2;

LAB24:    goto LAB23;

LAB26:    goto LAB24;

}

static void work_a_3019338877_3990940387_p_3(char *t0)
{
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
    int t14;
    char *t15;
    int t17;
    char *t18;
    int t20;
    char *t21;
    int t23;
    char *t24;
    int t26;
    char *t27;
    char *t28;
    unsigned char t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    unsigned char t34;
    unsigned char t35;

LAB0:    t1 = (t0 + 4536U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(101, ng0);
    t2 = (t0 + 1512U);
    t3 = *((char **)t2);
    t2 = (t0 + 8519);
    t5 = xsi_mem_cmp(t2, t3, 3U);
    if (t5 == 1)
        goto LAB5;

LAB14:    t6 = (t0 + 8522);
    t8 = xsi_mem_cmp(t6, t3, 3U);
    if (t8 == 1)
        goto LAB6;

LAB15:    t9 = (t0 + 8525);
    t11 = xsi_mem_cmp(t9, t3, 3U);
    if (t11 == 1)
        goto LAB7;

LAB16:    t12 = (t0 + 8528);
    t14 = xsi_mem_cmp(t12, t3, 3U);
    if (t14 == 1)
        goto LAB8;

LAB17:    t15 = (t0 + 8531);
    t17 = xsi_mem_cmp(t15, t3, 3U);
    if (t17 == 1)
        goto LAB9;

LAB18:    t18 = (t0 + 8534);
    t20 = xsi_mem_cmp(t18, t3, 3U);
    if (t20 == 1)
        goto LAB10;

LAB19:    t21 = (t0 + 8537);
    t23 = xsi_mem_cmp(t21, t3, 3U);
    if (t23 == 1)
        goto LAB11;

LAB20:    t24 = (t0 + 8540);
    t26 = xsi_mem_cmp(t24, t3, 3U);
    if (t26 == 1)
        goto LAB12;

LAB21:
LAB13:    xsi_set_current_line(102, ng0);
    t2 = (t0 + 5440);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);

LAB4:    xsi_set_current_line(101, ng0);

LAB25:    t2 = (t0 + 5152);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB26;

LAB1:    return;
LAB5:    xsi_set_current_line(102, ng0);
    t27 = (t0 + 2152U);
    t28 = *((char **)t27);
    t29 = *((unsigned char *)t28);
    t27 = (t0 + 5440);
    t30 = (t27 + 56U);
    t31 = *((char **)t30);
    t32 = (t31 + 56U);
    t33 = *((char **)t32);
    *((unsigned char *)t33) = t29;
    xsi_driver_first_trans_fast_port(t27);
    goto LAB4;

LAB6:    xsi_set_current_line(102, ng0);
    t2 = (t0 + 2152U);
    t3 = *((char **)t2);
    t29 = *((unsigned char *)t3);
    t2 = (t0 + 5440);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    *((unsigned char *)t9) = t29;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB4;

LAB7:    xsi_set_current_line(102, ng0);
    t2 = (t0 + 2152U);
    t3 = *((char **)t2);
    t29 = *((unsigned char *)t3);
    t2 = (t0 + 5440);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    *((unsigned char *)t9) = t29;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB4;

LAB8:    xsi_set_current_line(102, ng0);
    t2 = (t0 + 2152U);
    t3 = *((char **)t2);
    t29 = *((unsigned char *)t3);
    t2 = (t0 + 5440);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    *((unsigned char *)t9) = t29;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB4;

LAB9:    xsi_set_current_line(102, ng0);
    t2 = (t0 + 1992U);
    t3 = *((char **)t2);
    t29 = *((unsigned char *)t3);
    t2 = (t0 + 2152U);
    t4 = *((char **)t2);
    t34 = *((unsigned char *)t4);
    t35 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t29, t34);
    t2 = (t0 + 5440);
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t35;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB4;

LAB10:    xsi_set_current_line(102, ng0);
    t2 = (t0 + 2152U);
    t3 = *((char **)t2);
    t29 = *((unsigned char *)t3);
    t2 = (t0 + 5440);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    *((unsigned char *)t9) = t29;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB4;

LAB11:    xsi_set_current_line(102, ng0);
    t2 = (t0 + 1992U);
    t3 = *((char **)t2);
    t29 = *((unsigned char *)t3);
    t2 = (t0 + 5440);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    *((unsigned char *)t9) = t29;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB4;

LAB12:    xsi_set_current_line(102, ng0);
    t2 = (t0 + 2152U);
    t3 = *((char **)t2);
    t29 = *((unsigned char *)t3);
    t2 = (t0 + 5440);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    *((unsigned char *)t9) = t29;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB4;

LAB22:;
LAB23:    t3 = (t0 + 5152);
    *((int *)t3) = 0;
    goto LAB2;

LAB24:    goto LAB23;

LAB26:    goto LAB24;

}

static void work_a_3019338877_3990940387_p_4(char *t0)
{
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
    int t14;
    char *t15;
    int t17;
    char *t18;
    int t20;
    char *t21;
    int t23;
    char *t24;
    int t26;
    char *t27;
    char *t28;
    unsigned char t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    unsigned char t34;
    unsigned char t35;

LAB0:    t1 = (t0 + 4784U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(112, ng0);
    t2 = (t0 + 1512U);
    t3 = *((char **)t2);
    t2 = (t0 + 8543);
    t5 = xsi_mem_cmp(t2, t3, 3U);
    if (t5 == 1)
        goto LAB5;

LAB14:    t6 = (t0 + 8546);
    t8 = xsi_mem_cmp(t6, t3, 3U);
    if (t8 == 1)
        goto LAB6;

LAB15:    t9 = (t0 + 8549);
    t11 = xsi_mem_cmp(t9, t3, 3U);
    if (t11 == 1)
        goto LAB7;

LAB16:    t12 = (t0 + 8552);
    t14 = xsi_mem_cmp(t12, t3, 3U);
    if (t14 == 1)
        goto LAB8;

LAB17:    t15 = (t0 + 8555);
    t17 = xsi_mem_cmp(t15, t3, 3U);
    if (t17 == 1)
        goto LAB9;

LAB18:    t18 = (t0 + 8558);
    t20 = xsi_mem_cmp(t18, t3, 3U);
    if (t20 == 1)
        goto LAB10;

LAB19:    t21 = (t0 + 8561);
    t23 = xsi_mem_cmp(t21, t3, 3U);
    if (t23 == 1)
        goto LAB11;

LAB20:    t24 = (t0 + 8564);
    t26 = xsi_mem_cmp(t24, t3, 3U);
    if (t26 == 1)
        goto LAB12;

LAB21:
LAB13:    xsi_set_current_line(113, ng0);
    t2 = (t0 + 5504);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);

LAB4:    xsi_set_current_line(112, ng0);

LAB25:    t2 = (t0 + 5168);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB26;

LAB1:    return;
LAB5:    xsi_set_current_line(113, ng0);
    t27 = (t0 + 1992U);
    t28 = *((char **)t27);
    t29 = *((unsigned char *)t28);
    t27 = (t0 + 5504);
    t30 = (t27 + 56U);
    t31 = *((char **)t30);
    t32 = (t31 + 56U);
    t33 = *((char **)t32);
    *((unsigned char *)t33) = t29;
    xsi_driver_first_trans_fast_port(t27);
    goto LAB4;

LAB6:    xsi_set_current_line(113, ng0);
    t2 = (t0 + 1992U);
    t3 = *((char **)t2);
    t29 = *((unsigned char *)t3);
    t2 = (t0 + 5504);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    *((unsigned char *)t9) = t29;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB4;

LAB7:    xsi_set_current_line(113, ng0);
    t2 = (t0 + 1992U);
    t3 = *((char **)t2);
    t29 = *((unsigned char *)t3);
    t2 = (t0 + 5504);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    *((unsigned char *)t9) = t29;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB4;

LAB8:    xsi_set_current_line(113, ng0);
    t2 = (t0 + 2152U);
    t3 = *((char **)t2);
    t29 = *((unsigned char *)t3);
    t2 = (t0 + 1992U);
    t4 = *((char **)t2);
    t34 = *((unsigned char *)t4);
    t35 = ieee_p_2592010699_sub_2507238156_503743352(IEEE_P_2592010699, t29, t34);
    t2 = (t0 + 5504);
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t35;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB4;

LAB9:    xsi_set_current_line(113, ng0);
    t2 = (t0 + 5504);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB4;

LAB10:    xsi_set_current_line(113, ng0);
    t2 = (t0 + 5504);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB4;

LAB11:    xsi_set_current_line(113, ng0);
    t2 = (t0 + 5504);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB4;

LAB12:    xsi_set_current_line(113, ng0);
    t2 = (t0 + 5504);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB4;

LAB22:;
LAB23:    t3 = (t0 + 5168);
    *((int *)t3) = 0;
    goto LAB2;

LAB24:    goto LAB23;

LAB26:    goto LAB24;

}


extern void work_a_3019338877_3990940387_init()
{
	static char *pe[] = {(void *)work_a_3019338877_3990940387_p_0,(void *)work_a_3019338877_3990940387_p_1,(void *)work_a_3019338877_3990940387_p_2,(void *)work_a_3019338877_3990940387_p_3,(void *)work_a_3019338877_3990940387_p_4};
	xsi_register_didat("work_a_3019338877_3990940387", "isim/ALU_tb_isim_beh.exe.sim/work/a_3019338877_3990940387.didat");
	xsi_register_executes(pe);
}
