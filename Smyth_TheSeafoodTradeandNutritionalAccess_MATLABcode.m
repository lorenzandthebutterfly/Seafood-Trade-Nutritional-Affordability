%% Create nutrient_data_V2_trimmed by removing top 1% of data in each of the nutrient per dollar columns. 
data=xlsread('NEW2_research_data_ver2.csv');
OPflag=zeros(length(data),1);
for z=132:143
    x=0;
    OPind=0;
    x=sort(data(isnan(data(:,z))==0,z)); %Sort nutrient per dollar column by increasing value to find top 1% of each nutrient per dollar column. 
    OPind=length(x)-round(length(x)*0.01); %Find index of the value in x that is minimum value in the top 1% of each nutrient per dollar column.
    for n=1:length(data)
        if data(n,z)>=x(OPind)
            OPflag(n,1)=1; %Flag vector where 1 means that observation is in top 1% of that nutrient per dollar column and 0 means that the observation is not in the top 1%
        end
    end
end
dataV2=data;
dataV2(find(OPflag(:,1)==1),:)=[]; %Remove all rows that have values that are in the top 1% of atleast 1 nutrient per dollar column. 
%% Create flag vector where rows where China is the partner country are removed
%China partner codes are 344, 156, and 446
data=xlsread('NEW2_research_data.csv');
for n=1:length(data)
    if data(n,14)==344 | data(n,14)==156 | data(n,14)==446 
        Chinaflag(n,1)=1; %Flag vector where 1 means that China was the partner country for that row. 
    else
        Chinaflag(n,1)=0; %Flag vector where 0 means that China was not the partner country.
    end
end
%% Create flag vector where rows where China is the reporter or partner country are removed
%China partner codes are 344, 156, and 446
data=xlsread('nutrient_data_V2_trimmed.csv');
for n=1:length(data)
    if data(n,14)==344 | data(n,14)==156 | data(n,14)==446 
        Chinaflag(n,1)=1; %Flag vector where 1 means that China was the partner country for that row. 
    else
        Chinaflag(n,1)=0; %Flag vector where 0 means that China was not the partner country for that row.
    end
end
%% Create flag vector where rows where rexporters for China, Hong Kong, Thailand, Vietnam, Netherlands, and Poland are flagged 
%China partner codes are 344, 156, and 446, Thailand is 764, Vietnam is 704, Netherlands is 528, and Poland is 616
data=xlsread('NEW_research_data_robustness_check_V2.csv');
for n=1:length(data)
    if data(n,138)==1 && data(n,14)==344 | data(n,14)==156 | data(n,14)==446 | data(n,14)==446 | data(n,14)==764| data(n,14)==704| data(n,14)==528| data(n,14)==616
        Rxflag(n,1)=1; %Flag vector where 1 means that trade is re-export and part of the list of countries
    else
        Rxflag(n,1)=0; %Flag vector where 0 means that trade is not re-export and part of the list of countries
    end
end
%% Create flag vector where rows where rexporters for China, Hong Kong, Thailand, Vietnam, Netherlands, and Poland are flagged 
%China partner codes are 344, 156, and 446, Thailand is 764, Vietnam is 704, Netherlands is 528, and Poland is 616
data=xlsread('nutrient_data_V3_trimmed.csv');
for n=1:length(data)
    if data(n,138)==1 && data(n,14)==344 | data(n,14)==156 | data(n,14)==446 | data(n,14)==446 | data(n,14)==764| data(n,14)==704| data(n,14)==528| data(n,14)==616
        Rxflag(n,1)=1; %Flag vector where 1 means that trade is re-export and part of the list of countries
    else
        Rxflag(n,1)=0; %Flag vector where 0 means that trade is not re-export and part of the list of countries
    end
end
%% All years data for dev01-04 for Supplemental Table 1 
%allyears_dev0#percentdifference is the percent difference (developing-developed) of nutrients per dollar in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium for rows 1-12. 
%allyears_dev0#_stats is the t-values in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium for rows 1-12.
%allyears_dev0#_statsP is the p-value associated with the t-test in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium for columns 1-12.
%allyears_dev0#_meandeveloped is the mean nutrient per dollar for developed in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium for rows 1-12.
%allyears_dev0#_meandeveloping is the mean nutrient per dollar for developing in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium for rows 1-12.
%allyears_dev0#_meannutrientdifference is the difference between allyears_dev0#_meandeveloping and allyears_dev0#_meandeveloped in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium for rows 1-12.
%allyears_dev0#_Lnutrientdeveloped is the number of developed observations in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium for rows 1-12.
%allyears_dev0#_Lnutrientdeveloping is the number of developing observations in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium for rows 1-12.
%allyears_dev0#_stdnutrientperdollardeveloped is the standard deviation of developed observations in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium for rows 1-12.
%allyears_dev0#_stdnutrientperdollardeveloping is the standard deviation of developing observations in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium for rows 1-12.
%dev0#maxdeveloped is the max developed observation in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium for rows 1-12 
%dev0#maxdeveloping is the max developing observation in the order Protein,Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium for rows 1-12.
data=xlsread('regression_01_V4_SeIRe_NaN.csv');
[allyears_dev01percentdifference,allyears_dev01_stats,allyears_dev01_statsP,allyears_dev01_meandeveloped,allyears_dev01_meandeveloping,allyears_dev01_meannutrientdifference,allyears_dev01_Lnutrientdeveloped,allyears_dev01_Lnutrientdeveloping,allyears_dev01_stdnutrientperdollardeveloped,allyears_dev01_stdnutrientperdollardeveloping,dev01maxdeveloped, dev01maxdeveloping]=my_allyears(data,98);
[allyears_dev02percentdifference,allyears_dev02_stats,allyears_dev02_statsP,allyears_dev02_meandeveloped,allyears_dev02_meandeveloping,allyears_dev02_meannutrientdifference,allyears_dev02_Lnutrientdeveloped,allyears_dev02_Lnutrientdeveloping,allyears_dev02_stdnutrientperdollardeveloped,allyears_dev02_stdnutrientperdollardeveloping,dev02maxdeveloped, dev02maxdeveloping]=my_allyears(data,99);
[allyears_dev03percentdifference,allyears_dev03_stats,allyears_dev03_statsP,allyears_dev03_meandeveloped,allyears_dev03_meandeveloping,allyears_dev03_meannutrientdifference,allyears_dev03_Lnutrientdeveloped,allyears_dev03_Lnutrientdeveloping,allyears_dev03_stdnutrientperdollardeveloped,allyears_dev03_stdnutrientperdollardeveloping,dev03maxdeveloped, dev03maxdeveloping]=my_allyears(data,100);
[allyears_dev04percentdifference,allyears_dev04_stats,allyears_dev04_statsP,allyears_dev04_meandeveloped,allyears_dev04_meandeveloping,allyears_dev04_meannutrientdifference,allyears_dev04_Lnutrientdeveloped,allyears_dev04_Lnutrientdeveloping,allyears_dev04_stdnutrientperdollardeveloped,allyears_dev04_stdnutrientperdollardeveloping,dev04maxdeveloped, dev04maxdeveloping]=my_allyears(data,101);
%% Seperate years data for dev01-04 for Supplemental Table 1  
%sepyears_dev0#percentdifference is the percent difference (developing-developed) of nutrients per dollar in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium for rows 1-12 and for each year 2015-2021 for columns 1-7. 
%sepyears_dev0#_stats is the t-values in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium for rows 1-12 and for each year 2015-2021 for columns 1-7.
%sepyears_dev0#_statsP is the p-value associated with the t-test in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium for rows 1-12 and for each year 2015-2021 for columns 1-7.
%sepyears_dev0#_meandeveloped is the mean nutrient per dollar for developed in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium for rows 1-12 and for each year 2015-2021 for columns 1-7.
%sepyears_dev0#_meandeveloping is the mean nutrient per dollar for developing in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium for rows 1-12 and for each year 2015-2021 for columns 1-7.
%sepyears_dev0#_meannutrientdifference is the difference between allyears_dev0#_meandeveloping and allyears_dev0#_meandeveloped in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium for rows 1-12 and for each year 2015-2021 for columns 1-7.
%dev0#_Lnutrientdeveloped is the number of developed observations in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium for rows 1-12 and for each year 2015-2021 for columns 1-7.
%dev0#_Lnutrientdeveloping is the number of developing observations in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium for rows 1-12 and for each year 2015-2021 for columns 1-7.
%dev0#_stdnutrientperdollardeveloped is the standard deviation of developed observations in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium for rows 1-12 and for each year 2015-2021 for columns 1-7.
%dev0#_stdnutrientperdollardeveloping is the standard deviation of developing observations in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium for rows 1-12 and for each year 2015-2021 for columns 1-7.
data=xlsread('nutrient_data_V3.csv');
[sepyears_dev01percentdifference,sepyears_dev01_stats,sepyears_dev01_statsP,sepyears_dev01_meandeveloped,sepyears_dev01_meandeveloping,sepyears_dev01_meannutrientdifference,dev01_Lnutrientdeveloped,dev01_Lnutrientdeveloping,dev01_stdnutrientperdollardeveloped,dev01_stdnutrientperdollardeveloping]=my_separateyears(data,132);
[sepyears_dev02percentdifference,sepyears_dev02_stats,sepyears_dev02_statsP,sepyears_dev02_meandeveloped,sepyears_dev02_meandeveloping,sepyears_dev02_meannutrientdifference,dev02_Lnutrientdeveloped,dev02_Lnutrientdeveloping,dev02_stdnutrientperdollardeveloped,dev02_stdnutrientperdollardeveloping]=my_separateyears(data,133);
[sepyears_dev03percentdifference,sepyears_dev03_stats,sepyears_dev03_statsP,sepyears_dev03_meandeveloped,sepyears_dev03_meandeveloping,sepyears_dev03_meannutrientdifference,dev03_Lnutrientdeveloped,dev03_Lnutrientdeveloping,dev03_stdnutrientperdollardeveloped,dev03_stdnutrientperdollardeveloping]=my_separateyears(data,133);
[sepyears_dev04percentdifference,sepyears_dev04_stats,sepyears_dev04_statsP,sepyears_dev04_meandeveloped,sepyears_dev04_meandeveloping,sepyears_dev04_meannutrientdifference,dev04_Lnutrientdeveloped,dev04_Lnutrientdeveloping,dev04_stdnutrientperdollardeveloped,dev04_stdnutrientperdollardeveloping]=my_separateyears(data,135);
[sepyears_dev05percentdifference,sepyears_dev05_stats,sepyears_dev05_statsP,sepyears_dev05_meandeveloped,sepyears_dev05_meandeveloping,sepyears_dev05_meannutrientdifference,dev05_Lnutrientdeveloped,dev05_Lnutrientdeveloping,dev05_stdnutrientperdollardeveloped,dev05_stdnutrientperdollardeveloping]=my_separateyears(data,136);
[sepyears_dev06percentdifference,sepyears_dev06_stats,sepyears_dev06_statsP,sepyears_dev06_meandeveloped,sepyears_dev06_meandeveloping,sepyears_dev06_meannutrientdifference,dev06_Lnutrientdeveloped,dev06_Lnutrientdeveloping,dev06_stdnutrientperdollardeveloped,dev06_stdnutrientperdollardeveloping]=my_separateyears(data,139);
%% Mann Whitney tests all years data for dev01-04 for Supplemental Table 1  
%dev0#_allyears_mannwhitney row 1 is the p-values from the Mann-Whitney test in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium.
%dev0#_allyears_mannwhitney row 2 is the z-values from the Mann-Whitney test in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium.
data=xlsread('regression_01_V4_SeIRe_NaN.csv');
nutrientorder=[2 4 1 3 6 7 11 5 8 10 12 9];
for n=1:12
    dev01_allyears_mannwhitney(:,n)=my_mannwhitneyUtest(data,98,67+nutrientorder(n));
