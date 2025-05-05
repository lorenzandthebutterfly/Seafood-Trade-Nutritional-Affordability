%% untrimmed
data=xlsread('NEW2_research_data_ver2.csv');
%data=data(data(:,87)==1,:); %ESM
%data=data(data(:,87)==1|data(:,88)==1,:); %ESM_EO
%% trimmed
data=xlsread('NEW2_research_data_ver2_trimmed.csv'); 
%data=data(data(:,87)==1,:); %ESM
%data=data(data(:,87)==1|data(:,88)==1,:); %ESM_EO
%% untrimmed exclude China
data=xlsread('NEW2_research_data_ver2.csv');
%data=data(data(:,87)==1,:); %ESM
%data=data(data(:,87)==1|data(:,88)==1,:); %ESM_EO
data=data(data(:,156)~=1,:);
%% trimmed exclude China
data=xlsread('NEW2_research_data_ver2_trimmed.csv');
%data=data(data(:,87)==1,:); %ESM
%data=data(data(:,87)==1|data(:,88)==1,:); %ESM_EO
data=data(data(:,156)~=1,:);
%% untrimmed exclude Re-exporter
data=xlsread('NEW2_research_data_ver2.csv');
%data=data(data(:,87)==1,:); %ESM
%data=data(data(:,87)==1|data(:,88)==1,:); %ESM_EO
data=data(data(:,157)~=1,:);
%% trimmed exclude Re-exporter
data=xlsread('NEW2_research_data_ver2_trimmed.csv');
%data=data(data(:,87)==1,:); %ESM
%data=data(data(:,87)==1|data(:,88)==1,:); %ESM_EO
data=data(data(:,157)~=1,:);
%% Seperate years untrimmed
[sepyears_dev01percentdifference,sepyears_dev01_stats,sepyears_dev01_statsP,sepyears_dev01_meandeveloped,sepyears_dev01_meandeveloping,sepyears_dev01_meannutrientdifference,dev01_Lnutrientdeveloped,dev01_Lnutrientdeveloping,dev01_stdnutrientperdollardeveloped,dev01_stdnutrientperdollardeveloping]=my_separateyears(data,77);
[sepyears_dev02percentdifference,sepyears_dev02_stats,sepyears_dev02_statsP,sepyears_dev02_meandeveloped,sepyears_dev02_meandeveloping,sepyears_dev02_meannutrientdifference,dev02_Lnutrientdeveloped,dev02_Lnutrientdeveloping,dev02_stdnutrientperdollardeveloped,dev02_stdnutrientperdollardeveloping]=my_separateyears(data,78);
[sepyears_dev03percentdifference,sepyears_dev03_stats,sepyears_dev03_statsP,sepyears_dev03_meandeveloped,sepyears_dev03_meandeveloping,sepyears_dev03_meannutrientdifference,dev03_Lnutrientdeveloped,dev03_Lnutrientdeveloping,dev03_stdnutrientperdollardeveloped,dev03_stdnutrientperdollardeveloping]=my_separateyears(data,79);
[sepyears_dev04percentdifference,sepyears_dev04_stats,sepyears_dev04_statsP,sepyears_dev04_meandeveloped,sepyears_dev04_meandeveloping,sepyears_dev04_meannutrientdifference,dev04_Lnutrientdeveloped,dev04_Lnutrientdeveloping,dev04_stdnutrientperdollardeveloped,dev04_stdnutrientperdollardeveloping]=my_separateyears(data,80);
[sepyears_dev05percentdifference,sepyears_dev05_stats,sepyears_dev05_statsP,sepyears_dev05_meandeveloped,sepyears_dev05_meandeveloping,sepyears_dev05_meannutrientdifference,dev05_Lnutrientdeveloped,dev05_Lnutrientdeveloping,dev05_stdnutrientperdollardeveloped,dev05_stdnutrientperdollardeveloping]=my_separateyears(data,81);
[sepyears_dev06percentdifference,sepyears_dev06_stats,sepyears_dev06_statsP,sepyears_dev06_meandeveloped,sepyears_dev06_meandeveloping,sepyears_dev06_meannutrientdifference,dev06_Lnutrientdeveloped,dev06_Lnutrientdeveloping,dev06_stdnutrientperdollardeveloped,dev06_stdnutrientperdollardeveloping]=my_separateyears(data,84);
%% all years untrimmed
[allyears_dev01percentdifference,allyears_dev01_stats,allyears_dev01_statsP,allyears_dev01_meandeveloped,allyears_dev01_meandeveloping,allyears_dev01_meannutrientdifference,allyears_dev01_Lnutrientdeveloped,allyears_dev01_Lnutrientdeveloping,allyears_dev01_stdnutrientperdollardeveloped,allyears_dev01_stdnutrientperdollardeveloping,dev01maxdeveloped, dev01maxdeveloping]=my_allyears(data,77);
[allyears_dev02percentdifference,allyears_dev02_stats,allyears_dev02_statsP,allyears_dev02_meandeveloped,allyears_dev02_meandeveloping,allyears_dev02_meannutrientdifference,allyears_dev02_Lnutrientdeveloped,allyears_dev02_Lnutrientdeveloping,allyears_dev02_stdnutrientperdollardeveloped,allyears_dev02_stdnutrientperdollardeveloping,dev02maxdeveloped, dev02maxdeveloping]=my_allyears(data,78);
[allyears_dev03percentdifference,allyears_dev03_stats,allyears_dev03_statsP,allyears_dev03_meandeveloped,allyears_dev03_meandeveloping,allyears_dev03_meannutrientdifference,allyears_dev03_Lnutrientdeveloped,allyears_dev03_Lnutrientdeveloping,allyears_dev03_stdnutrientperdollardeveloped,allyears_dev03_stdnutrientperdollardeveloping,dev03maxdeveloped, dev03maxdeveloping]=my_allyears(data,79);
[allyears_dev04percentdifference,allyears_dev04_stats,allyears_dev04_statsP,allyears_dev04_meandeveloped,allyears_dev04_meandeveloping,allyears_dev04_meannutrientdifference,allyears_dev04_Lnutrientdeveloped,allyears_dev04_Lnutrientdeveloping,allyears_dev04_stdnutrientperdollardeveloped,allyears_dev04_stdnutrientperdollardeveloping,dev04maxdeveloped, dev04maxdeveloping]=my_allyears(data,80);
[allyears_dev05percentdifference,allyears_dev05_stats,allyears_dev05_statsP,allyears_dev05_meandeveloped,allyears_dev05_meandeveloping,allyears_dev05_meannutrientdifference,allyears_dev05_Lnutrientdeveloped,allyears_dev05_Lnutrientdeveloping,allyears_dev05_stdnutrientperdollardeveloped,allyears_dev05_stdnutrientperdollardeveloping,dev05maxdeveloped, dev05maxdeveloping]=my_allyears(data,81);
[allyears_dev06percentdifference,allyears_dev06_stats,allyears_dev06_statsP,allyears_dev06_meandeveloped,allyears_dev06_meandeveloping,allyears_dev06_meannutrientdifference,allyears_dev06_Lnutrientdeveloped,allyears_dev06_Lnutrientdeveloping,allyears_dev06_stdnutrientperdollardeveloped,allyears_dev06_stdnutrientperdollardeveloping,dev06maxdeveloped, dev06maxdeveloping]=my_allyears(data,84);
%% Mann Whitney tests separate years untrimmed
data2015=data(data(:,8)==2015,:);
nutrientorder=[7 1 2 3 6 5 11 4 8 10 12 9];
for n=1:12
    dev01_2015_mannwhitney(:,n)=my_mannwhitneyUtest(data2015,77,131+nutrientorder(n));
end
for n=1:12
    dev02_2015_mannwhitney(:,n)=my_mannwhitneyUtest(data2015,78,131+nutrientorder(n));
end
for n=1:12
    dev03_2015_mannwhitney(:,n)=my_mannwhitneyUtest(data2015,79,131+nutrientorder(n));
end
for n=1:12
    dev04_2015_mannwhitney(:,n)=my_mannwhitneyUtest(data2015,80,131+nutrientorder(n));
end
for n=1:12
    dev05_2015_mannwhitney(:,n)=my_mannwhitneyUtest(data2015,81,131+nutrientorder(n));
end
for n=1:12
    dev06_2015_mannwhitney(:,n)=my_mannwhitneyUtest(data2015,84,131+nutrientorder(n));
end
data2016=data(data(:,8)==2016,:);
for n=1:12
    dev01_2016_mannwhitney(:,n)=my_mannwhitneyUtest(data2016,77,131+nutrientorder(n));
end
for n=1:12
    dev02_2016_mannwhitney(:,n)=my_mannwhitneyUtest(data2016,78,131+nutrientorder(n));
end
for n=1:12
    dev03_2016_mannwhitney(:,n)=my_mannwhitneyUtest(data2016,79,131+nutrientorder(n));
end
for n=1:12
    dev04_2016_mannwhitney(:,n)=my_mannwhitneyUtest(data2016,80,131+nutrientorder(n));
end
for n=1:12
    dev05_2016_mannwhitney(:,n)=my_mannwhitneyUtest(data2016,81,131+nutrientorder(n));
end
for n=1:12
    dev06_2016_mannwhitney(:,n)=my_mannwhitneyUtest(data2016,84,131+nutrientorder(n));
