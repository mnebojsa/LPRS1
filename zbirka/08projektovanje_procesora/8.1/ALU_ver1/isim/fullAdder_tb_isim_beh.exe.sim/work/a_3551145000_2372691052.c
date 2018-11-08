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
static const char *ng0 = "D:/LPRS1_git/LPRS1/zbirka/08projektovanje_procesora/8.1/ALU_ver1/fullAdder_tb.vhd";
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_1547198987_1035706684(char *, char *, char *, char *, char *, char *);


static void work_a_3551145000_2372691052_p_0(char *t0)
{
    char t16[16];
    char t17[16];
    char *t1;
    char *t2;
    int64 t3;
    char *t4;
    int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned char t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    int t15;
    int t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;

LAB0:    t1 = (t0 + 2992U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(81, ng0);
    t3 = (100 * 1000LL);
    t2 = (t0 + 2800);
    xsi_process_wait(t2, t3);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(83, ng0);
    t2 = (t0 + 1832U);
    t4 = *((char **)t2);
    t5 = (0 - 2);
    t6 = (t5 * -1);
    t7 = (1U * t6);
    t8 = (0 + t7);
    t2 = (t4 + t8);
    t9 = *((unsigned char *)t2);
    t10 = (t0 + 3376);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = t9;
    xsi_driver_first_trans_fast(t10);
    xsi_set_current_line(84, ng0);
    t2 = (t0 + 1832U);
    t4 = *((char **)t2);
    t5 = (1 - 2);
    t6 = (t5 * -1);
    t7 = (1U * t6);
    t8 = (0 + t7);
    t2 = (t4 + t8);
    t9 = *((unsigned char *)t2);
    t10 = (t0 + 3440);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = t9;
    xsi_driver_first_trans_fast(t10);
    xsi_set_current_line(85, ng0);
    t2 = (t0 + 1832U);
    t4 = *((char **)t2);
    t5 = (2 - 2);
    t6 = (t5 * -1);
    t7 = (1U * t6);
    t8 = (0 + t7);
    t2 = (t4 + t8);
    t9 = *((unsigned char *)t2);
    t10 = (t0 + 3504);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = t9;
    xsi_driver_first_trans_fast(t10);
    xsi_set_current_line(87, ng0);
    t2 = (t0 + 5840);
    *((int *)t2) = 0;
    t4 = (t0 + 5844);
    *((int *)t4) = 8;
    t5 = 0;
    t15 = 8;

LAB8:    if (t5 <= t15)
        goto LAB9;

LAB11:    xsi_set_current_line(94, ng0);

LAB21:    *((char **)t1) = &&LAB22;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB9:    xsi_set_current_line(88, ng0);
    t3 = (20 * 1000LL);
    t10 = (t0 + 2800);
    xsi_process_wait(t10, t3);

LAB14:    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB10:    t2 = (t0 + 5840);
    t5 = *((int *)t2);
    t4 = (t0 + 5844);
    t15 = *((int *)t4);
    if (t5 == t15)
        goto LAB11;

LAB18:    t18 = (t5 + 1);
    t5 = t18;
    t10 = (t0 + 5840);
    *((int *)t10) = t5;
    goto LAB8;

LAB12:    xsi_set_current_line(89, ng0);
    t2 = (t0 + 1832U);
    t4 = *((char **)t2);
    t2 = (t0 + 5808U);
    t10 = (t0 + 5848);
    t12 = (t17 + 0U);
    t13 = (t12 + 0U);
    *((int *)t13) = 0;
    t13 = (t12 + 4U);
    *((int *)t13) = 2;
    t13 = (t12 + 8U);
    *((int *)t13) = 1;
    t18 = (2 - 0);
    t6 = (t18 * 1);
    t6 = (t6 + 1);
    t13 = (t12 + 12U);
    *((unsigned int *)t13) = t6;
    t13 = ieee_p_1242562249_sub_1547198987_1035706684(IEEE_P_1242562249, t16, t4, t2, t10, t17);
    t14 = (t16 + 12U);
    t6 = *((unsigned int *)t14);
    t7 = (1U * t6);
    t9 = (3U != t7);
    if (t9 == 1)
        goto LAB16;

LAB17:    t19 = (t0 + 3568);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t13, 3U);
    xsi_driver_first_trans_fast(t19);
    xsi_set_current_line(90, ng0);
    t2 = (t0 + 1832U);
    t4 = *((char **)t2);
    t18 = (0 - 2);
    t6 = (t18 * -1);
    t7 = (1U * t6);
    t8 = (0 + t7);
    t2 = (t4 + t8);
    t9 = *((unsigned char *)t2);
    t10 = (t0 + 3376);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = t9;
    xsi_driver_first_trans_fast(t10);
    xsi_set_current_line(91, ng0);
    t2 = (t0 + 1832U);
    t4 = *((char **)t2);
    t18 = (1 - 2);
    t6 = (t18 * -1);
    t7 = (1U * t6);
    t8 = (0 + t7);
    t2 = (t4 + t8);
    t9 = *((unsigned char *)t2);
    t10 = (t0 + 3440);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = t9;
    xsi_driver_first_trans_fast(t10);
    xsi_set_current_line(92, ng0);
    t2 = (t0 + 1832U);
    t4 = *((char **)t2);
    t18 = (2 - 2);
    t6 = (t18 * -1);
    t7 = (1U * t6);
    t8 = (0 + t7);
    t2 = (t4 + t8);
    t9 = *((unsigned char *)t2);
    t10 = (t0 + 3504);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = t9;
    xsi_driver_first_trans_fast(t10);
    goto LAB10;

LAB13:    goto LAB12;

LAB15:    goto LAB13;

LAB16:    xsi_size_not_matching(3U, t7, 0);
    goto LAB17;

LAB19:    goto LAB2;

LAB20:    goto LAB19;

LAB22:    goto LAB20;

}


extern void work_a_3551145000_2372691052_init()
{
	static char *pe[] = {(void *)work_a_3551145000_2372691052_p_0};
	xsi_register_didat("work_a_3551145000_2372691052", "isim/fullAdder_tb_isim_beh.exe.sim/work/a_3551145000_2372691052.didat");
	xsi_register_executes(pe);
}