end
for n=1:12
    dev02_allyears_mannwhitney(:,n)=my_mannwhitneyUtest(data,99,67+nutrientorder(n));
end
for n=1:12
    dev03_allyears_mannwhitney(:,n)=my_mannwhitneyUtest(data,100,67+nutrientorder(n));
end
for n=1:12
    dev04_allyears_mannwhitney(:,n)=my_mannwhitneyUtest(data,101,67+nutrientorder(n));
end
%% Mann Whitney tests 2015 data for dev01-04 for Supplemental Table 1 
%dev0#_2015_mannwhitney row 1 is the p-values from the Mann-Whitney test in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium.
%dev0#_2015_mannwhitney row 2 is the z-values from the Mann-Whitney test in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium.
data=xlsread('regression_01_V4_SeIRe_NaN.csv');
data2015=data(data(:,3)==2015,:);
nutrientorder=[2 4 1 3 6 7 11 5 8 10 12 9];
for n=1:12
    dev01_2015_mannwhitney(:,n)=my_mannwhitneyUtest(data2015,98,67+nutrientorder(n));
end
for n=1:12
    dev02_2015_mannwhitney(:,n)=my_mannwhitneyUtest(data2015,99,67+nutrientorder(n));
end
for n=1:12
    dev03_2015_mannwhitney(:,n)=my_mannwhitneyUtest(data2015,100,67+nutrientorder(n));
end
for n=1:12
    dev04_2015_mannwhitney(:,n)=my_mannwhitneyUtest(data2015,101,67+nutrientorder(n));
end
%% Mann Whitney tests 2016 data for dev01-04 for Supplemental Table 1   
%dev0#_2016_mannwhitney row 1 is the p-values from the Mann-Whitney test in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium.
%dev0#_2016_mannwhitney row 2 is the z-values from the Mann-Whitney test in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium.
data=xlsread('regression_01_V4_SeIRe_NaN.csv');
data2016=data(data(:,3)==2016,:);
nutrientorder=[2 4 1 3 6 7 11 5 8 10 12 9];
for n=1:12
    dev01_2016_mannwhitney(:,n)=my_mannwhitneyUtest(data2016,98,67+nutrientorder(n));
end
for n=1:12
    dev02_2016_mannwhitney(:,n)=my_mannwhitneyUtest(data2016,99,67+nutrientorder(n));
end
for n=1:12
    dev03_2016_mannwhitney(:,n)=my_mannwhitneyUtest(data2016,100,67+nutrientorder(n));
end
for n=1:12
    dev04_2016_mannwhitney(:,n)=my_mannwhitneyUtest(data2016,101,67+nutrientorder(n));
end
%% Mann Whitney tests 2017 data for dev01-04 for Supplemental Table 1   
%dev0#_2017_mannwhitney row 1 is the p-values from the Mann-Whitney test in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium.
%dev0#_2017_mannwhitney row 2 is the z-values from the Mann-Whitney test in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium.
data=xlsread('regression_01_V4_SeIRe_NaN.csv');
data2017=data(data(:,3)==2017,:);
nutrientorder=[2 4 1 3 6 7 11 5 8 10 12 9];
for n=1:12
    dev01_2017_mannwhitney(:,n)=my_mannwhitneyUtest(data2017,98,67+nutrientorder(n));
end
for n=1:12
    dev02_2017_mannwhitney(:,n)=my_mannwhitneyUtest(data2017,99,67+nutrientorder(n));
end
for n=1:12
    dev03_2017_mannwhitney(:,n)=my_mannwhitneyUtest(data2017,100,67+nutrientorder(n));
end
for n=1:12
    dev04_2017_mannwhitney(:,n)=my_mannwhitneyUtest(data2017,101,67+nutrientorder(n));
end
%% Mann Whitney tests 2018 data for dev01-04 for Supplemental Table 1   
%dev0#_2018_mannwhitney row 1 is the p-values from the Mann-Whitney test in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium.
%dev0#_2018_mannwhitney row 2 is the z-values from the Mann-Whitney test in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium.
data=xlsread('regression_01_V4_SeIRe_NaN.csv');
data2018=data(data(:,3)==2018,:);
nutrientorder=[2 4 1 3 6 7 11 5 8 10 12 9];
for n=1:12
    dev01_2018_mannwhitney(:,n)=my_mannwhitneyUtest(data2018,98,67+nutrientorder(n));
end
for n=1:12
    dev02_2018_mannwhitney(:,n)=my_mannwhitneyUtest(data2018,99,67+nutrientorder(n));
end
for n=1:12
    dev03_2018_mannwhitney(:,n)=my_mannwhitneyUtest(data2018,100,67+nutrientorder(n));
end
for n=1:12
    dev04_2018_mannwhitney(:,n)=my_mannwhitneyUtest(data2018,101,67+nutrientorder(n));
end
%% Mann Whitney tests 2019 data for dev01-04 for Supplemental Table 1 
%dev0#_2019_mannwhitney row 1 is the p-values from the Mann-Whitney test in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium.
%dev0#_2019_mannwhitney row 2 is the z-values from the Mann-Whitney test in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium.
data=xlsread('regression_01_V4_SeIRe_NaN.csv');
data2019=data(data(:,3)==2019,:);
nutrientorder=[2 4 1 3 6 7 11 5 8 10 12 9];
for n=1:12
    dev01_2019_mannwhitney(:,n)=my_mannwhitneyUtest(data2019,98,67+nutrientorder(n));
end
for n=1:12
    dev02_2019_mannwhitney(:,n)=my_mannwhitneyUtest(data2019,99,67+nutrientorder(n));
end
for n=1:12
    dev03_2019_mannwhitney(:,n)=my_mannwhitneyUtest(data2019,100,67+nutrientorder(n));
end
for n=1:12
    dev04_2019_mannwhitney(:,n)=my_mannwhitneyUtest(data2019,101,67+nutrientorder(n));