end
data2017=data(data(:,8)==2017,:);
for n=1:12
    dev01_2017_mannwhitney(:,n)=my_mannwhitneyUtest(data2017,77,131+nutrientorder(n));
end
for n=1:12
    dev02_2017_mannwhitney(:,n)=my_mannwhitneyUtest(data2017,78,131+nutrientorder(n));
end
for n=1:12
    dev03_2017_mannwhitney(:,n)=my_mannwhitneyUtest(data2017,79,131+nutrientorder(n));
end
for n=1:12
    dev04_2017_mannwhitney(:,n)=my_mannwhitneyUtest(data2017,80,131+nutrientorder(n));
end
for n=1:12
    dev05_2017_mannwhitney(:,n)=my_mannwhitneyUtest(data2017,81,131+nutrientorder(n));
end
for n=1:12
    dev06_2017_mannwhitney(:,n)=my_mannwhitneyUtest(data2017,84,131+nutrientorder(n));
end
data2018=data(data(:,8)==2018,:);
for n=1:12
    dev01_2018_mannwhitney(:,n)=my_mannwhitneyUtest(data2018,77,131+nutrientorder(n));
end
for n=1:12
    dev02_2018_mannwhitney(:,n)=my_mannwhitneyUtest(data2018,78,131+nutrientorder(n));
end
for n=1:12
    dev03_2018_mannwhitney(:,n)=my_mannwhitneyUtest(data2018,79,131+nutrientorder(n));
end
for n=1:12
    dev04_2018_mannwhitney(:,n)=my_mannwhitneyUtest(data2018,80,131+nutrientorder(n));
end
for n=1:12
    dev05_2018_mannwhitney(:,n)=my_mannwhitneyUtest(data2018,81,131+nutrientorder(n));
end
for n=1:12
    dev06_2018_mannwhitney(:,n)=my_mannwhitneyUtest(data2018,84,131+nutrientorder(n));
end
data2019=data(data(:,8)==2019,:);
for n=1:12
    dev01_2019_mannwhitney(:,n)=my_mannwhitneyUtest(data2019,77,131+nutrientorder(n));
end
for n=1:12
    dev02_2019_mannwhitney(:,n)=my_mannwhitneyUtest(data2019,78,131+nutrientorder(n));
end
for n=1:12
    dev03_2019_mannwhitney(:,n)=my_mannwhitneyUtest(data2019,79,131+nutrientorder(n));
end
for n=1:12
    dev04_2019_mannwhitney(:,n)=my_mannwhitneyUtest(data2019,80,131+nutrientorder(n));
end
for n=1:12
    dev05_2019_mannwhitney(:,n)=my_mannwhitneyUtest(data2019,81,131+nutrientorder(n));
end
for n=1:12
    dev06_2019_mannwhitney(:,n)=my_mannwhitneyUtest(data2019,84,131+nutrientorder(n));
end
data2020=data(data(:,8)==2020,:);
for n=1:12
    dev01_2020_mannwhitney(:,n)=my_mannwhitneyUtest(data2020,77,131+nutrientorder(n));
end
for n=1:12
    dev02_2020_mannwhitney(:,n)=my_mannwhitneyUtest(data2020,78,131+nutrientorder(n));
end
for n=1:12
    dev03_2020_mannwhitney(:,n)=my_mannwhitneyUtest(data2020,79,131+nutrientorder(n));
end
for n=1:12
    dev04_2020_mannwhitney(:,n)=my_mannwhitneyUtest(data2020,80,131+nutrientorder(n));
end
for n=1:12
    dev05_2020_mannwhitney(:,n)=my_mannwhitneyUtest(data2020,81,131+nutrientorder(n));
end
for n=1:12
    dev06_2020_mannwhitney(:,n)=my_mannwhitneyUtest(data2020,84,131+nutrientorder(n));
end
data2021=data(data(:,8)==2021,:);
for n=1:12
    dev01_2021_mannwhitney(:,n)=my_mannwhitneyUtest(data2021,77,131+nutrientorder(n));
end
for n=1:12
    dev02_2021_mannwhitney(:,n)=my_mannwhitneyUtest(data2021,78,131+nutrientorder(n));
end
for n=1:12
    dev03_2021_mannwhitney(:,n)=my_mannwhitneyUtest(data2021,79,131+nutrientorder(n));
end
for n=1:12
    dev04_2021_mannwhitney(:,n)=my_mannwhitneyUtest(data2021,80,131+nutrientorder(n));
end
for n=1:12
    dev05_2021_mannwhitney(:,n)=my_mannwhitneyUtest(data2021,81,131+nutrientorder(n));
end
for n=1:12
    dev06_2021_mannwhitney(:,n)=my_mannwhitneyUtest(data2021,84,131+nutrientorder(n));
end
%% Mann Whitney tests all years untrimmed
for n=1:12
    dev01_allyears_mannwhitney(:,n)=my_mannwhitneyUtest(data,77,131+nutrientorder(n));
end
for n=1:12
    dev02_allyears_mannwhitney(:,n)=my_mannwhitneyUtest(data,78,131+nutrientorder(n));
end
for n=1:12
    dev03_allyears_mannwhitney(:,n)=my_mannwhitneyUtest(data,79,131+nutrientorder(n));
end
for n=1:12
    dev04_allyears_mannwhitney(:,n)=my_mannwhitneyUtest(data,80,131+nutrientorder(n));
end
for n=1:12
    dev05_allyears_mannwhitney(:,n)=my_mannwhitneyUtest(data,81,131+nutrientorder(n));
end
for n=1:12
    dev06_allyears_mannwhitney(:,n)=my_mannwhitneyUtest(data,84,131+nutrientorder(n));
end
%% Seperate years weighted untrimmed 
nutrientorder=[7 1 2 3 6 5 11 4 8 10 12 9];
data2015=data(data(:,8)==2015,:);
for n=1:12
    [dev01_2015_tstat(n,1),dev01_2015_developed(n,:),dev01_2015_developing(n,:)]=my_weighted_twosample_ttest(data2015,77,131+nutrientorder(n),38,1);
end
for n=1:12
    [dev02_2015_tstat(n,1),dev02_2015_developed(n,:),dev02_2015_developing(n,:)]=my_weighted_twosample_ttest(data2015,78,131+nutrientorder(n),38,1);
end
for n=1:12
    [dev03_2015_tstat(n,1),dev03_2015_developed(n,:),dev03_2015_developing(n,:)]=my_weighted_twosample_ttest(data2015,79,131+nutrientorder(n),38,1);
end
for n=1:12
    [dev04_2015_tstat(n,1),dev04_2015_developed(n,:),dev04_2015_developing(n,:)]=my_weighted_twosample_ttest(data2015,80,131+nutrientorder(n),38,1);
end
for n=1:12
    [dev05_2015_tstat(n,1),dev05_2015_developed(n,:),dev05_2015_developing(n,:)]=my_weighted_twosample_ttest(data2015,81,131+nutrientorder(n),38,1);
end
for n=1:12
    [dev06_2015_tstat(n,1),dev06_2015_developed(n,:),dev06_2015_developing(n,:)]=my_weighted_twosample_ttest(data2015,84,131+nutrientorder(n),38,1);
end
data2016=data(data(:,8)==2016,:);
for n=1:12
    [dev01_2016_tstat(n,1),dev01_2016_developed(n,:),dev01_2016_developing(n,:)]=my_weighted_twosample_ttest(data2016,77,131+nutrientorder(n),38,1);
end
for n=1:12
    [dev02_2016_tstat(n,1),dev02_2016_developed(n,:),dev02_2016_developing(n,:)]=my_weighted_twosample_ttest(data2016,78,131+nutrientorder(n),38,1);
end
for n=1:12
    [dev03_2016_tstat(n,1),dev03_2016_developed(n,:),dev03_2016_developing(n,:)]=my_weighted_twosample_ttest(data2016,79,131+nutrientorder(n),38,1);
end
for n=1:12
    [dev04_2016_tstat(n,1),dev04_2016_developed(n,:),dev04_2016_developing(n,:)]=my_weighted_twosample_ttest(data2016,80,131+nutrientorder(n),38,1);
end
for n=1:12
    [dev05_2016_tstat(n,1),dev05_2016_developed(n,:),dev05_2016_developing(n,:)]=my_weighted_twosample_ttest(data2016,81,131+nutrientorder(n),38,1);
end
for n=1:12
    [dev06_2016_tstat(n,1),dev06_2016_developed(n,:),dev06_2016_developing(n,:)]=my_weighted_twosample_ttest(data2016,84,131+nutrientorder(n),38,1);
end
data2017=data(data(:,8)==2017,:);
for n=1:12
    [dev01_2017_tstat(n,1),dev01_2017_developed(n,:),dev01_2017_developing(n,:)]=my_weighted_twosample_ttest(data2017,77,131+nutrientorder(n),38,1);
end
for n=1:12
    [dev02_2017_tstat(n,1),dev02_2017_developed(n,:),dev02_2017_developing(n,:)]=my_weighted_twosample_ttest(data2017,78,131+nutrientorder(n),38,1);
end
for n=1:12
    [dev03_2017_tstat(n,1),dev03_2017_developed(n,:),dev03_2017_developing(n,:)]=my_weighted_twosample_ttest(data2017,79,131+nutrientorder(n),38,1);
