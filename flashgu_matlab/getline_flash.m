function BEAMLINE= getline_flash(Kfactor)
%=======================
%get the lattice of flash
%======================================================================

Q=  {'dr' 'Q' 0 []}';
LTWAKE=  {'dr' 'LTWAKE' 0 []}';
LTWAKE39=  {'dr' 'LTWAKE39' 0 []}';



Coef_E=1.027;


% in MeV , delete all E6
Volt1_1=16.76945;
Volt1_2=16.76945;
Volt1_3=16.76945;
Volt1_4=16.76945;
Volt1_5=20.96181;
Volt1_6=20.96181;
Volt1_7=20.96181;
Volt1_8=20.96181;

EnerACC1 =Volt1_1+Volt1_2+Volt1_3+Volt1_4+Volt1_5+Volt1_6+Volt1_7+Volt1_8;

Volt39_1=0;
Volt39_2=0;
Volt39_3=0;
Volt39_4=0;

Volt2_1=16.1;
Volt2_2=12.7;
Volt2_3=18.3;
Volt2_4=18.9;
Volt2_5=18.1;
Volt2_6=15.1;
Volt2_7=18.6;
Volt2_8=19.2;

EnerACC2 =Volt2_1+Volt2_2+Volt2_3+Volt2_4+Volt2_5+Volt2_6+Volt2_7+Volt2_8;

deltaE_470 =21.15847;

Volt3_1 = deltaE_470/Coef_E;
Volt3_2 = deltaE_470/Coef_E;
Volt3_3 = deltaE_470/Coef_E;
Volt3_4 = deltaE_470/Coef_E;
Volt3_5 = deltaE_470/Coef_E;
Volt3_6 = deltaE_470/Coef_E;
Volt3_7 = deltaE_470/Coef_E;
Volt3_8 = deltaE_470/Coef_E;

deltaE_1200 =22.8125;

Volt4_1 =deltaE_1200/Coef_E; 
Volt4_2 =deltaE_1200/Coef_E; 
Volt4_3 =deltaE_1200/Coef_E; 
Volt4_4 =deltaE_1200/Coef_E; 
Volt4_5 =deltaE_1200/Coef_E; 
Volt4_6 =deltaE_1200/Coef_E; 
Volt4_7 =deltaE_1200/Coef_E; 
Volt4_8 =deltaE_1200/Coef_E; 

Volt5_1 =deltaE_1200/Coef_E;
Volt5_2 =deltaE_1200/Coef_E;
Volt5_3 =deltaE_1200/Coef_E;
Volt5_4 =deltaE_1200/Coef_E;
Volt5_5 =deltaE_1200/Coef_E;
Volt5_6 =deltaE_1200/Coef_E;
Volt5_7 =deltaE_1200/Coef_E;
Volt5_8 =deltaE_1200/Coef_E;

Volt6_1 =deltaE_1200/Coef_E;
Volt6_2 =deltaE_1200/Coef_E;
Volt6_3 =deltaE_1200/Coef_E;
Volt6_4 =deltaE_1200/Coef_E;
Volt6_5 =deltaE_1200/Coef_E;
Volt6_6 =deltaE_1200/Coef_E;
Volt6_7 =deltaE_1200/Coef_E;
Volt6_8 =deltaE_1200/Coef_E;

Volt7_1 =deltaE_1200/Coef_E; 
Volt7_2 =deltaE_1200/Coef_E; 
Volt7_3 =deltaE_1200/Coef_E; 
Volt7_4 =deltaE_1200/Coef_E; 
Volt7_5 =deltaE_1200/Coef_E; 
Volt7_6 =deltaE_1200/Coef_E; 
Volt7_7 =deltaE_1200/Coef_E; 
Volt7_8 =deltaE_1200/Coef_E;

acc1_phase = 90;
acc2_phase = 90;
acc3_phase = 90;
acc4_phase = 90;
acc5_phase = 90;
acc6_phase = 90;
acc7_phase = 90;
acc39_phase =-90;

lpo_tqa = 0.25000; 
lef_tqa =  0.27680;
len_tqa = lef_tqa;

lpo_tqb = 0.30000;
lef_tqb = 0.32860;
len_tqb = lef_tqb;

lpo_tqd = 0.30000;
lef_tqd  = 0.30460;
len_tqd =lef_tqd;

lpo_tqg = 0.11000;
lef_tqg  = 0.12716;
len_tqg =lef_tqg;

lpo_tqf = 0.34000;
lef_tqf  =0.37280;
len_tqf = lef_tqf;

lpo_qa =0.1500;
lef_qa  =0.1850;

lpo_qc =1.0000;
lef_qc  =0.0000;
len_qc =lpo_qc;

lpo_qtsE  =0.050000;
lpo_qtsI =0.100000;
lef_qtsE = 0.093000;
lef_qtsI  = 0.131000;
len_qtsE=0.093000;
len_qtsI  = lef_qtsI;

lpo_tsb = 0.20000;
lef_tsb  = 0.21500;
len_tsb  = lef_tsb;

Q9ACC1   = {'qu' 'Q9ACC1'  0.185 -4.624075797194812/Kfactor}';
Q10ACC1 = {'qu' 'Q10ACC1'  0.185  4.624075797194812/Kfactor}';

Q1_1UBC2 = {'qu' 'Q1_1UBC2'  0.093  -10.21974139570176/Kfactor}';
Q1_2UBC2 = {'qu' 'Q1_2UBC2'  0.131  -2.302139499132715/Kfactor}';
Q1_3UBC2 = {'qu' 'Q1_3UBC2'  0.093   11.67629240007612/Kfactor}';



Q1DBC2   ={'qu'  'Q1DBC2'      0.27680  -0.9241695637399651/Kfactor}';
Q1_1DBC2={'qu'  'Q1_1DBC2'   0.27680  3.301946880834388/Kfactor}';
Q2DBC2   ={'qu'  'Q2DBC2'       0.27680   -3.079244772985211/Kfactor}';
Q2_2DBC2={'qu'  'Q2_2DBC2'   0.27680  1.174818996182671/Kfactor}';
Q3DBC2   ={'qu'  'Q3DBC2'       0.27680  1.523978438112558/Kfactor}';

k1_bc2 =3.2434;

Q4DBC2={'qu' 'Q4DBC2' 0.27680  -3.2434/Kfactor}';
Q5DBC2={'qu' 'Q5DBC2' 0.27680  3.2434/Kfactor}';
Q6DBC2={'qu' 'Q6DBC2' 0.27680  -3.2434/Kfactor}';
Q7DBC2={'qu' 'Q7DBC2' 0.27680  3.2434/Kfactor}';
Q8DBC2={'qu' 'Q8DBC2' 0.27680  -3.2434/Kfactor}';
Q9DBC2={'qu' 'Q9DBC2' 0.27680  3.2434/Kfactor}';
Q10DBC2={'qu' 'Q10DBC2' 0.27680  -3.2434/Kfactor}';

Q10_3DBC2 ={'qu' 'Q10_3DBC2'  0.30460   -6.426580/Kfactor}';
Q11DBC2    ={'qu'  'Q11DBC2'  0.30460  6.676175287573469/Kfactor}';
Q12DBC2    ={'qu'  'Q12DBC2'  0.30460  -4.651435267997032/Kfactor}';

Q9ACC2      ={'qu' 'Q9ACC2 '  0.185  3.390241580898317/Kfactor}';
Q10ACC2    ={'qu' 'Q10ACC2' 0.185  -3.395539/Kfactor}';
Q9ACC3      ={'qu'  'Q9ACC3'   0.185  2.077865/Kfactor}';
Q10ACC3    ={'qu'  'Q10ACC3' 0.185  -1.857359/Kfactor}';

Q1UBC3      ={'qu' 'Q1UBC3'  0.30460  0.0/Kfactor}';
Q2UBC3      ={'qu' 'Q2UBC3'  0.30460  0.0/Kfactor}';
Q1DBC3      ={'qu' 'Q1DBC3'  0.27680  0.0/Kfactor}';
Q2DBC3      ={'qu' 'Q2DBC3'  0.37280  8.585955E-01/Kfactor}';
Q3DBC3      ={'qu' 'Q3DBC3'  0.37280  -7.936560E-01/Kfactor}';
%
Q9ACC4      ={'qu' 'Q9ACC4  '  0.185   2.942423/Kfactor}';
Q10ACC4    ={'qu' 'Q10ACC4'  0.185   -2.849251/Kfactor}';
Q9ACC5      ={'qu' 'Q9ACC5  '  0.185   2.552070/Kfactor}';
Q10ACC5    ={'qu' 'Q10ACC5'  0.185  -2.318901/Kfactor}';
Q9ACC6      ={'qu' 'Q9ACC6  '  0.185   2.444440/Kfactor}';
Q10ACC6    ={'qu' 'Q10ACC6'  0.185  -2.559552/Kfactor}';
Q10ACC7    ={'qu' 'Q10ACC7'  0.2975 2.957004e-001/Kfactor}';
%
Q2TCOL      ={'qu' 'Q2TCOL '  0.27680  -4.141370e-001/Kfactor}';
Q8TCOL      ={'qu' 'Q8TCOL '  0.27680  2.959839/Kfactor}';
Q9TCOL  	  ={'qu' 'Q9TCOL '  0.27680   -2.501322/Kfactor}';
%
Q3ECOL      ={'qu' 'Q3ECOL'  0.32860  4.245750/Kfactor}';
Q4ECOL      ={'qu' 'Q4ECOL'  0.32860  -3.473380/Kfactor}';
Q5ECOL      ={'qu' 'Q5ECOL'  0.32860  4.245750/Kfactor}';
%
S6ECOL={ 'sext' 'S6ECOL' 0.21500 -167.261/Kfactor}';
S2ECOL={ 'sext' 'S2ECOL' 0.21500  167.261/Kfactor}';
%
Q1ORS            ={'qu' 'Q1ORS '   0.27680  -3.072339/Kfactor}'; 	%former Q1MATCH
Q2ORS            ={'qu'  'Q2ORS'   0.27680  3.723889/Kfactor}'; 	%former Q2MATCH
Q4ORS            ={'qu'  'Q4ORS'   0.27680  -1.284246/Kfactor}'; 	%former Q4MATCH
Q7ORS            ={'qu'  'Q7ORS'   0.27680  1.348810/Kfactor}'; 	%former Q4SUND2
Q9ORS            ={'qu'  'Q9ORS'   0.27680  -1.316407/Kfactor}'; 	%former Q3SEED
Q12ORS          ={'qu'  'Q12ORS' 0.27680  1.038838/Kfactor}'; 	%former Q6MATCH
Q1SFUND1    ={'qu'   'Q1SFUND1'  0.27680  -0.4177991/Kfactor}';	%former Q5SUND1
Q1SFUND2    ={'qu'   'Q1SFUND2'  0.12716  3.351880/Kfactor}';	%new tqg quad
Q1SFUND3    ={'qu'   'Q1SFUND3'  0.12716  -3.812003/Kfactor}';	%new tqg quad
Q1SFUND4    ={'qu'   'Q1SFUND4'  0.12716  2.022660/Kfactor}';	%new tqq quad
Q1SFELC        ={'qu'   'Q1SFELC'   0.27680  -2.186202/Kfactor}'; 	%former Q4SUND1
Q2SFELC        ={'qu'   'Q2SFELC'   0.27680   2.185893/Kfactor}';	%former Q4SUND3
Q6SMATCH   ={'qu'  'Q6SMATCH'   0.27680  -1.247695/Kfactor}'; 	%former Q12SEED
Q8SMATCH   ={'qu'  'Q8SMATCH'   0.27680   1.949318/Kfactor}'; 	%former Q16SEED
Q10SMATCH ={'qu'  'Q10SMATCH'  0.27680  -0.8452856/Kfactor}';	%former Q18SEED
Q13SMATCH ={'qu'  'Q13SMATCH'  0.27680  2.463859/Kfactor}'; 	%former Q20SEED
Q14SMATCH ={'qu'  'Q14SMATCH'  0.12716  1.415450/Kfactor}'; 	%former Q21SEED
Q15SMATCH ={'qu'  'Q15SMATCH'  0.12716  -4.591679/Kfactor}';	%former Q22SEED
%
% Undulator has now a FODO structure 
%  
Q5UND1={'qu' 'Q5UND1' 0.12716  2/Kfactor}';
Q6UND1={'qu' 'Q6UND1' 0.12716  0/Kfactor}';
Q5UND2={'qu' 'Q5UND2' 0.12716  -2/Kfactor}';
Q6UND2={'qu' 'Q6UND2' 0.12716  0/Kfactor}';
Q5UND3={'qu' 'Q5UND3' 0.12716  2/Kfactor}';
Q6UND3={'qu' 'Q6UND3' 0.12716  0/Kfactor}';
Q5UND4={'qu' 'Q5UND4' 0.12716  -2/Kfactor}';
Q6UND4={'qu' 'Q6UND4' 0.12716  0/Kfactor}';
Q5UND5={'qu' 'Q5UND5' 0.12716  2/Kfactor}';
Q6UND5={'qu' 'Q6UND5' 0.12716  0/Kfactor}';
Q5UND6={'qu' 'Q5UND6' 0.12716  -2/Kfactor}';
Q6UND6={'qu' 'Q6UND6' 0.12716  0/Kfactor}';
%
Q9EXP    ={'qu' 'Q9EXP'   0.27680   4.3457247/Kfactor}';
Q10EXP  ={'qu' 'Q10EXP' 0.32860   -3.55288/Kfactor}';
Q11EXP  ={'qu' 'Q11EXP' 0.32860   4.302893/Kfactor}';

%%%%%%%%%%%%%%
%   Quadrupole type TQA:
D0075a={'dr' '' 0.075-0.5*(0.2768-0.25000) []}';
D0100a={'dr' '' 0.100-0.5*(0.2768-0.25000) []}';
%
%   Quadrupole type TQB
D0100bm={'dr' '' 0.075-0.5*(0.32860-0.30000) []}';
D0075b   ={'dr' '' 0.075-0.5*(0.32860-0.30000) []}';
%
%   Quadrupole type TQD
D0075d   ={'dr' '' 0.075-0.5*(len_tqd-lpo_tqd) []}';
%
%   Quadrupole type TQG
D0025g  ={'dr' '' 0.025-0.5*(len_tqg-lpo_tqg) []}';
D0076g  ={'dr' '' 0.076-0.5*(len_tqg-lpo_tqg) []}';
D0100g  ={'dr' '' 0.100-0.5*(len_tqg-lpo_tqg) []}';
D0026g  ={'dr' '' 0.026-0.5*(len_tqg-lpo_tqg) []}';
D0022g  ={'dr' '' 0.022-0.5*(len_tqg-lpo_tqg) []}';
D0018g  ={'dr' '' 0.018-0.5*(len_tqg-lpo_tqg) []}';
%
%   Quadrupole type TQF
D00929f={'dr' '' 0.0929-0.5*(len_tqf-lpo_tqf) []}';
D0100f  ={'dr' '' 0.1000-0.5*(len_tqf-lpo_tqf) []}';
D0135f  ={'dr' '' 0.1350-0.5*(len_tqf-0.3) []}';
D0185f  ={'dr' '' 0.1850-0.5*(len_tqf-0.3) []}';

