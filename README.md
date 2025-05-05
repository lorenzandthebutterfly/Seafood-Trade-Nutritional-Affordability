This readme file contains information for the Data file and code used for the paper          “The Seafood Trade and Nutritional Affordability”

1.	Data file used for analysis in dta format: “merged_nutrition_uptodate_v2.dta”
Variables list:
1a. Trade variables
cmdcode : The United Nations Comtrade commodity HS code  
cmddesc : The United Nations Comtrade commodity description  
period: year of transaction
reportercode: reporter country code
reporterdesc : reporter country name
flowcode: The United Nations Comtrade trade flow code, M for import, X for export
flowdesc : The United Nations Comtrade trade flow description
partnercode: trade partner country code 
partnerdesc : trade partner country name
qty: trade quantity in kg
primaryvalue: trade value in nominal US dollars
reporter_gdp: reporter country GDP of the year, PPP adjusted
partner_gdp : partner country GDP of the year, PPP adjusted 
reporter_gni : World Bank GNI indicator of reporter country 
partner_gni : World Bank GNI indicator partner country 
reporter_gni_classification: dummy variable created for GNI categories based on Dev definition in paper for reporter country
partner_gni_classification : dummy variable created for GNI categories based on Dev definition in paper for partner country
reporter_hdi_classification: United Nations Human Development Index category for reporter country
partner_hdi_classification: United Nations Human Development Index category for partner country
reporter_lifdc_classification: UN FAO’s Low Income Food Deficit Country (LIFDC) indicator for reporter country
partner _lifdc_classification : UN FAO’s Low Income Food Deficit Country (LIFDC) indicator for partner country
reporter_gdp_qn: GDP quintiles of reporter country
partner_gdp_qn : GDP quintiles of partner country
reporter_dev_01: dummy variable for categorizing developing and developed as defined in paper, see Dev1. 
partner_dev_01 : dummy variable for categorizing developing and developed as defined in paper, see Dev1. 
reporter_dev_02 : dummy variable for categorizing developing and developed as defined in paper, see Dev2. 
partner_dev_02 : dummy variable for categorizing developing and developed as defined in paper, see Dev2. 
reporter_dev_03 : dummy variable for categorizing developing and developed as defined in paper, see Dev3.
partner_dev_03 : dummy variable for categorizing developing and developed as defined in paper, see Dev3.
reporter_dev_04 : dummy variable for categorizing developing and developed as defined in paper, see Dev4.
partner_dev_04: dummy variable for categorizing developing and developed as defined in paper, see Dev4.
reporter_dev_05: dummy variable for categorizing developing and developed as defined in paper, see Dev5
partner_dev_05 : dummy variable for categorizing developing and developed as defined in paper, see Dev5
reporter_dev_06 : dummy variable for categorizing developing and developed as defined in paper, see Dev6
partner_dev_06: dummy variable for categorizing developing and developed as defined in paper, see Dev6
1b. Data Match indicator variables:
exclude: commodities excluded because description is too broad to match, for example, commodity 3-Fish and crustaceans, molluscs and other aquatic invertebrates.
match_to_old (Composite Goods): If the species is unspecified (denoted NSPF) in the Comtrade data, we create a composite species and weight the nutritional variables by the shares of the composite.  We constructed weighted averages of the most frequently caught species within each category based on 2016 landings data and using species ranked highest in each category. Because landings for these broad categories are widely available for the United States, namely landings of  different species of groundfish, flatfish, mollusk, and crustaceans , we use U.S. landings to create nutritional weights for composite goods. 
exact_single_match : records for which there is an exact one-to-one species match
exact_one_of : recodes for multiple to one match when the Comtrade database reports multiple species for the same commodity code. We use the first species listed in Comtrade to match to FAO nutrition data. If that species is missing in FAO nutrition data, we go to the second in the list, and so forth.
Records for which exclude=0, match_to_old = 0, exact_stingle_match = 0, and exact_one_of=0 are in the remaining category of match to similar. 

1c. China and re-exporter dummy: 
is_china: 1 if China is the reporter country or the partner country, 0 otherwise
is_re_exporter: 1 if re-exporter is indicated, 0 otherwise

1d. Commodity species category variables:
Fish: 1 if finfish, 0 otherwise
Crustacean: 1 if Crustacean, 0 otherwise
Mollusk: 1 if mollusk, 0 otherwise
invert_other: 1 if other invertebrates, 0 otherwise

1e. Product category variables:
Live: 1 if live, 0 otherwise
fresh: 1 if fresh, 0 otherwise
frozen: 1 if frozen, 0 otherwise
other_preservation: 1 if other preservation, 0 otherwise
whole: 1 if whole fish, 0 otherwise
filleted: 1 if filleted, 0 otherwise
meat: 1 if meat, 0 otherwise
other_portion: 1 if other portion, 0 otherwise 
trophic: trophic level of fish 