end
%% Mann Whitney tests 2020 data for dev01-04 for Supplemental Table 1 
%dev0#_2020_mannwhitney row 1 is the p-values from the Mann-Whitney test in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium.
%dev0#_2020_mannwhitney row 2 is the z-values from the Mann-Whitney test in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium.
data=xlsread('regression_01_V4_SeIRe_NaN.csv');
data2020=data(data(:,3)==2020,:);
nutrientorder=[2 4 1 3 6 7 11 5 8 10 12 9];
for n=1:12
    dev01_2020_mannwhitney(:,n)=my_mannwhitneyUtest(data2020,98,67+nutrientorder(n));
end
for n=1:12
    dev02_2020_mannwhitney(:,n)=my_mannwhitneyUtest(data2020,99,67+nutrientorder(n));
end
for n=1:12
    dev03_2020_mannwhitney(:,n)=my_mannwhitneyUtest(data2020,100,67+nutrientorder(n));
end
for n=1:12
    dev04_2020_mannwhitney(:,n)=my_mannwhitneyUtest(data2020,101,67+nutrientorder(n));
end
%% Mann Whitney tests 2021 data for dev01-04 for Supplemental Table 1 
%dev0#_2021_mannwhitney row 1 is the p-values from the Mann-Whitney test in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium.
%dev0#_2021_mannwhitney row 2 is the z-values from the Mann-Whitney test in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium.
data=xlsread('regression_01_V4_SeIRe_NaN.csv');
data2021=data(data(:,3)==2021,:);
nutrientorder=[2 4 1 3 6 7 11 5 8 10 12 9];
for n=1:12
    dev01_2021_mannwhitney(:,n)=my_mannwhitneyUtest(data2021,98,67+nutrientorder(n));
end
for n=1:12
    dev02_2021_mannwhitney(:,n)=my_mannwhitneyUtest(data2021,99,67+nutrientorder(n));
end
for n=1:12
    dev03_2021_mannwhitney(:,n)=my_mannwhitneyUtest(data2021,100,67+nutrientorder(n));
end
for n=1:12
    dev04_2021_mannwhitney(:,n)=my_mannwhitneyUtest(data2021,101,67+nutrientorder(n));
end
%% All years trimmed data for dev01-04 for Supplemental Table 2  
%allyears_dev0#percentdifference is the percent difference (developing-developed) of nutrients per dollar in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium for rows 1-12. 
%allyears_dev0#_stats is the t-values in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium for rows 1-12.
%allyears_dev0#_statsP is the p-value associated with the t-test in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium for columns 1-12.
%allyears_dev0#_meandeveloped is the mean nutrient per dollar for developed in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium for rows 1-12.
%allyears_dev0#_meandeveloping is the mean nutrient per dollar for developing in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium for rows 1-12.
%allyears_dev0#_meannutrientdifference is the difference between allyears_dev0#_meandeveloping and allyears_dev0#_meandeveloped in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium for rows 1-12.
%allyears_dev0#_Lnutrientdeveloped is the number of developed observations in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium for rows 1-12.
%allyears_dev0#_Lnutrientdeveloping is the number of developing observations in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium for rows 1-12.
%allyears_dev0#_stdnutrientperdollardeveloped is the standard deviation of developed observations in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium for rows 1-12.
%allyears_dev0#_stdnutrientperdollardeveloping is the standard deviation of developing observations in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium for rows 1-12.
%dev0#maxdeveloped is the max developed observation in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium for rows 1-12 
%dev0#maxdeveloping is the max developing observation in the order Protein,Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium for rows 1-12.
data=xlsread('regression_01_V5_SeIRe_NaN_Trimmed.csv');
[allyears_dev01percentdifference,allyears_dev01_stats,allyears_dev01_statsP,allyears_dev01_meandeveloped,allyears_dev01_meandeveloping,allyears_dev01_meannutrientdifference,allyears_dev01_Lnutrientdeveloped,allyears_dev01_Lnutrientdeveloping,allyears_dev01_stdnutrientperdollardeveloped,allyears_dev01_stdnutrientperdollardeveloping,dev01maxdeveloped, dev01maxdeveloping]=my_allyears(data,98);
[allyears_dev02percentdifference,allyears_dev02_stats,allyears_dev02_statsP,allyears_dev02_meandeveloped,allyears_dev02_meandeveloping,allyears_dev02_meannutrientdifference,allyears_dev02_Lnutrientdeveloped,allyears_dev02_Lnutrientdeveloping,allyears_dev02_stdnutrientperdollardeveloped,allyears_dev02_stdnutrientperdollardeveloping,dev02maxdeveloped, dev02maxdeveloping]=my_allyears(data,99);
[allyears_dev03percentdifference,allyears_dev03_stats,allyears_dev03_statsP,allyears_dev03_meandeveloped,allyears_dev03_meandeveloping,allyears_dev03_meannutrientdifference,allyears_dev03_Lnutrientdeveloped,allyears_dev03_Lnutrientdeveloping,allyears_dev03_stdnutrientperdollardeveloped,allyears_dev03_stdnutrientperdollardeveloping,dev03maxdeveloped, dev03maxdeveloping]=my_allyears(data,100);
[allyears_dev04percentdifference,allyears_dev04_stats,allyears_dev04_statsP,allyears_dev04_meandeveloped,allyears_dev04_meandeveloping,allyears_dev04_meannutrientdifference,allyears_dev04_Lnutrientdeveloped,allyears_dev04_Lnutrientdeveloping,allyears_dev04_stdnutrientperdollardeveloped,allyears_dev04_stdnutrientperdollardeveloping,dev04maxdeveloped, dev04maxdeveloping]=my_allyears(data,101);
%% Seperate years trimmed data for dev01-04 for Supplemental Table 2  
%sepyears_dev0#percentdifference is the percent difference (developing-developed) of nutrients per dollar in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium for rows 1-12 and for each year 2015-2021 for columns 1-7. 
%sepyears_dev0#_stats is the t-values in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium for rows 1-12 and for each year 2015-2021 for columns 1-7.
%sepyears_dev0#_statsP is the p-value associated with the t-test in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium for rows 1-12 and for each year 2015-2021 for columns 1-7.
%sepyears_dev0#_meandeveloped is the mean nutrient per dollar for developed in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium for rows 1-12 and for each year 2015-2021 for columns 1-7.
%sepyears_dev0#_meandeveloping is the mean nutrient per dollar for developing in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium for rows 1-12 and for each year 2015-2021 for columns 1-7.
%sepyears_dev0#_meannutrientdifference is the difference between allyears_dev0#_meandeveloping and allyears_dev0#_meandeveloped in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium for rows 1-12 and for each year 2015-2021 for columns 1-7.
%dev0#_Lnutrientdeveloped is the number of developed observations in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium for rows 1-12 and for each year 2015-2021 for columns 1-7.
%dev0#_Lnutrientdeveloping is the number of developing observations in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium for rows 1-12 and for each year 2015-2021 for columns 1-7.
%dev0#_stdnutrientperdollardeveloped is the standard deviation of developed observations in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium for rows 1-12 and for each year 2015-2021 for columns 1-7.
%dev0#_stdnutrientperdollardeveloping is the standard deviation of developing observations in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium for rows 1-12 and for each year 2015-2021 for columns 1-7.
data=xlsread('nutrient_data_V3_trimmed.csv');
[sepyears_dev01percentdifference,sepyears_dev01_stats,sepyears_dev01_statsP,sepyears_dev01_meandeveloped,sepyears_dev01_meandeveloping,sepyears_dev01_meannutrientdifference,dev01_Lnutrientdeveloped,dev01_Lnutrientdeveloping,dev01_stdnutrientperdollardeveloped,dev01_stdnutrientperdollardeveloping]=my_separateyears(data,132);
[sepyears_dev02percentdifference,sepyears_dev02_stats,sepyears_dev02_statsP,sepyears_dev02_meandeveloped,sepyears_dev02_meandeveloping,sepyears_dev02_meannutrientdifference,dev02_Lnutrientdeveloped,dev02_Lnutrientdeveloping,dev02_stdnutrientperdollardeveloped,dev02_stdnutrientperdollardeveloping]=my_separateyears(data,133);
[sepyears_dev03percentdifference,sepyears_dev03_stats,sepyears_dev03_statsP,sepyears_dev03_meandeveloped,sepyears_dev03_meandeveloping,sepyears_dev03_meannutrientdifference,dev03_Lnutrientdeveloped,dev03_Lnutrientdeveloping,dev03_stdnutrientperdollardeveloped,dev03_stdnutrientperdollardeveloping]=my_separateyears(data,134);
[sepyears_dev04percentdifference,sepyears_dev04_stats,sepyears_dev04_statsP,sepyears_dev04_meandeveloped,sepyears_dev04_meandeveloping,sepyears_dev04_meannutrientdifference,dev04_Lnutrientdeveloped,dev04_Lnutrientdeveloping,dev04_stdnutrientperdollardeveloped,dev04_stdnutrientperdollardeveloping]=my_separateyears(data,135);
[sepyears_dev05percentdifference,sepyears_dev05_stats,sepyears_dev05_statsP,sepyears_dev05_meandeveloped,sepyears_dev05_meandeveloping,sepyears_dev05_meannutrientdifference,dev05_Lnutrientdeveloped,dev05_Lnutrientdeveloping,dev05_stdnutrientperdollardeveloped,dev05_stdnutrientperdollardeveloping]=my_separateyears(data,136);
[sepyears_dev06percentdifference,sepyears_dev06_stats,sepyears_dev06_statsP,sepyears_dev06_meandeveloped,sepyears_dev06_meandeveloping,sepyears_dev06_meannutrientdifference,dev06_Lnutrientdeveloped,dev06_Lnutrientdeveloping,dev06_stdnutrientperdollardeveloped,dev06_stdnutrientperdollardeveloping]=my_separateyears(data,139);
%% Mann Whitney tests all years trimmed data for dev01-04 for Supplemental Table 2
%dev0#_allyears_mannwhitney row 1 is the p-values from the Mann-Whitney test in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium.
%dev0#_allyears_mannwhitney row 2 is the z-values from the Mann-Whitney test in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium.
data=xlsread('regression_01_V5_SeIRe_NaN_Trimmed.csv');
nutrientorder=[2 4 1 3 6 7 11 5 8 10 12 9];
for n=1:12
    dev01_allyears_mannwhitney(:,n)=my_mannwhitneyUtest(data,98,67+nutrientorder(n));