%   Quadrupole type QC
D0200c  ={'dr' '' 0.2000-0.5*(len_qc-lpo_qc) []}';
D01378c={'dr' '' 0.1378-0.5*(len_qc-lpo_qc) []}';

%   Quadrupole type QA (cold)
D0100qa={'dr' '' 0.100-0.5*(0.185-lpo_qa) []}';
D0075qa={'dr' '' 0.075-0.5*(0.185-lpo_qa) []}';
D0095qa={'dr' '' 0.095-0.5*(0.185-lpo_qa) []}';

%   Quadrupole type QTS (S-band triplet)

D0115t={'dr' '' 0.115-0.5*(len_qtsE-lpo_qtsE) []}';
D0050t={'dr' '' 0.050-0.5*(len_qtsE-lpo_qtsE)-0.5*(len_qtsI-lpo_qtsI) []}';
D0075t={'dr' '' 0.075-0.5*(len_qtsE-lpo_qtsE) []}';

%   Sextupoles
D00881sb={'dr' ''  0.0881-0.5*(len_tsb-lpo_tsb) []}';
D0055sb ={'dr' ''  0.0550-0.5*(len_tsb-lpo_tsb) []}';
D01811sb={'dr' ''  0.1811-0.5*(len_tsb-lpo_tsb) []}';
D0085sb ={'dr' ''  0.0850-0.5*(len_tsb-lpo_tsb) []}';
D0195sb ={'dr' ''  0.1950-0.5*(len_tsb-lpo_tsb) []}';
D0425sb ={'dr' ''  0.4250-0.5*(len_tsb-lpo_tsb) []}';

%
%======================================================================================
%  DRIFT SPACES
%======================================================================================
%
D0233=		{ 'dr' ''  0.233        []}';
D009975=	{ 'dr' ''  0.09975    []}';
D0186=		{ 'dr' ''  0.186        [ ]}';
D11357=		{ 'dr' ''  1.1357  [ ]}';
D0260=		{ 'dr' ''  0.260        [ ]}';
D11754=		{ 'dr' ''  1.1754  [ ]}';
D03325=		{ 'dr' ''  0.3325  [ ]}';
D13025=		{ 'dr' ''  1.3025  [ ]}';
D04132=		{ 'dr' ''  0.4132  [ ]}';
D19690=		{ 'dr' ''  1.969    [ ]}';
D0870=		{ 'dr' ''  0.870        [ ]}';
D1529=		{ 'dr' ''  1.529        [ ]}';
D1196=		{ 'dr' ''  1.196        [ ]}';
D4000=		{ 'dr' ''  4.0             []}';
D0370=		{ 'dr' ''  0.370        [ ]}';
D3170=		{ 'dr' ''  3.170        [ ]}';
D3400=		{ 'dr' ''  3.400        [ ]}';
D158766=	{ 'dr' ''  1.58766    []}';
D04741=		{ 'dr' ''  0.4741  [ ]}';
D032423=	{ 'dr' ''  0.32423    []}';
D0950=		{ 'dr' ''  0.950        [ ]}';
D0400=		{ 'dr' ''  0.4             []}';
D0394=		{ 'dr' ''  0.394        [ ]}';
D0600=		{ 'dr' ''  0.60           []}';
D00622= 	{ 'dr' ''  0.0622      [ ]}';
D00595= 	{ 'dr' ''  0.0595      [ ]}';
D00210=		{ 'dr' ''  0.021    [ ]}';
D0061=		{ 'dr' ''  0.061        [ ]}';
D00515=		{ 'dr' ''  0.0515  [ ]}';
D0237= 		{ 'dr' ''  0.237    [ ]}';
D13706=		{ 'dr' ''  1.3706  [ ]}';
D0064=		{ 'dr' ''  0.064        [ ]}';
D235955=	{ 'dr' ''  2.35955    []}';
D0290=		{ 'dr' ''  0.290        [ ]}';
D150305= 	{ 'dr' ''  1.50305 []}';
D0274= 		{ 'dr' ''  0.274    [ ]}';
D0021=		{ 'dr' ''  0.0210      [ ]}';
D00215=		{ 'dr' ''  0.0215  [ ]}';
D0146=		{ 'dr' ''  0.146           []}';
D0191= 		{ 'dr' ''  0.191        []}';
D0347= 		{ 'dr' ''  0.347        []}';
D010075= 	{ 'dr' ''  0.10075   []}';
D01023= 	{ 'dr' ''  0.1023         [ ]}';
D0076=		{ 'dr' ''  0.0760         [ ]}';
D0134= 		{ 'dr' ''  0.134        []}';
D0326=  	{ 'dr' ''  0.3260         [ ]}';
D0080 = 	{ 'dr' ''  0.0800         [ ]}';
D0106=  	{ 'dr' ''  0.1060         [ ]}';
D0732=  	{ 'dr' ''  0.7320         [ ]}';
D0072= 		{ 'dr' ''  0.072        []}';
D0120=  	{ 'dr' ''  0.1200         [ ]}';
D0018=  	{ 'dr' ''  0.0180         [ ]}';
D0104= 		{ 'dr' ''  0.104        []}';
D0040= 		{ 'dr' ''  0.040        []}';
D0116= 		{ 'dr' ''  0.1160     [ ]}';
D0032= 		{ 'dr' ''  0.0320     [ ]}';
D0084= 		{ 'dr' ''  0.084        []}';
D0215= 		{ 'dr' ''  0.215        []}';
D01365= 	{ 'dr' ''  0.1365         [ ]}';
D00695= 	{ 'dr' ''  0.0695         [ ]}';
D0034= 		{ 'dr' ''  0.0340     [ ]}';
D0150= 		{ 'dr' ''  0.150        []}';
D0500c=		{ 'dr' ''  0.500        []}';
D0085=  	{ 'dr' ''  0.0850         [ ]}';
D0100= { 'dr' ''  0.100    []}';
D0170=  	{ 'dr' ''  0.1700         [ ]}';
D0845=  	{ 'dr' ''  0.8450         [ ]}';
D01056= 	{ 'dr' ''  0.1056         [ ]}';
D01416= 	{ 'dr' ''  0.1416         [ ]}';
D00314=  	{ 'dr' ''  0.0314         [ ]}';
D0053=   	{ 'dr' ''  0.0530         [ ]}';
D0059=   	{ 'dr' ''  0.0590         [ ]}';
D0060=   	{ 'dr' ''  0.0600         [ ]}';
D00265=  	{ 'dr' ''  0.02650       []}';
D02710=  	{ 'dr' ''  0.2710         [ ]}';
D019168= 	{ 'dr' ''  0.19168   []}';
D018862= 	{ 'dr' ''  0.18862   []}';
D03258=  	{ 'dr' ''  0.3258         [ ]}';
D0036= 		{ 'dr' ''  0.036        []}';

D0075 = 	{ 'dr' ''  0.0750         [ ]}';
D00923= 	{ 'dr' ''  0.0923         [ ]}';
D0095 = 	{ 'dr' ''  0.0950         [ ]}';
D00095= 	{ 'dr' ''  0.0095         [ ]}';
D00995= 	{ 'dr' ''  0.0995         [ ]}';
D01014= 	{ 'dr' ''  0.1014         [ ]}';
D0130 = 	{ 'dr' ''  0.1300         [ ]}';
D0160 = 	{ 'dr' ''  0.1600         [ ]}';
D04934= 	{ 'dr' ''  0.4934         [ ]}';
D005815= 	{ 'dr' ''  0.05815   []}';
D007185= 	{ 'dr' ''  0.07185   []}';
D00648= 	{ 'dr' ''  0.0648         [ ]}';
D01526= 	{ 'dr' ''  0.1526         [ ]}';
D14809= 	{ 'dr' ''  1.4809         [ ]}';
D0026= 		{ 'dr' ''  0.026        []}';
D0050= 		{ 'dr' ''  0.050        []}';
D0065= 		{ 'dr' ''  0.065        []}';
D0115= 		{ 'dr' ''  0.115        []}';
D0135= 		{ 'dr' ''  0.135        []}';
D0045= 		{ 'dr' ''  0.045        []}';
D0105= 		{ 'dr' ''  0.105        []}';
D0122= 		{ 'dr' ''  0.122        []}';
D0288= 		{ 'dr' ''  0.288        []}';
D0757= 		{ 'dr' ''  0.757        []}';
D0800= 		{ 'dr' ''  0.800        []}';
D0896= 		{ 'dr' ''  0.896        []}';
D0005= 		{ 'dr' ''  0.005        []}';
D0011= 		{ 'dr' ''  0.011        []}';
D0020= 		{ 'dr' ''  0.020        []}';
D0025= 		{ 'dr' ''  0.025        []}';
D0055= 		{ 'dr' ''  0.055        []}';
D00551=		{ 'dr' ''  0.0551     [ ]}';
D0086= 		{ 'dr' ''  0.086        []}';
D0111= 		{ 'dr' ''  0.111        []}';
D0125= 		{ 'dr' ''  0.125        []}';
D0128= 		{ 'dr' ''  0.128        []}';
D0162= 		{ 'dr' ''  0.162        []}';
D0175= 		{ 'dr' ''  0.175        []}';
D0200= 		{ 'dr' ''  0.200        []}';
D0230= 		{ 'dr' ''  0.230        []}';
D0250= 		{ 'dr' ''  0.250        []}';
D00308= 	{ 'dr' ''  0.0308         [ ]}';
D0039=  	{ 'dr' ''  0.0390         [ ]}';
D0138=  	{ 'dr' ''  0.1380         [ ]}';
D0201=  	{ 'dr' ''  0.2010         [ ]}';
D02378= 	{ 'dr' ''  0.2378         [ ]}';
D03826= 	{ 'dr' ''  0.3826         [ ]}';
D14996= 	{ 'dr' ''  1.4996         [ ]}';
D0010=  	{ 'dr' ''  0.0100         [ ]}';
D00375= 	{ 'dr' ''  0.0375         [ ]}';
D00597= 	{ 'dr' ''  0.0597         [ ]}';
D00598= 	{ 'dr' ''  0.0598         [ ]}';
D00672= 	{ 'dr' ''  0.0672         [ ]}';
D00674= 	{ 'dr' ''  0.0674         [ ]}';
D00854= 	{ 'dr' ''  0.0854         [ ]}';
D00855= 	{ 'dr' ''  0.0855         [ ]}';
D0090=  	{ 'dr' ''  0.0900         [ ]}';
D00982= 	{ 'dr' ''  0.0982         [ ]}';
D0109=  	{ 'dr' ''  0.1090         [ ]}';
D01089= 	{ 'dr' ''  0.1089         [ ]}';
D01245= 	{ 'dr' ''  0.1245         [ ]}';
D0113=  	{ 'dr' ''  0.1130         [ ]}';
D0155=  	{ 'dr' ''  0.1550         [ ]}';
D0156=  	{ 'dr' ''  0.1560         [ ]}';
D01565= 	{ 'dr' ''  0.1565         [ ]}';
D01566= 	{ 'dr' ''  0.1566         [ ]}';
D0157=  	{ 'dr' ''  0.1570         [ ]}';
D01675= 	{ 'dr' ''  0.1675         [ ]}';
D0168=  	{ 'dr' ''  0.1680         [ ]}';
D0176= 		{ 'dr' ''  0.176        []}';
D01766= 	{ 'dr' ''  0.1766         [ ]}';
D01906= 	{ 'dr' ''  0.1906         [ ]}';
D0210=  	{ 'dr' ''  0.2100         [ ]}';
D0219=  	{ 'dr' ''  0.2190         [ ]}';
D02195= 	{ 'dr' ''  0.2195         [ ]}';
D02404= 	{ 'dr' ''  0.2404         [ ]}';
D03097= 	{ 'dr' ''  0.3097         [ ]}';
D03988= 	{ 'dr' ''  0.3988         [ ]}';
D0406=  	{ 'dr' ''  0.4062         [ ]}';
D0745=  	{ 'dr' ''  0.7450         [ ]}';
D07452= 	{ 'dr' ''  0.7452         [ ]}';
D07734= 	{ 'dr' ''  0.7734         [ ]}';
D0817=  	{ 'dr' ''  0.8170         [ ]}';
D09254= 	{ 'dr' ''  0.9254         [ ]}';
D1127=  	{ 'dr' ''  1.1270         [ ]}';
D1172=  	{ 'dr' ''  1.1720         [ ]}';
D0152=  	{ 'dr' ''  0.1520         [ ]}';
D0180=  	{ 'dr' ''  0.1800         [ ]}';
D0225=  	{ 'dr' ''  0.2250         [ ]}';
D0244=  	{ 'dr' ''  0.2440         [ ]}';
D0350=  	{ 'dr' ''  0.3500         [ ]}';
D04165= 	{ 'dr' ''  0.4165         [ ]}';
D04425= 	{ 'dr' ''  0.4425         [ ]}';
D12575= 	{ 'dr' ''  1.2575         [ ]}';
D1500=  	{ 'dr' ''  1.5000         [ ]}';
D0185= 		{ 'dr' ''  0.185        []}';
D0070=  	{ 'dr' ''  0.0700         [ ]}';
D0245=  	{ 'dr' ''  0.2450         [ ]}';
D0300= 		{ 'dr' ''  0.300        []}';
D0179= 		{ 'dr' ''  0.179        []}';
D0169=  	{ 'dr' ''  0.1690         [ ]}';
D0322= 		{ 'dr' ''  0.322        []}';
D0340= 		{ 'dr' ''  0.340        []}';
D1342= 		{ 'dr' ''  1.342        []}';
D1660= 		{ 'dr' ''  1.660        []}';
D0074= 		{ 'dr' ''  0.074        []}';
D0240= 		{ 'dr' ''  0.2400     [ ]}';
D0015=  	{ 'dr' ''  0.015            []}';
D0140=  	{ 'dr' ''  0.140            []}';
D0280=  	{ 'dr' ''  0.280            []}';
D0342=  	{ 'dr' ''  0.342            []}';
D0385=  	{ 'dr' ''  0.385            []}';
D0392=  	{ 'dr' ''  0.392            []}';
D0482=  	{ 'dr' ''  0.482            []}';
D0620=  	{ 'dr' ''  0.620            []}';
D07983= 	{ 'dr' ''  0.79833       []}';
D08833= 	{ 'dr' ''  0.8833         [ ]}';
D21093= 	{ 'dr' ''  2.1093         [ ]}';
D03115= 	{ 'dr' ''  0.3115         [ ]}';
D0161= 		{ 'dr' ''  0.161        []}';
D00824=		{ 'dr' ''  0.0824     [ ]}';
D01711= 	{ 'dr' ''  0.1711         [ ]}';
D02255= 	{ 'dr' ''  0.2255         [ ]}';
D06064=	 	{ 'dr' ''  0.6064     [ ]}';
D01175= 	{ 'dr' ''  0.1175         [ ]}';
D01540= 	{ 'dr' ''  0.1540         [ ]}';
D00650=		{ 'dr' ''  0.065        []}';
D02003= 	{ 'dr' ''  0.2003         [ ]}';
D01320= 	{ 'dr' ''  0.1320         [ ]}';
D00020= 	{ 'dr' ''  0.0002         [ ]}';
D0014= 		{ 'dr' ''  0.014        []}';
D03837= 	{ 'dr' ''  0.3837         [ ]}';
D00765= 	{ 'dr' ''  0.0765         [ ]}';
D00628= 	{ 'dr' ''  0.0628         [ ]}';
D02362= 	{ 'dr' ''  0.2362         [ ]}';
D0165= 		{ 'dr' ''  0.165        []}';
D0480= 		{ 'dr' ''  0.480        []}';
D0470= 		{ 'dr' ''  0.470        []}';
D0353= 		{ 'dr' ''  0.353        []}';
D0058= 		{ 'dr' ''  0.058        []}';
D0022= 		{ 'dr' ''  0.022        []}';
D01224=		{ 'dr' ''  0.1224     [ ]}';
D0110=		{ 'dr' ''  0.110            []}';
D01624=		{ 'dr' ''  0.1624     [ ]}';
D00275=		{ 'dr' ''  0.0275     [ ]}';
D0030= 		{ 'dr' ''  0.03          []}';
D0029=		{ 'dr' ''  0.029            []}';
D00075=		{ 'dr' ''  0.0075     [ ]}';
D0077=		{ 'dr' ''  0.077            []}';
D0071=		{ 'dr' ''  0.071            []}';
D0019=		{ 'dr' ''  0.019            []}';
D0081=		{ 'dr' ''  0.081            []}';
D0393=		{ 'dr' ''  0.393            []}';
D0174=		{ 'dr' ''  0.174            []}';
D1265=		{ 'dr' ''  1.265            []}';
D0068=		{ 'dr' ''  0.068            []}';
D0203=		{ 'dr' ''  0.203            []}';
D0256=		{ 'dr' ''  0.256            []}';
D0017= 		{ 'dr' ''  0.017        []}';
D0033=		{ 'dr' ''  0.033            []}';
D0126=		{ 'dr' ''  0.126            []}';
D0079=		{ 'dr' ''  0.079            []}';
D0078=		{ 'dr' ''  0.078            []}';
D0127=		{ 'dr' ''  0.127            []}';
D080325=	{ 'dr' ''  0.80325       []}';
D014175= 	{ 'dr' ''  0.14175   []}';
D03378= 	{ 'dr' '' 0.3378          [ ]}';
D010175=	{ 'dr' ''  0.10175       []}';
D155331= 	{ 'dr' ''  1.55331   []}';
D04790= 	{ 'dr' ''  0.479            []}';
D0035= 		{ 'dr' ''  0.035        []}';
D09354= 	{ 'dr' ''  0.9354         [ ]}';
D02392= 	{ 'dr' ''  0.2392         [ ]}';
D01752= 	{ 'dr' ''  0.1752         [ ]}';
D0093=    { 'dr' ''  0.093             []}';
D0092=    { 'dr' ''  0.092             []}';
D0088=    { 'dr' ''  0.088             []}';
D0103=    { 'dr' ''  0.103             []}';
D0097=    { 'dr' ''  0.097             []}';



