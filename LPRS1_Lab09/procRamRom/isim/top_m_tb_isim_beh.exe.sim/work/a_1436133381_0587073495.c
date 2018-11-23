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
static const char *ng0 = "D:/LPRS1_git/LPRS1/LPRS1_Lab09/procRamRom/procesor.vhd";
extern char *IEEE_P_2592010699;



static void work_a_1436133381_0587073495_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned int t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    unsigned char t13;

LAB0:    xsi_set_current_line(300, ng0);
    t1 = (t0 + 7944U);
    t2 = *((char **)t1);
    t1 = (t0 + 28849);
    t4 = 1;
    if (16U == 16U)
        goto LAB5;

LAB6:    t4 = 0;

LAB7:    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(303, ng0);
    t1 = (t0 + 16672);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t6 = (t3 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);

LAB3:    xsi_set_current_line(306, ng0);
    t1 = (t0 + 7304U);
    t2 = *((char **)t1);
    t4 = *((unsigned char *)t2);
    t1 = (t0 + 16736);
    t3 = (t1 + 56U);
    t6 = *((char **)t3);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = t4;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(307, ng0);
    t1 = (t0 + 7304U);
    t2 = *((char **)t1);
    t4 = *((unsigned char *)t2);
    t1 = (t0 + 16800);
    t3 = (t1 + 56U);
    t6 = *((char **)t3);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = t4;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(309, ng0);
    t1 = (t0 + 16864);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t6 = (t3 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(311, ng0);
    t1 = (t0 + 10824U);
    t2 = *((char **)t1);
    t4 = *((unsigned char *)t2);
    t13 = (t4 == (unsigned char)3);
    if (t13 != 0)
        goto LAB11;

LAB13:    xsi_set_current_line(314, ng0);
    t1 = (t0 + 13440U);
    t2 = *((char **)t1);
    t4 = *((unsigned char *)t2);
    t1 = (t0 + 13440U);
    t3 = *((char **)t1);
    t1 = (t3 + 0);
    *((unsigned char *)t1) = t4;

LAB12:    xsi_set_current_line(317, ng0);
    t1 = (t0 + 13440U);
    t2 = *((char **)t1);
    t4 = *((unsigned char *)t2);
    t1 = (t0 + 16928);
    t3 = (t1 + 56U);
    t6 = *((char **)t3);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = t4;
    xsi_driver_first_trans_fast(t1);
    t1 = (t0 + 16480);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(301, ng0);
    t8 = (t0 + 16672);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)2;
    xsi_driver_first_trans_fast(t8);
    goto LAB3;

LAB5:    t5 = 0;

LAB8:    if (t5 < 16U)
        goto LAB9;
    else
        goto LAB7;

LAB9:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB6;

LAB10:    t5 = (t5 + 1);
    goto LAB8;

LAB11:    xsi_set_current_line(312, ng0);
    t1 = (t0 + 13440U);
    t3 = *((char **)t1);
    t1 = (t3 + 0);
    *((unsigned char *)t1) = (unsigned char)3;
    goto LAB12;

}

static void work_a_1436133381_0587073495_p_1(char *t0)
{
    char t6[16];
    char t11[16];
    char t16[16];
    char t21[16];
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    unsigned char t5;
    char *t7;
    char *t8;
    char *t9;
    unsigned char t10;
    char *t12;
    char *t13;
    char *t14;
    unsigned char t15;
    char *t17;
    char *t18;
    char *t19;
    unsigned char t20;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned char t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;

LAB0:    xsi_set_current_line(320, ng0);

LAB3:    t1 = (t0 + 5224U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 5384U);
    t4 = *((char **)t1);
    t5 = *((unsigned char *)t4);
    t7 = ((IEEE_P_2592010699) + 4024);
    t1 = xsi_base_array_concat(t1, t6, t7, (char)99, t3, (char)99, t5, (char)101);
    t8 = (t0 + 5544U);
    t9 = *((char **)t8);
    t10 = *((unsigned char *)t9);
    t12 = ((IEEE_P_2592010699) + 4024);
    t8 = xsi_base_array_concat(t8, t11, t12, (char)97, t1, t6, (char)99, t10, (char)101);
    t13 = (t0 + 5704U);
    t14 = *((char **)t13);
    t15 = *((unsigned char *)t14);
    t17 = ((IEEE_P_2592010699) + 4024);
    t13 = xsi_base_array_concat(t13, t16, t17, (char)97, t8, t11, (char)99, t15, (char)101);
    t18 = (t0 + 10824U);
    t19 = *((char **)t18);
    t20 = *((unsigned char *)t19);
    t22 = ((IEEE_P_2592010699) + 4024);
    t18 = xsi_base_array_concat(t18, t21, t22, (char)97, t13, t16, (char)99, t20, (char)101);
    t23 = (1U + 1U);
    t24 = (t23 + 1U);
    t25 = (t24 + 1U);
    t26 = (t25 + 1U);
    t27 = (5U != t26);
    if (t27 == 1)
        goto LAB5;

LAB6:    t28 = (t0 + 16992);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    t31 = (t30 + 56U);
    t32 = *((char **)t31);
    memcpy(t32, t18, 5U);
    xsi_driver_first_trans_fast(t28);

LAB2:    t33 = (t0 + 16496);
    *((int *)t33) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(5U, t26, 0);
    goto LAB6;

}