end
for n=1:12
    [dev04_2017_tstat(n,1),dev04_2017_developed(n,:),dev04_2017_developing(n,:)]=my_weighted_twosample_ttest(data2017,80,131+nutrientorder(n),38,1);
end
for n=1:12
    [dev05_2017_tstat(n,1),dev05_2017_developed(n,:),dev05_2017_developing(n,:)]=my_weighted_twosample_ttest(data2017,81,131+nutrientorder(n),38,1);
end
for n=1:12
    [dev06_2017_tstat(n,1),dev06_2017_developed(n,:),dev06_2017_developing(n,:)]=my_weighted_twosample_ttest(data2017,84,131+nutrientorder(n),38,1);
end
data2018=data(data(:,8)==2018,:);
for n=1:12
    [dev01_2018_tstat(n,1),dev01_2018_developed(n,:),dev01_2018_developing(n,:)]=my_weighted_twosample_ttest(data2018,77,131+nutrientorder(n),38,1);
end
for n=1:12
    [dev02_2018_tstat(n,1),dev02_2018_developed(n,:),dev02_2018_developing(n,:)]=my_weighted_twosample_ttest(data2018,78,131+nutrientorder(n),38,1);
end
for n=1:12
    [dev03_2018_tstat(n,1),dev03_2018_developed(n,:),dev03_2018_developing(n,:)]=my_weighted_twosample_ttest(data2018,79,131+nutrientorder(n),38,1);
end
for n=1:12
    [dev04_2018_tstat(n,1),dev04_2018_developed(n,:),dev04_2018_developing(n,:)]=my_weighted_twosample_ttest(data2018,80,131+nutrientorder(n),38,1);
end
for n=1:12
    [dev05_2018_tstat(n,1),dev05_2018_developed(n,:),dev05_2018_developing(n,:)]=my_weighted_twosample_ttest(data2018,81,131+nutrientorder(n),38,1);
end
for n=1:12
    [dev06_2018_tstat(n,1),dev06_2018_developed(n,:),dev06_2018_developing(n,:)]=my_weighted_twosample_ttest(data2018,84,131+nutrientorder(n),38,1);
end
data2019=data(data(:,8)==2019,:);
for n=1:12
    [dev01_2019_tstat(n,1),dev01_2019_developed(n,:),dev01_2019_developing(n,:)]=my_weighted_twosample_ttest(data2019,77,131+nutrientorder(n),38,1);
end
for n=1:12
    [dev02_2019_tstat(n,1),dev02_2019_developed(n,:),dev02_2019_developing(n,:)]=my_weighted_twosample_ttest(data2019,78,131+nutrientorder(n),38,1);
end
for n=1:12
    [dev03_2019_tstat(n,1),dev03_2019_developed(n,:),dev03_2019_developing(n,:)]=my_weighted_twosample_ttest(data2019,79,131+nutrientorder(n),38,1);
end
for n=1:12
    [dev04_2019_tstat(n,1),dev04_2019_developed(n,:),dev04_2019_developing(n,:)]=my_weighted_twosample_ttest(data2019,80,131+nutrientorder(n),38,1);
end
for n=1:12
    [dev05_2019_tstat(n,1),dev05_2019_developed(n,:),dev05_2019_developing(n,:)]=my_weighted_twosample_ttest(data2019,81,131+nutrientorder(n),38,1);
end
for n=1:12
    [dev06_2019_tstat(n,1),dev06_2019_developed(n,:),dev06_2019_developing(n,:)]=my_weighted_twosample_ttest(data2019,84,131+nutrientorder(n),38,1);
end
data2020=data(data(:,8)==2020,:);
for n=1:12
    [dev01_2020_tstat(n,1),dev01_2020_developed(n,:),dev01_a2020_developing(n,:)]=my_weighted_twosample_ttest(data2020,77,131+nutrientorder(n),38,1);
end
for n=1:12
    [dev02_2020_tstat(n,1),dev02_2020_developed(n,:),dev02_2020_developing(n,:)]=my_weighted_twosample_ttest(data2020,78,131+nutrientorder(n),38,1);
end
for n=1:12
    [dev03_2020_tstat(n,1),dev03_2020_developed(n,:),dev03_2020_developing(n,:)]=my_weighted_twosample_ttest(data2020,79,131+nutrientorder(n),38,1);
end
for n=1:12
    [dev04_2020_tstat(n,1),dev04_2020_developed(n,:),dev04_2020_developing(n,:)]=my_weighted_twosample_ttest(data2020,80,131+nutrientorder(n),38,1);
end
for n=1:12
    [dev05_2020_tstat(n,1),dev05_2020_developed(n,:),dev05_2020_developing(n,:)]=my_weighted_twosample_ttest(data2020,81,131+nutrientorder(n),38,1);
end
for n=1:12
    [dev06_2020_tstat(n,1),dev06_2020_developed(n,:),dev06_2020_developing(n,:)]=my_weighted_twosample_ttest(data2020,84,131+nutrientorder(n),38,1);
end
data2021=data(data(:,8)==2021,:);
for n=1:12
    [dev01_2021_tstat(n,1),dev01_2021_developed(n,:),dev01_2021_developing(n,:)]=my_weighted_twosample_ttest(data2021,77,131+nutrientorder(n),38,1);
end
for n=1:12
    [dev02_2021_tstat(n,1),dev02_2021_developed(n,:),dev02_2021_developing(n,:)]=my_weighted_twosample_ttest(data2021,78,131+nutrientorder(n),38,1);
end
for n=1:12
    [dev03_2021_tstat(n,1),dev03_2021_developed(n,:),dev03_2021_developing(n,:)]=my_weighted_twosample_ttest(data2021,79,131+nutrientorder(n),38,1);
end
for n=1:12
    [dev04_2021_tstat(n,1),dev04_2021_developed(n,:),dev04_2021_developing(n,:)]=my_weighted_twosample_ttest(data2021,80,131+nutrientorder(n),38,1);
end
for n=1:12
    [dev05_2021_tstat(n,1),dev05_2021_developed(n,:),dev05_2021_developing(n,:)]=my_weighted_twosample_ttest(data2021,81,131+nutrientorder(n),38,1);
end
for n=1:12
    [dev06_2021_tstat(n,1),dev06_2021_developed(n,:),dev06_2021_developing(n,:)]=my_weighted_twosample_ttest(data2021,84,131+nutrientorder(n),38,1);
end
%% all years untrimmed
nutrientorder=[7 1 2 3 6 5 11 4 8 10 12 9];
for n=1:12
    [dev01_allyears_tstat(n,1),dev01_allyears_developed(n,:),dev01_allyears_developing(n,:)]=my_weighted_twosample_ttest(data,77,131+nutrientorder(n),38,1);
end
for n=1:12
    [dev02_allyears_tstat(n,1),dev02_allyears_developed(n,:),dev02_allyears_developing(n,:)]=my_weighted_twosample_ttest(data,78,131+nutrientorder(n),38,1);
end
for n=1:12
    [dev03_allyears_tstat(n,1),dev03_allyears_developed(n,:),dev03_allyears_developing(n,:)]=my_weighted_twosample_ttest(data,79,131+nutrientorder(n),38,1);
end
for n=1:12
    [dev04_allyears_tstat(n,1),dev04_allyears_developed(n,:),dev04_allyears_developing(n,:)]=my_weighted_twosample_ttest(data,80,131+nutrientorder(n),38,1);
end
for n=1:12
    [dev05_allyears_tstat(n,1),dev05_allyears_developed(n,:),dev05_allyears_developing(n,:)]=my_weighted_twosample_ttest(data,81,131+nutrientorder(n),38,1);
end
for n=1:12
    [dev06_allyears_tstat(n,1),dev06_allyears_developed(n,:),dev06_allyears_developing(n,:)]=my_weighted_twosample_ttest(data,84,131+nutrientorder(n),38,1);