D1IDUMP={'hcr' 'D1IDUMP' 0.99 []}';
H1GUN={'hcr' 'H1GUN' 0 []}';
V1GUN={'vcr'  'V1GUN' 0 []}';
H2GUN={'hcr' 'H2GUN' 0 []}';
V2GUN={'vcr'  'V2GUN' 0 []}';
H3GUN={'hcr'  'H3GUN' 0 []}';
V3GUN={'vcr'  'V3GUN'  0 []}';

BPM1GUN={'mo' 'BPM1GUN' 0 []}';
BPM3GUN={'mo' 'BPM3GUN' 0 []}';

OTR2GUN={ 'dr' ''  0 []}';
OTR3GUN={ 'dr' ''  0 []}';
TOR3GUN={ 'dr' ''  0.09 []}';

COLL3GUN={ 'dr' ''  0 []}';

INJ=[D03115, H1GUN, D0025, V1GUN, D0225, H2GUN, D0025, V2GUN, D00375, BPM1GUN, ...
		D0161, OTR2GUN, D0111, D1IDUMP, TOR3GUN, D0150, OTR3GUN, COLL3GUN, D00824, ...
		BPM3GUN, D01711, H3GUN, D0025, V3GUN, D02255];

BPM9ACC1={'mo' 'BPM9ACC1' 0 []}';

H9ACC1={'hcr'  'H9ACC1' 0 []}';
V9ACC1={'vcr'  'V9ACC1' 0 []}';
H10ACC1={'hcr'  'H10ACC1'  0 []}';
V10ACC1={'vcr'   'V10ACC1'  0 []}';


C1_ACC1={'lc' 'C1_ACC1' 1.0362 [1300 16.76945*1.027 (90)*pi/180]}';
C2_ACC1={'lc' 'C2_ACC1' 1.0362 [1300 16.76945*1.027 (90)*pi/180]}';
C3_ACC1={'lc' 'C3_ACC1' 1.0362 [1300 16.76945*1.027 (90)*pi/180]}';
C4_ACC1={'lc' 'C4_ACC1' 1.0362 [1300 16.76945*1.027 (90)*pi/180]}';
C5_ACC1={'lc' 'C5_ACC1' 1.0362 [1300  20.96181*1.027 (90)*pi/180]}';
C6_ACC1={'lc' 'C6_ACC1' 1.0362 [1300  20.96181*1.027 (90)*pi/180]}';
C7_ACC1={'lc' 'C7_ACC1' 1.0362 [1300  20.96181*1.027 (90)*pi/180]}';
C8_ACC1={'lc' 'C8_ACC1' 1.0362 [1300  20.96181*1.027 (90)*pi/180]}';

LC1_ACC1=[C1_ACC1, LTWAKE, D01056];
LC2_ACC1=[C2_ACC1, LTWAKE, D01056];
LC3_ACC1=[C3_ACC1, LTWAKE, D01056];
LC4_ACC1=[C4_ACC1, LTWAKE, D01056];
LC5_ACC1=[C5_ACC1, LTWAKE, D01056];
LC6_ACC1=[C6_ACC1, LTWAKE, D01056];
LC7_ACC1=[C7_ACC1, LTWAKE, D01056];
LC8_ACC1=[C8_ACC1, LTWAKE, D01056];

StartRFACC1 ={ 'dr' ''  0 []}';
EndRFACC1  ={ 'dr' ''  0 []}';

ACC1=[D06064, StartRFACC1, D01416,  LC1_ACC1, D01014, D01416, LC2_ACC1, D01014,  ...
			D01416,  LC3_ACC1, D01014, D01416, LC4_ACC1, D01014,  ...
			D01416,  LC5_ACC1, D01014, D01416, LC6_ACC1, D01014,  ...
			D01416,  LC7_ACC1, D01014, D01416, LC8_ACC1, EndRFACC1, D01175, ...
			BPM9ACC1, D01540, Q9ACC1, H9ACC1, V9ACC1, D00650, ...
			Q10ACC1, H10ACC1, V10ACC1, D02003];
			
L_cav39=0.3459;
DACC39  ={ 'dr' ''  (0.50611-0.3459)/2 []}';

C1_ACC39={'lc' 'C1_ACC39' L_cav39 [3900 Volt39_1*L_cav39 (acc39_phase)*pi/180]}';
C2_ACC39={'lc' 'C2_ACC39' L_cav39 [3900 Volt39_2*L_cav39 (acc39_phase)*pi/180]}';
C3_ACC39={'lc' 'C3_ACC39' L_cav39 [3900 Volt39_3*L_cav39 (acc39_phase)*pi/180]}';
C4_ACC39={'lc' 'C4_ACC39' L_cav39 [3900 Volt39_4*L_cav39 (acc39_phase)*pi/180]}';

LC1_ACC39=[DACC39, C1_ACC39, DACC39, LTWAKE39];
LC2_ACC39=[DACC39, C2_ACC39, DACC39, LTWAKE39];
LC3_ACC39=[DACC39, C3_ACC39, DACC39, LTWAKE39];
LC4_ACC39=[DACC39, C4_ACC39, DACC39, LTWAKE39];

StartRFACC39 ={ 'dr' ''  0 []}';
EndRFACC39  ={ 'dr' ''  0 []}';

ACC39=[StartRFACC39, D03378, LC1_ACC39, D010175, LC2_ACC39, D010175, LC3_ACC39, 	...
			D010175, LC4_ACC39, EndRFACC39, D0080, D155331, D04790];
			
%=====================================================================================
%  BC2   = UBC2 + MBC2 + DBC2
%=====================================================================================
%-------------------------------------------------------------------------------------
%  UBC2
%-------------------------------------------------------------------------------------
% Phase monitors and toroid

PHA1UBC2  ={ 'dr' ''  0.040 []}';
PHAB1UBC2  ={ 'dr' ''  0.040 []}';
TOR3UBC2  ={ 'dr' ''  0.1578 []}';

H1UBC2={'hcr'  'H1UBC2' 0.1 []}';
V1UBC2={'vcr'   'V1UBC2' 0.1 []}';

DBPM2UBC2={ 'dr' ''  0.450/2 []}';
BPM2UBC2={'mo' 'BPM2UBC2' 0 []}';

BPM2UBC2_L=[DBPM2UBC2, BPM2UBC2,DBPM2UBC2];

D01230t={ 'dr' ''  0.1230+0.007  []}';

HV1UBC2=[D0014, V1UBC2, D0084,  H1UBC2];
QUBC2000=[D0115t, Q1_1UBC2, D0050t, Q1_2UBC2, D0050t, Q1_3UBC2, D0075t];
%
StartUBC2 ={ 'dr' ''  0 []}';
EndUBC2 ={ 'dr' ''  0 []}';
%
%
UBC2=[StartUBC2, D01230t, PHA1UBC2, QUBC2000, HV1UBC2, D0053, BPM2UBC2_L, ...
			PHAB1UBC2, D00020, TOR3UBC2, D01320, EndUBC2];
			
%-------------------------------------------------------------------------------------
%  MBC2
%-------------------------------------------------------------------------------------
lll_bc2 =  0.5;
ang_bc2 =  18*pi/180;
larc_bc2 =  lll_bc2*ang_bc2/sin(ang_bc2);
len_bc2 = larc_bc2;

gap_bc2  =  0.025;
hgap_bc2 =  0.000;
fint_bc2 =  0.000;

D0500bc2={ 'dr' ''  0.5/cos(ang_bc2) []}';

D1BC2={'be' 'D1BC2' len_bc2 [-ang_bc2 hgap_bc2 0 -ang_bc2 0.5 0.5 0]}';
D2BC2={'be' 'D2BC2' len_bc2 [ ang_bc2 hgap_bc2  ang_bc2  0 0.5 0.5 0]}';
D3BC2={'be' 'D3BC2' len_bc2 [ ang_bc2 hgap_bc2 0  ang_bc2 0.5 0.5 0]}';
D4BC2={'be' 'D4BC2' len_bc2 [-ang_bc2 hgap_bc2 -ang_bc2 0  0.5 0.5 0]}';

COLL2BC2={ 'dr' ''  0.433 []}';

H1BC2={'hcr'  'H1BC2' 0 []}';
H2BC2={'hcr'  'H2BC2' 0 []}';
H3BC2={'hcr'  'H3BC2' 0 []}';
H4BC2={'hcr'  'H4BC2' 0 []}';

BPM2BC2={ 'dr' ''  0 []}';
OTR3BC2={ 'dr' ''  0 []}';
StartMBC2={ 'dr' ''  0 []}';
EndMBC2={ 'dr' ''  0 []}';

MBC2=[StartMBC2, D0100, D1BC2,   H1BC2, D0500bc2,   D2BC2, H2BC2, D0105, ...
			BPM2BC2,   D0045, COLL2BC2, D0115, OTR3BC2, D0115,...
			D0150, D3BC2, H3BC2,   D0500bc2, D4BC2,   H4BC2, D0100, EndMBC2];
			
%------------------------------------------------------------------------------------
% DBC2   = DBC2_1   + DBC2_FODO + DBC2_3
%------------------------------------------------------------------------------------
%new double steerer for 2010 HV6DBC2

H1DBC2={'hcr'  'H1DBC2' 0.1 []}';
V1DBC2={'vcr'  'V1DBC2' 0.1 []}';
H2DBC2={'hcr'  'H2DBC2' 0.1 []}';
V2DBC2={'vcr'  ' V2DBC2' 0.1 []}';
H4DBC2={'hcr'  'H4DBC2' 0.1 []}';
V4DBC2={'vcr'  ' V4DBC2' 0.1 []}';
H5DBC2={'hcr'  'H5DBC2' 0.1 []}';
HV6DBC2={'cr'  'HV6DBC2' 0.1 []}';
V8DBC2={'vcr'  'V8DBC2' 0.1 []}';
H9DBC2={'hcr'  'H9DBC2' 0.1 []}';
V10DBC2={'vcr'  'V10DBC2' 0.1 []}';
H11DBC2={'hcr'  'H11DBC2' 0.1 []}';
V11DBC2={'hcr'  'V11DBC2' 0.1 []}';

EO8DBC2={ 'dr' ''  0.194 []}';
D0003={ 'dr' ''  0.003 []}';

BPM1DBC2  ={'mo' 'BPM1DBC2'   0 []}';
BPM3DBC2  ={'mo' 'BPM3DBC2'  0 []}';
BPM5DBC2  ={'mo' 'BPM5DBC2'  0 []}';
BPM7DBC2  ={'mo' 'BPM7DBC2'  0 []}';
BPM9DBC2  ={'mo' 'BPM9DBC2'  0 []}';
BPM11DBC2={'mo' 'BPM11DBC2' 0 []}';
%
OTR4DBC2={ 'dr' ''  0 []}';
OTR6DBC2={ 'dr' ''  0 []}';
OTR8DBC2={ 'dr' ''  0 []}';
OTR10DBC2={ 'dr' ''  0 []}';
%
WIRE4DBC2={ 'dr' ''  0 []}';
WIRE6DBC2={ 'dr' ''  0 []}';
WIRE8DBC2={ 'dr' ''  0 []}';
WIRE10DBC2={ 'dr' ''  0 []}';
%

PHA3DBC2={ 'dr' ''  0.040 []}';
TOR10DBC2={ 'dr' ''  0.216 []}';

%Quadrupoles with drifts and BPM's.

Q1DBC2BPM=    [D0100a, Q1DBC2,     BPM1DBC2, D0075a];
Q1_1DBC2000= 	[D0075a, Q1_1DBC2,             D0075a];
Q2DBC2000=    	[D0100a, Q2DBC2,               D0100a];
Q2_2DBC2000=  	[D0075a, Q2_2DBC2,             D0075a];
Q3DBC2BPM=    	[D0100a, Q3DBC2,     BPM3DBC2, D0100a];

Q4DBC2000=    	[D0075a, Q4DBC2,                D0075a];
Q5DBC2BPM=    	[D0100a, Q5DBC2,     BPM5DBC2,  D0100a];
Q6DBC2000=    	[D0075a, Q6DBC2,                D0075a];
Q7DBC2BPM=    	[D0100a, Q7DBC2,     BPM7DBC2,  D0100a];
Q8DBC2000=    	[D0075a, Q8DBC2,                D0075a];
Q9DBC2BPM=    	[D0100a, Q9DBC2,     BPM9DBC2,  D0100a];
Q10DBC2000=   	[D0075a, Q10DBC2,               D0075a];

Q10_3DBC2000= 	[D0075d, Q10_3DBC2,             D0075d];
Q11DBC2BPM=   	[D0075d, Q11DBC2,    BPM11DBC2, D0075d];
Q12DBC2000=   	[D0075d, Q12DBC2,               D0075d];

