*use 
* Read in the data

*log using "\SURstuff2025.log"


pwcorr protein_per_dollar fattyacid_per_dollar calories_per_dollar zinc_per_dollar magnesium_per_dollar calcium_per_dollar iron_per_dollar   potassium_per_dollar b12_per_dollar, sig

generate lnprotein = ln(protein_per_dollar)
generate lnfattyacid = ln(fattyacid_per_dollar)
generate lncalories = ln(calories_per_dollar)
generate lnzinc = ln(zinc_per_dollar)
generate lnmagnesium = ln(magnesium_per_dollar)
generate lncalcium = ln(calcium_per_dollar)
generate lniron = ln(iron_per_dollar)
generate lnpotassium = ln(potassium_per_dollar)
generate lnb12 = ln(b12_per_dollar)

sureg (lnprotein importer_dev_01) (lnfattyacid importer_dev_01) (lncalories importer_dev_01) (lnzinc importer_dev_01) (lnmagnesium importer_dev_01) (lncalcium importer_dev_01) (lniron importer_dev_01) (lnpotassium importer_dev_01) (lnb12 importer_dev_01), corr

test [lnprotein=lnfattyacid=lncalories=lnzinc=lnmagnesium=lncalcium=lniron=lnpotassium=lnb12]

sureg (lnprotein importer_dev_02) (lnfattyacid importer_dev_02) (lncalories importer_dev_02) (lnzinc importer_dev_02) (lnmagnesium importer_dev_02) (lncalcium importer_dev_02) (lniron importer_dev_02) (lnpotassium importer_dev_02) (lnb12 importer_dev_02), corr

test [lnprotein=lnfattyacid=lncalories=lnzinc=lnmagnesium=lncalcium=lniron=lnpotassium=lnb12]

sureg (lnprotein importer_dev_03) (lnfattyacid importer_dev_03) (lncalories importer_dev_03) (lnzinc importer_dev_03) (lnmagnesium importer_dev_03) (lncalcium importer_dev_03) (lniron importer_dev_03) (lnpotassium importer_dev_03) (lnb12 importer_dev_03), corr

test [lnprotein=lnfattyacid=lncalories=lnzinc=lnmagnesium=lncalcium=lniron=lnpotassium=lnb12]

sureg (lnprotein importer_dev_04) (lnfattyacid importer_dev_04) (lncalories importer_dev_04) (lnzinc importer_dev_04) (lnmagnesium importer_dev_04) (lncalcium importer_dev_04) (lniron importer_dev_04) (lnpotassium importer_dev_04) (lnb12 importer_dev_04), corr

test [lnprotein=lnfattyacid=lncalories=lnzinc=lnmagnesium=lncalcium=lniron=lnpotassium=lnb12]

sureg (lnprotein importer_dev_05) (lnfattyacid importer_dev_05) (lncalories importer_dev_05) (lnzinc importer_dev_05) (lnmagnesium importer_dev_05) (lncalcium importer_dev_05) (lniron importer_dev_05) (lnpotassium importer_dev_05) (lnb12 importer_dev_05), corr

test [lnprotein=lnfattyacid=lncalories=lnzinc=lnmagnesium=lncalcium=lniron=lnpotassium=lnb12]

sureg (lnprotein importer_dev_06) (lnfattyacid importer_dev_06) (lncalories importer_dev_06) (lnzinc importer_dev_06) (lnmagnesium importer_dev_06) (lncalcium importer_dev_06) (lniron importer_dev_06) (lnpotassium importer_dev_06) (lnb12 importer_dev_06), corr

test [lnprotein=lnfattyacid=lncalories=lnzinc=lnmagnesium=lncalcium=lniron=lnpotassium=lnb12]



log close