end
for n=1:12
    dev02_allyears_mannwhitney(:,n)=my_mannwhitneyUtest(data,99,67+nutrientorder(n));
end
for n=1:12
    dev03_allyears_mannwhitney(:,n)=my_mannwhitneyUtest(data,100,67+nutrientorder(n));
end
for n=1:12
    dev04_allyears_mannwhitney(:,n)=my_mannwhitneyUtest(data,101,67+nutrientorder(n));
end
%% Mann Whitney tests 2015 trimmed data for dev01-04 for Supplemental Table 2 
%dev0#_2015_mannwhitney row 1 is the p-values from the Mann-Whitney test in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium.
%dev0#_2015_mannwhitney row 2 is the z-values from the Mann-Whitney test in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium.
data=xlsread('regression_01_V5_SeIRe_NaN_Trimmed.csv');
data2015=data(data(:,3)==2015,:);
nutrientorder=[2 4 1 3 6 7 11 5 8 10 12 9];
for n=1:12
    dev01_2015_mannwhitney(:,n)=my_mannwhitneyUtest(data2015,98,67+nutrientorder(n));
end
for n=1:12
    dev02_2015_mannwhitney(:,n)=my_mannwhitneyUtest(data2015,99,67+nutrientorder(n));
end
for n=1:12
    dev03_2015_mannwhitney(:,n)=my_mannwhitneyUtest(data2015,100,67+nutrientorder(n));
end
for n=1:12
    dev04_2015_mannwhitney(:,n)=my_mannwhitneyUtest(data2015,101,67+nutrientorder(n));
end
%% Mann Whitney tests 2016 trimmed data for dev01-04 for Supplemental Table 2 
%dev0#_2016_mannwhitney row 1 is the p-values from the Mann-Whitney test in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium.
%dev0#_2016_mannwhitney row 2 is the z-values from the Mann-Whitney test in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium.
data=xlsread('regression_01_V5_SeIRe_NaN_Trimmed.csv');
data2016=data(data(:,3)==2016,:);
nutrientorder=[2 4 1 3 6 7 11 5 8 10 12 9];
for n=1:12
    dev01_2016_mannwhitney(:,n)=my_mannwhitneyUtest(data2016,98,67+nutrientorder(n));
end
for n=1:12
    dev02_2016_mannwhitney(:,n)=my_mannwhitneyUtest(data2016,99,67+nutrientorder(n));
end
for n=1:12
    dev03_2016_mannwhitney(:,n)=my_mannwhitneyUtest(data2016,100,67+nutrientorder(n));
end
for n=1:12
    dev04_2016_mannwhitney(:,n)=my_mannwhitneyUtest(data2016,101,67+nutrientorder(n));
end
%% Mann Whitney tests 2017 trimmed data for dev01-04 for Supplemental Table 2  
%dev0#_2017_mannwhitney row 1 is the p-values from the Mann-Whitney test in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium.
%dev0#_2017_mannwhitney row 2 is the z-values from the Mann-Whitney test in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium.
data=xlsread('regression_01_V5_SeIRe_NaN_Trimmed.csv');
data2017=data(data(:,3)==2017,:);
nutrientorder=[2 4 1 3 6 7 11 5 8 10 12 9];
for n=1:12
    dev01_2017_mannwhitney(:,n)=my_mannwhitneyUtest(data2017,98,67+nutrientorder(n));
end
for n=1:12
    dev02_2017_mannwhitney(:,n)=my_mannwhitneyUtest(data2017,99,67+nutrientorder(n));
end
for n=1:12
    dev03_2017_mannwhitney(:,n)=my_mannwhitneyUtest(data2017,100,67+nutrientorder(n));
end
for n=1:12
    dev04_2017_mannwhitney(:,n)=my_mannwhitneyUtest(data2017,101,67+nutrientorder(n));
end
%% Mann Whitney tests 2018 trimmed data for dev01-04 for Supplemental Table 2  
%dev0#_2018_mannwhitney row 1 is the p-values from the Mann-Whitney test in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium.
%dev0#_2018_mannwhitney row 2 is the z-values from the Mann-Whitney test in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium.
data=xlsread('regression_01_V5_SeIRe_NaN_Trimmed.csv');
data2018=data(data(:,3)==2018,:);
nutrientorder=[2 4 1 3 6 7 11 5 8 10 12 9];
for n=1:12
    dev01_2018_mannwhitney(:,n)=my_mannwhitneyUtest(data2018,98,67+nutrientorder(n));
end
for n=1:12
    dev02_2018_mannwhitney(:,n)=my_mannwhitneyUtest(data2018,99,67+nutrientorder(n));
end
for n=1:12
    dev03_2018_mannwhitney(:,n)=my_mannwhitneyUtest(data2018,100,67+nutrientorder(n));
end
for n=1:12
    dev04_2018_mannwhitney(:,n)=my_mannwhitneyUtest(data2018,101,67+nutrientorder(n));
end
%% Mann Whitney tests 2019 trimmed data for dev01-04 for Supplemental Table 2
%dev0#_2019_mannwhitney row 1 is the p-values from the Mann-Whitney test in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium.
%dev0#_2019_mannwhitney row 2 is the z-values from the Mann-Whitney test in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium.
data=xlsread('regression_01_V5_SeIRe_NaN_Trimmed.csv');
data2019=data(data(:,3)==2019,:);
nutrientorder=[2 4 1 3 6 7 11 5 8 10 12 9];
for n=1:12
    dev01_2019_mannwhitney(:,n)=my_mannwhitneyUtest(data2019,98,67+nutrientorder(n));
end
for n=1:12
    dev02_2019_mannwhitney(:,n)=my_mannwhitneyUtest(data2019,99,67+nutrientorder(n));
end
for n=1:12
    dev03_2019_mannwhitney(:,n)=my_mannwhitneyUtest(data2019,100,67+nutrientorder(n));
end
for n=1:12
    dev04_2019_mannwhitney(:,n)=my_mannwhitneyUtest(data2019,101,67+nutrientorder(n));
end
%% Mann Whitney tests 2020 trimmed data for dev01-04 for Supplemental Table 2
%dev0#_2020_mannwhitney row 1 is the p-values from the Mann-Whitney test in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium.
%dev0#_2020_mannwhitney row 2 is the z-values from the Mann-Whitney test in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium.
data=xlsread('regression_01_V5_SeIRe_NaN_Trimmed.csv');
data2020=data(data(:,3)==2020,:);
nutrientorder=[2 4 1 3 6 7 11 5 8 10 12 9];
for n=1:12
    dev01_2020_mannwhitney(:,n)=my_mannwhitneyUtest(data2020,98,67+nutrientorder(n));
end
for n=1:12
    dev02_2020_mannwhitney(:,n)=my_mannwhitneyUtest(data2020,99,67+nutrientorder(n));
end
for n=1:12
    dev03_2020_mannwhitney(:,n)=my_mannwhitneyUtest(data2020,100,67+nutrientorder(n));
end
for n=1:12
    dev04_2020_mannwhitney(:,n)=my_mannwhitneyUtest(data2020,101,67+nutrientorder(n));
end
%% Mann Whitney tests 2021 trimmed data for dev01-04 for Supplemental Table 2 
%dev0#_2021_mannwhitney row 1 is the p-values from the Mann-Whitney test in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium.
%dev0#_2021_mannwhitney row 2 is the z-values from the Mann-Whitney test in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium.
data=xlsread('regression_01_V5_SeIRe_NaN_Trimmed.csv');
data2021=data(data(:,3)==2021,:);
nutrientorder=[2 4 1 3 6 7 11 5 8 10 12 9];
for n=1:12
    dev01_2021_mannwhitney(:,n)=my_mannwhitneyUtest(data2021,98,67+nutrientorder(n));
