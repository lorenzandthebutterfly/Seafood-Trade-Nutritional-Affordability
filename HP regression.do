clear all

cd"C:\Users\yaqliu\OneDrive - Woods Hole Oceanographic Institution\Desktop\nutrition_revision\nutIndex_edibleCoeff_revision\new data_zeros in sel_ido_rel fixed"
use merged_nutrition_uptodate_v2.dta

drop if exclude == 1
*HP regression
*add year fixed effects, cluster st error by year
reg lnprice_perkg meat fillet other_portion other_preservation fresh live mollusk crustacean i.period,  cluster(period)
outreg2 using hp.doc,replace ctitle(1) keep(meat fillet other_portion other_preservation fresh live mollusk crustacean) addtext(Year FE, YES)

*dev01
gen meat_dev1 = importer_dev_01 * meat
gen fillet_dev1 = importer_dev_01 * fillet 
gen other_portion_dev1 = importer_dev_01 * other_portion
gen other_preservation_dev1 = importer_dev_01 * other_preservation
gen fresh_dev1 = importer_dev_01 * fresh
gen live_dev1 = importer_dev_01 * live
gen mollusk_dev1 = importer_dev_01 * mollusk
gen crustacean_dev1 = importer_dev_01 * crustacean

reg lnprice_perkg meat meat_dev1 fillet fillet_dev1 other_portion other_portion_dev1 ///
    other_preservation other_preservation_dev1 fresh fresh_dev1 live live_dev1 mollusk mollusk_dev1 crustacean crustacean_dev1 i.period, cluster(period)
outreg2 using hp.doc, append ctitle(Dev1) keep(meat meat_dev1 fillet fillet_dev1 other_portion other_portion_dev1 ///
 other_preservation other_preservation_dev1 fresh fresh_dev1 live live_dev1 mollusk mollusk_dev1 crustacean crustacean_dev1) addtext(Year FE, YES)

*dev02
gen meat_dev2 = importer_dev_02 * meat
gen fillet_dev2 = importer_dev_02 * fillet 
gen other_portion_dev2 = importer_dev_02 * other_portion
gen other_preservation_dev2 = importer_dev_02 * other_preservation
gen fresh_dev2 = importer_dev_02 * fresh
gen live_dev2 = importer_dev_02 * live
gen mollusk_dev2 = importer_dev_02 * mollusk
gen crustacean_dev2 = importer_dev_02 * crustacean


reg lnprice_perkg meat meat_dev2 fillet fillet_dev2 other_portion other_portion_dev2 ///
    other_preservation other_preservation_dev2 fresh fresh_dev2 live live_dev2 mollusk mollusk_dev2 crustacean crustacean_dev2 i.period, cluster(period)
outreg2 using hp.doc, append ctitle(Dev2) keep(meat meat_dev2 fillet fillet_dev2 other_portion other_portion_dev2 ///
 other_preservation other_preservation_dev2 fresh fresh_dev2 live live_dev2 mollusk mollusk_dev2 crustacean crustacean_dev2) addtext(Year FE, YES)


*dev03
gen meat_dev3 = importer_dev_03 * meat
gen fillet_dev3 = importer_dev_03 * fillet 
gen other_portion_dev3 = importer_dev_03 * other_portion
gen other_preservation_dev3 = importer_dev_03 * other_preservation
gen fresh_dev3 = importer_dev_03 * fresh
gen live_dev3 = importer_dev_03 * live
gen mollusk_dev3 = importer_dev_03 * mollusk
gen crustacean_dev3 = importer_dev_03 * crustacean

reg lnprice_perkg meat meat_dev3 fillet fillet_dev3 other_portion other_portion_dev3 ///
    other_preservation other_preservation_dev3 fresh fresh_dev3 live live_dev3 mollusk mollusk_dev3 crustacean crustacean_dev3 i.period, cluster(period)
outreg2 using hp.doc, append ctitle(Dev3) keep(meat meat_dev3 fillet fillet_dev3 other_portion other_portion_dev3 ///
 other_preservation other_preservation_dev3 fresh fresh_dev3 live live_dev3 mollusk mollusk_dev3 crustacean crustacean_dev3) addtext(Year FE, YES)