1f. Nutrition variables
nutrients summarized in amount per 100g of edible seafood
calories: calories in kcal per 100g of edible seafood
protein: protein in grams per 100g of edible seafood
fattyacid: fatty acids in grams per 100g of edible seafood
calcium: calcium in mg (milligrams) per 100g of edible seafood
iron: iron in mg (milligrams) per 100g of edible seafood
potassium: potassium in mg (milligrams) per 100g of edible seafood
magnesium: magnesium in mg (milligrams) per 100g of edible seafood 
zinc: zinc in mg (milligrams) per 100g of edible seafood
selenium: selenium in µg (micrograms) per 100g of edible seafood
iodine: iodine in µg (micrograms) per 100g of edible seafood
b12 : b12 in µg (micrograms) per 100g of edible seafood
retinol : retinol in µg (micrograms) per 100g of edible seafood
edible: edible coefficient for product between 0 and 1.
net_calories_kg: calories in kcal per 1kg of this commodity after counting for edible part
net_protein_kg: protein in grams per 1kg of this commodity after counting for edible part
net_fattyacid_kg: fatty acids in grams per 1kg of this commodity after counting for edible part
net_calcium_kg: calcium in mg (milligrams) per 1kg of this commodity after counting for edible 
part 
net_iron_kg: iron in mg (milligrams) per 1kg of this commodity after counting for edible part
net_potassium_kg: : potassium in mg (milligrams) per 1kg of this commodity after counting for edible part
net_magnesium_kg: magnesium in mg (milligrams) per 1kg of this commodity after counting for edible part
net_zinc_kg : zinc in mg (milligrams) per 1kg of this commodity after counting for edible part
net_selenium_kg : selenium in µg (micrograms) per 1kg of this commodity after counting for edible part
net_iodine_kg : iodine in µg (micrograms) per 1kg of this commodity after counting for edible part
net_b12_kg : b12 in µg (micrograms) per 1kg of this commodity after counting for edible part
net_retinol_kg : retinol in µg (micrograms) per 1kg of this commodity after counting for edible part
price_per_kg: price per kg = primaryvalue / qty for each commodity transaction
calcium_per_dollar: net_calcium_kg / price_per_kg
calories_per_dollar: net_calories_kg / price_per_kg
fattyacid_per_dollar: net_fattyacid_kg / price_per_kg
iron_per_dollar: net_iron_kg / price_per_kg
magnesium_per_dollar: net_magnesium_kg / price_per_kg
potassium_per_dollar: net_potassium_kg / price_per_kg
protein_per_dollar: net_protein_kg / price_per_kg
zinc_per_dollar: net_zinc_kg / price_per_kg
selenium_per_dollar: net_selenium_kg / price_per_kg
iodine_per_dollar: net_iodine_kg / price_per_kg
b12_per_dollar: net_b12_kg / price_per_kg
retinol_per_dollar: net_retinol_kg / price_per_kg


2.	Code file used for analysis
2a. Code used to generate the main Mann-Whitney and t-tests results
	Matlab code file produces results presented in Figure 1, Supplemental Figure 1 & 2, Supplemental table 1, 2 &3. 
•	'Smyth_TheSeafoodTradeandNutritionalAccess_MATLABcode.m' can be run section by section to get the above-mentioned information. 
•	'my_allyears.m' returns information for each nutrient per dollar column for developing and developed as well as information on the differences between developing and developed for each nutrient per dollar column for all years of data (2015-2021).
•	'my_separateyears.m' returns information for each nutrient per dollar column for developing and developed as well as information on the differences between developing and developed for each nutrient per dollar column for each separate year (2015-2021).
•	'my_mannwhitneyUtest.m' returns the p and z value from the Wilcoxon rank sum test which is equivalent to the Mann Whitney U test.
•	'my_weighted_twosample_ttest.m' returns weighted or unweighted information for each nutrient per dollar column for developing and developed as well as the t-stat for the mean comparison between developing and developed.  
•	'my_proportion.m' returns the confidence interval for the percentage difference of nutrient per dollar
•	'Nutrient_AllResults_Table.m' returns the results in Supplemental table 1, 2 &3.

2b. Code used to generate the covariate comparisons
Stata code file ‘Covariate_Diffs_Seafood .do’ returns covariate comparison results presented in Table 2, and Supplementary Table 6-10. 
2c. Code used to generate the Hedonic models
Stata code file ‘HP regression .do’ returns hedonic regression results presented in Table 3. 
2d. Code used for the SUR model
Stata code file ‘SUR_Seafood .do’ returns SUR model results presented in Supplementary Table 5. 

2e. Code used for the Oaxaca-Blinder analysis
Stata code file ‘Oaxaca_Seafood_Results_for_Paper.do’ covariate comparison results presented in Table 1, Figure 2 and Supplementary Figure 3. 