end
for n=1:12
    dev02_2021_mannwhitney(:,n)=my_mannwhitneyUtest(data2021,99,67+nutrientorder(n));
end
for n=1:12
    dev03_2021_mannwhitney(:,n)=my_mannwhitneyUtest(data2021,100,67+nutrientorder(n));
end
for n=1:12
    dev04_2021_mannwhitney(:,n)=my_mannwhitneyUtest(data2021,101,67+nutrientorder(n));
end
%% all years data excluding China observations for dev01-04 for Supplemental Table 3 
%allyears_dev0#percentdifference is the percent difference (developing-developed) of nutrients per dollar in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium for rows 1-12. 
%allyears_dev0#_stats is the t-values in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium for rows 1-12.
%allyears_dev0#_statsP is the p-value associated with the t-test in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium for columns 1-12.
%allyears_dev0#_meandeveloped is the mean nutrient per dollar for developed in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium for rows 1-12.
%allyears_dev0#_meandeveloping is the mean nutrient per dollar for developing in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium for rows 1-12.
%allyears_dev0#_meannutrientdifference is the difference between allyears_dev0#_meandeveloping and allyears_dev0#_meandeveloped in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium for rows 1-12.
%allyears_dev0#_Lnutrientdeveloped is the number of developed observations in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium for rows 1-12.
%allyears_dev0#_Lnutrientdeveloping is the number of developing observations in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium for rows 1-12.
%allyears_dev0#_stdnutrientperdollardeveloped is the standard deviation of developed observations in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium for rows 1-12.
%allyears_dev0#_stdnutrientperdollardeveloping is the standard deviation of developing observations in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium for rows 1-12.
%dev0#maxdeveloped is the max developed observation in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium for rows 1-12 
%dev0#maxdeveloping is the max developing observation in the order Protein,Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium for rows 1-12.
data=xlsread('regression_01_V4_SeIRe_NaN_exChina.csv');
[allyears_dev01percentdifference,allyears_dev01_stats,allyears_dev01_statsP,allyears_dev01_meandeveloped,allyears_dev01_meandeveloping,allyears_dev01_meannutrientdifference,allyears_dev01_Lnutrientdeveloped,allyears_dev01_Lnutrientdeveloping,allyears_dev01_stdnutrientperdollardeveloped,allyears_dev01_stdnutrientperdollardeveloping,dev01maxdeveloped, dev01maxdevelopin]=my_allyears(data,98);
[allyears_dev02percentdifference,allyears_dev02_stats,allyears_dev02_statsP,allyears_dev02_meandeveloped,allyears_dev02_meandeveloping,allyears_dev02_meannutrientdifference,allyears_dev02_Lnutrientdeveloped,allyears_dev02_Lnutrientdeveloping,allyears_dev02_stdnutrientperdollardeveloped,allyears_dev02_stdnutrientperdollardeveloping,dev02maxdeveloped, dev02maxdevelopin]=my_allyears(data,99);
[allyears_dev03percentdifference,allyears_dev03_stats,allyears_dev03_statsP,allyears_dev03_meandeveloped,allyears_dev03_meandeveloping,allyears_dev03_meannutrientdifference,allyears_dev03_Lnutrientdeveloped,allyears_dev03_Lnutrientdeveloping,allyears_dev03_stdnutrientperdollardeveloped,allyears_dev03_stdnutrientperdollardeveloping,dev03maxdeveloped, dev03maxdevelopin]=my_allyears(data,100);
[allyears_dev04percentdifference,allyears_dev04_stats,allyears_dev04_statsP,allyears_dev04_meandeveloped,allyears_dev04_meandeveloping,allyears_dev04_meannutrientdifference,allyears_dev04_Lnutrientdeveloped,allyears_dev04_Lnutrientdeveloping,allyears_dev04_stdnutrientperdollardeveloped,allyears_dev04_stdnutrientperdollardeveloping,dev04maxdeveloped, dev04maxdevelopin]=my_allyears(data,101);
%% Seperate years data excluding China observations for dev01-04 for Supplemental Table 3 
%sepyears_dev0#percentdifference is the percent difference (developing-developed) of nutrients per dollar in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium for rows 1-12 and for each year 2015-2021 for columns 1-7. 
%sepyears_dev0#_stats is the t-values in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium for rows 1-12 and for each year 2015-2021 for columns 1-7.
%sepyears_dev0#_statsP is the p-value associated with the t-test in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium for rows 1-12 and for each year 2015-2021 for columns 1-7.
%sepyears_dev0#_meandeveloped is the mean nutrient per dollar for developed in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium for rows 1-12 and for each year 2015-2021 for columns 1-7.
%sepyears_dev0#_meandeveloping is the mean nutrient per dollar for developing in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium for rows 1-12 and for each year 2015-2021 for columns 1-7.
%sepyears_dev0#_meannutrientdifference is the difference between allyears_dev0#_meandeveloping and allyears_dev0#_meandeveloped in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium for rows 1-12 and for each year 2015-2021 for columns 1-7.
%dev0#_Lnutrientdeveloped is the number of developed observations in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium for rows 1-12 and for each year 2015-2021 for columns 1-7.
%dev0#_Lnutrientdeveloping is the number of developing observations in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium for rows 1-12 and for each year 2015-2021 for columns 1-7.
%dev0#_stdnutrientperdollardeveloped is the standard deviation of developed observations in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium for rows 1-12 and for each year 2015-2021 for columns 1-7.
%dev0#_stdnutrientperdollardeveloping is the standard deviation of developing observations in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium for rows 1-12 and for each year 2015-2021 for columns 1-7.
data=xlsread('nutrient_data_V3.csv');
data=data(data(:,137)==0,:);records  
[sepyears_dev01percentdifference,sepyears_dev01_stats,sepyears_dev01_statsP,sepyears_dev01_meandeveloped,sepyears_dev01_meandeveloping,sepyears_dev01_meannutrientdifference,dev01_Lnutrientdeveloped,dev01_Lnutrientdeveloping,dev01_stdnutrientperdollardeveloped,dev01_stdnutrientperdollardeveloping]=my_separateyears(data,131);
[sepyears_dev02percentdifference,sepyears_dev02_stats,sepyears_dev02_statsP,sepyears_dev02_meandeveloped,sepyears_dev02_meandeveloping,sepyears_dev02_meannutrientdifference,dev02_Lnutrientdeveloped,dev02_Lnutrientdeveloping,dev02_stdnutrientperdollardeveloped,dev02_stdnutrientperdollardeveloping]=my_separateyears(data,132);
[sepyears_dev03percentdifference,sepyears_dev03_stats,sepyears_dev03_statsP,sepyears_dev03_meandeveloped,sepyears_dev03_meandeveloping,sepyears_dev03_meannutrientdifference,dev03_Lnutrientdeveloped,dev03_Lnutrientdeveloping,dev03_stdnutrientperdollardeveloped,dev03_stdnutrientperdollardeveloping]=my_separateyears(data,133);
[sepyears_dev04percentdifference,sepyears_dev04_stats,sepyears_dev04_statsP,sepyears_dev04_meandeveloped,sepyears_dev04_meandeveloping,sepyears_dev04_meannutrientdifference,dev04_Lnutrientdeveloped,dev04_Lnutrientdeveloping,dev04_stdnutrientperdollardeveloped,dev04_stdnutrientperdollardeveloping]=my_separateyears(data,134);
[sepyears_dev05percentdifference,sepyears_dev05_stats,sepyears_dev05_statsP,sepyears_dev05_meandeveloped,sepyears_dev05_meandeveloping,sepyears_dev05_meannutrientdifference,dev05_Lnutrientdeveloped,dev05_Lnutrientdeveloping,dev05_stdnutrientperdollardeveloped,dev05_stdnutrientperdollardeveloping]=my_separateyears(data,135);
[sepyears_dev06percentdifference,sepyears_dev06_stats,sepyears_dev06_statsP,sepyears_dev06_meandeveloped,sepyears_dev06_meandeveloping,sepyears_dev06_meannutrientdifference,dev06_Lnutrientdeveloped,dev06_Lnutrientdeveloping,dev06_stdnutrientperdollardeveloped,dev06_stdnutrientperdollardeveloping]=my_separateyears(data,136);
%% Mann Whitney tests all years data excluding China observations for dev01-04 for Supplemental Table 3   
%dev0#_allyears_mannwhitney row 1 is the p-values from the Mann-Whitney test in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium.
%dev0#_allyears_mannwhitney row 2 is the z-values from the Mann-Whitney test in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium.
data=xlsread('regression_01_V4_SeIRe_NaN_exChina.csv');
nutrientorder=[2 4 1 3 6 7 11 5 8 10 12 9];
for n=1:12
    dev01_allyears_mannwhitney(:,n)=my_mannwhitneyUtest(data,98,67+nutrientorder(n));
