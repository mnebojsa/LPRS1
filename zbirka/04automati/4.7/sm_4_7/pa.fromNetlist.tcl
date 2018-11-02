
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name sm_4_7 -dir "D:/LPRS1_git/LPRS1/zbirka/04automati/4.7/sm_4_7/planAhead_run_1" -part xc6slx4tqg144-2
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "D:/LPRS1_git/LPRS1/zbirka/04automati/4.7/sm_4_7/sm_4_7.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {D:/LPRS1_git/LPRS1/zbirka/04automati/4.7/sm_4_7} }
set_property target_constrs_file "sm_4_7.ucf" [current_fileset -constrset]
add_files [list {sm_4_7.ucf}] -fileset [get_property constrset [current_run]]
link_design
