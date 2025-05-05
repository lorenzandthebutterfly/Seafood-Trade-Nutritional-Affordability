function [xout,xoutdeveloped,xoutdeveloping]=my_weighted_twosample_ttest(xin,devdef,nutrientcolumn,weightcolumn,weightoption)
%Function: my_weighted_twosample_ttest returns weighted or unweighted information for each nutrient per dollar column for developing and developed as well as the t-stat for the mean comparison between developing and developed. 
%Inputs: 1.)'xin' should be one of the versions of the data that has the developement definition columns (columns 98-101).
%        2.) 'devdef' indicates which developement definition will be used to separate each nutrient per dollar column into developing or developed. Dev01=98, Dev02=99, Dev03=100, Dev04=101.
%        3.) 'nutrientcolumn indicates which nutrient per dollar column will be analyzed
%        4.) 'weightcolumn indicates which variable the nutrient per dollar data should be weighted by. This input is only used if 'weight option' is 1. 
%        5.) 'weightoption' indicates if weighted tests (weightoption=1) or unweighted tests (weightoption=0) should be done.
%Outputs:1.) 'xout' returns the t-stat.
%        2.) 'xoutdeveloped' for the developed results returns the number of observations in the first column, the mean in the second column, and the standard deviation in the third column. 
%        3.) 'xoutdeveloping' for the developing results returns the number of observations in the first column, the mean in the second column, and the standard deviation in the third column. 
if weightoption==1 %Do weighted ttest
    xin_developed=xin(xin(:,devdef)==1,nutrientcolumn);
    xin_developing=xin(xin(:,devdef)==0,nutrientcolumn);
    W=xin(:,weightcolumn);
    weight_developed=W(xin(:,devdef)==1,1);
    weight_developing=W(xin(:,devdef)==0,1);
    cntr=0;
    for n=1:length(xin_developed)
        if isnan(xin_developed(n,1))==0 && isnan(weight_developed(n,1))==0 %get all real observations in both the variable and its corresponding weight
            cntr=cntr+1;
            xin_developed_real(cntr,1)=xin_developed(n,1);
            weight_developed_real(cntr,1)=weight_developed(n,1);
        end
    end
    cntr2=0;
    for n=1:length(xin_developing)
        if isnan(xin_developing(n,1))==0 && isnan(weight_developing(n,1))==0 %get all real observations in both the variable and its corresponding weight
            cntr2=cntr2+1;
            xin_developing_real(cntr2,1)=xin_developing(n,1);
            weight_developing_real(cntr2,1)=weight_developing(n,1);
        end
    end
    weight_developed_dec=weight_developed_real./sum(weight_developed_real); %Make it so sum of weights are 1 for developed
    weight_developing_dec=weight_developing_real./sum(weight_developing_real); %Make it so sum of weights are 1 for developing
    [Wstd_developed,Wmean_developed]=std(xin_developed_real,weight_developed_dec); %Weighted standard deviation and weighted mean for developed
    L_xin_developed_real=length(xin_developed_real); %number of real observations for developed 
    [Wstd_developing,Wmean_developing]=std(xin_developing_real,weight_developing_dec);  %Weighted standard deviation and weighted mean for developing
    L_xin_developing_real=length(xin_developing_real); %number of real observations for developing 
    tvalue_weighted=(Wmean_developing-Wmean_developed)/sqrt((Wstd_developing^2/L_xin_developing_real)+(Wstd_developed^2/L_xin_developed_real)); %t-test
    xoutdeveloped(1,1)=L_xin_developed_real; %number of real observations for developed 
    xoutdeveloping(1,1)=L_xin_developing_real; %number of real observations for developing 
    xoutdeveloped(1,2)=Wmean_developed;  %weighted mean for developed
    xoutdeveloping(1,2)=Wmean_developing; %weighted mean for developing 
    xoutdeveloped(1,3)=Wstd_developed; %weighted standard deviation for developed
    xoutdeveloping(1,3)=Wstd_developing; %weighted standard deviation for developing
    xout(1,1)=tvalue_weighted; %tvalue 
end
if weightoption==0 %Do unweighted ttest
    xin_developed=xin(xin(:,devdef)==1,nutrientcolumn);
    xin_developing=xin(xin(:,devdef)==0,nutrientcolumn);
    cntr=0;
    for n=1:length(xin_developed)
        if isnan(xin_developed(n,1))==0
            cntr=cntr+1;
            xin_developed_real(cntr,1)=xin_developed(n,1);
        end
    end
    cntr2=0;
    for n=1:length(xin_developing) 
        if isnan(xin_developing(n,1))==0
            cntr2=cntr2+1;
            xin_developing_real(cntr2,1)=xin_developing(n,1);
        end
    end
    Wmean_developed=mean(xin_developed_real); %mean for developed
    Wstd_developed=std(xin_developed_real); %standard deviation for developed
    L_xin_developed_real=length(xin_developed_real); %number of real observations for developed 
    Wmean_developing=mean(xin_developing_real); %mean for developing
    Wstd_developing=std(xin_developing_real);  %standard deviation for developing
    L_xin_developing_real=length(xin_developing_real); %number of real observations for developing 
    tvalue=(Wmean_developing-Wmean_developed)/sqrt((Wstd_developing^2/L_xin_developing_real)+(Wstd_developed^2/L_xin_developed_real)); %t-test
    xoutdeveloped(1,1)=L_xin_developed_real; %number of real observations for developed 
    xoutdeveloping(1,1)=L_xin_developing_real; %number of real observations for developing 
    xoutdeveloped(1,2)=Wmean_developed;  %mean for developed
    xoutdeveloping(1,2)=Wmean_developing; %mean for developing 
    xoutdeveloped(1,3)=Wstd_developed; %standard deviation for developed
    xoutdeveloping(1,3)=Wstd_developing; %standard deviation for developing
    xout(1,1)=tvalue; %tvalue 
end
end