end
%% Generate confidence intervals seperate years 
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
[sepyears_dev01percentdifference,sepyears_dev01_stats,sepyears_dev01_statsP,sepyears_dev01_meandeveloped,sepyears_dev01_meandeveloping,sepyears_dev01_meannutrientdifference,dev01_Lnutrientdeveloped,dev01_Lnutrientdeveloping,dev01_stdnutrientperdollardeveloped,dev01_stdnutrientperdollardeveloping]=my_separateyears(data,77);
[sepyears_dev02percentdifference,sepyears_dev02_stats,sepyears_dev02_statsP,sepyears_dev02_meandeveloped,sepyears_dev02_meandeveloping,sepyears_dev02_meannutrientdifference,dev02_Lnutrientdeveloped,dev02_Lnutrientdeveloping,dev02_stdnutrientperdollardeveloped,dev02_stdnutrientperdollardeveloping]=my_separateyears(data,78);
[sepyears_dev03percentdifference,sepyears_dev03_stats,sepyears_dev03_statsP,sepyears_dev03_meandeveloped,sepyears_dev03_meandeveloping,sepyears_dev03_meannutrientdifference,dev03_Lnutrientdeveloped,dev03_Lnutrientdeveloping,dev03_stdnutrientperdollardeveloped,dev03_stdnutrientperdollardeveloping]=my_separateyears(data,79);
[sepyears_dev04percentdifference,sepyears_dev04_stats,sepyears_dev04_statsP,sepyears_dev04_meandeveloped,sepyears_dev04_meandeveloping,sepyears_dev04_meannutrientdifference,dev04_Lnutrientdeveloped,dev04_Lnutrientdeveloping,dev04_stdnutrientperdollardeveloped,dev04_stdnutrientperdollardeveloping]=my_separateyears(data,80);
[sepyears_dev05percentdifference,sepyears_dev05_stats,sepyears_dev05_statsP,sepyears_dev05_meandeveloped,sepyears_dev05_meandeveloping,sepyears_dev05_meannutrientdifference,dev05_Lnutrientdeveloped,dev05_Lnutrientdeveloping,dev05_stdnutrientperdollardeveloped,dev05_stdnutrientperdollardeveloping]=my_separateyears(data,81);
[sepyears_dev06percentdifference,sepyears_dev06_stats,sepyears_dev06_statsP,sepyears_dev06_meandeveloped,sepyears_dev06_meandeveloping,sepyears_dev06_meannutrientdifference,dev06_Lnutrientdeveloped,dev06_Lnutrientdeveloping,dev06_stdnutrientperdollardeveloped,dev06_stdnutrientperdollardeveloping]=my_separateyears(data,84);
%find confidence interval of y/x - when y and x are sample mean of two
%samples
%reference: Miller Jr, R.G., 1997. Beyond ANOVA: basics of applied statistics. CRC press.
cntr=0;
for z=1:7 %year
    for q=1:12 %nutrient
        cntr=cntr+1;
        %a developing
        y_bar_01 = sepyears_dev01_meandeveloping(q,z); %mean
        y_bar_02 = sepyears_dev02_meandeveloping(q,z); %mean
        y_bar_03 = sepyears_dev03_meandeveloping(q,z); %mean
        y_bar_04 = sepyears_dev04_meandeveloping(q,z); %mean
        y_bar_05 = sepyears_dev05_meandeveloping(q,z); %mean
        y_bar_06 = sepyears_dev06_meandeveloping(q,z); %mean
        s_01 = dev01_stdnutrientperdollardeveloping(q,z); %std
        s_02 = dev02_stdnutrientperdollardeveloping(q,z); %std
        s_03 = dev03_stdnutrientperdollardeveloping(q,z); %std
        s_04 = dev04_stdnutrientperdollardeveloping(q,z); %std
        s_05 = dev05_stdnutrientperdollardeveloping(q,z); %std
        s_06 = dev06_stdnutrientperdollardeveloping(q,z); %std
        s_ysq_01 = s_01^2; %var
        s_ysq_02 = s_02^2; %var
        s_ysq_03 = s_03^2; %var
        s_ysq_04 = s_04^2; %var
        s_ysq_05 = s_05^2; %var
        s_ysq_06 = s_06^2; %var
        n1 = dev01_Lnutrientdeveloping(q,z); %number of observations
        n2 = dev02_Lnutrientdeveloping(q,z); %number of observations
        n3 = dev03_Lnutrientdeveloping(q,z); %number of observations
        n4 = dev04_Lnutrientdeveloping(q,z); %number of observations
        n5 = dev05_Lnutrientdeveloping(q,z); %number of observations
        n6 = dev06_Lnutrientdeveloping(q,z); %number of observations
        %b devloped
        x_bar_01 = sepyears_dev01_meandeveloped(q,z); %mean
        x_bar_02 = sepyears_dev02_meandeveloped(q,z); %mean
        x_bar_03 = sepyears_dev03_meandeveloped(q,z); %mean
        x_bar_04 = sepyears_dev04_meandeveloped(q,z); %mean
        x_bar_05 = sepyears_dev05_meandeveloped(q,z); %mean
        x_bar_06 = sepyears_dev06_meandeveloped(q,z); %mean
        s_1 =  dev01_stdnutrientperdollardeveloped(q,z); %std
        s_2 =  dev02_stdnutrientperdollardeveloped(q,z); %std
        s_3 =  dev03_stdnutrientperdollardeveloped(q,z); %std
        s_4 =  dev04_stdnutrientperdollardeveloped(q,z); %std
        s_5 =  dev05_stdnutrientperdollardeveloped(q,z); %std
        s_6 =  dev06_stdnutrientperdollardeveloped(q,z); %std
        s_xsq_01 = s_1^2; %var
        s_xsq_02 = s_2^2; %var
        s_xsq_03 = s_3^2; %var
        s_xsq_04 = s_4^2; %var
        s_xsq_05 = s_5^2; %var
        s_xsq_06 = s_6^2; %var
        m1 = dev01_Lnutrientdeveloped(q,z); %number of observations
        m2 = dev02_Lnutrientdeveloped(q,z); %number of observations
        m3 = dev03_Lnutrientdeveloped(q,z); %number of observations
        m4 = dev04_Lnutrientdeveloped(q,z); %number of observations
        m5 = dev05_Lnutrientdeveloped(q,z); %number of observations
        m6 = dev06_Lnutrientdeveloped(q,z); %number of observations
        df1 = [];
        tstats1 = [];
        df2 = [];
        tstats2 = [];
        df3 = [];
        tstats3 = [];
        df4 = [];
        tstats4 = [];
        df5 = [];
        tstats5 = [];
        df6 = [];
        tstats6 = [];
        %theta=0.25:0.00001:10; 
        theta=-25:0.00001:25;
        cntrU1=0;
        cntrL1=0;
        cntrU2=0;
        cntrL2=0;
        cntrU3=0;
        cntrL3=0;
        cntrU4=0;
        cntrL4=0;
        cntrU5=0;
        cntrL5=0;
        cntrU6=0;
        cntrL6=0;
        theta_Lrec1=[];
        theta_Urec1=[];
        theta_Lrec2=[];
        theta_Urec2=[];
        theta_Lrec3=[];
        theta_Urec3=[];
        theta_Lrec4=[];
        theta_Urec4=[];
        theta_Lrec5=[];
        theta_Urec5=[];
        theta_Lrec6=[];
        theta_Urec6=[];
        for u=1:length(theta)
            %theta - values in CI
            df1(u) = fix(((s_ysq_01/n1 + theta(u)^2*s_xsq_01/m1)^2)/((1/(n1-1))*((s_ysq_01/n1)^2) + (1/(m1-1))*((theta(u)^2*s_xsq_01/m1)^2))); %the degrees of freedom
            tstats1(u) = (y_bar_01 - theta(u)*x_bar_01)/sqrt(s_ysq_01/n1 + theta(u)^2*s_xsq_01/m1); %the t stats
            df2(u) = fix(((s_ysq_02/n2 + theta(u)^2*s_xsq_02/m2)^2)/((1/(n2-1))*((s_ysq_02/n2)^2) + (1/(m2-1))*((theta(u)^2*s_xsq_02/m2)^2))); %the degrees of freedom
            tstats2(u) = (y_bar_02 - theta(u)*x_bar_02)/sqrt(s_ysq_02/n2 + theta(u)^2*s_xsq_02/m2); %the t stats
            df3(u) = fix(((s_ysq_03/n3 + theta(u)^2*s_xsq_03/m3)^2)/((1/(n3-1))*((s_ysq_03/n3)^2) + (1/(m3-1))*((theta(u)^2*s_xsq_03/m3)^2))); %the degrees of freedom
            tstats3(u) = (y_bar_03 - theta(u)*x_bar_03)/sqrt(s_ysq_03/n3 + theta(u)^2*s_xsq_03/m3); %the t stats
            df4(u) = fix(((s_ysq_04/n4 + theta(u)^2*s_xsq_04/m4)^2)/((1/(n4-1))*((s_ysq_04/n4)^2) + (1/(m4-1))*((theta(u)^2*s_xsq_04/m4)^2))); %the degrees of freedom
            tstats4(u) = (y_bar_04 - theta(u)*x_bar_04)/sqrt(s_ysq_04/n4 + theta(u)^2*s_xsq_04/m4); %the t stats
            df5(u) = fix(((s_ysq_05/n5 + theta(u)^2*s_xsq_05/m5)^2)/((1/(n5-1))*((s_ysq_05/n5)^2) + (1/(m5-1))*((theta(u)^2*s_xsq_05/m5)^2))); %the degrees of freedom
            tstats5(u) = (y_bar_05 - theta(u)*x_bar_05)/sqrt(s_ysq_05/n5 + theta(u)^2*s_xsq_05/m5); %the t stats
            df6(u) = fix(((s_ysq_06/n6 + theta(u)^2*s_xsq_06/m6)^2)/((1/(n6-1))*((s_ysq_06/n6)^2) + (1/(m6-1))*((theta(u)^2*s_xsq_06/m6)^2))); %the degrees of freedom
            tstats6(u) = (y_bar_06 - theta(u)*x_bar_06)/sqrt(s_ysq_06/n6 + theta(u)^2*s_xsq_06/m6); %the t stats
            %compare the tstats to the t critical value - here almost all the time 1.96
            %at 95%CI - to find upper and lower bound of theta
            if tstats1(u)>=1.96 && tstats1(u)<=1.965
                cntrL1=cntrL1+1;
                theta_Lrec1(cntrL1) = theta(u); %lower bound of the confidence interval
            end
            if tstats1(u)<=-1.96 && tstats1(u)>=-1.965
                cntrU1=cntrU1+1;
                theta_Urec1(cntrU1) = theta(u); %upper bound of the confidence interval
            end
            if tstats2(u)>=1.96 && tstats2(u)<=1.965
                cntrL2=cntrL2+1;
                theta_Lrec2(cntrL2) = theta(u); %lower bound of the confidence interval
            end
            if tstats2(u)<=-1.96 && tstats2(u)>=-1.965
                cntrU2=cntrU2+1;
                theta_Urec2(cntrU2) = theta(u); %upper bound of the confidence interval
            end
            if tstats3(u)>=1.96 && tstats3(u)<=1.965
                cntrL3=cntrL3+1;
                theta_Lrec3(cntrL3) = theta(u); %lower bound of the confidence interval
            end
            if tstats3(u)<=-1.96 && tstats3(u)>=-1.965
                cntrU3=cntrU3+1;
                theta_Urec3(cntrU3) = theta(u); %upper bound of the confidence interval
            end
            if tstats4(u)>=1.96 && tstats4(u)<=1.965
                cntrL4=cntrL4+1;
                theta_Lrec4(cntrL4) = theta(u); %lower bound of the confidence interval
            end
            if tstats4(u)<=-1.96 && tstats4(u)>=-1.965
                cntrU4=cntrU4+1;
                theta_Urec4(cntrU4) = theta(u); %upper bound of the confidence interval
            end
            if tstats5(u)>=1.96 && tstats5(u)<=1.965
                cntrL5=cntrL5+1;
                theta_Lrec5(cntrL5) = theta(u); %lower bound of the confidence interval
            end
            if tstats5(u)<=-1.96 && tstats5(u)>=-1.965
                cntrU5=cntrU5+1;
                theta_Urec5(cntrU5) = theta(u); %upper bound of the confidence interval
            end
            if tstats6(u)>=1.96 && tstats6(u)<=1.965
                cntrL6=cntrL6+1;
                theta_Lrec6(cntrL6) = theta(u); %lower bound of the confidence interval
            end
            if tstats6(u)<=-1.96 && tstats6(u)>=-1.965
                cntrU6=cntrU6+1;
                theta_Urec6(cntrU6) = theta(u); %upper bound of the confidence interval
            end
        end
        ULresult_01(cntr,1)=(theta_Urec1(1)-1)*100;
        LLresult_01(cntr,1)=(theta_Lrec1(1)-1)*100;
        ULresult_02(cntr,1)=(theta_Urec2(1)-1)*100;
        LLresult_02(cntr,1)=(theta_Lrec2(1)-1)*100;
        ULresult_03(cntr,1)=(theta_Urec3(1)-1)*100;
        LLresult_03(cntr,1)=(theta_Lrec3(1)-1)*100;
        ULresult_04(cntr,1)=(theta_Urec4(1)-1)*100;
        LLresult_04(cntr,1)=(theta_Lrec4(1)-1)*100;
        ULresult_05(cntr,1)=(theta_Urec5(1)-1)*100;
        LLresult_05(cntr,1)=(theta_Lrec5(1)-1)*100;
        ULresult_06(cntr,1)=(theta_Urec6(1)-1)*100;
        LLresult_06(cntr,1)=(theta_Lrec6(1)-1)*100;
    end
