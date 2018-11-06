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
static const char *ng0 = "D:/LPRS1_git/LPRS1/zbirka/04automati/4.7/sm_4_7/counter.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_1919365254_1035706684(char *, char *, char *, char *, int );
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_4000226436_3212880686_p_0(char *t0)
{
    char t13[16];
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
    unsigned int t14;
    unsigned int t15;

LAB0:    xsi_set_current_line(47, ng0);
    t1 = (t0 + 1152U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 3112);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(48, ng0);
    t3 = (t0 + 1352U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)2);
    if (t6 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(52, ng0);
    t1 = (t0 + 1032U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t5 = ((unsigned char)2 == t2);
    if (t5 != 0)
        goto LAB8;

LAB10:    xsi_set_current_line(56, ng0);
    t1 = (t0 + 5053);
    t4 = (t0 + 3192);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 2U);
    xsi_driver_first_trans_fast_port(t4);
    xsi_set_current_line(57, ng0);
    t1 = (t0 + 5055);
    t4 = (t0 + 1808U);
    t7 = *((char **)t4);
    t4 = (t7 + 0);
    memcpy(t4, t1, 2U);

LAB9:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(49, ng0);
    t3 = (t0 + 5049);
    t8 = (t0 + 3192);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t3, 2U);
    xsi_driver_first_trans_fast_port(t8);
    xsi_set_current_line(50, ng0);
    t1 = (t0 + 5051);
    t4 = (t0 + 1808U);
    t7 = *((char **)t4);
    t4 = (t7 + 0);
    memcpy(t4, t1, 2U);
    goto LAB6;

LAB8:    xsi_set_current_line(53, ng0);
    t1 = (t0 + 1808U);
    t4 = *((char **)t1);
    t1 = (t0 + 5020U);
    t7 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t13, t4, t1, 1);
    t8 = (t0 + 1808U);
    t9 = *((char **)t8);
    t8 = (t9 + 0);
    t10 = (t13 + 12U);
    t14 = *((unsigned int *)t10);
    t15 = (1U * t14);
    memcpy(t8, t7, t15);
    xsi_set_current_line(54, ng0);
    t1 = (t0 + 1808U);
    t3 = *((char **)t1);
    t1 = (t0 + 3192);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t3, 2U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB9;

}


extern void work_a_4000226436_3212880686_init()
{
	static char *pe[] = {(void *)work_a_4000226436_3212880686_p_0};
	xsi_register_didat("work_a_4000226436_3212880686", "isim/inst_counter_tb_isim_beh.exe.sim/work/a_4000226436_3212880686.didat");
	xsi_register_executes(pe);
}