end
for n=1:12
    dev02_allyears_mannwhitney(:,n)=my_mannwhitneyUtest(data,99,67+nutrientorder(n));
end
for n=1:12
    dev03_allyears_mannwhitney(:,n)=my_mannwhitneyUtest(data,100,67+nutrientorder(n));
end
for n=1:12
    dev04_allyears_mannwhitney(:,n)=my_mannwhitneyUtest(data,101,67+nutrientorder(n));
end
%% Generate confidence intervals for untrimmed data figures for Figure 1a and Supplemental Figure 1a
%sepyears_dev01percentdifference is the percent difference (developing-developed) of nutrients per dollar in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium for rows 1-12 and for each year 2015-2021 for columns 1-7. 
%sepyears_dev01_stats is the t-values in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium for rows 1-12 and for each year 2015-2021 for columns 1-7.
%sepyears_dev01_statsP is the p-value associated with the t-test in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium for rows 1-12 and for each year 2015-2021 for columns 1-7.
%sepyears_dev01_meandeveloped is the mean nutrient per dollar for developed in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium for rows 1-12 and for each year 2015-2021 for columns 1-7.
%sepyears_dev01_meandeveloping is the mean nutrient per dollar for developing in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium for rows 1-12 and for each year 2015-2021 for columns 1-7.
%sepyears_dev01_meannutrientdifference is the difference between allyears_dev01_meandeveloping and allyears_dev01_meandeveloped in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium for rows 1-12 and for each year 2015-2021 for columns 1-7.
%dev01_Lnutrientdeveloped is the number of developed observations in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium for rows 1-12 and for each year 2015-2021 for columns 1-7.
%dev01_Lnutrientdeveloping is the number of developing observations in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium for rows 1-12 and for each year 2015-2021 for columns 1-7.
%dev01_stdnutrientperdollardeveloped is the standard deviation of developed observations in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium for rows 1-12 and for each year 2015-2021 for columns 1-7.
%dev01_stdnutrientperdollardeveloping is the standard deviation of developing observations in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium for rows 1-12 and for each year 2015-2021 for columns 1-7
data=xlsread('NEW_research_data_all.csv');
[sepyears_dev01percentdifference,sepyears_dev01_stats,sepyears_dev01_statsP,sepyears_dev01_meandeveloped,sepyears_dev01_meandeveloping,sepyears_dev01_meannutrientdifference,dev01_Lnutrientdeveloped,dev01_Lnutrientdeveloping,dev01_stdnutrientperdollardeveloped,dev01_stdnutrientperdollardeveloping]=my_separateyears(data,132);
%find confidence interval of y/x - when y and x are sample mean of two
%samples
%reference: Miller Jr, R.G., 1997. Beyond ANOVA: basics of applied statistics. CRC press.
for z=1:7 %year
    for q=1:12 %nutrient
        %a developing
        y_bar = sepyears_dev01_meandeveloping(q,z); %mean
        s_0 = dev01_stdnutrientperdollardeveloping(q,z); %std
        s_ysq = s_0^2; %var
        n = dev01_Lnutrientdeveloping(q,z); %number of observations
        %b devloped
        x_bar = sepyears_dev01_meandeveloped(q,z); %mean
        s_1 =  dev01_stdnutrientperdollardeveloped(q,z); %std
        s_xsq = s_1^2; %var
        m = dev01_Lnutrientdeveloped(q,z); %number of observations
        df = [];
        tstats = [];
        theta=0.5:0.00001:2.75;
        cntrU=0;
        cntrL=0;
        theta_Lrec=[];
        theta_Urec=[];
        for u=1:length(theta)
            %theta - values in CI
            df(u) = fix(((s_ysq/n + theta(u)^2*s_xsq/m)^2)/((1/(n-1))*((s_ysq/n)^2) + (1/(m-1))*((theta(u)^2*s_xsq/m)^2))); %the degrees of freedom
            tstats(u) = (y_bar - theta(u)*x_bar)/sqrt(s_ysq/n + theta(u)^2*s_xsq/m); %the t stats
            %compare the tstats to the t critical value - here almost all the time 1.96
            %at 95%CI - to find upper and lower bound of theta
            if tstats(u)>=1.96 & tstats(u)<=1.965
                cntrL=cntrL+1;
                theta_Lrec(cntrL) = theta(u); %lower bound of the confidence interval
            end
            if tstats(u)<= -1.96 & tstats(u)>= -1.965
                cntrU=cntrU+1;
                theta_Urec(cntrU) = theta(u); %upper bound of the confidence interval
            end
        end
        theta_L(q,z)=theta_Lrec(1);
        theta_U(q,z)=theta_Urec(1);
    end
end
%dev01PDtable was used to create tabulated_PercDiff_CI_dev01_regression_01_V4_SeIRe_NaN_V3. 
cntr=0;
for y=1:7
    cntr=cntr+3;
    dev01PDtable(:,cntr-2)=sepyears_dev01percentdifference(:,y);
    dev01PDtable(:,cntr-1)=(theta_U(:,y)-1)*100;
    dev01PDtable(:,cntr)=(theta_L(:,y)-1)*100;
end
%% Generate confidence intervals for trimmed data for Figure 1b and Supplemental Figure 1b
%sepyears_dev01percentdifference is the percent difference (developing-developed) of nutrients per dollar in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium for rows 1-12 and for each year 2015-2021 for columns 1-7. 
%sepyears_dev01_stats is the t-values in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium for rows 1-12 and for each year 2015-2021 for columns 1-7.
%sepyears_dev01_statsP is the p-value associated with the t-test in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium for rows 1-12 and for each year 2015-2021 for columns 1-7.
%sepyears_dev01_meandeveloped is the mean nutrient per dollar for developed in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium for rows 1-12 and for each year 2015-2021 for columns 1-7.
%sepyears_dev01_meandeveloping is the mean nutrient per dollar for developing in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium for rows 1-12 and for each year 2015-2021 for columns 1-7.
%sepyears_dev01_meannutrientdifference is the difference between allyears_dev01_meandeveloping and allyears_dev01_meandeveloped in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium for rows 1-12 and for each year 2015-2021 for columns 1-7.
%dev01_Lnutrientdeveloped is the number of developed observations in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium for rows 1-12 and for each year 2015-2021 for columns 1-7.
%dev01_Lnutrientdeveloping is the number of developing observations in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium for rows 1-12 and for each year 2015-2021 for columns 1-7.
%dev01_stdnutrientperdollardeveloped is the standard deviation of developed observations in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium for rows 1-12 and for each year 2015-2021 for columns 1-7.
%dev01_stdnutrientperdollardeveloping is the standard deviation of developing observations in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium for rows 1-12 and for each year 2015-2021 for columns 1-7
data=xlsread('nutrient_data_V1_trimmed.csv');
[sepyears_dev01percentdifference,sepyears_dev01_stats,sepyears_dev01_statsP,sepyears_dev01_meandeveloped,sepyears_dev01_meandeveloping,sepyears_dev01_meannutrientdifference,dev01_Lnutrientdeveloped,dev01_Lnutrientdeveloping,dev01_stdnutrientperdollardeveloped,dev01_stdnutrientperdollardeveloping]=my_separateyears(data,131);
%find confidence interval of y/x - when y and x are sample mean of two
%samples
%reference: Miller Jr, R.G., 1997. Beyond ANOVA: basics of applied statistics. CRC press.
for z=1:7 %year
    for q=1:12 %nutrient
        %a developing
        y_bar = sepyears_dev01_meandeveloping(q,z); %mean
        s_0 = dev01_stdnutrientperdollardeveloping(q,z); %std
        s_ysq = s_0^2; %var
        n = dev01_Lnutrientdeveloping(q,z); %number of observations
        %b devloped
        x_bar = sepyears_dev01_meandeveloped(q,z); %mean
        s_1 =  dev01_stdnutrientperdollardeveloped(q,z); %std
        s_xsq = s_1^2; %var
        m = dev01_Lnutrientdeveloped(q,z); %number of observations
        df = [];
        tstats = [];
        theta=0.5:0.00001:2.75;
        cntrU=0;
        cntrL=0;
        theta_Lrec=[];
        theta_Urec=[];
        for u=1:length(theta)
            %theta - values in CI
            df(u) = fix(((s_ysq/n + theta(u)^2*s_xsq/m)^2)/((1/(n-1))*((s_ysq/n)^2) + (1/(m-1))*((theta(u)^2*s_xsq/m)^2))); %the degrees of freedom
            tstats(u) = (y_bar - theta(u)*x_bar)/sqrt(s_ysq/n + theta(u)^2*s_xsq/m); %the t stats
            %compare the tstats to the t critical value - here almost all the time 1.96
            %at 95%CI - to find upper and lower bound of theta
            if tstats(u)>=1.96 & tstats(u)<=1.965
                cntrL=cntrL+1;
                theta_Lrec(cntrL) = theta(u); %lower bound of the confidence interval
            end
            if tstats(u)<=-1.96 & tstats(u)>=-1.965
                cntrU=cntrU+1;
                theta_Urec(cntrU) = theta(u); %upper bound of the confidence interval
            end
        end
        theta_L(q,z)=theta_Lrec(1);
        theta_U(q,z)=theta_Urec(1);
    end
