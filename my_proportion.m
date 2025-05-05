function [xout]=my_proportion(xin,devdef,varcol,weightoption,weightcol,varoption)
%Function: my_proportion returns weighted or unweighted information for each covariate for developing and developed as well as the test statistic for the mean comparison between developing and developed. 
%Inputs: 1.)'xin' should be one of the versions of the data that has the developement definition columns (columns 98-101).
%        2.) 'devdef' indicates which developement definition will be used to separate each nutrient per dollar column into developing or developed. Dev01=98, Dev02=99, Dev03=100, Dev04=101.
%        3.) 'varcol' indicates which variable column will be analyzed
%        4.) 'weightoption' indicates if weighted tests (weightoption=1) or unweighted tests (weightoption=0) should be done.
%        5.) 'weightcol' indicates which variable the nutrient per dollar data should be weighted by. This input is only used if 'weight option' is 1.
%        6.) 'varoption' indicates if the variable being analyzed is binary (varoption=0) or continious (varoption=1)
%Outputs:1.) 'xout' returns the developed mean in the first column, the developing mean in the second column, the test statistic in the third columnm, and the p-value in the fourth column.
if weightoption==0 %not weighted
xin_dd=xin(xin(:,devdef)==1,varcol); %developed data
xin_dg=xin(xin(:,devdef)==0,varcol); %developing data
xin_developed=xin_dd(isnan(xin_dd)==0,1); %remove NaNs from developed data
xin_developing=xin_dg(isnan(xin_dg)==0,1); %remove NaNs from developing data
n1=length(xin_developing); %number of observations for developing
n2=length(xin_developed); %number of observations for developed
propvar_developed=(sum(xin_developed)/n2); %mean for developed
propvar_developing=(sum(xin_developing)/n1); %mean for developing
phat=(sum(xin_developing)+sum(xin_developed))/(n1+n2);
if varoption==0
    Zval=((propvar_developing-propvar_developed)-0)/sqrt((phat*(1-phat))*((1/n1)+(1/n2))); %z-statistic 
    xout(1,1)=propvar_developed;
    xout(1,2)=propvar_developing;
    xout(1,3)=Zval;
    xout(1,4)=normcdf(abs(Zval),'upper'); %get pvalue for right sided test
end
if varoption==1
    [h,p,ci,stats]=ttest2(xin_developing,xin_developed,'Vartype','unequal','Tail','right'); %t-test
    xout(1,1)=propvar_developed;
    xout(1,2)=propvar_developing;
    xout(1,3)=stats.tstat;
    dof=(n1+n2)-2; %degrees of freedom
    xout(1,4)=tcdf(abs(stats.tstat),dof,'upper'); %get pvalue for right sided test
end
end
if weightoption==1 %weighted
    xin_developed=xin(xin(:,devdef)==1,varcol); %developed data
    xin_developing=xin(xin(:,devdef)==0,varcol); %developing data
    n1=length(xin_developing); %number of observations for developing
    n2=length(xin_developed);  %number of observations for developed
    W=xin(:,weightcol); %variable to be used for weights
    weight_developed=W(xin(:,devdef)==1,1); %weights for developed
    weight_developing=W(xin(:,devdef)==0,1); %weights for developing
    cntr3=0;
    for n=1:length(xin)
         if isnan(xin(n,varcol))==0 && isnan(xin(n,weightcol))==0 %get all real observations in both the variable and its corresponding weight
             cntr3=cntr3+1;
             xin_all(cntr3,1)=xin(n,varcol);
             W_all(cntr3,1)=xin(n,weightcol);
         end
    end
    cntr=0;
    for n=1:n2
        if isnan(xin_developed(n,1))==0 && isnan(weight_developed(n,1))==0 %get all real observations in both the variable and its corresponding weight for developed 
            cntr=cntr+1;
            xin_developed_real(cntr,1)=xin_developed(n,1);
            weight_developed_real(cntr,1)=weight_developed(n,1);
        end
    end
    cntr2=0;
    for n=1:n1
        if isnan(xin_developing(n,1))==0 && isnan(weight_developing(n,1))==0 %get all real observations in both the variable and its corresponding weight for developing
            cntr2=cntr2+1;
            xin_developing_real(cntr2,1)=xin_developing(n,1);
            weight_developing_real(cntr2,1)=weight_developing(n,1);
        end
    end
    n1_real=length(xin_developing_real); %number of real observations developing
    n2_real=length(xin_developed_real); %number of real observations developed
    weight_developed_dec=weight_developed_real./sum(weight_developed_real); %Make it so sum of weights are 1 for developed
    weight_developing_dec=weight_developing_real./sum(weight_developing_real); %Make it so sum of weights are 1 for developing
    propvar_developed=sum(xin_developed_real.*weight_developed_dec); %weighted mean for developed
    propvar_developing=sum(xin_developing_real.*weight_developing_dec); %weighted mean for developing
    [Wstd_developed,Wmean_developed]=std(xin_developed_real,weight_developed_dec); %Weighted standard deviation and weighted mean for developed
    [Wstd_developing,Wmean_developing]=std(xin_developing_real,weight_developing_dec);  %Weighted standard deviation and weighted mean for developing
    tvalue_weighted=(Wmean_developing-Wmean_developed)/sqrt((Wstd_developing^2/n1_real)+(Wstd_developed^2/n2_real)); %t-test
    dof=(n1_real+n2_real)-2; %degrees of freedom
    W_all_dec=W_all./sum(W_all); %weights for all observations 
    phat=sum(W_all_dec.*xin_all);
    if varoption==0
        Zval=((propvar_developing-propvar_developed)-0)/sqrt((phat*(1-phat))*((1/n1_real)+(1/n2_real))); %z-statistic 
        xout(1,1)=propvar_developed;
        xout(1,2)=propvar_developing;
        xout(1,3)=Zval;
        xout(1,4)=normcdf(abs(Zval),'upper'); %get pvalue for right sided test
    end
    if varoption==1
        xout(1,1)=propvar_developed;
        xout(1,2)=propvar_developing;
        xout(1,3)=tvalue_weighted;
        xout(1,4)=tcdf(abs(tvalue_weighted),dof,'upper'); %get pvalue for right sided test
    end
end
end