*dev04
gen meat_dev4 = importer_dev_04 * meat
gen fillet_dev4 = importer_dev_04 * fillet 
gen other_portion_dev4 = importer_dev_04 * other_portion
gen other_preservation_dev4 = importer_dev_04 * other_preservation
gen fresh_dev4 = importer_dev_04 * fresh
gen live_dev4 = importer_dev_04 * live
gen mollusk_dev4 = importer_dev_04 * mollusk
gen crustacean_dev4 = importer_dev_04 * crustacean

reg lnprice_perkg meat meat_dev4 fillet fillet_dev4 other_portion other_portion_dev4 ///
    other_preservation other_preservation_dev4 fresh fresh_dev4 live live_dev4 mollusk mollusk_dev4 crustacean crustacean_dev4 i.period, cluster(period)
outreg2 using hp.doc, append ctitle(Dev4) keep(meat meat_dev4 fillet fillet_dev4 other_portion other_portion_dev4 ///
 other_preservation other_preservation_dev4 fresh fresh_dev4 live live_dev4 mollusk mollusk_dev4 crustacean crustacean_dev4) addtext(Year FE, YES)


*dev05
gen meat_dev5 = importer_dev_05 * meat
gen fillet_dev5 = importer_dev_05 * fillet 
gen other_portion_dev5 = importer_dev_05 * other_portion
gen other_preservation_dev5 = importer_dev_05 * other_preservation
gen fresh_dev5 = importer_dev_05 * fresh
gen live_dev5 = importer_dev_05 * live
gen mollusk_dev5 = importer_dev_05 * mollusk
gen crustacean_dev5 = importer_dev_05 * crustacean

reg lnprice_perkg meat meat_dev5 fillet fillet_dev5 other_portion other_portion_dev5 ///
    other_preservation other_preservation_dev5 fresh fresh_dev5 live live_dev5 mollusk mollusk_dev5 crustacean crustacean_dev5 i.period, cluster(period)
outreg2 using hp.doc, append ctitle(Dev5) keep(meat meat_dev5 fillet fillet_dev5 other_portion other_portion_dev5 ///
 other_preservation other_preservation_dev5 fresh fresh_dev5 live live_dev5 mollusk mollusk_dev5 crustacean crustacean_dev5) addtext(Year FE, YES)

 
*dev06
gen meat_dev6 = importer_dev_06 * meat
gen fillet_dev6 = importer_dev_06 * fillet 
gen other_portion_dev6 = importer_dev_06 * other_portion
gen other_preservation_dev6 = importer_dev_06 * other_preservation
gen fresh_dev6 = importer_dev_06 * fresh
gen live_dev6 = importer_dev_06 * live
gen mollusk_dev6 = importer_dev_06 * mollusk
gen crustacean_dev6 = importer_dev_06 * crustacean

reg lnprice_perkg meat meat_dev6 fillet fillet_dev6 other_portion other_portion_dev6 ///
    other_preservation other_preservation_dev6 fresh fresh_dev6 live live_dev6 mollusk mollusk_dev6 crustacean crustacean_dev6 i.period, cluster(period)
outreg2 using hp.doc, append ctitle(Dev6) keep(meat meat_dev6 fillet fillet_dev6 other_portion other_portion_dev6 ///
 other_preservation other_preservation_dev6 fresh fresh_dev6 live live_dev6 mollusk mollusk_dev6 crustacean crustacean_dev6) addtext(Year FE, YES)

 ***********************************************************************************************************************************************
**HP regression with Macro- and Micro- Nutrients
*add year fixed effects, cluster st error by year
clear all

cd"C:\Users\yaqliu\OneDrive - Woods Hole Oceanographic Institution\Desktop\nutrition_revision\nutIndex_edibleCoeff_revision\new data_zeros in sel_ido_rel fixed"
use merged_nutrition_uptodate_v2.dta

drop if exclude == 1

reg lnprice_perkg micronutindex2 macronutindex meat fillet other_portion other_preservation fresh live mollusk crustacean i.period,  cluster(period)
outreg2 using hp.doc,replace ctitle(1) keep(micronutindex2 macronutindex meat fillet other_portion other_preservation fresh live mollusk crustacean) addtext(Year FE, YES)