end
%dev01PDtable was used to create tabulated_PercDiff_CI_dev01_regression_01_V5_SeIRe_NaN_Trimmed_V2. 
cntr=0;
for y=1:7
    cntr=cntr+3;
    dev01PDtable(:,cntr-2)=sepyears_dev01percentdifference(:,y);
    dev01PDtable(:,cntr-1)=(theta_U(:,y)-1)*100;
    dev01PDtable(:,cntr)=(theta_L(:,y)-1)*100;
end
%% Calcium, B12, Protien, & Fatty Acids figure for untrimmed data. Figure 1a.
data=xlsread('NEW_tabulated_percdiff_CI_dev01.xlsx');
data(1,:)=[];
data(1,:)=[];
figure()
%set(gcf, 'Position', get(0, 'Screensize'));
cntr=0;
NTRNTstr={'Protein','Calcium','Calories','Fatty Acid','Potassium','Magnesium','B12','Iron','Zinc','Iodine','Retinol','Selenium'};
vloc=[0.765 0.765 0.29 0.29]; %vertical locations on the figure for nutrient labels 
hloc=[0.135 0.57 0.135 0.57]; %horizontal locations on the figure for nutrient labels
for z=[1 2 4 7]
    cntr=cntr+1;
    subplot(2,2,cntr)
    cnter=0;
    NTRNT=0;
    for y=1:7
    cnter=cnter+3;
    scatter(y,data(z,cnter-2),8,'filled','d','MarkerEdgeColor','k','MarkerFaceColor','k');
    NTRNT(y)=data(z,cnter-2);
    hold on
    dp=data(z,cnter-2); %datapoint 
    lb=data(z,cnter-2)-data(z,cnter); %distance between datapoint and lower CI
    ub=data(z,cnter-2)-data(z,cnter-1); %distance between datapoint and upper CI
    errorbar(y,data(z,cnter-2),lb,ub,'vertical','k')
    end
    hold on
    plot(1:7,NTRNT,'k')
    ylim([-1 150])
    xlim([0 8])
    annotation('textbox',[hloc(cntr) vloc(cntr) .7 .2],'String',sprintf('%s',char(NTRNTstr(z))),'FitBoxToText','on','EdgeColor','none','FontSize',8,'Fontweight','bold');
    set(gca,'Xtick',0:8,"Xticklabels",{'','2015','2016','2017','2018','2019','2020','2021',''},'Fontsize',7)
    grid on 
    ylabel('Percent Difference','Fontsize',7)
end
print("Figure1a",'-djpeg','-r300')
%% All nutrients seperate year figure for untrimmed data. Supplemental Figure 1a.
data=xlsread('NEW_tabulated_percdiff_CI_dev01.xlsx');
data(1,:)=[];
data(1,:)=[];
figure()
set(gcf, 'Position', get(0, 'Screensize'));
NTRNTstr={'Protein','Calcium','Calories','Fatty Acid','Potassium','Magnesium','B12','Iron','Zinc','Iodine','Retinol','Selenium'};
vloc=[0.745 0.745 0.745 0.525 0.525 0.525 0.305 0.305 0.305 0.09 0.09 0.09]; %vertical locations on the figure for nutrient labels 
hloc=[0.135 0.415 0.695 0.135 0.415 0.695 0.135 0.415 0.695 0.135 0.415 0.695]; %horizontal locations on the figure for nutrient labels
for z=1:12
    spb(z)=subplot(4,3,z);
    cnter=0;
    NTRNT=0;
    for y=1:7
    cnter=cnter+3;
    scatter(y,data(z,cnter-2),8,'filled','d','MarkerEdgeColor','k','MarkerFaceColor','k');
    NTRNT(y)=data(z,cnter-2);
    hold on
    dp=data(z,cnter-2); %datapoint 
    lb=data(z,cnter-2)-data(z,cnter); %distance between datapoint and lower CI
    ub=data(z,cnter-2)-data(z,cnter-1); %distance between datapoint and upper CI
    errorbar(y,data(z,cnter-2),lb,ub,'vertical','k')
    end
    hold on
    plot(1:7,NTRNT,'k')
    ylim([-50 200])
    xlim([0 8])
    annotation('textbox',[hloc(z) vloc(z) .7 .2],'String',sprintf('%s',char(NTRNTstr(z))),'FitBoxToText','on','EdgeColor','none','FontSize',8,'Fontweight','bold');
    set(gca,'Xtick',0:8,"Xticklabels",{'','2015','2016','2017','2018','2019','2020','2021',''},'Fontsize',7)
    grid on 
    if z==1 | z==4 | z==7 | z==10 
        ylabel('Percent Difference','Fontsize',7)
    else
        set(gca, 'YTickLabel', []);
    end
    if z<10
        set(gca, 'XTickLabel', []);
    end
end

print("NEW_Supplemental_Figure_1a",'-djpeg','-r300')
%% Calcium, B12, Protien, & Fatty Acids figure for trimmed data. Figure 1b.
data=xlsread('tabulated_percdiff_CI_dev01_trimmed.xlsx');
data(1,:)=[];
data(1,:)=[];
figure()
%set(gcf, 'Position', get(0, 'Screensize'));
cntr=0;
NTRNTstr={'Protein','Calcium','Calories','Fatty Acid','Potassium','Magnesium','B12','Iron','Zinc','Iodine','Retinol','Selenium'};
vloc=[0.765 0.765 0.29 0.29]; %vertical locations on the figure for nutrient labels 
hloc=[0.135 0.57 0.135 0.57]; %horizontal locations on the figure for nutrient labels
for z=[1 2 4 7]
    cntr=cntr+1;
    subplot(2,2,cntr)
    cnter=0;
    NTRNT=0;
    for y=1:7
    cnter=cnter+3;
    scatter(y,data(z,cnter-2),8,'filled','d','MarkerEdgeColor','k','MarkerFaceColor','k');
    NTRNT(y)=data(z,cnter-2);
    hold on
    dp=data(z,cnter-2); %datapoint 
    lb=data(z,cnter-2)-data(z,cnter); %distance between datapoint and lower CI
    ub=data(z,cnter-2)-data(z,cnter-1); %distance between datapoint and upper CI
    errorbar(y,data(z,cnter-2),lb,ub,'vertical','k')
    end
    hold on
    plot(1:7,NTRNT,'k')
    ylim([0 80])
    xlim([0 8])
    annotation('textbox',[hloc(cntr) vloc(cntr) .7 .2],'String',sprintf('%s',char(NTRNTstr(z))),'FitBoxToText','on','EdgeColor','none','FontSize',8,'Fontweight','bold');
    set(gca,'Xtick',0:8,"Xticklabels",{'','2015','2016','2017','2018','2019','2020','2021',''},'Fontsize',7)
    grid on 
    ylabel('Percent Difference','Fontsize',7)
end
print("Figure1b",'-djpeg','-r300')
%% All nutrients seperate year figure for trimmed data. Supplemental Figure 1b.
data=xlsread('tabulated_percdiff_CI_dev01_trimmed.xlsx');
data(1,:)=[];
data(1,:)=[];
figure()
set(gcf, 'Position', get(0, 'Screensize'));
NTRNTstr={'Protein','Calcium','Calories','Fatty Acid','Potassium','Magnesium','B12','Iron','Zinc','Iodine','Retinol','Selenium'};
vloc=[0.745 0.745 0.745 0.525 0.525 0.525 0.305 0.305 0.305 0.09 0.09 0.09]; %vertical locations on the figure for nutrient labels 
hloc=[0.135 0.415 0.695 0.135 0.415 0.695 0.135 0.415 0.695 0.135 0.415 0.695]; %horizontal locations on the figure for nutrient labels
for z=1:12
    spb(z)=subplot(4,3,z);
    cnter=0;
    NTRNT=0;
    for y=1:7
    cnter=cnter+3;
    scatter(y,data(z,cnter-2),8,'filled','d','MarkerEdgeColor','k','MarkerFaceColor','k');
    NTRNT(y)=data(z,cnter-2);
    hold on
    dp=data(z,cnter-2); %datapoint 
    lb=data(z,cnter-2)-data(z,cnter); %distance between datapoint and lower CI
    ub=data(z,cnter-2)-data(z,cnter-1); %distance between datapoint and upper CI
    errorbar(y,data(z,cnter-2),lb,ub,'vertical','k')
    end
    hold on
    plot(1:7,NTRNT,'k')
    ylim([-50 100])
    xlim([0 8])
    annotation('textbox',[hloc(z) vloc(z) .7 .2],'String',sprintf('%s',char(NTRNTstr(z))),'FitBoxToText','on','EdgeColor','none','FontSize',8,'Fontweight','bold');
    set(gca,'Xtick',0:8,"Xticklabels",{'','2015','2016','2017','2018','2019','2020','2021',''},'Fontsize',7)
    grid on 
    if z==1 | z==4 | z==7 | z==10 
        ylabel('Percent Difference','Fontsize',7)
    else
        set(gca, 'YTickLabel', []);
    end
    if z<10
        set(gca, 'XTickLabel', []);
    end
