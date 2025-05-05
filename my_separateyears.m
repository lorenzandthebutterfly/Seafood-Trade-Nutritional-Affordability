function [xout,tstatind,ttestP,meannutrientperdollardeveloped,meannutrientperdollardeveloping,meannutrientdifference,Lnutrientdeveloped,Lnutrientdeveloping,stdnutrientperdollardeveloped,stdnutrientperdollardeveloping]=my_separateyears(data,developementindex)
%Function: my_separateyears returns information for each nutrient per dollar column for developing and developed as well as information on the differences between developing and developed for each nutrient per dollar column for each separate year (2015-2021). 
%Inputs: 1.) 'data' should be one of the versions of the data that has the developement definition columns (columns 98-101).
%        2.) 'developementindex' indicates which developement definition will be used to separate each nutrient per dollar column into developing or developed. Dev01=98, Dev02=99, Dev03=100, Dev04=101.
%Outputs:1.) 'xout' is the percent differences in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium for rows 1-12 and for each year 2015-2021 for columns 1-7.
%        2.) 'tstatind' is the t values for the t-test between developing and developed for each nutrient per dollar column in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium for rows 1-12 and for each year 2015-2021 for columns 1-7.
%        3.) 'testP is the p values associated with the t-test between developing and developed in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium for rows 1-12 and for each year 2015-2021 for columns 1-7.
%        4.) 'meannutrientperdollardeveloped' is the mean value for each nutrient per dollar column for developed in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium for rows 1-12 and for each year 2015-2021 for columns 1-7.
%        5.) 'meannutrientperdollardeveloping' is the mean value for each nutrient per dollar column for developing in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium for rows 1-12 and for each year 2015-2021 for columns 1-7.
%        6.) 'meannutrientdifference' is the difference between the mean values for developing and developed for each nutrient per dollar column in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium for rows 1-12 and for each year 2015-2021 for columns 1-7.
%        7.) 'Lnutrientdeveloped' is the number of observations for developed for each nutrient per dollar column in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium for rows 1-12 and for each year 2015-2021 for columns 1-7.
%        8.) 'Lnutrientdeveloping' is the number of observations for developing for each nutrient per dollar column in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium for rows 1-12 and for each year 2015-2021 for columns 1-7.
%        9.) 'stdnutrientperdollardeveloped' is the standard deviation for developed for each nutrient per dollar column in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium for rows 1-12 and for each year 2015-2021 for columns 1-7.
%        10.) 'stdnutrientperdollardeveloping' is the standard deviation for developing for each nutrient per dollar column in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium for rows 1-12 and for each year 2015-2021 for columns 1-7.
        datayears=[2015 2016 2017 2018 2019 2020 2021];
        regressiondataL=length(data);
        for y=1:7
            for n=1:12
                nutrientperdollar=0;
                nutrientperdollarstatusindex=0;
                nutrientperdollardeveloped=0;
                nutrientperdollardeveloping=0;
                c=0;
                for z=1:regressiondataL
                    if isnan(data(z,131+n))==0 && data(z,8)==datayears(y) && isnan(data(z,developementindex))==0 %Find values where neither the observation in the nutrient per dollar column or the development definition column is NaN and that is from the individual year.  
                        c=c+1;
                        nutrientperdollar(c,1)=data(z,131+n);
                        nutrientperdollarstatusindex(c,1)=data(z,developementindex);
                    end
                end
                nutrientperdollardeveloped=nutrientperdollar(nutrientperdollarstatusindex(:,1)==1,1); %Get values from the nutrient per dollar column where the developement is developed based on the chosen definition. 
                meannutrientperdollardeveloped(n,y)=mean(nutrientperdollardeveloped); %Mean value for developed.
                stdnutrientperdollardeveloped(n,y)=std(nutrientperdollardeveloped); %Standard deviation for developed.
                Lnutrientdeveloped(n,y)=length(nutrientperdollardeveloped); %Number of observations for developed.
                nutrientperdollardeveloping=nutrientperdollar(nutrientperdollarstatusindex(:,1)==0,1); %Get values from the nutrient per dollar column where the developement is developing based on the chosen definition. 
                meannutrientperdollardeveloping(n,y)=mean(nutrientperdollardeveloping); %Mean value for developing.
                stdnutrientperdollardeveloping(n,y)=std(nutrientperdollardeveloping); %Standard deviation for developing.
                Lnutrientdeveloping(n,y)=length(nutrientperdollardeveloping); %Number of observations for developing.
                meannutrientdifference(n,y)=meannutrientperdollardeveloping(n,y)-meannutrientperdollardeveloped(n,y); %Difference between the means for developing and developed.
                [nutrientperdollarh(:,n),nutrientperdollarp(n,y),nutrientperdollarci(:,n),nutrientperdollarstats(:,n)]=ttest2(nutrientperdollardeveloping(:,1),nutrientperdollardeveloped(:,1),'Vartype','unequal','Tail','right'); %t-test for developing and developed for the nutrient per dollar column.
                meanpercentdifferenceallyears(1,n)=100*((mean(nutrientperdollardeveloping(:,1))-mean(nutrientperdollardeveloped(:,1)))/mean(nutrientperdollardeveloped(:,1))); %Calculate the percent difference between developing and developed. 
                xoutdata(n,y)=meanpercentdifferenceallyears(1,n);
            end
            %Get the t value out of the struct array that is produced by ttest2
            tstat=cell2mat(struct2cell(nutrientperdollarstats));
            tstatind(:,y)=tstat(1,1,1:12);
        end
        %Rearrange the results to be in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium and setup the outputs. 
        ttestP([1 2 3 4 5 6 7 8 9 10 11 12],:)=nutrientperdollarp([7 1 2 3 6 5 11 4 8 10 12 9],:);
        tstatind([1 2 3 4 5 6 7 8 9 10 11 12],:)=tstatind([7 1 2 3 6 5 11 4 8 10 12 9],:);
        xoutdata([1 2 3 4 5 6 7 8 9 10 11 12],:)=xoutdata([7 1 2 3 6 5 11 4 8 10 12 9],:);
        meannutrientperdollardeveloped([1 2 3 4 5 6 7 8 9 10 11 12],:)=meannutrientperdollardeveloped([7 1 2 3 6 5 11 4 8 10 12 9],:);
        meannutrientperdollardeveloping([1 2 3 4 5 6 7 8 9 10 11 12],:)=meannutrientperdollardeveloping([7 1 2 3 6 5 11 4 8 10 12 9],:);
        Lnutrientdeveloped([1 2 3 4 5 6 7 8 9 10 11 12],:)=Lnutrientdeveloped([7 1 2 3 6 5 11 4 8 10 12 9],:);
        Lnutrientdeveloping([1 2 3 4 5 6 7 8 9 10 11 12],:)=Lnutrientdeveloping([7 1 2 3 6 5 11 4 8 10 12 9],:);
        stdnutrientperdollardeveloped([1 2 3 4 5 6 7 8 9 10 11 12],:)=stdnutrientperdollardeveloped([7 1 2 3 6 5 11 4 8 10 12 9],:);
        stdnutrientperdollardeveloping([1 2 3 4 5 6 7 8 9 10 11 12],:)=stdnutrientperdollardeveloping([7 1 2 3 6 5 11 4 8 10 12 9],:);
        meannutrientdifference([1 2 3 4 5 6 7 8 9 10 11 12],:)=meannutrientdifference([7 1 2 3 6 5 11 4 8 10 12 9],:);
        xout=xoutdata;
end