%Steering blocks
DH1DBC2=  	[D0050, H1DBC2,  D0035];
DV1DBC2=  	[D0060, V1DBC2,  D0040];
DH2DBC2=  	[D0025, H2DBC2,  D0050];
DV2DBC2=  	[D0050, V2DBC2,  D0025];
DH4DBC2=  	[D0050, H4DBC2,  D0025];
DV4DBC2=  	[D0020, V4DBC2,  D0040];
DH5DBC2=  	[D0050, H5DBC2,  D0050];
DHV6DBC2=  	[D0020, HV6DBC2,  D0040];
DEO8DBC2=  	[D0003, EO8DBC2,  D0003];
DV8DBC2=  	[D0020, V8DBC2,  D0040];
DH9DBC2=  	[D0050, H9DBC2,  D0050];
DV10DBC2= 	[D0020, V10DBC2, D0040];
DH11DBC2= 	[D0005, H11DBC2, D0045];
DV11DBC2= 	[D0045, V11DBC2, D0005];

DBC2_1=   	[D0076, ...
                  	DH1DBC2, Q1DBC2BPM,  DV1DBC2,    Q1_1DBC2000,   ... 
                  	DH2DBC2, Q2DBC2000,  DV2DBC2,    Q2_2DBC2000,   ...
                  	D0135,   PHA3DBC2,   Q3DBC2BPM,  DH4DBC2];

DBC2_FODO1_1= 	[Q4DBC2000, DV4DBC2,   D0100, OTR4DBC2];
DBC2_FODO1_2= 	[D0025,     WIRE4DBC2, D0105, D0135,   ...
                      	Q5DBC2BPM, DH5DBC2,   D0128, D0072, D0125];
DBC2_FODO1=   	[DBC2_FODO1_1, DBC2_FODO1_2];

DBC2_FODO2_1= 	[Q6DBC2000, DHV6DBC2,   D0100, OTR6DBC2];
DBC2_FODO2_2= 	[D0025,     WIRE6DBC2, D0105, D0135,         ...     
                      	Q7DBC2BPM, DEO8DBC2,   D0100, D0175, D0050];
DBC2_FODO2=   	[DBC2_FODO2_1, DBC2_FODO2_2];

DBC2_FODO3_1= 	[Q8DBC2000, DV8DBC2,   D0100, OTR8DBC2];
DBC2_FODO3_2= 	[D0025,     WIRE8DBC2, D0105, D0135,         ... 
                      	Q9DBC2BPM, DH9DBC2,   D0055, D0230, D0040]; 
DBC2_FODO3=   	[DBC2_FODO3_1, DBC2_FODO3_2];

DBC2_FODO4_1= 	[Q10DBC2000, DV10DBC2,   D0100, OTR10DBC2]; 
DBC2_FODO4_2= 	[D0025,      WIRE10DBC2, D0105, D0135]; 
DBC2_FODO4=   	[DBC2_FODO4_1, DBC2_FODO4_2];

%  Three FODO cells

DBC2_FODO=  	[DBC2_FODO1, DBC2_FODO2, DBC2_FODO3];
DBC2_3=     	[DBC2_FODO4,                  ...
                    	TOR10DBC2,    D0011,             ...     
                    	Q10_3DBC2000, DH11DBC2,          ...
                    	Q11DBC2BPM,   DV11DBC2,          ...  
                    	Q12DBC2000,   D0104, ...
						D0160,        D0162,  D0160];    
						
StartDBC2= 	{ 'dr' ''  0 []}';
EndDBC2=   	{ 'dr' ''  0 []}';

DBC2= [StartDBC2, DBC2_1, DBC2_FODO, DBC2_3, EndDBC2];

StartBC2= 	{ 'dr' ''  0 []}';
EndBC2=   	{ 'dr' ''  0 []}';

BC2= [StartBC2, UBC2, MBC2, DBC2, EndBC2];
%=====================================================================================
%  ACC2 ... ACC3 = ACC23 = ACC2 + ACC3
%=====================================================================================
%-------------------------------------------------------------------------------------
%  ACC2
%-------------------------------------------------------------------------------------


BPM9ACC2={'mo' 'BPM9ACC2' 0 []}';

C1_ACC2={'lc' 'C1_ACC2' 1.0362 [1300 Volt2_1*1.027 (acc2_phase)*pi/180]}';
C2_ACC2={'lc' 'C2_ACC2' 1.0362 [1300 Volt2_2*1.027 (acc2_phase)*pi/180]}';
C3_ACC2={'lc' 'C3_ACC2' 1.0362 [1300 Volt2_3*1.027 (acc2_phase)*pi/180]}';
C4_ACC2={'lc' 'C4_ACC2' 1.0362 [1300 Volt2_4*1.027 (acc2_phase)*pi/180]}';
C5_ACC2={'lc' 'C5_ACC2' 1.0362 [1300 Volt2_5*1.027 (acc2_phase)*pi/180]}';
C6_ACC2={'lc' 'C6_ACC2' 1.0362 [1300 Volt2_6*1.027 (acc2_phase)*pi/180]}';
C7_ACC2={'lc' 'C7_ACC2' 1.0362 [1300 Volt2_7*1.027 (acc2_phase)*pi/180]}';
C8_ACC2={'lc' 'C8_ACC2' 1.0362 [1300 Volt2_8*1.027 (acc2_phase)*pi/180]}';

LC1_ACC2= 	[C1_ACC2, LTWAKE, D01056];
LC2_ACC2= 	[C2_ACC2, LTWAKE, D01056];
LC3_ACC2= 	[C3_ACC2, LTWAKE, D01056];
LC4_ACC2= 	[C4_ACC2, LTWAKE, D01056];
LC5_ACC2= 	[C5_ACC2, LTWAKE, D01056];
LC6_ACC2= 	[C6_ACC2, LTWAKE, D01056];
LC7_ACC2= 	[C7_ACC2, LTWAKE, D01056];
LC8_ACC2= 	[C8_ACC2, LTWAKE, D01056];

%
StartRFACC2=	{ 'dr' ''  0 []}';
EndRFACC2=	{ 'dr' ''  0 []}';
%
TMACC2= 	[StartRFACC2, D01416, LC1_ACC2, D01014, D01416, LC2_ACC2, D01014,  ...
                D01416,  LC3_ACC2, D01014, D01416, LC4_ACC2, D01014,  ...
                D01416,  LC5_ACC2, D01014, D01416, LC6_ACC2, D01014,  ...
                D01416,  LC7_ACC2, D01014, D01416, LC8_ACC2, EndRFACC2, D01175, ...
				BPM9ACC2];

% doublet / steerers in series
H9ACC2={'hcr'  'H9ACC2' 0 []}';
V9ACC2={'vcr'  'V9ACC2' 0 []}';
H10ACC2={'hcr'  'H10ACC2' 0 []}';
V10ACC2={'vcr'  'V10ACC2' 0 []}';
%
DQACC2=[D0095qa, Q9ACC2, H9ACC2, V9ACC2, D0065, Q10ACC2, H10ACC2, V10ACC2, D0075qa];

StartACC2= 	{ 'dr' ''  0 []}';
EndACC2=   	{ 'dr' ''  0 []}';

ACC2=  [StartACC2, D09354, TMACC2, D00765, DQACC2, D00628, D0080, D02392, EndACC2];

%-------------------------------------------------------------------------------------
%  ACC3
%-------------------------------------------------------------------------------------

BPM9ACC3= { 'mo' 'BPM9ACC3'  0 []}';

C1_ACC3={'lc' 'C1_ACC3' 1.0362 [1300 Volt3_1*1.027 (acc3_phase)*pi/180]}';
C2_ACC3={'lc' 'C2_ACC3' 1.0362 [1300 Volt3_2*1.027 (acc3_phase)*pi/180]}';
C3_ACC3={'lc' 'C3_ACC3' 1.0362 [1300 Volt3_3*1.027 (acc3_phase)*pi/180]}';
C4_ACC3={'lc' 'C4_ACC3' 1.0362 [1300 Volt3_4*1.027 (acc3_phase)*pi/180]}';
C5_ACC3={'lc' 'C5_ACC3' 1.0362 [1300 Volt3_5*1.027 (acc3_phase)*pi/180]}';
C6_ACC3={'lc' 'C6_ACC3' 1.0362 [1300 Volt3_6*1.027 (acc3_phase)*pi/180]}';
C7_ACC3={'lc' 'C7_ACC3' 1.0362 [1300 Volt3_7*1.027 (acc3_phase)*pi/180]}';
C8_ACC3={'lc' 'C8_ACC3' 1.0362 [1300 Volt3_8*1.027 (acc3_phase)*pi/180]}';

LC1_ACC3= 	[C1_ACC3, LTWAKE, D01056];
LC2_ACC3= 	[C2_ACC3, LTWAKE, D01056];
LC3_ACC3= 	[C3_ACC3, LTWAKE, D01056];
LC4_ACC3= 	[C4_ACC3, LTWAKE, D01056];
LC5_ACC3= 	[C5_ACC3, LTWAKE, D01056];
LC6_ACC3= 	[C6_ACC3, LTWAKE, D01056];
LC7_ACC3= 	[C7_ACC3, LTWAKE, D01056];
LC8_ACC3= 	[C8_ACC3, LTWAKE, D01056];

StartRFACC3=	{ 'dr' ''  0 []}';
EndRFACC3=	{ 'dr' ''  0 []}';

TMACC3= [StartRFACC3, D01416, LC1_ACC3, D01014, D01416, LC2_ACC3, D01014,  ...
                D01416,  LC3_ACC3, D01014, D01416, LC4_ACC3, D01014,  ...
                D01416,  LC5_ACC3, D01014, D01416, LC6_ACC3, D01014,  ...
                D01416,  LC7_ACC3, D01014, D01416, LC8_ACC3, EndRFACC3, D01175, ...
				BPM9ACC3];

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% quads have separate power supplies, there is only H/V10ACC3
H10ACC3={'hcr'  'H10ACC3' 0 []}';
V10ACC3={'vcr'  'V10ACC3' 0 []}';

DQACC3= 	[D0095qa, Q9ACC3, D0065, Q10ACC3, H10ACC3, V10ACC3, D0075qa];

StartACC3= 	{ 'dr' ''  0 []}';
EndACC3=   	{ 'dr' ''  0 []}';
%
ACC3= 		[StartACC3, D0080,  TMACC3, D00765, DQACC3, D0064, D0080,   ...
                 	D0160, D13706, D0237,  D0075,  EndACC3];

ACC23=	 	[ACC2, ACC3];

%=====================================================================================
%  BC3 = UBC3 + MBC3 + DBC3 
%=====================================================================================
%-------------------------------------------------------------------------------------
%  UBC3
%-------------------------------------------------------------------------------------

H2UBC3= {'hcr'  'H2UBC3' 0.1 []}';
V2UBC3= {'vcr'  'V2UBC3' 0.1 []}';

TOR1UBC3= 	{ 'dr' ''  0.216 []}';
DARK1UBC3= 	{ 'dr' ''  0.200 []}';

OTR3UBC3i={ 'dr' ''  0.230/2 []}';
OTR3UBC3=	{ 'dr' ''  0 []}';
OTR3UBC300=[OTR3UBC3i, OTR3UBC3, OTR3UBC3i];

BPM1UBC3={ 'mo' 'BPM1UBC3'  0 []}';
BPM2UBC3={ 'mo' 'BPM2UBC3'  0 []}';

% Quadrupole with BPM's

Q1UBC3BPM= [D0075d, Q1UBC3,   BPM1UBC3, D0075d];
Q2UBC3000= 	[D0075d, Q2UBC3, D0075d];

% Steering blocks

HV2UBC3= 	[D01245, H2UBC3, D01245, D0175,  V2UBC3, BPM2UBC3, D01752];

UBC3= 		[D0106,     D0150,    DARK1UBC3, TOR1UBC3,     ...
              		Q1UBC3BPM, D0050,    Q2UBC3000, D0106,        ... 
              		HV2UBC3,   OTR3UBC300, D0106,     D01766];

%-------------------------------------------------------------------------------------
%  MBC3
%-------------------------------------------------------------------------------------
lll_bc3  =  0.5;
ang_bc3 =  3.8*pi/180;
larc_bc3 =  lll_bc3*ang_bc3/sin(ang_bc3);
len_bc3 =  larc_bc3;

D1BC3  ={'be'  'D1BC3' len_bc3 [-ang_bc3 0 0 -ang_bc3 0.5 0.5 0]}';
D4BC3  ={'be' 'D4BC3' len_bc3 [ ang_bc3 0  ang_bc3 0 0.5 0.5 0]}';
D5BC3  ={'be' 'D5BC3' len_bc3 [ ang_bc3 0 0  ang_bc3 0.5 0.5 0]}';
D10BC3={'be' 'D10BC3' len_bc3 [-ang_bc3 0 -ang_bc3 0 0.5 0.5 0]}';
D11BC3={'be' 'D11BC3' len_bc3 [-ang_bc3 0 0 -ang_bc3 0.5 0.5 0]}';
D14BC3={'be' 'D14BC3' len_bc3 [ ang_bc3 0  ang_bc3 0 0.5 0.5 0]}';

% steerers
H1BC3={'hcr'  'H1BC3' 0 []}';
H4BC3={'hcr'  'H4BC3' 0 []}';
H5BC3={'hcr'  'H5BC3' 0 []}';
H10BC3={'hcr'  'H10BC3' 0 []}';
H11BC3={'hcr'  'H11BC3' 0 []}';
H14BC3={'hcr'  'H14BC3' 0 []}';

% OTR screens
OTR8BC3i={ 'dr' ''  0.230/2/cos(ang_bc3) []}';
OTR11BC3i={ 'dr' ''  0.230/2 []}';
OTR8BC3=	{ 'dr' ''  0 []}';
OTR11BC3=	{ 'dr' ''  0 []}';
OTR8BC300=	[OTR8BC3i, OTR8BC3, OTR8BC3i];
OTR11BC300=	[OTR11BC3i, OTR11BC3, OTR11BC3i];

% BPMs
BPM4BC3={'mo' 'BPM4BC3' 0.034 []}';
BPM11BC3={'mo' 'BPM11BC3' 0.034 []}';

D0745bc3={'dr' '' 0.7450/cos(ang_bc3) []}';
D0200bc3={'dr' '' 0.2000/cos(ang_bc3) []}';
D0826bc3={'dr' '' 0.826/cos(ang_bc3) []}';
D0150bc3={'dr' '' 0.150/cos(ang_bc3) []}';
D0459bc3={'dr' '' 0.459/cos(ang_bc3) []}';
D2380bc3 = 	[D0745bc3, D0200bc3, D0826bc3, D0150bc3, D0459bc3];

D04310bc3={'dr' '' 0.4310/cos(ang_bc3) []}';
D08080bc3={'dr' '' 0.8080/cos(ang_bc3) []}';
D09254bc3={'dr' '' 0.9254/cos(ang_bc3) []}';
D02347bc3={'dr' '' 0.2347/cos(ang_bc3) []}';
D10044bc3={'dr' '' 1.0044/cos(ang_bc3) []}';
D2629a= 	[D04310bc3, D0150bc3, D08080bc3, D0200bc3,  D09254bc3];
D2629b= 	[OTR8BC300,   D09254bc3, D0200bc3,  D02347bc3, D0150bc3, D10044bc3];

