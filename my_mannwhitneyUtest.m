function xout=my_mannwhitneyUtest(xin,devdef,nutrientcolumn)
%Function: my_mannwhitneyUtest returns the p and z value from the Wilcoxon rank sum test which is equivalent to the Mann Whitney U test.
%Inputs: 1.) 'data' should be one of the versions of the data that has the developement definition columns (columns 98-101).
%        2.) 'devdef' indicates which developement definition will be used to separate each nutrient per dollar column into developing or developed. Dev01=98, Dev02=99, Dev03=100, Dev04=101.
%        3.) 'nutrientcolumn' should be the column number in 'data' for the nutrient per dollar data that will be analyzed.
%Outputs:1.) xout column 1 is the p-values from the Mann-Whitney test and column 2 is the z-values from the Mann-Whitney test.
xin_developed=xin(xin(:,devdef)==1,nutrientcolumn); %Get the developed data from the chosen nutrient per dollar column based on chosen developement definition. 
xin_developing=xin(xin(:,devdef)==0,nutrientcolumn); %Get the developing data from the chosen nutrient per dollar column based on the chosen developement definition.
cntr=0;
for n=1:length(xin_developed)
    if isnan(xin_developed(n,1))==0
        cntr=cntr+1;
        xin_developed_real(cntr,1)=xin_developed(n,1); %Remove NaNs from the developed data. 
    end
end
cntr2=0;
for n=1:length(xin_developing)
    if isnan(xin_developing(n,1))==0
        cntr2=cntr2+1;
        xin_developing_real(cntr2,1)=xin_developing(n,1); %Remove NaNs from the developing data. 
    end
end
[p,h,stats]=ranksum(xin_developing_real,xin_developed_real,'Tail','right'); %Wilcoxon rank sum test for the developing and developed data. Wilcoxon rank sum test is equivalent to Mann-Whitney U-test. [https://www.mathworks.com/help/stats/ranksum.html].
xout(1,1)=p; %p value from Mann Whitney test
xout(2,1)=stats.zval; %z value from Mann Whitney test
end