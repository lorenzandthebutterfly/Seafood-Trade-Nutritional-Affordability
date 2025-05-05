
clear all

cd"C:\Users\yaqliu\OneDrive - Woods Hole Oceanographic Institution\Desktop\nutrition_revision\nutIndex_edibleCoeff_revision\new data_zeros in sel_ido_rel fixed"
use merged_nutrition_uptodate_v2.dta


* note signs on dev_01 are negative difference (developed - developing)
drop if exclude == 1
*DEV1
*unweighted
regress whole importer_dev_01 
regress meat importer_dev_01
regress fillet importer_dev_01
regress other_portion importer_dev_01
regress frozen importer_dev_01
regress other_preservation importer_dev_01
regress fresh importer_dev_01
regress live importer_dev_01
regress fish importer_dev_01
regress mollusk importer_dev_01
regress crustacean importer_dev_01

ttest whole, by (importer_dev_01)
ttest meat, by (importer_dev_01)
ttest fillet, by (importer_dev_01)
ttest other_portion, by (importer_dev_01)
ttest frozen, by (importer_dev_01)
ttest other_preservation, by (importer_dev_01)
ttest fresh, by (importer_dev_01)
ttest live, by (importer_dev_01)
ttest fish, by (importer_dev_01)
ttest mollusk, by (importer_dev_01)
ttest crustacean, by (importer_dev_01)




* weighted
regress whole importer_dev_01 [aweight = qty]
regress meat importer_dev_01 [aweight = qty]
regress fillet importer_dev_01 [aweight = qty]
regress other_portion importer_dev_01 [aweight = qty]
regress frozen importer_dev_01 [aweight = qty]
regress other_preservation importer_dev_01 [aweight = qty]
regress fresh importer_dev_01 [aweight = qty]
regress live importer_dev_01 [aweight = qty]
regress fish importer_dev_01 [aweight = qty]
regress mollusk importer_dev_01 [aweight = qty]
regress crustacean importer_dev_01 [aweight = qty]

sum whole if importer_dev_01 == 1 & qty > 0 & qty != .
sum whole if importer_dev_01 == 0 & qty > 0 & qty != .


*DEV2
*unweighted
regress whole importer_dev_02
regress meat importer_dev_02
regress fillet importer_dev_02
regress other_portion importer_dev_02
regress frozen importer_dev_02
regress other_preservation importer_dev_02
regress fresh importer_dev_02
regress live importer_dev_02
regress fish importer_dev_02
regress mollusk importer_dev_02
regress crustacean importer_dev_02

ttest whole, by (importer_dev_02)
ttest meat, by (importer_dev_02)


* weighted
regress whole importer_dev_02 [aweight = qty]
regress meat importer_dev_02 [aweight = qty]
regress fillet importer_dev_02 [aweight = qty]
regress other_portion importer_dev_02 [aweight = qty]
regress frozen importer_dev_02 [aweight = qty]
regress other_preservation importer_dev_02 [aweight = qty]
regress fresh importer_dev_02 [aweight = qty]
regress live importer_dev_02 [aweight = qty]
regress fish importer_dev_02 [aweight = qty]
regress mollusk importer_dev_02 [aweight = qty]
regress crustacean importer_dev_02 [aweight = qty]

sum whole if importer_dev_02 == 1 & qty > 0 & qty != .
sum whole if importer_dev_02 == 0 & qty > 0 & qty != .


*DEV3
*unweighted
regress whole importer_dev_03
regress meat importer_dev_03
regress fillet importer_dev_03
regress other_portion importer_dev_03
regress frozen importer_dev_03
regress other_preservation importer_dev_03
regress fresh importer_dev_03
regress live importer_dev_03
regress fish importer_dev_03
regress mollusk importer_dev_03
regress crustacean importer_dev_03

ttest whole, by (importer_dev_03)
ttest meat, by (importer_dev_03)


* weighted
regress whole importer_dev_03 [aweight = qty]
regress meat importer_dev_03 [aweight = qty]
regress fillet importer_dev_03 [aweight = qty]
regress other_portion importer_dev_03 [aweight = qty]
regress frozen importer_dev_03 [aweight = qty]
regress other_preservation importer_dev_03 [aweight = qty]
regress fresh importer_dev_03 [aweight = qty]
regress live importer_dev_03 [aweight = qty]
regress fish importer_dev_03 [aweight = qty]
regress mollusk importer_dev_03 [aweight = qty]
regress crustacean importer_dev_03 [aweight = qty]