D09611bc3={'dr' '' 0.9611/cos(ang_bc3) []}';
D03238bc3={'dr' '' 0.3238/cos(ang_bc3) []}';
D07451bc3={'dr' '' 0.7451/cos(ang_bc3) []}';
D238 = [D09611bc3, D0150bc3, D03238bc3, D0200bc3, D07451bc3];

StartMBC3= 	{ 'dr' ''  0 []}';
EndMBC3={ 'dr' ''  0 []}';

MBC3= 		[StartMBC3,      D00982,               ...
              		D1BC3,  H1BC3,  D2380bc3,...
              		D4BC3,  H4BC3,  D00598,    BPM4BC3,  D00672,  ...
					D0230,     D0109,               ...
              		D5BC3,  H5BC3,  D2629a,    D2629b,            ...
              		D10BC3, H10BC3, D00597,    BPM11BC3, D00674,  ...
					OTR11BC300,  D01089,            ...
              		D11BC3, H11BC3, D238,                         ...
              		D14BC3, H14BC3, D00855,    EndMBC3];
%-------------------------------------------------------------------------------------
%  DBC3
%-------------------------------------------------------------------------------------

% BPMs
BPM1DBC3={'mo' 'BPM1DBC3' 0 []}';
BPM3DBC3={'mo' 'BPM3DBC3' 0 []}';

V1DBC3={'vcr'  'V1DBC3' 0.1 []}';
H1DBC3={'hcr'  'H1DBC3' 0.1 []}';
H3DBC3={'hcr'  'H3DBC3' 0.1 []}';
V3DBC3={'vcr'  'V3DBC3' 0.1 []}';

% Steering blocks

VH1DBC3= 	[D0072,  V1DBC3, D0128,    H1DBC3, D01056];
HV3DBC3= 	[D00375, H3DBC3, D00375,   D0175,  V3DBC3, BPM3DBC3, D0175];

% OTR screens

OTR4DBC3i={ 'dr' ''  0.230/2 []}';
OTR5DBC3i={ 'dr' ''  0.230/2 []}';
OTR4DBC3=	{ 'dr' ''  0 []}';
OTR5DBC3=	{ 'dr' ''  0 []}';
OTR4DBC300=	[OTR4DBC3i, OTR4DBC3, OTR4DBC3i];
OTR5DBC300=	[OTR5DBC3i, OTR5DBC3, OTR5DBC3i];
%
% Wirescanners
WIRE5DBC3i={ 'dr' ''  0.005/2 []}';
WIRE5DBC3= 	{ 'dr' ''  0 []}';
WIRE5DBC300=	[WIRE5DBC3i, WIRE5DBC3, WIRE5DBC3i];	
%
% Quadrupole with BPM's
%
Q1DBC3BPM= [D0100a, Q1DBC3,   BPM1DBC3, D0100a];
Q2DBC3000= 	[D0100f, Q2DBC3,             D0100f];
Q3DBC3000= 	[D0100f, Q3DBC3,             D00929f];
%
TOR5DBC3=	{ 'dr' ''  0.216 []}';
RMON4DBC3=	{ 'dr' ''  0.715 []}';
PHA4DBC3=	{ 'dr' ''  0.04 []}';
%
StartDBC3= 	{ 'dr' ''  0 []}';
EndDBC3=   	{ 'dr' ''  0 []}';
%
DBC3= [StartDBC3, VH1DBC3,  D02404,    D01906, Q1DBC3BPM, D00551,    ... 
              		Q2DBC3000, D0010,    Q3DBC3000, D0106,  HV3DBC3,             ...
              		D0090, OTR4DBC300, PHA4DBC3,  D0100,  OTR5DBC300,   D0025,         ...
              		WIRE5DBC300, D0100, TOR5DBC3, RMON4DBC3, D0150,  D0106,     EndDBC3];

StartBC3= 	{ 'dr' ''  0 []}';
EndBC3=   	{ 'dr' ''  0 []}';

BC3=  [StartBC3, UBC3, MBC3, DBC3, EndBC3];

%=====================================================================================
%  ACC4567
%=====================================================================================
%-------------------------------------------------------------------------------------
%  ACC4 
%-------------------------------------------------------------------------------------

BPM9ACC4= 	{ 'mo' 'BPM9ACC4'  0 []}';

C1_ACC4={'lc' 'C1_ACC4' 1.0362 [1300 Volt4_1*1.027 (acc4_phase)*pi/180]}';
C2_ACC4={'lc' 'C2_ACC4' 1.0362 [1300 Volt4_2*1.027 (acc4_phase)*pi/180]}';
C3_ACC4={'lc' 'C3_ACC4' 1.0362 [1300 Volt4_3*1.027 (acc4_phase)*pi/180]}';
C4_ACC4={'lc' 'C4_ACC4' 1.0362 [1300 Volt4_4*1.027 (acc4_phase)*pi/180]}';
C5_ACC4={'lc' 'C5_ACC4' 1.0362 [1300 Volt4_5*1.027 (acc4_phase)*pi/180]}';
C6_ACC4={'lc' 'C6_ACC4' 1.0362 [1300 Volt4_6*1.027 (acc4_phase)*pi/180]}';
C7_ACC4={'lc' 'C7_ACC4' 1.0362 [1300 Volt4_7*1.027 (acc4_phase)*pi/180]}';
C8_ACC4={'lc' 'C8_ACC4' 1.0362 [1300 Volt4_8*1.027 (acc4_phase)*pi/180]}';

LC1_ACC4= 	[C1_ACC4, LTWAKE, D01056];
LC2_ACC4= 	[C2_ACC4, LTWAKE, D01056];
LC3_ACC4= 	[C3_ACC4, LTWAKE, D01056];
LC4_ACC4= 	[C4_ACC4, LTWAKE, D01056];
LC5_ACC4= 	[C5_ACC4, LTWAKE, D01056];
LC6_ACC4= 	[C6_ACC4, LTWAKE, D01056];
LC7_ACC4= 	[C7_ACC4, LTWAKE, D01056];
LC8_ACC4= 	[C8_ACC4, LTWAKE, D01056];

%
StartRFACC4=	{ 'dr' ''  0 []}';
EndRFACC4=	{ 'dr' ''  0 []}';
%
TMACC4= 	[StartRFACC4, D01416, LC1_ACC4, D01014, D01416, LC2_ACC4, D01014,  ...
                D01416,  LC3_ACC4, D01014, D01416, LC4_ACC4, D01014,  ...
                D01416,  LC5_ACC4, D01014, D01416, LC6_ACC4, D01014,  ...
                D01416,  LC7_ACC4, D01014, D01416, LC8_ACC4, EndRFACC4, D01175, ...
				BPM9ACC4];
% 
H10ACC4= 	{ 'hcr' 'H10ACC4'  0 []}';
V10ACC4= 	{ 'vcr' 'V10ACC4'  0 []}';
%
DQACC4= 	[D0095qa, Q9ACC4, D0065, Q10ACC4, H10ACC4, V10ACC4, D0075qa];
%
StartACC4= 	{ 'dr' ''  0 []}';
EndACC4=   	{ 'dr' ''  0 []}';

ACC4=   	[StartACC4, D0075, D0100,  D0156, D03837, D0160, D0080,   ... 
                	TMACC4, D00765, DQACC4, D00628, D0080, D02362, EndACC4];


%-------------------------------------------------------------------------------------
%  ACC5
%-------------------------------------------------------------------------------------
%
BPM9ACC5= 	{ 'mo' 'BPM9ACC5'  0 []}';

C1_ACC5={'lc' 'C1_ACC5' 1.0362 [1300 Volt5_1*1.027 (acc5_phase)*pi/180]}';
C2_ACC5={'lc' 'C2_ACC5' 1.0362 [1300 Volt5_2*1.027 (acc5_phase)*pi/180]}';
C3_ACC5={'lc' 'C3_ACC5' 1.0362 [1300 Volt5_3*1.027 (acc5_phase)*pi/180]}';
C4_ACC5={'lc' 'C4_ACC5' 1.0362 [1300 Volt5_4*1.027 (acc5_phase)*pi/180]}';
C5_ACC5={'lc' 'C5_ACC5' 1.0362 [1300 Volt5_5*1.027 (acc5_phase)*pi/180]}';
C6_ACC5={'lc' 'C6_ACC5' 1.0362 [1300 Volt5_6*1.027 (acc5_phase)*pi/180]}';
C7_ACC5={'lc' 'C7_ACC5' 1.0362 [1300 Volt5_7*1.027 (acc5_phase)*pi/180]}';
C8_ACC5={'lc' 'C8_ACC5' 1.0362 [1300 Volt5_8*1.027 (acc5_phase)*pi/180]}';

LC1_ACC5= 	[C1_ACC5, LTWAKE, D01056];
LC2_ACC5= 	[C2_ACC5, LTWAKE, D01056];
LC3_ACC5= 	[C3_ACC5, LTWAKE, D01056];
LC4_ACC5= 	[C4_ACC5, LTWAKE, D01056];
LC5_ACC5= 	[C5_ACC5, LTWAKE, D01056];
LC6_ACC5= 	[C6_ACC5, LTWAKE, D01056];
LC7_ACC5= 	[C7_ACC5, LTWAKE, D01056];
LC8_ACC5= 	[C8_ACC5, LTWAKE, D01056];

StartRFACC5=	{ 'dr' ''  0 []}';
EndRFACC5=	{ 'dr' ''  0 []}';

TMACC5= 	[StartRFACC5, D01416, LC1_ACC5, D01014, D01416, LC2_ACC5, D01014,  ...
                	D01416,  LC3_ACC5, D01014, D01416, LC4_ACC5, D01014,  ...
                	D01416,  LC5_ACC5, D01014, D01416, LC6_ACC5, D01014,  ...
                	D01416,  LC7_ACC5, D01014, D01416, LC8_ACC5, EndRFACC5, D01175, ...
					BPM9ACC5];

% steerers are in series
H9ACC5= 	{ 'hcr' 'H9ACC5'  0 []}';
V9ACC5= 	{ 'vcr' 'V9ACC5'  0 []}';
H10ACC5= 	{ 'hcr' 'H10ACC5'  0 []}';
V10ACC5= 	{ 'vcr' 'V10ACC5'  0 []}';

DQACC5= [D0095qa, Q9ACC5, H9ACC5, V9ACC5, D0065, Q10ACC5, H10ACC5, V10ACC5,  D0075qa];

StartACC5= 	{ 'dr' ''  0 []}';
EndACC5=   	{ 'dr' ''  0 []}';

ACC5=[StartACC5, D0080, TMACC5, D00765, DQACC5, D00628, D0080,   D02362, EndACC5];


%-------------------------------------------------------------------------------------
%  ACC6 
%-------------------------------------------------------------------------------------

BPM9ACC6= 	{ 'mo' 'BPM9ACC6'  0 []}';

C1_ACC6={'lc' 'C1_ACC6' 1.0362 [1300 Volt6_1*1.027 (acc6_phase)*pi/180]}';
C2_ACC6={'lc' 'C2_ACC6' 1.0362 [1300 Volt6_2*1.027 (acc6_phase)*pi/180]}';
C3_ACC6={'lc' 'C3_ACC6' 1.0362 [1300 Volt6_3*1.027 (acc6_phase)*pi/180]}';
C4_ACC6={'lc' 'C4_ACC6' 1.0362 [1300 Volt6_4*1.027 (acc6_phase)*pi/180]}';
C5_ACC6={'lc' 'C5_ACC6' 1.0362 [1300 Volt6_5*1.027 (acc6_phase)*pi/180]}';
C6_ACC6={'lc' 'C6_ACC6' 1.0362 [1300 Volt6_6*1.027 (acc6_phase)*pi/180]}';
C7_ACC6={'lc' 'C7_ACC6' 1.0362 [1300 Volt6_7*1.027 (acc6_phase)*pi/180]}';
C8_ACC6={'lc' 'C8_ACC6' 1.0362 [1300 Volt6_8*1.027 (acc6_phase)*pi/180]}';

LC1_ACC6= 	[C1_ACC6, LTWAKE, D01056];
LC2_ACC6= 	[C2_ACC6, LTWAKE, D01056];
LC3_ACC6= 	[C3_ACC6, LTWAKE, D01056];
LC4_ACC6= 	[C4_ACC6, LTWAKE, D01056];
LC5_ACC6= 	[C5_ACC6, LTWAKE, D01056];
LC6_ACC6= 	[C6_ACC6, LTWAKE, D01056];
LC7_ACC6= 	[C7_ACC6, LTWAKE, D01056];
LC8_ACC6= 	[C8_ACC6, LTWAKE, D01056];

StartRFACC6=	{ 'dr' ''  0 []}';
EndRFACC6=	{ 'dr' ''  0 []}';

TMACC6= 	[StartRFACC6, D01416, LC1_ACC6, D01014, D01416, LC2_ACC6, D01014,  ...
                	D01416,  LC3_ACC6, D01014, D01416, LC4_ACC6, D01014,  ...
                	D01416,  LC5_ACC6, D01014, D01416, LC6_ACC6, D01014,  ...
                	D01416,  LC7_ACC6, D01014, D01416, LC8_ACC6, EndRFACC6, D01175, ...
					BPM9ACC6];

% steerers are in series
H9ACC6= 	{ 'hcr' 'H9ACC6'  0 []}';
V9ACC6= 	{ 'vcr' 'V9ACC6'  0 []}';
H10ACC6= 	{ 'hcr' 'H10ACC6'  0 []}';
V10ACC6= 	{ 'vcr' 'V10ACC6'  0 []}';

DQACC6= [D0095qa, Q9ACC6, H9ACC6, V9ACC6, D0065, Q10ACC6, H10ACC6, V10ACC6,  D0075qa];

StartACC6= 	{ 'dr' ''  0 []}';
EndACC6=   	{ 'dr' ''  0 []}';

ACC6=[StartACC6, D0080, TMACC6, D00765, DQACC6, D00628, D0080,   D02362, EndACC6];
%-------------------------------------------------------------------------------------
%  ACC7
%-------------------------------------------------------------------------------------
C1_ACC7={'lc' 'C1_ACC7' 1.0362 [1300 Volt7_1*1.027 (acc7_phase)*pi/180]}';
C2_ACC7={'lc' 'C2_ACC7' 1.0362 [1300 Volt7_2*1.027 (acc7_phase)*pi/180]}';
C3_ACC7={'lc' 'C3_ACC7' 1.0362 [1300 Volt7_3*1.027 (acc7_phase)*pi/180]}';
C4_ACC7={'lc' 'C4_ACC7' 1.0362 [1300 Volt7_4*1.027 (acc7_phase)*pi/180]}';
C5_ACC7={'lc' 'C5_ACC7' 1.0362 [1300 Volt7_5*1.027 (acc7_phase)*pi/180]}';
C6_ACC7={'lc' 'C6_ACC7' 1.0362 [1300 Volt7_6*1.027 (acc7_phase)*pi/180]}';
C7_ACC7={'lc' 'C7_ACC7' 1.0362 [1300 Volt7_7*1.027 (acc7_phase)*pi/180]}';
C8_ACC7={'lc' 'C8_ACC7' 1.0362 [1300 Volt7_8*1.027 (acc7_phase)*pi/180]}'; 

