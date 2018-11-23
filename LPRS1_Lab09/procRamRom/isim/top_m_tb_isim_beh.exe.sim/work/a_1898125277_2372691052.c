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
static const char *ng0 = "D:/LPRS1_git/LPRS1/LPRS1_Lab09/procRamRom/top_m_tb.vhd";
extern char *IEEE_P_1242562249;

int ieee_p_1242562249_sub_1657552908_1035706684(char *, char *, char *);


static void work_a_1898125277_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int64 t8;

LAB0:    t1 = (t0 + 3352U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(78, ng0);
    t2 = (t0 + 4496);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(79, ng0);
    t2 = (t0 + 2128U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 3160);
    xsi_process_wait(t2, t8);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(80, ng0);
    t2 = (t0 + 4496);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(81, ng0);
    t2 = (t0 + 2128U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 3160);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_1898125277_2372691052_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int64 t8;

LAB0:    t1 = (t0 + 3600U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(87, ng0);
    t2 = (t0 + 4560);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(88, ng0);
    t2 = (t0 + 2128U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t2 = (t0 + 3408);
    xsi_process_wait(t2, t7);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(89, ng0);
    t2 = (t0 + 4560);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(90, ng0);
    t2 = (t0 + 2128U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 * 25);
    t2 = (t0 + 3408);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_1898125277_2372691052_p_2(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    int t6;
    int t7;
    int t8;
    int t9;
    int t10;
    int t11;
    int t12;
    int t13;
    char *t14;

LAB0:    xsi_set_current_line(97, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 4416);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(98, ng0);
    t1 = (t0 + 2248U);
    t5 = *((char **)t1);
    t6 = *((int *)t5);
    if (t6 == 0)
        goto LAB6;

LAB15:    if (t6 == 1)
        goto LAB7;

LAB16:    if (t6 == 2)
        goto LAB8;

LAB17:    if (t6 == 3)
        goto LAB9;

LAB18:    if (t6 == 4)
        goto LAB10;

LAB19:    if (t6 == 5)
        goto LAB11;

LAB20:    if (t6 == 6)
        goto LAB12;

LAB21:    if (t6 == 7)
        goto LAB13;

LAB22:
LAB14:    xsi_set_current_line(116, ng0);
    t6 = (8 * 7);
    t7 = (t6 * 6);
    t8 = (t7 * 5);
    t9 = (t8 * 4);
    t10 = (t9 * 3);
    t11 = (t10 * 2);
    t12 = (t11 * 1);
    t1 = (t0 + 2368U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((int *)t1) = t12;

LAB5:    xsi_set_current_line(119, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 7032U);
    t6 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t2, t1);
    t5 = (t0 + 2368U);
    t14 = *((char **)t5);
    t7 = *((int *)t14);
    t3 = (t6 == t7);
    if (t3 == 0)
        goto LAB24;

LAB25:    xsi_set_current_line(123, ng0);
    t1 = (t0 + 2248U);
    t2 = *((char **)t1);
    t6 = *((int *)t2);
    t7 = (t6 + 1);
    t1 = (t0 + 2248U);
    t5 = *((char **)t1);
    t1 = (t5 + 0);
    *((int *)t1) = t7;
    goto LAB3;

LAB6:    xsi_set_current_line(100, ng0);
    t7 = (8 * 7);
    t8 = (t7 * 6);
    t9 = (t8 * 5);
    t10 = (t9 * 4);
    t11 = (t10 * 3);
    t12 = (t11 * 2);
    t13 = (t12 * 1);
    t1 = (t0 + 2368U);
    t14 = *((char **)t1);
    t1 = (t14 + 0);
    *((int *)t1) = t13;
    goto LAB5;

LAB7:    xsi_set_current_line(102, ng0);
    t6 = (7 * 6);
    t7 = (t6 * 5);
    t8 = (t7 * 4);
    t9 = (t8 * 3);
    t10 = (t9 * 2);
    t11 = (t10 * 1);
    t1 = (t0 + 2368U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((int *)t1) = t11;
    goto LAB5;

LAB8:    xsi_set_current_line(104, ng0);
    t6 = (6 * 5);
    t7 = (t6 * 4);
    t8 = (t7 * 3);
    t9 = (t8 * 2);
    t10 = (t9 * 1);
    t1 = (t0 + 2368U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((int *)t1) = t10;
    goto LAB5;

LAB9:    xsi_set_current_line(106, ng0);
    t6 = (5 * 4);
    t7 = (t6 * 3);
    t8 = (t7 * 2);
    t9 = (t8 * 1);
    t1 = (t0 + 2368U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((int *)t1) = t9;
    goto LAB5;

LAB10:    xsi_set_current_line(108, ng0);
    t6 = (4 * 3);
    t7 = (t6 * 2);
    t8 = (t7 * 1);
    t1 = (t0 + 2368U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((int *)t1) = t8;
    goto LAB5;

LAB11:    xsi_set_current_line(110, ng0);
    t6 = (3 * 2);
    t7 = (t6 * 1);
    t1 = (t0 + 2368U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((int *)t1) = t7;
    goto LAB5;

LAB12:    xsi_set_current_line(112, ng0);
    t6 = (2 * 1);
    t1 = (t0 + 2368U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((int *)t1) = t6;
    goto LAB5;

LAB13:    xsi_set_current_line(114, ng0);
    t1 = (t0 + 2368U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((int *)t1) = 1;
    goto LAB5;

LAB23:;
LAB24:    t5 = (t0 + 7096);
    xsi_report(t5, 30U, (unsigned char)2);
    goto LAB25;

}

static void work_a_1898125277_2372691052_p_3(char *t0)
{
    char *t1;
    char *t2;
    int64 t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    t1 = (t0 + 4096U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(131, ng0);
    t3 = (100 * 1000LL);
    t2 = (t0 + 3904);
    xsi_process_wait(t2, t3);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(132, ng0);
    t2 = (t0 + 4624);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(134, ng0);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}


extern void work_a_1898125277_2372691052_init()
{
	static char *pe[] = {(void *)work_a_1898125277_2372691052_p_0,(void *)work_a_1898125277_2372691052_p_1,(void *)work_a_1898125277_2372691052_p_2,(void *)work_a_1898125277_2372691052_p_3};
	xsi_register_didat("work_a_1898125277_2372691052", "isim/top_m_tb_isim_beh.exe.sim/work/a_1898125277_2372691052.didat");
	xsi_register_executes(pe);
}