sum whole if importer_dev_03 == 1 & qty > 0 & qty != .
sum whole if importer_dev_03 == 0 & qty > 0 & qty != .

*DEV4
*unweighted
regress whole importer_dev_04
regress meat importer_dev_04
regress fillet importer_dev_04
regress other_portion importer_dev_04
regress frozen importer_dev_04
regress other_preservation importer_dev_04
regress fresh importer_dev_04
regress live importer_dev_04
regress fish importer_dev_04
regress mollusk importer_dev_04
regress crustacean importer_dev_04

ttest whole, by (importer_dev_04)
ttest meat, by (importer_dev_04)

* weighted
regress whole importer_dev_04 [aweight = qty]
regress meat importer_dev_04 [aweight = qty]
regress fillet importer_dev_04 [aweight = qty]
regress other_portion importer_dev_04 [aweight = qty]
regress frozen importer_dev_04 [aweight = qty]
regress other_preservation importer_dev_04 [aweight = qty]
regress fresh importer_dev_04 [aweight = qty]
regress live importer_dev_04 [aweight = qty]
regress fish importer_dev_04 [aweight = qty]
regress mollusk importer_dev_04 [aweight = qty]
regress crustacean importer_dev_04 [aweight = qty]

sum whole if importer_dev_04 == 1 & qty > 0 & qty != .
sum whole if importer_dev_04 == 0 & qty > 0 & qty != .

*DEV5
*unweighted
regress whole importer_dev_05
regress meat importer_dev_05
regress fillet importer_dev_05
regress other_portion importer_dev_05
regress frozen importer_dev_05
regress other_preservation importer_dev_05
regress fresh importer_dev_05
regress live importer_dev_05
regress fish importer_dev_05
regress mollusk importer_dev_05
regress crustacean importer_dev_05

ttest whole, by (importer_dev_05)
ttest meat, by (importer_dev_05)

* weighted
regress whole importer_dev_05 [aweight = qty]
regress meat importer_dev_05 [aweight = qty]
regress fillet importer_dev_05 [aweight = qty]
regress other_portion importer_dev_05 [aweight = qty]
regress frozen importer_dev_05 [aweight = qty]
regress other_preservation importer_dev_05 [aweight = qty]
regress fresh importer_dev_05 [aweight = qty]
regress live importer_dev_05 [aweight = qty]
regress fish importer_dev_05 [aweight = qty]
regress mollusk importer_dev_05 [aweight = qty]
regress crustacean importer_dev_05 [aweight = qty]

sum whole if importer_dev_05 == 1 & qty > 0 & qty != .
sum whole if importer_dev_05 == 0 & qty > 0 & qty != .

*DEV6
*unweighted
regress whole importer_dev_06
regress meat importer_dev_06
regress fillet importer_dev_06
regress other_portion importer_dev_06
regress frozen importer_dev_06
regress other_preservation importer_dev_06
regress fresh importer_dev_06
regress live importer_dev_06
regress fish importer_dev_06
regress mollusk importer_dev_06
regress crustacean importer_dev_06

ttest whole, by (importer_dev_06)
ttest meat, by (importer_dev_06)

* weighted
regress whole importer_dev_06 [aweight = qty]
regress meat importer_dev_06 [aweight = qty]
regress fillet importer_dev_06 [aweight = qty]
regress other_portion importer_dev_06 [aweight = qty]
regress frozen importer_dev_06 [aweight = qty]
regress other_preservation importer_dev_06 [aweight = qty]
regress fresh importer_dev_06 [aweight = qty]
regress live importer_dev_06 [aweight = qty]
regress fish importer_dev_06 [aweight = qty]
regress mollusk importer_dev_06 [aweight = qty]
regress crustacean importer_dev_06 [aweight = qty]

sum whole if importer_dev_06 == 1 & qty > 0 & qty != .
sum whole if importer_dev_06 == 0 & qty > 0 & qty != .

log close
