function [xout,tstatind,ttestP,meannutrientperdollardeveloped,meannutrientperdollardeveloping,meannutrientdifference,Lnutrientdeveloped,Lnutrientdeveloping,stdnutrientperdollardeveloped,stdnutrientperdollardeveloping,maxdeveloped,maxdeveloping]=my_allyears(data,developementindex)
%Function: my_allyears returns information for each nutrient per dollar column for developing and developed as well as information on the differences between developing and developed for each nutrient per dollar column for all years of data (2015-2021). 
%Inputs: 1.) 'data' should be one of the versions of the data that has the developement definition columns (columns 98-101).
%        2.) 'developementindex' indicates which developement definition will be used to separate each nutrient per dollar column into developing or developed. Dev01=98, Dev02=99, Dev03=100, Dev04=101.
%Outputs:1.) 'xout' is the percent differences where rows 1-12 are in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium.
%        2.) 'tstatind' is the t values for the t-test between developing and developed for each nutrient per dollar column where rows 1-12 are in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium.
%        3.) 'testP is the p values associated with the t-test between developing and developed where columns 1-12 are in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium.
%        4.) 'meannutrientperdollardeveloped' is the mean value for each nutrient per dollar column for developed where rows 1-12 are in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium.
%        5.) 'meannutrientperdollardeveloping' is the mean value for each nutrient per dollar column for developing where rows 1-12 are in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium.
%        6.) 'meannutrientdifference' is the difference between the mean values for developing and developed for each nutrient per dollar column where rows 1-12 are in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium.
%        7.) 'Lnutrientdeveloped' is the number of observations for developed for each nutrient per dollar column where rows 1-12 are in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium.
%        8.) 'Lnutrientdeveloping' is the number of observations for developing for each nutrient per dollar column where rows 1-12 are in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium.
%        9.) 'stdnutrientperdollardeveloped' is the standard deviation for developed for each nutrient per dollar column where rows 1-12 are in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium.
%        10.) 'stdnutrientperdollardeveloping' is the standard deviation for developing for each nutrient per dollar column where rows 1-12 are in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium.
%        11.) 'maxdeveloped' is the max value for developed for each nutrient per dollar column where rows 1-12 are in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium.
%        12.) 'maxdeveloping' is the max value for developing for each nutrient per dollar column where rows 1-12 are in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium.
    for n=1:12
            nutrientperdollar=0;
            nutrientperdollarstatusindex=0;
            nutrientperdollardeveloped=0;
            nutrientperdollardeveloping=0;
            cntr=0;
                for z=1:length(data)
                    if isnan(data(z,131+n))==0 && isnan(data(z,developementindex))==0 %Find values where neither the observation in the nutrient per dollar column or the development definition column is NaN. 
                        cntr=cntr+1;
                        nutrientperdollar(cntr,1)=data(z,131+n); 
                        nutrientperdollarstatusindex(cntr,1)=data(z,developementindex);
                    end
                end
            nutrientperdollardeveloped=nutrientperdollar(nutrientperdollarstatusindex(:,1)==1,1); %Get values from the nutrient per dollar column where the developement is developed based on the chosen definition. 
            maxdeveloped(n,1)=max(nutrientperdollardeveloped); %Max value for developed. 
            meannutrientperdollardeveloped(n,1)=mean(nutrientperdollardeveloped); %Mean value for developed. 
            nutrientperdollardeveloping=nutrientperdollar(nutrientperdollarstatusindex(:,1)==0,1); %Get values from the nutrient per dollar column where the developement is developing based on the chosen definition. 
            maxdeveloping(n,1)=max(nutrientperdollardeveloping); %Max value for developing. 
            meannutrientperdollardeveloping(n,1)=mean(nutrientperdollardeveloping); %Mean value for developing.
            meannutrientdifference(n,1)=meannutrientperdollardeveloping(n,1)-meannutrientperdollardeveloped(n,1); %Difference between the means for developing and developed.
            Lnutrientdeveloped(n,1)=length(nutrientperdollardeveloped); %Number of observations for developed. 
            Lnutrientdeveloping(n,1)=length(nutrientperdollardeveloping); %Number of observations for developing.
            stdnutrientperdollardeveloped(n,1)=std(nutrientperdollardeveloped); %Standard deviation for developed.
            stdnutrientperdollardeveloping(n,1)=std(nutrientperdollardeveloping); %Standard deviation for developing.
            [nutrientperdollarh(:,n),nutrientperdollarp(:,n),nutrientperdollarci(:,n),nutrientperdollarstats(:,n)]=ttest2(nutrientperdollardeveloping(:,1),nutrientperdollardeveloped(:,1),'Vartype','unequal','Tail','right'); %t-test for developing and developed for the nutrient per dollar column. 
            meanpercentdifferenceallyears(1,n)=100*((mean(nutrientperdollardeveloping(:,1))-mean(nutrientperdollardeveloped(:,1)))/mean(nutrientperdollardeveloped(:,1))); %Calculate the percent difference between developing and developed. 
            xoutdata(n,1)=meanpercentdifferenceallyears(1,n);
    end
        %Rearrange the results to be in the order Protein, Calcium, Calories, Fatty Acid, Potassium, Magnesium, B12, Iron, Zinc, Iodine, Retinol, Selenium and setup the outputs. 
        tstat=cell2mat(struct2cell(nutrientperdollarstats)); %Get the t value out of the struct array that is produced by ttest2
        tstatind(:,1)=tstat(1,1,1:12);
        ttestP(:,[1 2 3 4 5 6 7 8 9 10 11 12])=nutrientperdollarp(:,[7 1 2 3 6 5 11 4 8 10 12 9]);
        xoutdata([1 2 3 4 5 6 7 8 9 10 11 12],:)=xoutdata([7 1 2 3 6 5 11 4 8 10 12 9],:);
        tstatind([1 2 3 4 5 6 7 8 9 10 11 12],:)=tstatind([7 1 2 3 6 5 11 4 8 10 12 9],:);
        meannutrientperdollardeveloped([1 2 3 4 5 6 7 8 9 10 11 12],:)=meannutrientperdollardeveloped([7 1 2 3 6 5 11 4 8 10 12 9],:);
        meannutrientperdollardeveloping([1 2 3 4 5 6 7 8 9 10 11 12],:)=meannutrientperdollardeveloping([7 1 2 3 6 5 11 4 8 10 12 9],:);
        Lnutrientdeveloped([1 2 3 4 5 6 7 8 9 10 11 12],:)=Lnutrientdeveloped([7 1 2 3 6 5 11 4 8 10 12 9],:);
        Lnutrientdeveloping([1 2 3 4 5 6 7 8 9 10 11 12],:)=Lnutrientdeveloping([7 1 2 3 6 5 11 4 8 10 12 9],:);
        stdnutrientperdollardeveloped([1 2 3 4 5 6 7 8 9 10 11 12],:)=stdnutrientperdollardeveloped([7 1 2 3 6 5 11 4 8 10 12 9],:);
        stdnutrientperdollardeveloping([1 2 3 4 5 6 7 8 9 10 11 12],:)=stdnutrientperdollardeveloping([7 1 2 3 6 5 11 4 8 10 12 9],:);
        meannutrientdifference([1 2 3 4 5 6 7 8 9 10 11 12],:)=meannutrientdifference([7 1 2 3 6 5 11 4 8 10 12 9],:);
        maxdeveloped([1 2 3 4 5 6 7 8 9 10 11 12],:)=maxdeveloped([7 1 2 3 6 5 11 4 8 10 12 9],:);
        maxdeveloping([1 2 3 4 5 6 7 8 9 10 11 12],:)=maxdeveloping([7 1 2 3 6 5 11 4 8 10 12 9],:);
        xout=xoutdata;
end