end
print("Supplemental_Figure_1b",'-djpeg','-r300')
%% Figure for percent variance explained by determinants of fish prices. Figure 2. 
%Reference: Responses from Cecilia on August 17th, 2017 and user_1_1_1 on August 18th, 2017 for the stackoverflow.com post 'Color each section in a stacked bar plot differently'[https://stackoverflow.com/questions/45724976/color-each-section-in-a-stacked-bar-plot-differently].
ybarfull=0;
data=xlsread('partial_rsqured_compclass.xlsx');
ybarfull(1,1)=data(1,4); %income
ybarfull(2,1:9)=data(2:10,4); %nutrients
ybarfull(3,1:3)=data(11:13,4); %Preservation
ybarfull(4,1:3)=data(14:16,4); %Portion
ybarfull(5,1)=data(18,4); %Trophic Level
ybarfull(6,1:2)=data(19:20,4); %Market Class
ybarfull(7,1)=sum(data(22:27,4)); %Year fixed effects 
f=figure();
b=bar(ybarfull,'stacked','FaceColor','flat');
ylim([0 0.1])
set(gca,'xtick', 1:7, 'XTickLabel',{'Income','Nutrients','Preservation','Portion','Trophic Level','Market Class','Year Fixed Effects'},'FontSize',5);
set(get(gca, 'XAxis'), 'FontWeight', 'bold','FontSize',5);
set(gca,'YTick', [])
ax1=axes('Parent',f);
ylim([0 0.1])
Clrmat=load('ClrComp.mat'); %Load color matrix to keep the colors in the figure consistent. 
Clr=Clrmat.Clr;
for n = 1:9 
    for z=1:7
        sec=copyobj(b(n),ax1);
        D=1:7;
        D(D==z)=[];
        sec.YData(D)=0;
        sec.FaceColor=Clr(sub2ind([7,9],z,n),:);
    end
end
grid on
ylabel('% variation explained','FontSize',6)
set(get(gca, 'YAxis'), 'FontWeight', 'bold','FontSize',6);
ylim([0 0.1])
xticklabels({'','','','',''})
legend(ax1,{'','Calories','','','','','','','Protein','','','','','','','Fatty Acid','','','','','','','Calcium','','','','','','','B12','','','','','','','Iron','','','','','','','Potassium','','','','','','','Magnesium','','','','','','','Zinc'},'position',[0.79 0.735 0.05 0.05],'FontSize',3.5)
legend('boxoff')
ax2 = copyobj(ax1,gcf); %Create new axes for Preservation legend.
ylim([0 0.1])
set(ax2, 'Color', 'none', 'XTick', [], 'YTick', [],'YAxisLocation', 'right', 'Box', 'Off') 
ylabel(ax2,'')
legend(ax2,{'','','Live','','','','','','','Fresh','','','','','','','Other Preservation'},'position',[0.805 0.595 0.05 0.05],'FontSize',3.5);
legend(ax2,'boxoff')
ax3 = copyobj(ax2,gcf); %Create new axes for Portion legend.
ylim([0 0.1])
set(ax3, 'Color', 'none', 'XTick', [], 'YTick', [],'YAxisLocation', 'right', 'Box', 'Off') 
ylabel(ax3,'')
legend(ax3,{'','','','Whole','','','','','','','Fillet','','','','','','','Meat'},'position',[0.78 0.51 0.05 0.05],'FontSize',3.5);
legend(ax3,'boxoff')
ax4 = copyobj(ax3,gcf);  %Create new axes for Market Class legend.
ylim([0 0.1])
set(ax4, 'Color', 'none', 'XTick', [], 'YTick', [],'YAxisLocation', 'right', 'Box', 'Off') 
ylabel(ax4,'')
legend(ax4,{'','','','','','Combined','','','','','','','Premium'},'position',[0.7875 0.44 0.05 0.05],'FontSize',3.5);
legend(ax4,'boxoff')
annotation('textbox',[0.745 0.675 .7 .2],'String','Nutrients','FitBoxToText','on','EdgeColor','none','FontSize',5,'FontWeight','bold')
annotation('textbox',[0.745 0.48 .7 .2],'String','Preservation','FitBoxToText','on','EdgeColor','none','FontSize',5,'FontWeight','bold')
annotation('textbox',[0.745 0.395 .7 .2],'String','Portion','FitBoxToText','on','EdgeColor','none','FontSize',5,'FontWeight','bold')
annotation('textbox',[0.745 0.315 .7 .2],'String','Market Class','FitBoxToText','on','EdgeColor','none','FontSize',5,'FontWeight','bold')
h1=ax1.Children;
print("Figure2",'-djpeg','-r300')
%% All years weighted mean comparison for nutrients per dollar for untrimmed data for dev01-04 for Supplemental Table 4 
data=xlsread('regression_01_V4_SeIRe_NaN.csv');
nutrientorder=[2 4 1 3 6 7 11 5 8 10 12 9];
for n=1:12
    [dev01_allyears_tstat(n,1),dev01_allyears_developed(n,:),dev01_allyears_developing(n,:)]=my_weighted_twosample_ttest(data,98,67+nutrientorder(n),19,1);
end
for n=1:12
    [dev02_allyears_tstat(n,1),dev02_allyears_developed(n,:),dev02_allyears_developing(n,:)]=my_weighted_twosample_ttest(data,99,67+nutrientorder(n),19,1);
end
for n=1:12
    [dev03_allyears_tstat(n,1),dev03_allyears_developed(n,:),dev03_allyears_developing(n,:)]=my_weighted_twosample_ttest(data,100,67+nutrientorder(n),19,1);
end
for n=1:12
    [dev04_allyears_tstat(n,1),dev04_allyears_developed(n,:),dev04_allyears_developing(n,:)]=my_weighted_twosample_ttest(data,101,67+nutrientorder(n),19,1);
end
%% All years weighted mean comparison for nutrients per dollar for trimmed data for dev01-04 for Supplemental Table 5
data=xlsread('regression_01_V5_SeIRe_NaN_Trimmed.csv');
nutrientorder=[2 4 1 3 6 7 11 5 8 10 12 9];
for n=1:12
    [dev01_allyears_tstat(n,1),dev01_allyears_developed(n,:),dev01_allyears_developing(n,:)]=my_weighted_twosample_ttest(data,98,67+nutrientorder(n),19,1);
end
for n=1:12
    [dev02_allyears_tstat(n,1),dev02_allyears_developed(n,:),dev02_allyears_developing(n,:)]=my_weighted_twosample_ttest(data,99,67+nutrientorder(n),19,1);
end
for n=1:12
    [dev03_allyears_tstat(n,1),dev03_allyears_developed(n,:),dev03_allyears_developing(n,:)]=my_weighted_twosample_ttest(data,100,67+nutrientorder(n),19,1);
end
for n=1:12
    [dev04_allyears_tstat(n,1),dev04_allyears_developed(n,:),dev04_allyears_developing(n,:)]=my_weighted_twosample_ttest(data,101,67+nutrientorder(n),19,1);
end
%% Untrimmed unweighted covariate analysis for Table 2
data=xlsread('NEW2_research_data_ver2.csv');
live_prop_untrimmed=my_proportion(data,77,93,0,32,0);
fresh_prop_untrimmed=my_proportion(data,77,94,0,32,0);
frozen_prop_untrimmed=my_proportion(data,77,95,0,32,0);
otherpreservation_prop_untrimmed=my_proportion(data,77,96,0,32,0);
whole_prop_untrimmed=my_proportion(data,77,97,0,32,0);
fillet_prop_untrimmed=my_proportion(data,77,98,0,32,0);
meat_prop_untrimmed=my_proportion(data,77,99,0,32,0);
otherportion_prop_untrimmed=my_proportion(data,77,100,0,32,0);
trophic_prop_untrimmed=my_proportion(data,77,101,0,32,1);
%% Untrimmed weighted covariate analysis for Table 2
data=xlsread('NEW2_research_data_ver2.csv');
live_prop_untrimmed=my_proportion(data,77,93,1,32,0);
fresh_prop_untrimmed=my_proportion(data,77,94,1,32,0);
frozen_prop_untrimmed=my_proportion(data,77,95,1,32,0);
otherpreservation_prop_untrimmed=my_proportion(data,77,96,1,32,0);
whole_prop_untrimmed=my_proportion(data,77,97,1,32,0);
fillet_prop_untrimmed=my_proportion(data,77,98,1,32,0);
meat_prop_untrimmed=my_proportion(data,77,99,1,32,0);
otherportion_prop_untrimmed=my_proportion(data,77,100,1,32,0); 
trophic_prop_untrimmed=my_proportion(data,77,101,1,32,1);