end
%%
clearvars -except data ULresult_01 ULresult_02 ULresult_03 ULresult_04 ULresult_05 ULresult_06 LLresult_01 LLresult_02 LLresult_03 LLresult_04 LLresult_05 LLresult_06
%% Generate confidence intervals all years
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
[allyears_dev01percentdifference,allyears_dev01_stats,allyears_dev01_statsP,allyears_dev01_meandeveloped,allyears_dev01_meandeveloping,allyears_dev01_meannutrientdifference,dev01_Lnutrientdeveloped,dev01_Lnutrientdeveloping,dev01_stdnutrientperdollardeveloped,dev01_stdnutrientperdollardeveloping]=my_allyears(data,77);
[allyears_dev02percentdifference,allyears_dev02_stats,allyears_dev02_statsP,allyears_dev02_meandeveloped,allyears_dev02_meandeveloping,allyears_dev02_meannutrientdifference,dev02_Lnutrientdeveloped,dev02_Lnutrientdeveloping,dev02_stdnutrientperdollardeveloped,dev02_stdnutrientperdollardeveloping]=my_allyears(data,78);
[allyears_dev03percentdifference,allyears_dev03_stats,allyears_dev03_statsP,allyears_dev03_meandeveloped,allyears_dev03_meandeveloping,allyears_dev03_meannutrientdifference,dev03_Lnutrientdeveloped,dev03_Lnutrientdeveloping,dev03_stdnutrientperdollardeveloped,dev03_stdnutrientperdollardeveloping]=my_allyears(data,79);
[allyears_dev04percentdifference,allyears_dev04_stats,allyears_dev04_statsP,allyears_dev04_meandeveloped,allyears_dev04_meandeveloping,allyears_dev04_meannutrientdifference,dev04_Lnutrientdeveloped,dev04_Lnutrientdeveloping,dev04_stdnutrientperdollardeveloped,dev04_stdnutrientperdollardeveloping]=my_allyears(data,80);
[allyears_dev05percentdifference,allyears_dev05_stats,allyears_dev05_statsP,allyears_dev05_meandeveloped,allyears_dev05_meandeveloping,allyears_dev05_meannutrientdifference,dev05_Lnutrientdeveloped,dev05_Lnutrientdeveloping,dev05_stdnutrientperdollardeveloped,dev05_stdnutrientperdollardeveloping]=my_allyears(data,81);
[allyears_dev06percentdifference,allyears_dev06_stats,allyears_dev06_statsP,allyears_dev06_meandeveloped,allyears_dev06_meandeveloping,allyears_dev06_meannutrientdifference,dev06_Lnutrientdeveloped,dev06_Lnutrientdeveloping,dev06_stdnutrientperdollardeveloped,dev06_stdnutrientperdollardeveloping]=my_allyears(data,84);
%find confidence interval of y/x - when y and x are sample mean of two
%samples
%reference: Miller Jr, R.G., 1997. Beyond ANOVA: basics of applied statistics. CRC press.
cntr=0;
    for q=1:12 %nutrient
        cntr=cntr+1;
        %a developing
        y_bar_01 = allyears_dev01_meandeveloping(q,1); %mean
        y_bar_02 = allyears_dev02_meandeveloping(q,1); %mean
        y_bar_03 = allyears_dev03_meandeveloping(q,1); %mean
        y_bar_04 = allyears_dev04_meandeveloping(q,1); %mean
        y_bar_05 = allyears_dev05_meandeveloping(q,1); %mean
        y_bar_06 = allyears_dev06_meandeveloping(q,1); %mean
        s_01 = dev01_stdnutrientperdollardeveloping(q,1); %std
        s_02 = dev02_stdnutrientperdollardeveloping(q,1); %std
        s_03 = dev03_stdnutrientperdollardeveloping(q,1); %std
        s_04 = dev04_stdnutrientperdollardeveloping(q,1); %std
        s_05 = dev05_stdnutrientperdollardeveloping(q,1); %std
        s_06 = dev06_stdnutrientperdollardeveloping(q,1); %std
        s_ysq_01 = s_01^2; %var
        s_ysq_02 = s_02^2; %var
        s_ysq_03 = s_03^2; %var
        s_ysq_04 = s_04^2; %var
        s_ysq_05 = s_05^2; %var
        s_ysq_06 = s_06^2; %var
        n1 = dev01_Lnutrientdeveloping(q,1); %number of observations
        n2 = dev02_Lnutrientdeveloping(q,1); %number of observations
        n3 = dev03_Lnutrientdeveloping(q,1); %number of observations
        n4 = dev04_Lnutrientdeveloping(q,1); %number of observations
        n5 = dev05_Lnutrientdeveloping(q,1); %number of observations
        n6 = dev06_Lnutrientdeveloping(q,1); %number of observations
        %b devloped
        x_bar_01 = allyears_dev01_meandeveloped(q,1); %mean
        x_bar_02 = allyears_dev02_meandeveloped(q,1); %mean
        x_bar_03 = allyears_dev03_meandeveloped(q,1); %mean
        x_bar_04 = allyears_dev04_meandeveloped(q,1); %mean
        x_bar_05 = allyears_dev05_meandeveloped(q,1); %mean
        x_bar_06 = allyears_dev06_meandeveloped(q,1); %mean
        s_1 =  dev01_stdnutrientperdollardeveloped(q,1); %std
        s_2 =  dev02_stdnutrientperdollardeveloped(q,1); %std
        s_3 =  dev03_stdnutrientperdollardeveloped(q,1); %std
        s_4 =  dev04_stdnutrientperdollardeveloped(q,1); %std
        s_5 =  dev05_stdnutrientperdollardeveloped(q,1); %std
        s_6 =  dev06_stdnutrientperdollardeveloped(q,1); %std
        s_xsq_01 = s_1^2; %var
        s_xsq_02 = s_2^2; %var
        s_xsq_03 = s_3^2; %var
        s_xsq_04 = s_4^2; %var
        s_xsq_05 = s_5^2; %var
        s_xsq_06 = s_6^2; %var
        m1 = dev01_Lnutrientdeveloped(q,1); %number of observations
        m2 = dev02_Lnutrientdeveloped(q,1); %number of observations
        m3 = dev03_Lnutrientdeveloped(q,1); %number of observations
        m4 = dev04_Lnutrientdeveloped(q,1); %number of observations
        m5 = dev05_Lnutrientdeveloped(q,1); %number of observations
        m6 = dev06_Lnutrientdeveloped(q,1); %number of observations
        df1 = [];
        tstats1 = [];
        df2 = [];
        tstats2 = [];
        df3 = [];
        tstats3 = [];
        df4 = [];
        tstats4 = [];
        df5 = [];
        tstats5 = [];
        df6 = [];
        tstats6 = [];
        %theta=0.25:0.00001:10;
        theta=-25:0.00001:25;
        cntrU1=0;
        cntrL1=0;
        cntrU2=0;
        cntrL2=0;
        cntrU3=0;
        cntrL3=0;
        cntrU4=0;
        cntrL4=0;
        cntrU5=0;
        cntrL5=0;
        cntrU6=0;
        cntrL6=0;
        theta_Lrec1=[];
        theta_Urec1=[];
        theta_Lrec2=[];
        theta_Urec2=[];
        theta_Lrec3=[];
        theta_Urec3=[];
        theta_Lrec4=[];
        theta_Urec4=[];
        theta_Lrec5=[];
        theta_Urec5=[];
        theta_Lrec6=[];
        theta_Urec6=[];
        for u=1:length(theta)
            %theta - values in CI
            df1(u) = fix(((s_ysq_01/n1 + theta(u)^2*s_xsq_01/m1)^2)/((1/(n1-1))*((s_ysq_01/n1)^2) + (1/(m1-1))*((theta(u)^2*s_xsq_01/m1)^2))); %the degrees of freedom
            tstats1(u) = (y_bar_01 - theta(u)*x_bar_01)/sqrt(s_ysq_01/n1 + theta(u)^2*s_xsq_01/m1); %the t stats
            df2(u) = fix(((s_ysq_02/n2 + theta(u)^2*s_xsq_02/m2)^2)/((1/(n2-1))*((s_ysq_02/n2)^2) + (1/(m2-1))*((theta(u)^2*s_xsq_02/m2)^2))); %the degrees of freedom
            tstats2(u) = (y_bar_02 - theta(u)*x_bar_02)/sqrt(s_ysq_02/n2 + theta(u)^2*s_xsq_02/m2); %the t stats
            df3(u) = fix(((s_ysq_03/n3 + theta(u)^2*s_xsq_03/m3)^2)/((1/(n3-1))*((s_ysq_03/n3)^2) + (1/(m3-1))*((theta(u)^2*s_xsq_03/m3)^2))); %the degrees of freedom
            tstats3(u) = (y_bar_03 - theta(u)*x_bar_03)/sqrt(s_ysq_03/n3 + theta(u)^2*s_xsq_03/m3); %the t stats
            df4(u) = fix(((s_ysq_04/n4 + theta(u)^2*s_xsq_04/m4)^2)/((1/(n4-1))*((s_ysq_04/n4)^2) + (1/(m4-1))*((theta(u)^2*s_xsq_04/m4)^2))); %the degrees of freedom
            tstats4(u) = (y_bar_04 - theta(u)*x_bar_04)/sqrt(s_ysq_04/n4 + theta(u)^2*s_xsq_04/m4); %the t stats
            df5(u) = fix(((s_ysq_05/n5 + theta(u)^2*s_xsq_05/m5)^2)/((1/(n5-1))*((s_ysq_05/n5)^2) + (1/(m5-1))*((theta(u)^2*s_xsq_05/m5)^2))); %the degrees of freedom
            tstats5(u) = (y_bar_05 - theta(u)*x_bar_05)/sqrt(s_ysq_05/n5 + theta(u)^2*s_xsq_05/m5); %the t stats
            df6(u) = fix(((s_ysq_06/n6 + theta(u)^2*s_xsq_06/m6)^2)/((1/(n6-1))*((s_ysq_06/n6)^2) + (1/(m6-1))*((theta(u)^2*s_xsq_06/m6)^2))); %the degrees of freedom
            tstats6(u) = (y_bar_06 - theta(u)*x_bar_06)/sqrt(s_ysq_06/n6 + theta(u)^2*s_xsq_06/m6); %the t stats
            %compare the tstats to the t critical value - here almost all the time 1.96
            %at 95%CI - to find upper and lower bound of theta
            if tstats1(u)>=1.96 && tstats1(u)<=1.965
                cntrL1=cntrL1+1;
                theta_Lrec1(cntrL1) = theta(u); %lower bound of the confidence interval
            end
            if tstats1(u)<=-1.96 && tstats1(u)>=-1.965
                cntrU1=cntrU1+1;
                theta_Urec1(cntrU1) = theta(u); %upper bound of the confidence interval
            end
            if tstats2(u)>=1.96 && tstats2(u)<=1.965
                cntrL2=cntrL2+1;
                theta_Lrec2(cntrL2) = theta(u); %lower bound of the confidence interval
            end
            if tstats2(u)<=-1.96 && tstats2(u)>=-1.965
                cntrU2=cntrU2+1;
                theta_Urec2(cntrU2) = theta(u); %upper bound of the confidence interval
            end
            if tstats3(u)>=1.96 && tstats3(u)<=1.965
                cntrL3=cntrL3+1;
                theta_Lrec3(cntrL3) = theta(u); %lower bound of the confidence interval
            end
            if tstats3(u)<=-1.96 && tstats3(u)>=-1.965
                cntrU3=cntrU3+1;
                theta_Urec3(cntrU3) = theta(u); %upper bound of the confidence interval
            end
            if tstats4(u)>=1.96 && tstats4(u)<=1.965
                cntrL4=cntrL4+1;
                theta_Lrec4(cntrL4) = theta(u); %lower bound of the confidence interval
            end
            if tstats4(u)<=-1.96 && tstats4(u)>=-1.965
                cntrU4=cntrU4+1;
                theta_Urec4(cntrU4) = theta(u); %upper bound of the confidence interval
            end
            if tstats5(u)>=1.96 && tstats5(u)<=1.965
                cntrL5=cntrL5+1;
                theta_Lrec5(cntrL5) = theta(u); %lower bound of the confidence interval
            end
            if tstats5(u)<=-1.96 && tstats5(u)>=-1.965
                cntrU5=cntrU5+1;
                theta_Urec5(cntrU5) = theta(u); %upper bound of the confidence interval
            end
            if tstats6(u)>=1.96 && tstats6(u)<=1.965
                cntrL6=cntrL6+1;
                theta_Lrec6(cntrL6) = theta(u); %lower bound of the confidence interval
            end
            if tstats6(u)<=-1.96 && tstats6(u)>=-1.965
                cntrU6=cntrU6+1;
                theta_Urec6(cntrU6) = theta(u); %upper bound of the confidence interval
            end
        end
        AY_ULresult_01(cntr,1)=(theta_Urec1(1)-1)*100;
        AY_LLresult_01(cntr,1)=(theta_Lrec1(1)-1)*100;
        AY_ULresult_02(cntr,1)=(theta_Urec2(1)-1)*100;
        AY_LLresult_02(cntr,1)=(theta_Lrec2(1)-1)*100;
        AY_ULresult_03(cntr,1)=(theta_Urec3(1)-1)*100;
        AY_LLresult_03(cntr,1)=(theta_Lrec3(1)-1)*100;
        AY_ULresult_04(cntr,1)=(theta_Urec4(1)-1)*100;
        AY_LLresult_04(cntr,1)=(theta_Lrec4(1)-1)*100;
        AY_ULresult_05(cntr,1)=(theta_Urec5(1)-1)*100;
        AY_LLresult_05(cntr,1)=(theta_Lrec5(1)-1)*100;
        AY_ULresult_06(cntr,1)=(theta_Urec6(1)-1)*100;
        AY_LLresult_06(cntr,1)=(theta_Lrec6(1)-1)*100;
    end