*dev01
gen micro_dev1 = importer_dev_01 * micronutindex2 
gen macro_dev1 = importer_dev_01 * macronutindex
gen meat_dev1 = importer_dev_01 * meat
gen fillet_dev1 = importer_dev_01 * fillet 
gen other_portion_dev1 = importer_dev_01 * other_portion
gen other_preservation_dev1 = importer_dev_01 * other_preservation
gen fresh_dev1 = importer_dev_01 * fresh
gen live_dev1 = importer_dev_01 * live
gen mollusk_dev1 = importer_dev_01 * mollusk
gen crustacean_dev1 = importer_dev_01 * crustacean

reg lnprice_perkg micronutindex2 micro_dev1 macronutindex macro_dev1 meat meat_dev1 fillet fillet_dev1 other_portion other_portion_dev1 ///
    other_preservation other_preservation_dev1 fresh fresh_dev1 live live_dev1 mollusk mollusk_dev1 crustacean crustacean_dev1 i.period, cluster(period)
outreg2 using hp.doc, append ctitle(Dev1) keep(micronutindex2 micro_dev1 macronutindex macro_dev1 meat meat_dev1 fillet fillet_dev1 other_portion other_portion_dev1 ///
 other_preservation other_preservation_dev1 fresh fresh_dev1 live live_dev1 mollusk mollusk_dev1 crustacean crustacean_dev1) addtext(Year FE, YES)

*dev02
gen micro_dev2 = importer_dev_02 * micronutindex2 
gen macro_dev2 = importer_dev_02 * macronutindex
gen meat_dev2 = importer_dev_02 * meat
gen fillet_dev2 = importer_dev_02 * fillet 
gen other_portion_dev2 = importer_dev_02 * other_portion
gen other_preservation_dev2 = importer_dev_02 * other_preservation
gen fresh_dev2 = importer_dev_02 * fresh
gen live_dev2 = importer_dev_02 * live
gen mollusk_dev2 = importer_dev_02 * mollusk
gen crustacean_dev2 = importer_dev_02 * crustacean


reg lnprice_perkg micronutindex2 micro_dev2 macronutindex macro_dev2 meat meat_dev2 fillet fillet_dev2 other_portion other_portion_dev2 ///
    other_preservation other_preservation_dev2 fresh fresh_dev2 live live_dev2 mollusk mollusk_dev2 crustacean crustacean_dev2 i.period, cluster(period)
outreg2 using hp.doc, append ctitle(Dev2) keep(micronutindex2 micro_dev2 macronutindex macro_dev2 meat meat_dev2 fillet fillet_dev2 other_portion other_portion_dev2 ///
 other_preservation other_preservation_dev2 fresh fresh_dev2 live live_dev2 mollusk mollusk_dev2 crustacean crustacean_dev2) addtext(Year FE, YES)


*dev03
gen micro_dev3 = importer_dev_03 * micronutindex2 
gen macro_dev3 = importer_dev_03 * macronutindex
gen meat_dev3 = importer_dev_03 * meat
gen fillet_dev3 = importer_dev_03 * fillet 
gen other_portion_dev3 = importer_dev_03 * other_portion
gen other_preservation_dev3 = importer_dev_03 * other_preservation
gen fresh_dev3 = importer_dev_03 * fresh
gen live_dev3 = importer_dev_03 * live
gen mollusk_dev3 = importer_dev_03 * mollusk
gen crustacean_dev3 = importer_dev_03 * crustacean

reg lnprice_perkg micronutindex2 micro_dev3 macronutindex macro_dev3 meat meat_dev3 fillet fillet_dev3 other_portion other_portion_dev3 ///
    other_preservation other_preservation_dev3 fresh fresh_dev3 live live_dev3 mollusk mollusk_dev3 crustacean crustacean_dev3 i.period, cluster(period)
outreg2 using hp.doc, append ctitle(Dev3) keep (micronutindex2 micro_dev3 macronutindex macro_dev3 meat meat_dev3 fillet fillet_dev3 other_portion other_portion_dev3 ///
 other_preservation other_preservation_dev3 fresh fresh_dev3 live live_dev3 mollusk mollusk_dev3 crustacean crustacean_dev3) addtext(Year FE, YES)



