
# PlanAhead Launch Script for Post PAR Floorplanning, created by Project Navigator

create_project -name digSys_6_6 -dir "D:/LPRS1_git/LPRS1/zbirka/06slozeni_digitalni_sistemi/6.6/digSys_6_6/planAhead_run_1" -part xc6slx4tqg144-2
set srcset [get_property srcset [current_run -impl]]
set_property design_mode GateLvl $srcset
set_property edif_top_file "D:/LPRS1_git/LPRS1/zbirka/06slozeni_digitalni_sistemi/6.6/digSys_6_6/digSys_6_6.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {D:/LPRS1_git/LPRS1/zbirka/06slozeni_digitalni_sistemi/6.6/digSys_6_6} }
set_property target_constrs_file "digSys_6_6.ucf" [current_fileset -constrset]
add_files [list {digSys_6_6.ucf}] -fileset [get_property constrset [current_run]]
link_design
read_xdl -file "D:/LPRS1_git/LPRS1/zbirka/06slozeni_digitalni_sistemi/6.6/digSys_6_6/digSys_6_6.ncd"
if {[catch {read_twx -name results_1 -file "D:/LPRS1_git/LPRS1/zbirka/06slozeni_digitalni_sistemi/6.6/digSys_6_6/digSys_6_6.twx"} eInfo]} {
   puts "WARNING: there was a problem importing \"D:/LPRS1_git/LPRS1/zbirka/06slozeni_digitalni_sistemi/6.6/digSys_6_6/digSys_6_6.twx\": $eInfo"
}