LC1_ACC7= 	[C1_ACC7, LTWAKE, D01056];
LC2_ACC7= 	[C2_ACC7, LTWAKE, D01056];
LC3_ACC7= 	[C3_ACC7, LTWAKE, D01056];
LC4_ACC7= 	[C4_ACC7, LTWAKE, D01056];
LC5_ACC7= 	[C5_ACC7, LTWAKE, D01056];
LC6_ACC7= 	[C6_ACC7, LTWAKE, D01056];
LC7_ACC7= 	[C7_ACC7, LTWAKE, D01056];
LC8_ACC7= 	[C8_ACC7, LTWAKE, D01056];

StartRFACC7=	{ 'dr' ''  0 []}';
EndRFACC7=	{ 'dr' ''  0 []}';

TMACC7= 	[StartRFACC7, D01416, LC1_ACC7, D010075, D01416, LC2_ACC7, D010075,  ...
                	D01416,  LC3_ACC7, D010075, D01416, LC4_ACC7, D010075,  ...
                	D01416,  LC5_ACC7, D010075, D01416, LC6_ACC7, D010075,  ...
                	D01416,  LC7_ACC7, D010075, D01416, LC8_ACC7, EndRFACC7];

% single steerer and single quad
H10ACC7= 	{ 'hcr' 'H10ACC7'  0 []}';
V10ACC7= 	{ 'vcr' 'V10ACC7'  0 []}';

StartACC7= 	{ 'dr' ''  0 []}';
EndACC7=   	{ 'dr' ''  0 []}';

%XFEL BPMs
BPM11ACC7i={ 'dr' '' 0.170/2 []}';
BPM15ACC7i={ 'dr' ''  0.170/2 []}'; 	% testing BPM
BPM16ACC7i={ 'dr' ''  0.170/2 []}';	% testing BPM

BPM11ACC7=	{ 'mo' 'BPM11ACC7'  0 []}';
BPM15ACC7=	{ 'mo' 'BPM15ACC7'  0 []}';
BPM16ACC7=	{ 'mo' 'BPM16ACC7'  0 []}';

BPM11ACC700=	[BPM11ACC7i, BPM11ACC7, BPM11ACC7i];
BPM15ACC700=	[BPM15ACC7i, BPM15ACC7, BPM15ACC7i];
BPM16ACC700=	[BPM16ACC7i, BPM16ACC7, BPM16ACC7i];

%stripline
BPM17ACC7i={ 'dr' ''  0.345/2 []}';
BPM17ACC7=	{ 'mo' 'BPM17ACC7'  0 []}';
BPM17ACC700=	[BPM17ACC7i, BPM17ACC7, BPM17ACC7i];

%OTR monitors
OTR17ACC7i= { 'dr' '' 0.177/2 []}';
OTR17ACC7=	{ 'dr' ''  0 []}';
OTR17ACC700=	[OTR17ACC7i, OTR17ACC7, OTR17ACC7i];

OTR18ACC7=	{ 'dr' ''  0 []}';

% Phase monitor (BAM];
PHA5ACC7= 	{ 'dr' ''  0.040 []}';

%kicker
K0400={ 'dr' ''  0.400 []}';

%EO
EO={ 'dr' ''  1.155 []}';

DQACC7= 	[D01023, Q10ACC7, H10ACC7, V10ACC7, BPM11ACC700, D0075, D0160, ...
		D150305, D0210, D0075, D0200, D0274, D0150];

ACC7=[StartACC7, D0075, TMACC7, DQACC7, ... 
			D0150, D0076, D0160, K0400, D0160, D0300, D00215, ...
			BPM15ACC700, BPM16ACC700, D00215, D0200, D0146, EO, ...
			D0200, BPM17ACC700, D0200, D0191, OTR17ACC700, ...
			D0347, D0200, PHA5ACC7, D0115, OTR18ACC7, D0115, ...
			D0350, D0072, EndACC7];

%-------------------------------------------------------------------------------------
%  ACC4567 
%-------------------------------------------------------------------------------------

ACC4567= 	[ACC4, ACC5, ACC6, ACC7];

%=====================================================================================
%  COLLIMATOR = TCOL + DOGLEG
%=====================================================================================
%-------------------------------------------------------------------------------------
%  TCOL
%-------------------------------------------------------------------------------------
% steerers
V4TCOL={ 'vcr' 'V4TCOL'   0.1  []}';
H4TCOL={ 'hcr' 'H4TCOL'  0.1  []}';
H9TCOL={ 'hcr' 'H9TCOL'  0.1  []}';
V9TCOL={ 'vcr' 'V9TCOL'   0.1  []}';

% collimators
COLL2TCOL= 	{ 'dr' ''  0.5 []}';
COLL8TCOL= 	{ 'dr' ''  0.5 []}';

OTR9TCOL= 	{ 'dr' ''  0 []}';
OTR9TCOLi=	{ 'dr' ''  0.230/2 []}';

BPM2TCOL= 	{ 'mo' 'BPM2TCOL'  0 []}';

%toroid
TOR1TCOL=	{ 'dr' ''  0.216 []}';

% Intrabunch kickers= KICK5TCOL= DESY type, horizontal / KICK6TCOL= PSI type, vertical
KICK5TCOL=	{ 'hcr' 'KICK5TCOL'  1 []}';
KICK6TCOL=	{ 'vcr' 'KICK6TCOL'  1 []}';

DKICKCOL= [D0040,  KICK5TCOL, D0106, KICK6TCOL, D0080];

%marker  to indicate the point where the bypass starts
FEL_BYP=	{ 'dr' ''  0 []}';
COLL8TCOL00= 	[D0150, COLL8TCOL, D0150]; 
BPM8TCOL= 	{ 'mo' 'BPM8TCOL'  0 []}';
Q8TCOLBPM= 	[D0100a, Q8TCOL, BPM8TCOL, D0100a];
COLL2TCOL00= 	[D0150, COLL2TCOL, D0150, FEL_BYP]; 
TSP3TCOL= 	[D0732,  D0732];
VH4TCOL=  	[D0120, V4TCOL,  D0018, D0104, D0018, H4TCOL];
HV9TCOL=  	[D0032, H9TCOL,  D0084, V9TCOL,  D0034];
Q9TCOL000= 	[D0100a, Q9TCOL, D0100a];
OTR9TCOL00=  	[OTR9TCOLi, OTR9TCOL, OTR9TCOLi];
 
COLL=    	[D0326, D0080, D0100, D0106, D0100, TOR1TCOL, ...
			D0100a, Q2TCOL, BPM2TCOL, D0100a, COLL2TCOL00, TSP3TCOL, ...
			D0072, VH4TCOL, DKICKCOL, D0104, D0116, COLL8TCOL00, ...
			Q8TCOLBPM, HV9TCOL, Q9TCOL000, OTR9TCOL00];

StartCOL_BYP= 	{ 'dr' ''  0 []}';
EndCOL_BYP=	{ 'dr' ''  0 []}';

COLL_BYP=[StartCOL_BYP, D0326, D0080, D0100, D0106, D0100, TOR1TCOL, ...
			D0100a, Q2TCOL, BPM2TCOL, D0100a, COLL2TCOL00, EndCOL_BYP];

%-------------------------------------------------------------------------------------
%  DOGLEG
%-------------------------------------------------------------------------------------
lll_col  =  0.446;
ang_col  =  3.5*pi/180;
%-ang_col  = -ang_col;
larc_col  =  lll_col*ang_col/sin(ang_col);
len_col  =  larc_col;

D0273c= 	{ 'dr' ''  0.2730-0.5*(lll_col-0.40) []}';
D0220c= 	{ 'dr' ''  0.220-0.5*(lll_col-0.4) []}';
D0125c= 	{ 'dr' ''  0.1246*(lll_col-0.4) []}'; % adjusted from 0.125 to 0.1246 to fit master file

D1ECOL={'be' 'D1ECOL' len_col [ang_col 0  0      ang_col    0.5 0.5 0]}';
D7ECOL={'be' 'D7ECOL' len_col [-ang_col 0  -ang_col  0     0.5 0.5 0]}';
 
H1ECOL=  	{ 'hcr' 'H1ECOL'  0 []}';
H2ECOL=  	{ 'hcr' 'H2ECOL'  0.1 []}';
H4ECOL=  	{ 'hcr' 'H4ECOL'  0.1 []}';
V4ECOL=  	{ 'vcr' 'V4ECOL'  0.1 []}';
H6ECOL=  	{ 'hcr' 'H6ECOL'  0.1 []}';
H7ECOL=  	{ 'hcr' 'H7ECOL'  0 []}';
%
OTR5ECOL= 	{ 'dr' ''  0 []}';
OTR5ECOLi=  	{ 'dr' ''  0.115 []}';

% collimators
COLL2ECOL=  	{ 'dr' ''  0.5 []}';
COLL3ECOL=  	{ 'dr' ''  0.5 []}';
%
COLL2ECOL00= [D0150, COLL2ECOL, D0150]; 
DS2ECOL = 	[D00881sb, S2ECOL, D0055sb];
%
BPM3ECOL= 	{ 'mo' 'BPM3ECOL'  0 []}';
BPM5ECOL= 	{ 'mo' 'BPM5ECOL'  0 []}';

WIRE5ECOL=	{ 'dr' ''  0 []}';

Q3ECOLBPM= 	[D0075b, Q3ECOL, BPM3ECOL, D0075b];
COLL3ECOL00= 	[D0150, COLL3ECOL, D0150]; 
Q4ECOL000= 	[D0075b, Q4ECOL, D0075b];
HV4ECOL=  	[D0100, H4ECOL,  D0170, V4ECOL,  D0100];
OTR5ECOL00=  	[OTR5ECOLi, OTR5ECOL, WIRE5ECOL, OTR5ECOLi];
Q5ECOLBPM= 	[D0075b, Q5ECOL, BPM5ECOL, D0075b];
DS6ECOL = 	[D0055sb,  S6ECOL, D01811sb];

DOGLEG=  	[D0125c,  D1ECOL, H1ECOL, D0273c,  COLL2ECOL00, D0085, ...
			H2ECOL,  DS2ECOL,  Q3ECOLBPM, COLL3ECOL00, Q4ECOL000, ...
			HV4ECOL, OTR5ECOL00, Q5ECOLBPM, DS6ECOL,   D0845, ...
			H6ECOL,  D0220c,   D7ECOL,    H7ECOL,    D0125c];

StartCOL= 	{ 'dr' ''  0 []}';
EndCOL=		{ 'dr' ''  0 []}';

COLLIMATOR= [StartCOL, COLL, DOGLEG, EndCOL];

%=====================================================================================
%  ORS
%=====================================================================================

ORS_angle  =  0.0085;
%-ORS_angle  = -ORS_angle;
HHG_angle  =  0.0085;
%-HHG_angle  =-HHG_angle;

% OTR monitors (2 and 4 are also wirescanners];
OTR2ORSi= 	{ 'dr' ''  0.115 []}';
OTR2ORS= 	{ 'dr' ''  0 []}';
WIRE2ORS=	{ 'dr' ''  0 []}';	
OTR2ORS00=  	[OTR2ORSi, OTR2ORS, WIRE2ORS, OTR2ORSi];

OTR4ORSi= 	{ 'dr' ''  0.115 []}';
OTR4ORS= 	{ 'dr' ''  0 []}';
WIRE4ORS=	{ 'dr' ''  0 []}';
OTR4ORS00=  	[OTR4ORSi, OTR4ORS, WIRE4ORS,OTR4ORSi];

OTR6ORSi=	{ 'dr' ''  0.115 []}';
OTR6ORS= 	{ 'dr' ''  0 []}';
OTR6ORS00=  	[OTR6ORSi, OTR6ORS, OTR6ORSi];

OTR10ORSi= 	{ 'dr' ''  0.115 []}';
OTR10ORS= 	{ 'dr' ''  0 []}';
OTR10ORS00=  	[OTR10ORSi, OTR10ORS, OTR10ORSi];

% BPMs
BPM2ORS= 	{ 'mo' 'BPM2ORS'  0 []}';
BPM4ORS=	{ 'mo' 'BPM4ORS'  0 []}';
BPM7ORS= 	{ 'mo' 'BPM7ORS'  0 []}';
BPM9ORS= 	{ 'mo' 'BPM9ORS'  0 []}';
BPM12ORS= 	{ 'mo' 'BPM12ORS'  0 []}';

KORS  =  7.7;

%ORS undulators
U2ORS= 	{ 'dr' ''  1.45 []}';
U7ORS= 	{ 'dr' ''  1.45 []}';

V1ORS=	 	{ 'vcr' 'V1ORS'  0.1 []}';
% HERAe CH/CV steerer, yoke length=0.2m 
V5ORS=	 	{ 'vcr' 'V5ORS'  0.2 []}';
V6ORS= 		{ 'vcr' 'V6ORS'  0.2 []}';
V6_4ORS= 	{ 'vcr' 'V6_4ORS'  0.2 []}';
V7ORS= 		{ 'vcr' 'V7ORS'  0.2 []}';
V9ORS=	 	{ 'vcr' 'V9ORS'  0.1 []}';
V10ORS= 	    { 'vcr' 'V10ORS'  0.1 []}';
V11ORS= 	    { 'vcr' 'V11ORS'  0.1 []}';
V12ORS= 	    { 'vcr' 'V12ORS'  0.1 []}';
H5ORS=		{ 'hcr' 'H5ORS'  0.1 []}';
H10ORS=		{ 'hcr' 'H10ORS'  0.1 []}';

% Toroid
TOR7ORS= 	{ 'dr' ''  0.158 []}';

StartORS= 	{ 'dr' ''  0 []}';
EndORS=   	{ 'dr' ''  0 []}';

ORS=[StartORS, D0200, D0070, V1ORS, D0245, D0175, D0100a, ...
			Q1ORS, D0100a, OTR2ORS00, D0100a, Q2ORS, BPM2ORS, ...
			D0100a, D0045, U2ORS, D0045, OTR4ORS00, D0100a, Q4ORS, BPM4ORS, ... 
         D0100a, D0093, V5ORS, D0127, H5ORS, D0203, V6ORS, D0092, ...
			OTR6ORS00, D0088, V6_4ORS, D0169, TOR7ORS, D0103, ...
			V7ORS, D0097, D0100a, Q7ORS, BPM7ORS, D0100a, D0045, U7ORS, D0045, D0100a, ...
			Q9ORS, BPM9ORS, D0100a, D0035, V9ORS, D0175, H10ORS, D0470, V10ORS, D0035, ...
			OTR10ORS00, D0035, V11ORS, D0745, V12ORS, D0035, D0100a, Q12ORS, BPM12ORS, ...
			D0100a, D0075, D0050, D00095, EndORS];
%=====================================================================================
%  SFUND
%=====================================================================================

% Blocks of OTR, wirescanner, BPMs and Phase Shifters (wires only in 1SFUND1 and 1SFUND2];
OTR1SFUND1= 	{ 'dr' ''  0 []}';
WIRE1SFUND1=    { 'dr' ''  0 []}';
BPM1SFUND1= 	{ 'mo' 'BPM1SFUND1'  0 []}';
D1SFUND1=  	[D00695, OTR1SFUND1, WIRE1SFUND1, BPM1SFUND1, D01365];