%%
clearvars -except data ULresult_01 ULresult_02 ULresult_03 ULresult_04 ULresult_05 ULresult_06 LLresult_01 LLresult_02 LLresult_03 LLresult_04 LLresult_05 LLresult_06 AY_ULresult_01 AY_ULresult_02 AY_ULresult_03 AY_ULresult_04 AY_ULresult_05 AY_ULresult_06 AY_LLresult_01 AY_LLresult_02 AY_LLresult_03 AY_LLresult_04 AY_LLresult_05 AY_LLresult_06
%%
%NAfill=NaN(96,1);
ALLCI(:,1)=cat(1,ULresult_01,AY_ULresult_01,ULresult_02,AY_ULresult_02,ULresult_03,AY_ULresult_03,ULresult_04,AY_ULresult_04,ULresult_05,AY_ULresult_05,ULresult_06,AY_ULresult_06);
ALLCI(:,2)=cat(1,LLresult_01,AY_LLresult_01,LLresult_02,AY_LLresult_02,LLresult_03,AY_LLresult_03,LLresult_04,AY_LLresult_04,LLresult_05,AY_LLresult_05,LLresult_06,AY_LLresult_06);
%ALLCI(:,1)=cat(1,ULresult_01,AY_ULresult_01,ULresult_02,AY_ULresult_02,ULresult_03,AY_ULresult_03,ULresult_04,AY_ULresult_04,ULresult_05,AY_ULresult_05,NAfill);
%ALLCI(:,2)=cat(1,LLresult_01,AY_LL result_01,LLresult_02,AY_LLresult_02,LLresult_03,AY_LLresult_03,LLresult_04,AY_LLresult_04,LLresult_05,AY_LLresult_05,NAfill);
%ALLCI(:,1)=cat(1,ULresult_01,AY_ULresult_01,ULresult_02,AY_ULresult_02,ULresult_03,AY_ULresult_03,NAfill,ULresult_05,AY_ULresult_05,NAfill);
%ALLCI(:,2)=cat(1,LLresult_01,AY_LLresult_01,LLresult_02,AY_LLresult_02,LLresult_03,AY_LLresult_03,NAfill,LLresult_05,AY_LLresult_05,NAfill);
%% organize into table format
Allresults(:,1)=cat(1,dev01_Lnutrientdeveloped(:,1),dev01_Lnutrientdeveloped(:,2),dev01_Lnutrientdeveloped(:,3),dev01_Lnutrientdeveloped(:,4),dev01_Lnutrientdeveloped(:,5),dev01_Lnutrientdeveloped(:,6),dev01_Lnutrientdeveloped(:,7),allyears_dev01_Lnutrientdeveloped,dev02_Lnutrientdeveloped(:,1),dev02_Lnutrientdeveloped(:,2),dev02_Lnutrientdeveloped(:,3),dev02_Lnutrientdeveloped(:,4),dev02_Lnutrientdeveloped(:,5),dev02_Lnutrientdeveloped(:,6),dev02_Lnutrientdeveloped(:,7),allyears_dev02_Lnutrientdeveloped,dev03_Lnutrientdeveloped(:,1),dev03_Lnutrientdeveloped(:,2),dev03_Lnutrientdeveloped(:,3),dev03_Lnutrientdeveloped(:,4),dev03_Lnutrientdeveloped(:,5),dev03_Lnutrientdeveloped(:,6),dev03_Lnutrientdeveloped(:,7),allyears_dev03_Lnutrientdeveloped,dev04_Lnutrientdeveloped(:,1),dev04_Lnutrientdeveloped(:,2),dev04_Lnutrientdeveloped(:,3),dev04_Lnutrientdeveloped(:,4),dev04_Lnutrientdeveloped(:,5),dev04_Lnutrientdeveloped(:,6),dev04_Lnutrientdeveloped(:,7),allyears_dev04_Lnutrientdeveloped,dev05_Lnutrientdeveloped(:,1),dev05_Lnutrientdeveloped(:,2),dev05_Lnutrientdeveloped(:,3),dev05_Lnutrientdeveloped(:,4),dev05_Lnutrientdeveloped(:,5),dev05_Lnutrientdeveloped(:,6),dev05_Lnutrientdeveloped(:,7),allyears_dev05_Lnutrientdeveloped,dev06_Lnutrientdeveloped(:,1),dev06_Lnutrientdeveloped(:,2),dev06_Lnutrientdeveloped(:,3),dev06_Lnutrientdeveloped(:,4),dev06_Lnutrientdeveloped(:,5),dev06_Lnutrientdeveloped(:,6),dev06_Lnutrientdeveloped(:,7),allyears_dev06_Lnutrientdeveloped); %N_developed
Allresults(:,2)=cat(1,dev01_Lnutrientdeveloping(:,1),dev01_Lnutrientdeveloping(:,2),dev01_Lnutrientdeveloping(:,3),dev01_Lnutrientdeveloping(:,4),dev01_Lnutrientdeveloping(:,5),dev01_Lnutrientdeveloping(:,6),dev01_Lnutrientdeveloping(:,7),allyears_dev01_Lnutrientdeveloping,dev02_Lnutrientdeveloping(:,1),dev02_Lnutrientdeveloping(:,2),dev02_Lnutrientdeveloping(:,3),dev02_Lnutrientdeveloping(:,4),dev02_Lnutrientdeveloping(:,5),dev02_Lnutrientdeveloping(:,6),dev02_Lnutrientdeveloping(:,7),allyears_dev02_Lnutrientdeveloping,dev03_Lnutrientdeveloping(:,1),dev03_Lnutrientdeveloping(:,2),dev03_Lnutrientdeveloping(:,3),dev03_Lnutrientdeveloping(:,4),dev03_Lnutrientdeveloping(:,5),dev03_Lnutrientdeveloping(:,6),dev03_Lnutrientdeveloping(:,7),allyears_dev03_Lnutrientdeveloping,dev04_Lnutrientdeveloping(:,1),dev04_Lnutrientdeveloping(:,2),dev04_Lnutrientdeveloping(:,3),dev04_Lnutrientdeveloping(:,4),dev04_Lnutrientdeveloping(:,5),dev04_Lnutrientdeveloping(:,6),dev04_Lnutrientdeveloping(:,7),allyears_dev04_Lnutrientdeveloping,dev05_Lnutrientdeveloping(:,1),dev05_Lnutrientdeveloping(:,2),dev05_Lnutrientdeveloping(:,3),dev05_Lnutrientdeveloping(:,4),dev05_Lnutrientdeveloping(:,5),dev05_Lnutrientdeveloping(:,6),dev05_Lnutrientdeveloping(:,7),allyears_dev05_Lnutrientdeveloping,dev06_Lnutrientdeveloping(:,1),dev06_Lnutrientdeveloping(:,2),dev06_Lnutrientdeveloping(:,3),dev06_Lnutrientdeveloping(:,4),dev06_Lnutrientdeveloping(:,5),dev06_Lnutrientdeveloping(:,6),dev06_Lnutrientdeveloping(:,7),allyears_dev06_Lnutrientdeveloping); %N_developing
Allresults(:,3)=cat(1,sepyears_dev01_meandeveloped(:,1),sepyears_dev01_meandeveloped(:,2),sepyears_dev01_meandeveloped(:,3),sepyears_dev01_meandeveloped(:,4),sepyears_dev01_meandeveloped(:,5),sepyears_dev01_meandeveloped(:,6),sepyears_dev01_meandeveloped(:,7),allyears_dev01_meandeveloped,sepyears_dev02_meandeveloped(:,1),sepyears_dev02_meandeveloped(:,2),sepyears_dev02_meandeveloped(:,3),sepyears_dev02_meandeveloped(:,4),sepyears_dev02_meandeveloped(:,5),sepyears_dev02_meandeveloped(:,6),sepyears_dev02_meandeveloped(:,7),allyears_dev02_meandeveloped,sepyears_dev03_meandeveloped(:,1),sepyears_dev03_meandeveloped(:,2),sepyears_dev03_meandeveloped(:,3),sepyears_dev03_meandeveloped(:,4),sepyears_dev03_meandeveloped(:,5),sepyears_dev03_meandeveloped(:,6),sepyears_dev03_meandeveloped(:,7),allyears_dev03_meandeveloped,sepyears_dev04_meandeveloped(:,1),sepyears_dev04_meandeveloped(:,2),sepyears_dev04_meandeveloped(:,3),sepyears_dev04_meandeveloped(:,4),sepyears_dev04_meandeveloped(:,5),sepyears_dev04_meandeveloped(:,6),sepyears_dev04_meandeveloped(:,7),allyears_dev04_meandeveloped,sepyears_dev05_meandeveloped(:,1),sepyears_dev05_meandeveloped(:,2),sepyears_dev05_meandeveloped(:,3),sepyears_dev05_meandeveloped(:,4),sepyears_dev05_meandeveloped(:,5),sepyears_dev05_meandeveloped(:,6),sepyears_dev05_meandeveloped(:,7),allyears_dev05_meandeveloped,sepyears_dev06_meandeveloped(:,1),sepyears_dev06_meandeveloped(:,2),sepyears_dev06_meandeveloped(:,3),sepyears_dev06_meandeveloped(:,4),sepyears_dev06_meandeveloped(:,5),sepyears_dev06_meandeveloped(:,6),sepyears_dev06_meandeveloped(:,7),allyears_dev06_meandeveloped); %Mean_developed
Allresults(:,4)=cat(1,sepyears_dev01_meandeveloping(:,1),sepyears_dev01_meandeveloping(:,2),sepyears_dev01_meandeveloping(:,3),sepyears_dev01_meandeveloping(:,4),sepyears_dev01_meandeveloping(:,5),sepyears_dev01_meandeveloping(:,6),sepyears_dev01_meandeveloping(:,7),allyears_dev01_meandeveloping,sepyears_dev02_meandeveloping(:,1),sepyears_dev02_meandeveloping(:,2),sepyears_dev02_meandeveloping(:,3),sepyears_dev02_meandeveloping(:,4),sepyears_dev02_meandeveloping(:,5),sepyears_dev02_meandeveloping(:,6),sepyears_dev02_meandeveloping(:,7),allyears_dev02_meandeveloping,sepyears_dev03_meandeveloping(:,1),sepyears_dev03_meandeveloping(:,2),sepyears_dev03_meandeveloping(:,3),sepyears_dev03_meandeveloping(:,4),sepyears_dev03_meandeveloping(:,5),sepyears_dev03_meandeveloping(:,6),sepyears_dev03_meandeveloping(:,7),allyears_dev03_meandeveloping,sepyears_dev04_meandeveloping(:,1),sepyears_dev04_meandeveloping(:,2),sepyears_dev04_meandeveloping(:,3),sepyears_dev04_meandeveloping(:,4),sepyears_dev04_meandeveloping(:,5),sepyears_dev04_meandeveloping(:,6),sepyears_dev04_meandeveloping(:,7),allyears_dev04_meandeveloping,sepyears_dev05_meandeveloping(:,1),sepyears_dev05_meandeveloping(:,2),sepyears_dev05_meandeveloping(:,3),sepyears_dev05_meandeveloping(:,4),sepyears_dev05_meandeveloping(:,5),sepyears_dev05_meandeveloping(:,6),sepyears_dev05_meandeveloping(:,7),allyears_dev05_meandeveloping,sepyears_dev06_meandeveloping(:,1),sepyears_dev06_meandeveloping(:,2),sepyears_dev06_meandeveloping(:,3),sepyears_dev06_meandeveloping(:,4),sepyears_dev06_meandeveloping(:,5),sepyears_dev06_meandeveloping(:,6),sepyears_dev06_meandeveloping(:,7),allyears_dev06_meandeveloping); %Mean_developing
Allresults(:,5)=cat(1,sepyears_dev01percentdifference(:,1),sepyears_dev01percentdifference(:,2),sepyears_dev01percentdifference(:,3),sepyears_dev01percentdifference(:,4),sepyears_dev01percentdifference(:,5),sepyears_dev01percentdifference(:,6),sepyears_dev01percentdifference(:,7),allyears_dev01percentdifference,sepyears_dev02percentdifference(:,1),sepyears_dev02percentdifference(:,2),sepyears_dev02percentdifference(:,3),sepyears_dev02percentdifference(:,4),sepyears_dev02percentdifference(:,5),sepyears_dev02percentdifference(:,6),sepyears_dev02percentdifference(:,7),allyears_dev02percentdifference,sepyears_dev03percentdifference(:,1),sepyears_dev03percentdifference(:,2),sepyears_dev03percentdifference(:,3),sepyears_dev03percentdifference(:,4),sepyears_dev03percentdifference(:,5),sepyears_dev03percentdifference(:,6),sepyears_dev03percentdifference(:,7),allyears_dev03percentdifference,sepyears_dev04percentdifference(:,1),sepyears_dev04percentdifference(:,2),sepyears_dev04percentdifference(:,3),sepyears_dev04percentdifference(:,4),sepyears_dev04percentdifference(:,5),sepyears_dev04percentdifference(:,6),sepyears_dev04percentdifference(:,7),allyears_dev04percentdifference,sepyears_dev05percentdifference(:,1),sepyears_dev05percentdifference(:,2),sepyears_dev05percentdifference(:,3),sepyears_dev05percentdifference(:,4),sepyears_dev05percentdifference(:,5),sepyears_dev05percentdifference(:,6),sepyears_dev05percentdifference(:,7),allyears_dev05percentdifference,sepyears_dev06percentdifference(:,1),sepyears_dev06percentdifference(:,2),sepyears_dev06percentdifference(:,3),sepyears_dev06percentdifference(:,4),sepyears_dev06percentdifference(:,5),sepyears_dev06percentdifference(:,6),sepyears_dev06percentdifference(:,7),allyears_dev06percentdifference); %Mean % Difference
Allresults(:,6)=cat(1,dev01_2015_mannwhitney(2,:)',dev01_2016_mannwhitney(2,:)',dev01_2017_mannwhitney(2,:)',dev01_2018_mannwhitney(2,:)',dev01_2019_mannwhitney(2,:)',dev01_2020_mannwhitney(2,:)',dev01_2021_mannwhitney(2,:)',dev01_allyears_mannwhitney(2,:)',dev02_2015_mannwhitney(2,:)',dev02_2016_mannwhitney(2,:)',dev02_2017_mannwhitney(2,:)',dev02_2018_mannwhitney(2,:)',dev02_2019_mannwhitney(2,:)',dev02_2020_mannwhitney(2,:)',dev02_2021_mannwhitney(2,:)',dev02_allyears_mannwhitney(2,:)',dev03_2015_mannwhitney(2,:)',dev03_2016_mannwhitney(2,:)',dev03_2017_mannwhitney(2,:)',dev03_2018_mannwhitney(2,:)',dev03_2019_mannwhitney(2,:)',dev03_2020_mannwhitney(2,:)',dev03_2021_mannwhitney(2,:)',dev03_allyears_mannwhitney(2,:)',dev04_2015_mannwhitney(2,:)',dev04_2016_mannwhitney(2,:)',dev04_2017_mannwhitney(2,:)',dev04_2018_mannwhitney(2,:)',dev04_2019_mannwhitney(2,:)',dev04_2020_mannwhitney(2,:)',dev04_2021_mannwhitney(2,:)',dev04_allyears_mannwhitney(2,:)',dev05_2015_mannwhitney(2,:)',dev05_2016_mannwhitney(2,:)',dev05_2017_mannwhitney(2,:)',dev05_2018_mannwhitney(2,:)',dev05_2019_mannwhitney(2,:)',dev05_2020_mannwhitney(2,:)',dev05_2021_mannwhitney(2,:)',dev05_allyears_mannwhitney(2,:)',dev06_2015_mannwhitney(2,:)',dev06_2016_mannwhitney(2,:)',dev06_2017_mannwhitney(2,:)',dev06_2018_mannwhitney(2,:)',dev06_2019_mannwhitney(2,:)',dev06_2020_mannwhitney(2,:)',dev06_2021_mannwhitney(2,:)',dev06_allyears_mannwhitney(2,:)'); %Mann Whitney Z value
Allresults(:,7)=cat(1,sepyears_dev01_stats(:,1),sepyears_dev01_stats(:,2),sepyears_dev01_stats(:,3),sepyears_dev01_stats(:,4),sepyears_dev01_stats(:,5),sepyears_dev01_stats(:,6),sepyears_dev01_stats(:,7),allyears_dev01_stats,sepyears_dev02_stats(:,1),sepyears_dev02_stats(:,2),sepyears_dev02_stats(:,3),sepyears_dev02_stats(:,4),sepyears_dev02_stats(:,5),sepyears_dev02_stats(:,6),sepyears_dev02_stats(:,7),allyears_dev02_stats,sepyears_dev03_stats(:,1),sepyears_dev03_stats(:,2),sepyears_dev03_stats(:,3),sepyears_dev03_stats(:,4),sepyears_dev03_stats(:,5),sepyears_dev03_stats(:,6),sepyears_dev03_stats(:,7),allyears_dev03_stats,sepyears_dev04_stats(:,1),sepyears_dev04_stats(:,2),sepyears_dev04_stats(:,3),sepyears_dev04_stats(:,4),sepyears_dev04_stats(:,5),sepyears_dev04_stats(:,6),sepyears_dev04_stats(:,7),allyears_dev04_stats,sepyears_dev05_stats(:,1),sepyears_dev05_stats(:,2),sepyears_dev05_stats(:,3),sepyears_dev05_stats(:,4),sepyears_dev05_stats(:,5),sepyears_dev05_stats(:,6),sepyears_dev05_stats(:,7),allyears_dev05_stats,sepyears_dev06_stats(:,1),sepyears_dev06_stats(:,2),sepyears_dev06_stats(:,3),sepyears_dev06_stats(:,4),sepyears_dev06_stats(:,5),sepyears_dev06_stats(:,6),sepyears_dev06_stats(:,7),allyears_dev06_stats); %tstats
Allresults(:,8)=cat(1,dev01_2015_tstat(:,1),dev01_2016_tstat(:,1),dev01_2017_tstat(:,1),dev01_2018_tstat(:,1),dev01_2019_tstat(:,1),dev01_2020_tstat(:,1),dev01_2021_tstat(:,1),dev01_allyears_tstat(:,1),dev02_2015_tstat(:,1),dev02_2016_tstat(:,1),dev02_2017_tstat(:,1),dev02_2018_tstat(:,1),dev02_2019_tstat(:,1),dev02_2020_tstat(:,1),dev02_2021_tstat(:,1),dev02_allyears_tstat(:,1),dev03_2015_tstat(:,1),dev03_2016_tstat(:,1),dev03_2017_tstat(:,1),dev03_2018_tstat(:,1),dev03_2019_tstat(:,1),dev03_2020_tstat(:,1),dev03_2021_tstat(:,1),dev03_allyears_tstat(:,1),dev04_2015_tstat(:,1),dev04_2016_tstat(:,1),dev04_2017_tstat(:,1),dev04_2018_tstat(:,1),dev04_2019_tstat(:,1),dev04_2020_tstat(:,1),dev04_2021_tstat(:,1),dev04_allyears_tstat(:,1),dev05_2015_tstat(:,1),dev05_2016_tstat(:,1),dev05_2017_tstat(:,1),dev05_2018_tstat(:,1),dev05_2019_tstat(:,1),dev05_2020_tstat(:,1),dev05_2021_tstat(:,1),dev05_allyears_tstat(:,1),dev06_2015_tstat(:,1),dev06_2016_tstat(:,1),dev06_2017_tstat(:,1),dev06_2018_tstat(:,1),dev06_2019_tstat(:,1),dev06_2020_tstat(:,1),dev06_2021_tstat(:,1),dev06_allyears_tstat(:,1)); %weighted tstats 