*dev04
gen micro_dev4 = importer_dev_04 * micronutindex2 
gen macro_dev4 = importer_dev_04 * macronutindex
gen meat_dev4 = importer_dev_04 * meat
gen fillet_dev4 = importer_dev_04 * fillet 
gen other_portion_dev4 = importer_dev_04 * other_portion
gen other_preservation_dev4 = importer_dev_04 * other_preservation
gen fresh_dev4 = importer_dev_04 * fresh
gen live_dev4 = importer_dev_04 * live
gen mollusk_dev4 = importer_dev_04 * mollusk
gen crustacean_dev4 = importer_dev_04 * crustacean

reg lnprice_perkg micronutindex2 micro_dev4 macronutindex macro_dev4 meat meat_dev4 fillet fillet_dev4 other_portion other_portion_dev4 ///
    other_preservation other_preservation_dev4 fresh fresh_dev4 live live_dev4 mollusk mollusk_dev4 crustacean crustacean_dev4 i.period, cluster(period)
outreg2 using hp.doc, append ctitle(Dev4) keep(micronutindex2 micro_dev4 macronutindex macro_dev4 meat meat_dev4 fillet fillet_dev4 other_portion other_portion_dev4 ///
 other_preservation other_preservation_dev4 fresh fresh_dev4 live live_dev4 mollusk mollusk_dev4 crustacean crustacean_dev4) addtext(Year FE, YES)


*dev05
gen micro_dev5 = importer_dev_05 * micronutindex2 
gen macro_dev5 = importer_dev_05 * macronutindex
gen meat_dev5 = importer_dev_05 * meat
gen fillet_dev5 = importer_dev_05 * fillet 
gen other_portion_dev5 = importer_dev_05 * other_portion
gen other_preservation_dev5 = importer_dev_05 * other_preservation
gen fresh_dev5 = importer_dev_05 * fresh
gen live_dev5 = importer_dev_05 * live
gen mollusk_dev5 = importer_dev_05 * mollusk
gen crustacean_dev5 = importer_dev_05 * crustacean

reg lnprice_perkg micronutindex2 micro_dev5 macronutindex macro_dev5 meat meat_dev5 fillet fillet_dev5 other_portion other_portion_dev5 ///
    other_preservation other_preservation_dev5 fresh fresh_dev5 live live_dev5 mollusk mollusk_dev5 crustacean crustacean_dev5 i.period, cluster(period)
outreg2 using hp.doc, append ctitle(Dev5) keep(micronutindex2 micro_dev5 macronutindex macro_dev5 meat meat_dev5 fillet fillet_dev5 other_portion other_portion_dev5 ///
 other_preservation other_preservation_dev5 fresh fresh_dev5 live live_dev5 mollusk mollusk_dev5 crustacean crustacean_dev5) addtext(Year FE, YES)

 
*dev06
gen micro_dev6 = importer_dev_06 * micronutindex2 
gen macro_dev6 = importer_dev_06 * macronutindex
gen meat_dev6 = importer_dev_06 * meat
gen fillet_dev6 = importer_dev_06 * fillet 
gen other_portion_dev6 = importer_dev_06 * other_portion
gen other_preservation_dev6 = importer_dev_06 * other_preservation
gen fresh_dev6 = importer_dev_06 * fresh
gen live_dev6 = importer_dev_06 * live
gen mollusk_dev6 = importer_dev_06 * mollusk
gen crustacean_dev6 = importer_dev_06 * crustacean

reg lnprice_perkg micronutindex2 micro_dev6 macronutindex macro_dev6 meat meat_dev6 fillet fillet_dev6 other_portion other_portion_dev6 ///
    other_preservation other_preservation_dev6 fresh fresh_dev6 live live_dev6 mollusk mollusk_dev6 crustacean crustacean_dev6 i.period, cluster(period)
outreg2 using hp.doc, append ctitle(Dev6) keep(micronutindex2 micro_dev6 macronutindex macro_dev6 meat meat_dev6 fillet fillet_dev6 other_portion other_portion_dev6 ///
 other_preservation other_preservation_dev6 fresh fresh_dev6 live live_dev6 mollusk mollusk_dev6 crustacean crustacean_dev6) addtext(Year FE, YES)