OTR1SFUND2= 	{ 'dr' ''  0 []}';
WIRE1SFUND2=    { 'dr' ''  0 []}';
BPM1SFUND2= 	{ 'mo' 'BPM1SFUND2'  0 []}';
P1SFUND2= 	{ 'dr' ''  0.135 []}';
D1SFUND2=	[D0074, OTR1SFUND2, WIRE1SFUND2, BPM1SFUND2, D01675, P1SFUND2];

OTR1SFUND3= 	{ 'dr' ''  0 []}';
BPM1SFUND3= 	{ 'mo' 'BPM1SFUND3'  0 []}';
P1SFUND3= 	{ 'dr' ''  0.135 []}';
D1SFUND3=	[D0074, OTR1SFUND3, BPM1SFUND3, D01675, P1SFUND3];

OTR1SFUND4= 	{ 'dr' ''  0 []}';
BPM1SFUND4= 	{ 'mo' 'BPM1SFUND4'  0 []}';
P1SFUND4= 	{ 'dr' ''  0.135 []}';
D1SFUND4=	[D0074, OTR1SFUND4, BPM1SFUND4, D01675, P1SFUND4];

% SFLASH UNDULATORS
UNDK  =  2.83;

U1SFUND1= 	{ 'dr' ''  2 []}';
U1SFUND2= 	{ 'dr' ''  2 []}';
U1SFUND3= 	{ 'dr' ''  2 []}';
U1SFUND4= 	{ 'dr' ''  4 []}';

StartSFUND= 	{ 'dr' ''  0 []}';
EndSFUND=   	{ 'dr' ''  0 []}';

SFUND=[StartSFUND, D1SFUND1, D00595, D0100a, Q1SFUND1, D0100a, D00210, D0061, U1SFUND1, D0061, ...
			D0018g, Q1SFUND2, D0022g, D1SFUND2, D00515, D0061, U1SFUND2, D0061, ...
			D0018g, Q1SFUND3, D0022g, D1SFUND3, D00515, D0061, U1SFUND3, D0061, ...
			D0018g, Q1SFUND4, D0022g, D1SFUND4, D00515, D0061, U1SFUND4, D0061, EndSFUND];

%=====================================================================================
%  SFELC
%=====================================================================================

BPM1SFELC= 	{ 'mo' 'BPM1SFELC'  0 []}';

KICK2SFELC=	{ 'hcr' 'KICK2SFELC'  1 []}';
KICK4SFELC=	{ 'vcr' 'KICK4SFELC'  1 []}';

V2SFELC= 	{ 'vcr' 'V2SFELC'  0.1 []}';
V3SFELC= 	{ 'vcr' 'V3SFELC'  0.1 []}';
V4SFELC= 	{ 'vcr' 'V4SFELC'  0.1 []}';
V6SFELC= 	{ 'vcr' 'V6SFELC'  0.1 []}';

H3SFELC= 	{ 'hcr' 'H3SFELC'  0.1 []}';
H4SFELC= 	{ 'hcr' 'H4SFELC'  0.1 []}';

% Phase monitor (BAM];
PHA1SFELC= 	{ 'dr' ''  0.040 []}';

% mirror chamber
MIRRCH=		{ 'dr' ''  0.2752 []}';

StartSFELC= 	{ 'dr' ''  0 []}';
EndSFELC=   	{ 'dr' ''  0 []}';

SFELC=[StartSFELC, D0022, D0100a, Q1SFELC, BPM1SFELC, D0100a, PHA1SFELC, ...
			D0100a, Q2SFELC, D0100a, D0035, V2SFELC, D0050, ... 
			KICK2SFELC, D0086, D0104, H3SFELC, D0085, V3SFELC, ...
			D01224, D0110, MIRRCH, D0150, D01624, V4SFELC, D0050, ...
			D0080, D0030, H4SFELC, D0029, D0086, ...
			KICK4SFELC, D0050, V6SFELC, D00275, EndSFELC];

%=====================================================================================
%  SMATCH
%=====================================================================================

BPM1SMATCH = 	{ 'mo' 'BPM1SMATCH '  0 []}';
BPM6SMATCH = 	{ 'mo' 'BPM6SMATCH '  0 []}';
BPM13SMATCH = 	{ 'mo' 'BPM13SMATCH '  0 []}';
BPM14SMATCH =	{ 'mo' 'BPM14SMATCH '  0 []}';

BPM1SMATCHi = 	{ 'dr' ''  0.45/2 []}';
BPM1SMATCH00= 	[BPM1SMATCHi, BPM1SMATCH, BPM1SMATCHi];

LOLA= 		{ 'dr' ''  3.826 []}';
TEO=		{ 'dr' ''  0.230 []}';
TOR11SMATCH= 	{ 'dr' ''  0.116 []}';
PHA7SMATCH = 	{ 'dr' ''  0.040 []}';

KICK6SMATCH= 	{ 'dr' ''  0.650 []}';

H7SMATCH = 	{ 'hcr' 'H7SMATCH '  0.1 []}';
V7SMATCH = 	{ 'vcr' 'V7SMATCH '  0.1 []}';
H12SMATCH = 	{ 'hcr' 'H12SMATCH'  0.1 []}';
V12SMATCH = 	{ 'vcr' 'V12SMATCH'  0.1 []}';

%OTR and/or wirescanner blocks
OTR8SMATCH= 	{ 'dr' ''  0 []}';
WIRE8SMATCH=	{ 'dr' ''  0 []}';
OTR8SMATCH00= 	[D0100, OTR8SMATCH, WIRE8SMATCH, D0130];

OTR11SMATCH= 	{ 'dr' ''  0 []}';
WIRE11SMATCH={ 'dr' ''  0 []}';
OTR11SMATCH00= 	[D0100, OTR11SMATCH, WIRE11SMATCH, D0130];

OTR13SMATCH= 	{ 'dr' ''  0 []}';
OTR13SMATCHi=	{ 'dr' ''  0.083 []}';
OTR13SMATCH00= 	[OTR13SMATCHi, OTR13SMATCH, OTR13SMATCHi];

WIRE14SMATCHi= 	{ 'dr' ''  0.123/2 []}';
WIRE14SMATCH= 	{ 'dr' ''  0 []}';
WIRE14SMATCH00= [WIRE14SMATCHi, WIRE14SMATCH, WIRE14SMATCHi];

D9SMATCH=	{ 'dr' ''  0.400 []}';
D10SMATCH=	{ 'dr' ''  0.400 []}';

%MINI-DUMP
D11SMATCH=	{ 'dr' ''  0.100 []}';
D12SMATCH=	{ 'dr' ''  0.100	[]}';

StartSMATCH= 	{ 'dr' ''  0 []}';
EndSMATCH=   	{ 'dr' ''  0 []}';

SMATCH=[StartSMATCH, D00075, BPM1SMATCH00, D0077, D0072, D0071, LOLA, D0300, D0100a, ...
			Q6SMATCH, BPM6SMATCH, D0100a, D0019, KICK6SMATCH, D0081, ...
			H7SMATCH, D0100, V7SMATCH, D0036, PHA7SMATCH, TEO, D0393, D0100a, ...
			Q8SMATCH, D0100a, OTR8SMATCH00, D0070, D0130, D9SMATCH, D0174, ...
			D10SMATCH, D0185, D1265, D0100a, Q10SMATCH, D0100a, D0021, TOR11SMATCH, ...
			D0021, D0068, OTR11SMATCH00, D0100, D11SMATCH, D0100, D12SMATCH, ...
			D0100, H12SMATCH, D0100, V12SMATCH, D0050, D0100a, Q13SMATCH, BPM13SMATCH, ...
			D0100a, D0203, OTR13SMATCH00, D0020, D0256, D0010, D0146, D0072, ...
			D0071, D0100, D0053, D0100g, Q14SMATCH, BPM14SMATCH, D0076g, WIRE14SMATCH00, ...
			D0076g, Q15SMATCH, D0026g, EndSMATCH];

%=====================================================================================
%  UNDULATOR
%=====================================================================================
% wire-scanner blocks
WIRE5UND1= 	{ 'dr' ''  0 []}';
WIRE5UND1i=	{ 'dr' ''  0.123/2 []}';
WIRE5UND100= [WIRE5UND1i, WIRE5UND1, WIRE5UND1i];

WIRE5UND2= 	{ 'dr' ''  0 []}';
WIRE5UND2i=	{ 'dr' ''  0.123/2 []}';
WIRE5UND200= 	[WIRE5UND2i, WIRE5UND2, WIRE5UND2i];

WIRE5UND3= 	{ 'dr' ''  0 []}';
WIRE5UND3i=	{ 'dr' ''  0.123/2 []}';
WIRE5UND300= 	[WIRE5UND3i, WIRE5UND3, WIRE5UND3i];

WIRE5UND4= 	{ 'dr' ''  0 []}';
WIRE5UND4i=	{ 'dr' ''  0.123/2 []}';
WIRE5UND400= 	[WIRE5UND4i, WIRE5UND4, WIRE5UND4i];

WIRE5UND5= 	{ 'dr' ''  0 []}';
WIRE5UND5i=	{ 'dr' ''  0.123/2 []}';
WIRE5UND500= 	[WIRE5UND5i, WIRE5UND5, WIRE5UND5i];

WIRE5UND6= 	{ 'dr' ''  0 []}';
WIRE5UND6i=	{ 'dr' ''  0.123/2 []}';
WIRE5UND600= 	[WIRE5UND6i, WIRE5UND6, WIRE5UND6i];
%
%
%  Undulator BPMs
%
BPM2UND1= 	{ 'mo' 'BPM2UND1'  0 []}';
BPM2UND2= 	{ 'mo' 'BPM2UND2'  0 []}';
BPM2UND3= 	{ 'mo' 'BPM2UND3'  0 []}';
BPM2UND4= 	{ 'mo' 'BPM2UND4'  0 []}';
BPM2UND5= 	{ 'mo' 'BPM2UND5'  0 []}';
BPM2UND6= 	{ 'mo' 'BPM2UND6'  0 []}';
                                         
BPM4UND1= 	{ 'mo' 'BPM4UND1'  0 []}';
BPM4UND2= 	{ 'mo' 'BPM4UND2'  0 []}';
BPM4UND3= 	{ 'mo' 'BPM4UND3'  0 []}';
BPM4UND4= 	{ 'mo' 'BPM4UND4'  0 []}';
BPM4UND5= 	{ 'mo' 'BPM4UND5'  0 []}';
BPM4UND6= 	{ 'mo' 'BPM4UND6'  0 []}';
                                         
BPM5UND1= 	{ 'mo' 'BPM5UND1'  0 []}';
BPM5UND2= 	{ 'mo' 'BPM5UND2'  0 []}';
BPM5UND3= 	{ 'mo' 'BPM5UND3'  0 []}';
BPM5UND4= 	{ 'mo' 'BPM5UND4'  0 []}'; 
BPM5UND5= 	{ 'mo' 'BPM5UND5'  0 []}';
BPM5UND6= 	{ 'mo' 'BPM5UND6'  0 []}';

Q5UND1000= 	[D0025g, Q5UND1, D0076g];
Q6UND1000= 	[D0076g, Q6UND1, D0025g];
Q5UND2000= 	[D0025g, Q5UND2, D0076g];
Q6UND2000= 	[D0076g, Q6UND2, D0025g];
Q5UND3000= 	[D0025g, Q5UND3, D0076g];
Q6UND3000= 	[D0076g, Q6UND3, D0025g];
Q5UND4000= 	[D0025g, Q5UND4, D0076g];
Q6UND4000= 	[D0076g, Q6UND4, D0025g];
Q5UND5000= 	[D0025g, Q5UND5, D0076g];
Q6UND5000= 	[D0076g, Q6UND5, D0025g];
Q5UND6000= 	[D0025g, Q5UND6, D0076g];
Q6UND6000= 	[D0076g, Q6UND6, D0025g];

UND_MAGNET={'un' 'UND_MAGNET' 4.553 [1.2392/Kfactor 0.054] }';

UNDU1=[UND_MAGNET, BPM2UND1, BPM4UND1, Q5UND1000, WIRE5UND100, BPM5UND1, Q6UND1000];
UNDU2=[UND_MAGNET, BPM2UND2, BPM4UND2, Q5UND2000, WIRE5UND200, BPM5UND2, Q6UND2000];
UNDU3=[UND_MAGNET, BPM2UND3, BPM4UND3, Q5UND3000, WIRE5UND300, BPM5UND3, Q6UND3000];
UNDU4=[UND_MAGNET, BPM2UND4, BPM4UND4, Q5UND4000, WIRE5UND400, BPM5UND4, Q6UND4000];
UNDU5=[UND_MAGNET, BPM2UND5, BPM4UND5, Q5UND5000, WIRE5UND500, BPM5UND5, Q6UND5000];
UNDU6=[UND_MAGNET, BPM2UND6, BPM4UND6, Q5UND6000, WIRE5UND600, BPM5UND6, Q6UND6000];

StartUND= 	{ 'dr' ''  0 []}';
EndUND=   	{ 'dr' ''  0 []}';

UNDULATOR=  	[StartUND, UNDU1, UNDU2, UNDU3, UNDU4, UNDU5, UNDU6, EndUND];

%=====================================================================================
%  EXP section
%=====================================================================================

% XFEL test BPMs
BPM1_1EXP=	{ 'mo' 'BPM1_1EXP'  0 []}';
BPM1_2EXP=	{ 'mo' 'BPM1_2EXP'  0 []}';
BPM1_3EXP=	{ 'mo' 'BPM1_3EXP'  0 []}';
BPM2_1EXP=	{ 'mo' 'BPM2_1EXP'  0 []}';
BPM2_2EXP=	{ 'mo' 'BPM2_2EXP'  0 []}';
% other BPMS
BPM3EXP= 	{ 'mo' 'BPM3EXP'  0 []}';
BPM9EXP= 	{ 'mo' 'BPM9EXP'  0 []}';

BPM1_1EXP00=	[D0050, D0017, BPM1_1EXP, D0033];
BPM1_2EXP00=	[D0050, D0014, BPM1_2EXP, D0036];
BPM1_3EXP00=	[D0050, D0014, BPM1_3EXP, D0036];
BPM2_1EXP00=	[D0050, D0165, BPM2_1EXP, D0040];
BPM2_2EXP00=	[D0050, D0076, BPM2_2EXP, D0126];

% Steerers
H1EXP=  	{ 'hcr' 'H1EXP'  0.1 []}';
V1EXP=  	{ 'vcr' 'V1EXP'  0.1 []}';
H3EXP=  	{ 'hcr' 'H3EXP'  0.1 []}';
V3EXP=  	{ 'vcr' 'V3EXP'  0.1 []}';
H10EXP= 	{ 'hcr' 'H10EXP'  0.1 []}';
V10EXP= 	{ 'vcr' 'V10EXP'  0.1 []}';

HV1EXP=[H1EXP, D0100, V1EXP];
HV3EXP=  	[H3EXP, D0175, V3EXP, BPM3EXP];
HV10EXP=  	[H10EXP, D0100, V10EXP];
           
% screen with wire (I am not sure if there is a wire];
OTR12EXPi= 	{ 'dr' ''  0.230/2  []}';
OTR12EXP=	{ 'dr' ''  0 []}';
WIRE12EXP=	{ 'dr' ''  0 []}';
OTR12EXP00= 	[OTR12EXPi, OTR12EXP, WIRE12EXP, OTR12EXPi];

