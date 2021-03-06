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

#include "xsi.h"

struct XSI_INFO xsi_info;

char *IEEE_P_2592010699;
char *STD_STANDARD;
char *WORK_P_2612911483;
char *WORK_P_0362236336;
char *IEEE_P_1242562249;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    work_p_2612911483_init();
    work_p_0362236336_init();
    ieee_p_1242562249_init();
    work_a_2602566539_3212880686_init();
    work_a_1130988942_3990940387_init();
    work_a_3019338877_3990940387_init();
    work_a_4078494737_1516540902_init();
    work_a_1368874108_3212880686_init();
    work_a_1006694031_3212880686_init();
    work_a_0367128761_1516540902_init();
    work_a_2486325361_3212880686_init();
    work_a_1856021835_3212880686_init();
    work_a_1664626272_3212880686_init();
    work_a_2462071577_3212880686_init();
    work_a_1148178443_3212880686_init();
    work_a_1008709935_3212880686_init();
    work_a_1436133381_0587073495_init();
    work_a_3537579797_2372691052_init();


    xsi_register_tops("work_a_3537579797_2372691052");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    WORK_P_2612911483 = xsi_get_engine_memory("work_p_2612911483");
    WORK_P_0362236336 = xsi_get_engine_memory("work_p_0362236336");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");

    return xsi_run_simulation(argc, argv);

}