static void work_a_1436133381_0587073495_p_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    char *t10;
    char *t11;
    int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;
    char *t17;
    int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    char *t22;
    char *t23;
    int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;
    int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    char *t34;
    char *t35;
    int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    char *t40;
    char *t41;
    int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    char *t46;
    char *t47;
    int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    char *t52;
    char *t53;
    char *t54;
    char *t55;
    char *t56;
    char *t57;
    char *t58;
    char *t59;

LAB0:    xsi_set_current_line(364, ng0);

LAB3:    t1 = xsi_get_transient_memory(176U);
    memset(t1, 0, 176U);
    t2 = t1;
    t3 = (t0 + 3784U);
    t4 = *((char **)t3);
    memcpy(t2, t4, 16U);
    t2 = (t2 + 16U);
    t3 = (t0 + 4744U);
    t5 = *((char **)t3);
    t6 = (0 - 15);
    t7 = (t6 * -1);
    t8 = (16U * t7);
    t9 = (0 + t8);
    t3 = (t5 + t9);
    memcpy(t2, t3, 16U);
    t2 = (t2 + 16U);
    t10 = (t0 + 4744U);
    t11 = *((char **)t10);
    t12 = (1 - 15);
    t13 = (t12 * -1);
    t14 = (16U * t13);
    t15 = (0 + t14);
    t10 = (t11 + t15);
    memcpy(t2, t10, 16U);
    t2 = (t2 + 16U);
    t16 = (t0 + 4744U);
    t17 = *((char **)t16);
    t18 = (2 - 15);
    t19 = (t18 * -1);
    t20 = (16U * t19);
    t21 = (0 + t20);
    t16 = (t17 + t21);
    memcpy(t2, t16, 16U);
    t2 = (t2 + 16U);
    t22 = (t0 + 4744U);
    t23 = *((char **)t22);
    t24 = (3 - 15);
    t25 = (t24 * -1);
    t26 = (16U * t25);
    t27 = (0 + t26);
    t22 = (t23 + t27);
    memcpy(t2, t22, 16U);
    t2 = (t2 + 16U);
    t28 = (t0 + 4744U);
    t29 = *((char **)t28);
    t30 = (4 - 15);
    t31 = (t30 * -1);
    t32 = (16U * t31);
    t33 = (0 + t32);
    t28 = (t29 + t33);
    memcpy(t2, t28, 16U);
    t2 = (t2 + 16U);
    t34 = (t0 + 4744U);
    t35 = *((char **)t34);
    t36 = (5 - 15);
    t37 = (t36 * -1);
    t38 = (16U * t37);
    t39 = (0 + t38);
    t34 = (t35 + t39);
    memcpy(t2, t34, 16U);
    t2 = (t2 + 16U);
    t40 = (t0 + 4744U);
    t41 = *((char **)t40);
    t42 = (6 - 15);
    t43 = (t42 * -1);
    t44 = (16U * t43);
    t45 = (0 + t44);
    t40 = (t41 + t45);
    memcpy(t2, t40, 16U);
    t2 = (t2 + 16U);
    t46 = (t0 + 4744U);
    t47 = *((char **)t46);
    t48 = (7 - 15);
    t49 = (t48 * -1);
    t50 = (16U * t49);
    t51 = (0 + t50);
    t46 = (t47 + t51);
    memcpy(t2, t46, 16U);
    t2 = (t2 + 16U);
    t52 = (t0 + 11304U);
    t53 = *((char **)t52);
    memcpy(t2, t53, 16U);
    t2 = (t2 + 16U);
    t52 = (t0 + 7944U);
    t54 = *((char **)t52);
    memcpy(t2, t54, 16U);
    t52 = (t0 + 17056);
    t55 = (t52 + 56U);
    t56 = *((char **)t55);
    t57 = (t56 + 56U);
    t58 = *((char **)t57);
    memcpy(t58, t1, 176U);
    xsi_driver_first_trans_fast(t52);

LAB2:    t59 = (t0 + 16512);
    *((int *)t59) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_1436133381_0587073495_p_3(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(404, ng0);

LAB3:    t1 = (t0 + 9704U);
    t2 = *((char **)t1);
    t1 = (t0 + 17120);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 16U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 16528);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_1436133381_0587073495_p_4(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(405, ng0);

LAB3:    t1 = (t0 + 9864U);
    t2 = *((char **)t1);
    t1 = (t0 + 17184);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 16U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 16544);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_1436133381_0587073495_p_5(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(406, ng0);

LAB3:    t1 = (t0 + 9544U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 17248);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 16560);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_1436133381_0587073495_p_6(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(407, ng0);

LAB3:    t1 = (t0 + 9064U);
    t2 = *((char **)t1);
    t1 = (t0 + 17312);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 16U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 16576);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_1436133381_0587073495_p_7(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(408, ng0);

LAB3:    t1 = (t0 + 10824U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 17376);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 16592);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_1436133381_0587073495_init()
{
	static char *pe[] = {(void *)work_a_1436133381_0587073495_p_0,(void *)work_a_1436133381_0587073495_p_1,(void *)work_a_1436133381_0587073495_p_2,(void *)work_a_1436133381_0587073495_p_3,(void *)work_a_1436133381_0587073495_p_4,(void *)work_a_1436133381_0587073495_p_5,(void *)work_a_1436133381_0587073495_p_6,(void *)work_a_1436133381_0587073495_p_7};
	xsi_register_didat("work_a_1436133381_0587073495", "isim/top_m_tb_isim_beh.exe.sim/work/a_1436133381_0587073495.didat");
	xsi_register_executes(pe);
}