% Toroid
TOR12EXP= 	{ 'dr' ''  0.216 []}';

%  Quadrupoles with drifts and BPMs

Q9EXPBPM=  	[D0100a,  Q9EXP,  BPM9EXP,  D0100a];
Q10EXP000= 	[D0100bm, Q10EXP,           D0100bm];
Q11EXP000= 	[D0100bm, Q11EXP,           D0100bm];

% FIR
U6P1EXP=	{ 'dr' ''  0.0     []}';
U6P2EXP=	{ 'dr' ''  0.100 []}';
U6P3EXP=	{ 'dr' ''  0.100 []}'; 
U6P12EXP=	{ 'dr' ''  0.100 []}'; 
U6P21EXP=	{ 'dr' ''  0.100 []}'; 
U6P22EXP=	{ 'dr' ''  0.0     []}';

FIR_UND=	{ 'dr' ''  3.8 []}';

FIR=		[U6P1EXP, U6P2EXP, U6P3EXP, FIR_UND, U6P12EXP, U6P21EXP, U6P22EXP];

%=====================================================================================
%  DUMP
%=====================================================================================

lll_dump  =  1.2;
ang_dump  =  19*pi/180;
larc_dump  =  lll_dump*ang_dump/sin(ang_dump);
len_dump  =  larc_dump;

dump_tilt  =  -83.00*pi/180;

Q10DUMP={'qu'  'Q10DUMP'   len_qc  1.019746/Kfactor}';
Q11DUMP={'qu'  'Q11DUMP'   len_qc  -2.3416288/Kfactor}';

D6DUMP={'be' 'D6DUMP' len_dump [-ang_dump 0 0 -ang_dump 0.5 0.5 0]}';

%trim coil
T6DUMP=		{ 'hcr' 'T6DUMP'  0 []}';
H7DUMP=  	{ 'hcr' 'H7DUMP'  0.300 []}';

OTR9DUMPi={ 'dr' ''  0.27/2 []}';
OTR9DUMP= { 'dr' ''  0 []}';
OTR9DUMP00=[OTR9DUMPi, OTR9DUMP, OTR9DUMPi];

TOR9DUMP=	{ 'dr' ''  0.150 []}';

BPM9DUMP=  	{ 'mo' 'BPM9DUMP'  0 []}';
BPM10DUMP= 	{ 'mo' 'BPM10DUMP'  0 []}';
BPM13DUMP= 	{ 'mo' 'BPM13DUMP'  0 []}';
BPMDUMPair=	{ 'mo' 'BPMDUMPair'  0 []}';

BPM9DUMPi=  	{ 'dr' ''  0.350/2 []}';
BPM13DUMPi=  	{ 'dr' ''  0.150/2 []}';

BPM9DUMP00=	[BPM9DUMPi, BPM9DUMP, BPM9DUMPi];
BPM13DUMP00=	[BPM13DUMPi, BPM13DUMP, BPM13DUMPi];

% Quadrupoles with drifts
Q10DUMPU000= 	[D0200c, Q10DUMP, D01378c];
Q11DUMPU000= 	[D0200c, Q11DUMP, D0200c];

% rotator
RD13DUMPi={ 'dr' ''  0.280/2 []}';
RD13DUMP=	{ 'dr' ''  0 []}';
RD13DUMP00=	[RD13DUMPi, RD13DUMP, RD13DUMPi];

% dump
DUMPi=		{ 'dr' ''  2.0 []}';

StartEXP= 	{ 'dr' ''  0 []}';
EndEXP=   	{ 'dr' ''  0 []}';

EXP=[StartEXP, D0072, D0075, D0079, BPM1_1EXP00, D0078, ...
			BPM1_2EXP00, D0078, BPM1_3EXP00, D0079, BPM2_1EXP00, ...
			D0127, BPM2_2EXP00, D0019, HV1EXP, D0100, D0106, ...
			D0135, D080325, D0200, D0106, D0040, HV3EXP, ...
			D0175, D014175, D0300, FIR, D0300, Q9EXPBPM, ...
			OTR12EXP00, D0090, Q10EXP000, D0100, HV10EXP, ...
			D0100, Q11EXP000, TOR12EXP, D0230, D0075, D0350, D6DUMP, T6DUMP, EndEXP];

StartDUMP= 	{ 'dr' ''  0 []}';
EndDUMP=   	{ 'dr' ''  0 []}';

% marker  to indicate end of bypass
FEL_BYP2=	{ 'dr' ''  0 []}'; 
D1090= 		{ 'dr' ''  0.4558 []}'; 

DUMP= 		[StartDUMP, D1090, FEL_BYP2, D0034, H7DUMP, D0244, ...  
                	D0100, D0350, OTR9DUMP00, D0230, TOR9DUMP, BPM9DUMP00,  D0230, ... 
                	Q10DUMPU000, BPM10DUMP, D00622, Q11DUMPU000, D0140, RD13DUMP00, ...
                	D0130,  D0085,  D0290, BPM13DUMP00, D235955, ...
			D0080, BPMDUMPair, D0020, EndDUMP];   

%=====================================================================================
%  BYPASS
%=====================================================================================

ang_byp  =  3.5*pi/180;
byp_tilt  =  -69*pi/180;

% Quadrupoles and sextupoles
Q6BYP={'qu'  'Q6BYP'   0.32860 2.34682/Kfactor}';
Q8BYP={'qu'  'Q8BYP'   0.32860 -2.1194/Kfactor}';
Q10BYP={'qu'  'Q10BYP'   0.32860 2.34682/Kfactor}';

Q16BYP={'qu'  'Q16BYP'  0.32860  -0.32171/Kfactor}';
Q17BYP={'qu'  'Q17BYP'   0.32860  1.89931/Kfactor}';
Q18BYP={'qu'  'Q18BYP'   0.32860  -1.3869/Kfactor}';

Q36BYP={'qu'  ' '   0.32860  -0.29959/Kfactor}';
Q37BYP={'qu'  ' '   0.32860  0.490135/Kfactor}';
Q39BYP={'qu'  ' '   0.32860  0.63157/Kfactor}';
Q41BYP={'qu'  ' '   0.32860  -0.729321/Kfactor}';
Q58BYP={'qu'  ' '   0.32860  0.110136/Kfactor}';
Q75BYP={'qu'  ' '   0.32860  8.85238e-003/Kfactor}';
Q92BYP={'qu'  ' '   0.32860  0.813747/Kfactor}';
Q93BYP={'qu'  ' '   0.32860  -0.75727/Kfactor}';

S5BYP={ 'sext' 'S5BYP'  0.21500 17.8369/Kfactor}';
S10BYP={ 'sext' 'S10BYP'  0.21500 -17.8369/Kfactor}';

% BPMs in quadrupoles
BPM6BYP=	    { 'mo' 'BPM6BYP'  0 []}';
BPM18BYP=	{ 'mo' 'BPM18BYP'  0 []}';
BPM37BYP=	{ 'mo' 'BPM37BYP'  0 []}';
BPM58BYP=	{ 'mo' 'BPM58BYP'  0 []}';
BPM75BYP=	{ 'mo' 'BPM75BYP'  0 []}';
BPM92BYP=	{ 'mo' 'BPM92BYP'  0 []}';
BPM5DUMP=	{ 'mo' 'BPM5DUM'  0 []}';

% OTR screens
OTR6BYP=	{ 'dr' ''  0 []}';
OTR6BYPi=	{ 'dr' ''  0.230/2  []}';
OTR6BYP00=	[OTR6BYPi, OTR6BYP, OTR6BYPi];

OTR35BYP=	{ 'dr' ''  0 []}';
OTR35BYPi=	{ 'dr' ''  0.230/2  []}';
OTR35BYP00=	[OTR35BYPi, OTR35BYP, OTR35BYPi];

OTR38BYP=	{ 'dr' ''  0 []}';
WIRE38BYP=	{ 'dr' ''  0 []}';
OTR38BYPi=	{ 'dr' ''  0.230/2  []}';
OTR38BYP00=	[OTR38BYPi, OTR38BYP, WIRE38BYP, OTR38BYPi];

OTR57BYP=	{ 'dr' ''  0 []}';
OTR57BYPi=	{ 'dr' ''  0.230/2  []}';
OTR57BYP00=	[OTR57BYPi, OTR57BYP, OTR57BYPi];

% Steerers
H6BYP=		{ 'hcr' 'H6BYP'  0.1 []}';
V6BYP=		{ 'hcr' 'V6BYP'  0.1 []}';

H11BYP=		{ 'hcr' 'H11BYP'  0.1  []}';
V11BYP=		{ 'hcr' 'V11BYP'  0.1  []}';

H19BYP=		{ 'hcr' 'H19BYP'  0.1  []}';
V19BYP=		{ 'hcr' 'V19BYP'  0.1  []}';

H37BYP=		{ 'hcr' 'H37BYP'  0.1  []}';
V37BYP=		{ 'hcr' 'V37BYP'  0.1  []}';

H41BYP=		{ 'hcr' 'H41BYP'  0.1  []}';
V41BYP=		{ 'hcr' 'V41BYP'  0.1  []}';

H58BYP=		{ 'hcr' 'H58BYP'  0.1  []}';
V58BYP=		{ 'hcr' 'V58BYP'  0.1  []}';

H76BYP=		{ 'hcr' 'H76BYP'  0.1  []}';
V76BYP=		{ 'hcr' 'V76BYP'  0.1  []}';

H93BYP=		{ 'hcr' 'H93BYP'  0.1  []}';
V93BYP=		{ 'hcr' 'V93BYP'  0.1  []}';

lll_byp  =  0.446;
larc_byp  =  lll_byp*ang_byp/sin(ang_byp);
len_byp  =  larc_byp;

D1BYP={'be' 'D1BYP' len_byp     [ang_byp    0  0     ang_byp  0.5 0.5 0]}';
D2BYP={'be' 'D2BYP'  len_byp    [ang_byp    0  0     ang_byp  0.5 0.5 0]}';
D14BYP={'be' 'D14BYP' len_byp [-ang_byp  0  -ang_byp 0  0.5 0.5 0]}';
D15BYP={'be' 'D15BYP' len_byp [-ang_byp  0  -ang_byp 0  0.5 0.5 0]}';

% ARC OF BYPASS

D0233b= 	{ 'dr' ''  0.2330-0.5*(lll_byp-0.40) []}';
D0225b= 	{ 'dr' ''  0.2250-0.5*(lll_byp-0.40) []}';

D01531= { 'dr' ''  0.1531 []}';
D01005=	{ 'dr' '' 0.1005 []}';
D01717= { 'dr' ''  0.1717 []}';
D01421=  	{ 'dr' ''  0.1421 []}';
D01536= { 'dr' ''  0.1536 []}';

BYP1=		[D0233b, D1BYP, D01531, D2BYP, D01717, ...
			D0186, D11357, D0260, D0110, D0075, D11754, ...
			D0260, D0110, D0085sb, S5BYP, D0195sb, OTR6BYP00, ...
			D0075b, Q6BYP, BPM6BYP, D0075b, D0100, H6BYP, D0200, V6BYP, ...
			D0100, D0110, D03325, D0260, D0110, D0075b, ...
			Q8BYP, D0075b, D13025, D0110, D0075b, Q10BYP, D0075b, ...
			D0425sb, S10BYP, D0055sb, D0110, D0110, H11BYP, ...
			D0200, V11BYP, D04132, D0260, D19690, D0110, ...
			D01421, D14BYP, D01536, D15BYP];

TOR16BYP=	{ 'dr' ''  0.216  []}';

% STRAIGHT LINE OF BYPASS

BYP2=		[D0225b, D0200, D0075b, Q16BYP, D0075b, TOR16BYP, D0134, ...
			D0075b, Q17BYP, D0075b, D0110, D0260, D0870, D0110, ...
			D0075b, Q18BYP, BPM18BYP, D0075b, D0100, H19BYP, D0200, V19BYP, ...
			D0100, D0110, D0260, D1529, D0075, D0110, D0260, D1196, ...
			D4000, D0110, D4000, D0260, D4000, D0110, OTR35BYP00, ...
			D0075b, Q36BYP, D0075b, D0110, D0370, D0260, D0110, ...
			D0075b, Q37BYP, BPM37BYP, D0075b, D0100, H37BYP, D0200, V37BYP, ...
			D0210, D0110, D0210, OTR38BYP00, D0480, D0110, ...
			D0075b, Q39BYP, D0075b, D0110, D0260, D0480, ...
			D0075b, Q41BYP, D0075b, D0100, H41BYP, D0200, V41BYP, ...
			D0100, D3170, D0110, D4000, D0260, D4000, D0110, D4000, ...
			D0260, OTR57BYP00, D0110, D0075b, Q58BYP, BPM58BYP, D0075b, D0100, ...
			H58BYP, D0200, V58BYP, D0100, D3400, D0110, D4000, ...
			D0260, D4000, D0110, D4000, D0260, D0110, ...
			D0075b, Q75BYP, BPM75BYP, D0075b, D0100, H76BYP, D0200, V76BYP, ...
			D0100, D3400, D0110, D4000, D0260, D4000, D0110, D4000, ...
			D0260, D0110, D0075b, Q92BYP, BPM92BYP, D0075b, D0100, H93BYP, ...
			D0200, V93BYP, D0050, D0075b, Q93BYP, D0075b, ...
			D158766, D0260, D0110];

StartBYP= 	{ 'dr' ''  0 []}';
EndBYP=   	{ 'dr' ''  0 []}';

BYPASS=	[StartBYP, BYP1, BYP2, EndBYP];

% FIRST PART OF THE DUMP
Q4DUMP={'qu'  'Q4DUMP'   0.37280 2.82642/Kfactor}';

D1DUMP={'be' 'D1DUMP' len_dump [-ang_dump 0  0 -ang_dump  0.5 0.5 0]}';

StartDUMP0= 	{ 'dr' ''  0 []}';
EndDUMP0=   	{ 'dr' ''  0 []}';
D03655=	{ 'dr' ''  0.3655  []}';
DUMP0=[StartDUMP0, D0394, D1DUMP, D03655, D08833, D0230, D0135f, Q4DUMP, ...
			D0185f, D0085, D04741, BPM5DUMP, D032423, D0230, D0950, EndDUMP0];

FLASH_BYP=[INJ, ACC1, ACC39, BC2, ACC23, BC3, ACC4567,  ...
               		COLL_BYP, BYPASS, DUMP0, DUMP]; 
					
FLASH=[INJ, ACC1, ACC39, BC2, ACC23, BC3, ACC4567,  ...
               		COLLIMATOR, ORS, SFUND, SFELC, SMATCH, UNDULATOR, EXP, DUMP]; 

malin={'dr' '' 0 []}';
D001=	{ 'dr' ''  0.01  []}';
starttest=[malin,D001,BPM13SMATCH, ...
			D0100a, D0203, OTR13SMATCH00, D0020, D0256, D0010, D0146, D0072, ...
			D0071, D0100, D0053, D0100g, Q14SMATCH, BPM14SMATCH, D0076g, WIRE14SMATCH00, ...
			D0076g, Q15SMATCH, D0026g, EndSMATCH];
BEAMLINE=[starttest,UNDULATOR, EXP];