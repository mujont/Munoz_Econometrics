/*dropped all null values in the ID fields.*/
drop if ID2005==0
drop if ID2007==0
drop if ID2009==0
drop if ID2011==0
drop if ID2013==0
drop if ID2015==0


/*forced the removal of all duplicate IDs.*/
duplicates drop ID2005, force
duplicates drop ID2007, force
duplicates drop ID2009, force
duplicates drop ID2011, force
duplicates drop ID2013, force
duplicates drop ID2015, force


/*created two dummy variables for frequency of internet use for email.
infrequentemail2005 covers email usage of once a week or less.
frequentemail2005 covers email usage of several times a week or more.
0 = never used for email.
All N/A; refused; DK; Inap responses were omitted*/
drop if WTRUSEDNETFOREMAIL2005==8
drop if WTRUSEDNETFOREMAIL2005==9
gen infrequentemail2005 = 0
replace infrequentemail2005 = 1 if WTRUSEDNETFOREMAIL2005>0 & WTRUSEDNETFOREMAIL2005<4
gen frequentemail2005 = 0
replace frequentemail2005 = 1 if WTRUSEDNETFOREMAIL2005>3 & WTRUSEDNETFOREMAIL2005<7

/*created two dummy variables for frequency of internet use for school.
0 = never used for school.
infreqschool2005 covers internet use for school of once a week or less.
freqschool2005 covers internet use for school of several times a week or more.
All N/A; refused; DK; Inap responses were omitted*/
drop if WTRUSEDNETFORSCHOOL2005==8
drop if WTRUSEDNETFORSCHOOL2005==9
gen infreqschool2005 = 0
replace infreqschool2005 = 1 if WTRUSEDNETFORSCHOOL2005>0 & WTRUSEDNETFORSCHOOL2005<4
gen freqschool2005 = 0
replace freqschool2005 = 1 if WTRUSEDNETFORSCHOOL2005>3 & WTRUSEDNETFORSCHOOL2005<7

/*created two dummy variables for frequency of internet use for shopping.
0 = never used to shop.
infreqshop2005 covers internet use for shopping of once a month or less.
freqsshop2005 covers internet use for shopping of once a week or more.
All N/A; refused; DK; Inap responses were omitted*/
drop if WTRUSEDNETTOSHOP2005==8
drop if WTRUSEDNETTOSHOP2005==9
gen infreqshop2005 = 0
replace infreqshop2005 = 1 if WTRUSEDNETTOSHOP2005>0 & WTRUSEDNETTOSHOP2005<3
gen freqshop2005 = 0
replace freqshop2005 = 1 if WTRUSEDNETTOSHOP2005>2 & WTRUSEDNETTOSHOP2005<7

/*created two dummy variables for frequency of internet use for gaming.
0 = never used for gaming.
infreqgame2005 covers internet use for gaming of once a week or less.
freqsgame2005 covers internet use for gaming of several times a week or more.
All N/A; refused; DK; Inap responses were omitted*/
drop if WTRUSEDNETFORGAMES2005==8
drop if WTRUSEDNETFORGAMES2005==9
gen infreqgame2005 = 0
replace infreqgame2005 = 1 if WTRUSEDNETFORGAMES2005>0 & WTRUSEDNETFORGAMES2005<4
gen freqgame2005 = 0
replace freqgame2005 = 1 if WTRUSEDNETFORGAMES2005>3 & WTRUSEDNETFORGAMES2005<7


/*created two dummy variables for frequency of worry about money.
0 = no worries about money.
infreqmoney2005 covers concern of at least once a month or less.
freqsmoney2005 covers concern of at least once a week or more.
All N/A; refused; DK; Inap responses were omitted*/
drop if HOWOFNWRYABTMONEY2005==8
drop if HOWOFNWRYABTMONEY2005==9
gen infreqmoney2005 = 0
replace infreqmoney2005 = 1 if HOWOFNWRYABTMONEY2005>1 & HOWOFNWRYABTMONEY2005<4
gen freqmoney2005 = 0
replace freqmoney2005 = 1 if HOWOFNWRYABTMONEY2005>3 & HOWOFNWRYABTMONEY2005<8

/*created two dummy variables for frequency of worry about job future job.
0 = never worry about future job
infreqjob2005 covers concern of at least once a month or less.
freqsjob2005 covers concern of at least once a week or more.
All N/A; refused; DK; Inap responses were omitted*/
drop if HOWOFNWRYABTFUTUREJOB2005==8
drop if HOWOFNWRYABTFUTUREJOB2005==9
gen infreqjob2005 = 0
replace infreqjob2005 = 1 if HOWOFNWRYABTFUTUREJOB2005>1 & HOWOFNWRYABTFUTUREJOB2005<4
gen freqjob2005 = 0
replace freqjob2005 = 1 if HOWOFNWRYABTFUTUREJOB2005>3 & HOWOFNWRYABTFUTUREJOB2005<8

/*created two dummy variables for how often the person felt discouraged.
0 = never felt discouraged.
infreqdisc2005 covers concern of at least once a month or less.
freqsdisc2005 covers concern of at least once a week or more.
All N/A; refused; DK; Inap responses were omitted*/
drop if HOWOFNFEELDISCOURAGED2005==8
drop if HOWOFNFEELDISCOURAGED2005==9
gen infreqdisc2005 = 0
replace infreqdisc2005 = 1 if HOWOFNFEELDISCOURAGED2005>1 & HOWOFNFEELDISCOURAGED2005<4
gen freqdisc2005 = 0
replace freqdisc2005 = 1 if HOWOFNFEELDISCOURAGED2005>3 & HOWOFNFEELDISCOURAGED2005<8


/*created two dummy variables for likelyhood of divorce.
0 – never worried about divorce.
unlikediv2005 covers concern of at least some chance of divorce.
likelydiv2005 covers concern of at least being 50/50 confident in divorce chance.
All N/A; refused; DK; Inap responses were omitted*/
drop if LIKELIHOODOFDIVORCE2005==8
drop if LIKELIHOODOFDIVORCE2005==9
gen unlikediv2005 = 0
replace unlikediv2005 = 1 if LIKELIHOODOFDIVORCE2005==2
gen likelydiv2005 = 0
replace likelydiv2005 = 1 if LIKELIHOODOFDIVORCE2005>2 & LIKELIHOODOFDIVORCE2005<8

/*dropped DK; NA; Refused; Inap responses from Number of hours worked.*/
drop if AVGHRSWKWORKED2005==998
drop if AVGHRSWKWORKED2005==999

/*dropped DK; NA; Refused; Inap responses from Number of hours slept.*/
drop if NMBROFHRSOFSLPIN24HR2005==98
drop if NMBROFHRSOFSLPIN24HR2005==99

/*created two dummy variables for frequency of muscle building activity.
0 = never performed muscle building activities.
freqmuscle2005 covers muscle building several times a month or more.
infreqmuscle2005 covers muscle building once a month or less.
All N/A; refused; DK; Inap responses were omitted*/
drop if HOWOFNMSCLBLD2005==8
drop if HOWOFNMSCLBLD2005==9
gen freqmuscle2005 = 0
replace freqmuscle2005 = 1 if HOWOFNMSCLBLD2005>0 & HOWOFNMSCLBLD2005<4
gen infreqmuscle2005 = 0
replace infreqmuscle2005 = 1 if HOWOFNMSCLBLD2005>4 & HOWOFNMSCLBLD2005<6

/*created two dummy variables for how often snacked instead of eating meal.
0 = never snacked instead of having meals.
infreqsnack2005 covers snack instead of meal a couple times a month or less.
freqssnack2005 covers snack isntead of meal more than once a week.
All N/A; refused; DK; Inap responses were omitted*/
drop if FREQOFSNCKINSTDOFMEAL2005==8
drop if FREQOFSNCKINSTDOFMEAL2005==9
gen infreqsnack2005 = 0
replace infreqsnack2005 = 1 if FREQOFSNCKINSTDOFMEAL2005>1 & FREQOFSNCKINSTDOFMEAL2005<5
gen freqsnack2005 = 0
replace freqsnack2005 = 1 if FREQOFSNCKINSTDOFMEAL2005>4 & FREQOFSNCKINSTDOFMEAL2005<7

/*created two dummy variables for how often drank alcohol.
0 = never drank alcohol.
infreqdrink2005 covers drinking about once a week or less.
freqsdrink2005 covers drinking several times a week or more.
All N/A; refused; DK; Inap responses were omitted*/
drop if HOWOFNHAVEDRINKS2005==8
drop if HOWOFNHAVEDRINKS2005==9
gen infreqdrink2005 = 0
replace infreqdrink2005 = 1 if HOWOFNHAVEDRINKS2005>1 & HOWOFNHAVEDRINKS2005<5
gen freqdrink2005 = 0
replace freqdrink2005 = 1 if HOWOFNHAVEDRINKS2005>4 & HOWOFNHAVEDRINKS2005<7


/*created two dummy variables for frequency of internet use for email.
infrequentemail2007 covers email usage of once a week or less.
frequentemail2007 covers email usage of several times a week or more.
0 = never used for email.
All N/A; refused; DK; Inap responses were omitted*/
drop if WTRUSEDNETFOREMAIL2007==8
drop if WTRUSEDNETFOREMAIL2007==9
gen infrequentemail2007 = 0
replace infrequentemail2007 = 1 if WTRUSEDNETFOREMAIL2007>0 & WTRUSEDNETFOREMAIL2007<4
gen frequentemail2007 = 0
replace frequentemail2007 = 1 if WTRUSEDNETFOREMAIL2007>3 & WTRUSEDNETFOREMAIL2007<7

/*created two dummy variables for frequency of internet use for school.
0 = never used for school.
infreqschool2007 covers internet use for school of once a week or less.
freqschool2007 covers internet use for school of several times a week or more.
All N/A; refused; DK; Inap responses were omitted*/
drop if WTRUSEDNETFORSCHOOL2007==8
drop if WTRUSEDNETFORSCHOOL2007==9
gen infreqschool2007 = 0
replace infreqschool2007 = 1 if WTRUSEDNETFORSCHOOL2007>0 & WTRUSEDNETFORSCHOOL2007<4
gen freqschool2007 = 0
replace freqschool2007 = 1 if WTRUSEDNETFORSCHOOL2007>3 & WTRUSEDNETFORSCHOOL2007<7

/*created two dummy variables for frequency of internet use for shopping.
0 = never used to shop.
infreqshop2007 covers internet use for shopping of once a month or less.
freqsshop2007 covers internet use for shopping of once a week or more.
All N/A; refused; DK; Inap responses were omitted*/
drop if WTRUSEDNETTOSHOP2007==8
drop if WTRUSEDNETTOSHOP2007==9
gen infreqshop2007 = 0
replace infreqshop2007 = 1 if WTRUSEDNETTOSHOP2007>0 & WTRUSEDNETTOSHOP2007<3
gen freqshop2007 = 0
replace freqshop2007 = 1 if WTRUSEDNETTOSHOP2007>2 & WTRUSEDNETTOSHOP2007<7

/*created two dummy variables for frequency of internet use for gaming.
0 = never used for gaming.
infreqgame2007 covers internet use for gaming of once a week or less.
freqsgame2007 covers internet use for gaming of several times a week or more.
All N/A; refused; DK; Inap responses were omitted*/
drop if WTRUSEDNETFORGAMES2007==8
drop if WTRUSEDNETFORGAMES2007==9
gen infreqgame2007 = 0
replace infreqgame2007 = 1 if WTRUSEDNETFORGAMES2007>0 & WTRUSEDNETFORGAMES2007<4
gen freqgame2007 = 0
replace freqgame2007 = 1 if WTRUSEDNETFORGAMES2007>3 & WTRUSEDNETFORGAMES2007<7


/*created two dummy variables for frequency of worry about money.
0 = no worries about money.
infreqmoney2007 covers concern of at least once a month or less.
freqsmoney2007 covers concern of at least once a week or more.
All N/A; refused; DK; Inap responses were omitted*/
drop if HOWOFNWRYABTMONEY2007==8
drop if HOWOFNWRYABTMONEY2007==9
gen infreqmoney2007 = 0
replace infreqmoney2007 = 1 if HOWOFNWRYABTMONEY2007>1 & HOWOFNWRYABTMONEY2007<4
gen freqmoney2007 = 0
replace freqmoney2007 = 1 if HOWOFNWRYABTMONEY2007>3 & HOWOFNWRYABTMONEY2007<8

/*created two dummy variables for frequency of worry about job future job.
0 = never worry about future job
infreqjob2007 covers concern of at least once a month or less.
freqsjob2007 covers concern of at least once a week or more.
All N/A; refused; DK; Inap responses were omitted*/
drop if HOWOFNWRYABTFUTUREJOB2007==8
drop if HOWOFNWRYABTFUTUREJOB2007==9
gen infreqjob2007 = 0
replace infreqjob2007 = 1 if HOWOFNWRYABTFUTUREJOB2007>1 & HOWOFNWRYABTFUTUREJOB2007<4
gen freqjob2007 = 0
replace freqjob2007 = 1 if HOWOFNWRYABTFUTUREJOB2007>3 & HOWOFNWRYABTFUTUREJOB2007<8

/*created two dummy variables for how often the person felt discouraged.
0 = never felt discouraged.
infreqdisc2007 covers concern of at least once a month or less.
freqsdisc2007 covers concern of at least once a week or more.
All N/A; refused; DK; Inap responses were omitted*/
drop if HOWOFNFEELDISCOURAGED2007==8
drop if HOWOFNFEELDISCOURAGED2007==9
gen infreqdisc2007 = 0
replace infreqdisc2007 = 1 if HOWOFNFEELDISCOURAGED2007>1 & HOWOFNFEELDISCOURAGED2007<4
gen freqdisc2007 = 0
replace freqdisc2007 = 1 if HOWOFNFEELDISCOURAGED2007>3 & HOWOFNFEELDISCOURAGED2007<8


/*created two dummy variables for likelyhood of divorce.
0 – never worried about divorce.
unlikediv2007 covers concern of at least some chance of divorce.
likelydiv2007 covers concern of at least being 50/50 confident in divorce chance.
All N/A; refused; DK; Inap responses were omitted*/
drop if LIKELIHOODOFDIVORCE2007==8
drop if LIKELIHOODOFDIVORCE2007==9
gen unlikediv2007 = 0
replace unlikediv2007 = 1 if LIKELIHOODOFDIVORCE2007==2
gen likelydiv2007 = 0
replace likelydiv2007 = 1 if LIKELIHOODOFDIVORCE2007>2 & LIKELIHOODOFDIVORCE2007<8

/*dropped DK; NA; Refused; Inap responses from Number of hours worked.*/
drop if AVGHRSWKWORKED2007==998
drop if AVGHRSWKWORKED2007==999

/*dropped DK; NA; Refused; Inap responses from Number of hours slept.*/
drop if NMBROFHRSOFSLPIN24HR2007==98
drop if NMBROFHRSOFSLPIN24HR2007==99

/*created two dummy variables for frequency of muscle building activity.
0 = never performed muscle building activities.
freqmuscle2007 covers muscle building several times a month or more.
infreqmuscle2007 covers muscle building once a month or less.
All N/A; refused; DK; Inap responses were omitted*/
drop if HOWOFNMSCLBLD2007==8
drop if HOWOFNMSCLBLD2007==9
gen freqmuscle2007 = 0
replace freqmuscle2007 = 1 if HOWOFNMSCLBLD2007>0 & HOWOFNMSCLBLD2007<4
gen infreqmuscle2007 = 0
replace infreqmuscle2007 = 1 if HOWOFNMSCLBLD2007>4 & HOWOFNMSCLBLD2007<6

/*created two dummy variables for how often snacked instead of eating meal.
0 = never snacked instead of having meals.
infreqsnack2007 covers snack instead of meal a couple times a month or less.
freqssnack2007 covers snack isntead of meal more than once a week.
All N/A; refused; DK; Inap responses were omitted*/
drop if FREQOFSNCKINSTDOFMEAL2007==8
drop if FREQOFSNCKINSTDOFMEAL2007==9
gen infreqsnack2007 = 0
replace infreqsnack2007 = 1 if FREQOFSNCKINSTDOFMEAL2007>1 & FREQOFSNCKINSTDOFMEAL2007<5
gen freqsnack2007 = 0
replace freqsnack2007 = 1 if FREQOFSNCKINSTDOFMEAL2007>4 & FREQOFSNCKINSTDOFMEAL2007<7

/*created two dummy variables for how often drank alcohol.
0 = never drank alcohol.
infreqdrink2007 covers drinking about once a week or less.
freqsdrink2007 covers drinking several times a week or more.
All N/A; refused; DK; Inap responses were omitted*/
drop if HOWOFNHAVEDRINKS2007==8
drop if HOWOFNHAVEDRINKS2007==9
gen infreqdrink2007 = 0
replace infreqdrink2007 = 1 if HOWOFNHAVEDRINKS2007>1 & HOWOFNHAVEDRINKS2007<5
gen freqdrink2007 = 0
replace freqdrink2007 = 1 if HOWOFNHAVEDRINKS2007>4 & HOWOFNHAVEDRINKS2007<7


/*created two dummy variables for frequency of internet use for email.
infrequentemail2009 covers email usage of once a week or less.
frequentemail2009 covers email usage of several times a week or more.
0 = never used for email.
All N/A; refused; DK; Inap responses were omitted*/
drop if WTRUSEDNETFOREMAIL2009==8
drop if WTRUSEDNETFOREMAIL2009==9
gen infrequentemail2009 = 0
replace infrequentemail2009 = 1 if WTRUSEDNETFOREMAIL2009>0 & WTRUSEDNETFOREMAIL2009<4
gen frequentemail2009 = 0
replace frequentemail2009 = 1 if WTRUSEDNETFOREMAIL2009>3 & WTRUSEDNETFOREMAIL2009<7

/*created two dummy variables for frequency of internet use for school.
0 = never used for school.
infreqschool2009 covers internet use for school of once a week or less.
freqschool2009 covers internet use for school of several times a week or more.
All N/A; refused; DK; Inap responses were omitted*/
drop if WTRUSEDNETFORSCHOOL2009==8
drop if WTRUSEDNETFORSCHOOL2009==9
gen infreqschool2009 = 0
replace infreqschool2009 = 1 if WTRUSEDNETFORSCHOOL2009>0 & WTRUSEDNETFORSCHOOL2009<4
gen freqschool2009 = 0
replace freqschool2009 = 1 if WTRUSEDNETFORSCHOOL2009>3 & WTRUSEDNETFORSCHOOL2009<7

/*created two dummy variables for frequency of internet use for shopping.
0 = never used to shop.
infreqshop2009 covers internet use for shopping of once a month or less.
freqsshop2009 covers internet use for shopping of once a week or more.
All N/A; refused; DK; Inap responses were omitted*/
drop if WTRUSEDNETTOSHOP2009==8
drop if WTRUSEDNETTOSHOP2009==9
gen infreqshop2009 = 0
replace infreqshop2009 = 1 if WTRUSEDNETTOSHOP2009>0 & WTRUSEDNETTOSHOP2009<3
gen freqshop2009 = 0
replace freqshop2009 = 1 if WTRUSEDNETTOSHOP2009>2 & WTRUSEDNETTOSHOP2009<7

/*created two dummy variables for frequency of internet use for gaming.
0 = never used for gaming.
infreqgame2009 covers internet use for gaming of once a week or less.
freqsgame2009 covers internet use for gaming of several times a week or more.
All N/A; refused; DK; Inap responses were omitted*/
drop if WTRUSEDNETFORGAMES2009==8
drop if WTRUSEDNETFORGAMES2009==9
gen infreqgame2009 = 0
replace infreqgame2009 = 1 if WTRUSEDNETFORGAMES2009>0 & WTRUSEDNETFORGAMES2009<4
gen freqgame2009 = 0
replace freqgame2009 = 1 if WTRUSEDNETFORGAMES2009>3 & WTRUSEDNETFORGAMES2009<7


/*created two dummy variables for frequency of worry about money.
0 = no worries about money.
infreqmoney2009 covers concern of at least once a month or less.
freqsmoney2009 covers concern of at least once a week or more.
All N/A; refused; DK; Inap responses were omitted*/
drop if HOWOFNWRYABTMONEY2009==8
drop if HOWOFNWRYABTMONEY2009==9
gen infreqmoney2009 = 0
replace infreqmoney2009 = 1 if HOWOFNWRYABTMONEY2009>1 & HOWOFNWRYABTMONEY2009<4
gen freqmoney2009 = 0
replace freqmoney2009 = 1 if HOWOFNWRYABTMONEY2009>3 & HOWOFNWRYABTMONEY2009<8

/*created two dummy variables for frequency of worry about job future job.
0 = never worry about future job
infreqjob2009 covers concern of at least once a month or less.
freqsjob2009 covers concern of at least once a week or more.
All N/A; refused; DK; Inap responses were omitted*/
drop if HOWOFNWRYABTFUTUREJOB2009==8
drop if HOWOFNWRYABTFUTUREJOB2009==9
gen infreqjob2009 = 0
replace infreqjob2009 = 1 if HOWOFNWRYABTFUTUREJOB2009>1 & HOWOFNWRYABTFUTUREJOB2009<4
gen freqjob2009 = 0
replace freqjob2009 = 1 if HOWOFNWRYABTFUTUREJOB2009>3 & HOWOFNWRYABTFUTUREJOB2009<8

/*created two dummy variables for how often the person felt discouraged.
0 = never felt discouraged.
infreqdisc2009 covers concern of at least once a month or less.
freqsdisc2009 covers concern of at least once a week or more.
All N/A; refused; DK; Inap responses were omitted*/
drop if HOWOFNFEELDISCOURAGED2009==8
drop if HOWOFNFEELDISCOURAGED2009==9
gen infreqdisc2009 = 0
replace infreqdisc2009 = 1 if HOWOFNFEELDISCOURAGED2009>1 & HOWOFNFEELDISCOURAGED2009<4
gen freqdisc2009 = 0
replace freqdisc2009 = 1 if HOWOFNFEELDISCOURAGED2009>3 & HOWOFNFEELDISCOURAGED2009<8


/*created two dummy variables for likelyhood of divorce.
0 – never worried about divorce.
unlikediv2009 covers concern of at least some chance of divorce.
likelydiv2009 covers concern of at least being 50/50 confident in divorce chance.
All N/A; refused; DK; Inap responses were omitted*/
drop if LIKELIHOODOFDIVORCE2009==8
drop if LIKELIHOODOFDIVORCE2009==9
gen unlikediv2009 = 0
replace unlikediv2009 = 1 if LIKELIHOODOFDIVORCE2009==2
gen likelydiv2009 = 0
replace likelydiv2009 = 1 if LIKELIHOODOFDIVORCE2009>2 & LIKELIHOODOFDIVORCE2009<8

/*dropped DK; NA; Refused; Inap responses from Number of hours worked.*/
drop if AVGHRSWKWORKED2009==998
drop if AVGHRSWKWORKED2009==999

/*dropped DK; NA; Refused; Inap responses from Number of hours slept.*/
drop if NMBROFHRSOFSLPIN24HR2009==98
drop if NMBROFHRSOFSLPIN24HR2009==99

/*created two dummy variables for frequency of muscle building activity.
0 = never performed muscle building activities.
freqmuscle2009 covers muscle building several times a month or more.
infreqmuscle2009 covers muscle building once a month or less.
All N/A; refused; DK; Inap responses were omitted*/
drop if HOWOFNMSCLBLD2009==8
drop if HOWOFNMSCLBLD2009==9
gen freqmuscle2009 = 0
replace freqmuscle2009 = 1 if HOWOFNMSCLBLD2009>0 & HOWOFNMSCLBLD2009<4
gen infreqmuscle2009 = 0
replace infreqmuscle2009 = 1 if HOWOFNMSCLBLD2009>4 & HOWOFNMSCLBLD2009<6

/*created two dummy variables for how often snacked instead of eating meal.
0 = never snacked instead of having meals.
infreqsnack2009 covers snack instead of meal a couple times a month or less.
freqssnack2009 covers snack isntead of meal more than once a week.
All N/A; refused; DK; Inap responses were omitted*/
drop if FREQOFSNCKINSTDOFMEAL2009==8
drop if FREQOFSNCKINSTDOFMEAL2009==9
gen infreqsnack2009 = 0
replace infreqsnack2009 = 1 if FREQOFSNCKINSTDOFMEAL2009>1 & FREQOFSNCKINSTDOFMEAL2009<5
gen freqsnack2009 = 0
replace freqsnack2009 = 1 if FREQOFSNCKINSTDOFMEAL2009>4 & FREQOFSNCKINSTDOFMEAL2009<7

/*created two dummy variables for how often drank alcohol.
0 = never drank alcohol.
infreqdrink2009 covers drinking about once a week or less.
freqsdrink2009 covers drinking several times a week or more.
All N/A; refused; DK; Inap responses were omitted*/
drop if HOWOFNHAVEDRINKS2009==8
drop if HOWOFNHAVEDRINKS2009==9
gen infreqdrink2009 = 0
replace infreqdrink2009 = 1 if HOWOFNHAVEDRINKS2009>1 & HOWOFNHAVEDRINKS2009<5
gen freqdrink2009 = 0
replace freqdrink2009 = 1 if HOWOFNHAVEDRINKS2009>4 & HOWOFNHAVEDRINKS2009<7


/*created two dummy variables for frequency of internet use for email.
infrequentemail2011 covers email usage of once a week or less.
frequentemail2011 covers email usage of several times a week or more.
0 = never used for email.
All N/A; refused; DK; Inap responses were omitted*/
drop if WTRUSEDNETFOREMAIL2011==8
drop if WTRUSEDNETFOREMAIL2011==9
gen infrequentemail2011 = 0
replace infrequentemail2011 = 1 if WTRUSEDNETFOREMAIL2011>0 & WTRUSEDNETFOREMAIL2011<4
gen frequentemail2011 = 0
replace frequentemail2011 = 1 if WTRUSEDNETFOREMAIL2011>3 & WTRUSEDNETFOREMAIL2011<7

/*created two dummy variables for frequency of internet use for school.
0 = never used for school.
infreqschool2011 covers internet use for school of once a week or less.
freqschool2011 covers internet use for school of several times a week or more.
All N/A; refused; DK; Inap responses were omitted*/
drop if WTRUSEDNETFORSCHOOL2011==8
drop if WTRUSEDNETFORSCHOOL2011==9
gen infreqschool2011 = 0
replace infreqschool2011 = 1 if WTRUSEDNETFORSCHOOL2011>0 & WTRUSEDNETFORSCHOOL2011<4
gen freqschool2011 = 0
replace freqschool2011 = 1 if WTRUSEDNETFORSCHOOL2011>3 & WTRUSEDNETFORSCHOOL2011<7

/*created two dummy variables for frequency of internet use for shopping.
0 = never used to shop.
infreqshop2011 covers internet use for shopping of once a month or less.
freqsshop2011 covers internet use for shopping of once a week or more.
All N/A; refused; DK; Inap responses were omitted*/
drop if WTRUSEDNETTOSHOP2011==8
drop if WTRUSEDNETTOSHOP2011==9
gen infreqshop2011 = 0
replace infreqshop2011 = 1 if WTRUSEDNETTOSHOP2011>0 & WTRUSEDNETTOSHOP2011<3
gen freqshop2011 = 0
replace freqshop2011 = 1 if WTRUSEDNETTOSHOP2011>2 & WTRUSEDNETTOSHOP2011<7

/*created two dummy variables for frequency of internet use for gaming.
0 = never used for gaming.
infreqgame2011 covers internet use for gaming of once a week or less.
freqsgame2011 covers internet use for gaming of several times a week or more.
All N/A; refused; DK; Inap responses were omitted*/
drop if WTRUSEDNETFORGAMES2011==8
drop if WTRUSEDNETFORGAMES2011==9
gen infreqgame2011 = 0
replace infreqgame2011 = 1 if WTRUSEDNETFORGAMES2011>0 & WTRUSEDNETFORGAMES2011<4
gen freqgame2011 = 0
replace freqgame2011 = 1 if WTRUSEDNETFORGAMES2011>3 & WTRUSEDNETFORGAMES2011<7


/*created two dummy variables for frequency of worry about money.
0 = no worries about money.
infreqmoney2011 covers concern of at least once a month or less.
freqsmoney2011 covers concern of at least once a week or more.
All N/A; refused; DK; Inap responses were omitted*/
drop if HOWOFNWRYABTMONEY2011==8
drop if HOWOFNWRYABTMONEY2011==9
gen infreqmoney2011 = 0
replace infreqmoney2011 = 1 if HOWOFNWRYABTMONEY2011>1 & HOWOFNWRYABTMONEY2011<4
gen freqmoney2011 = 0
replace freqmoney2011 = 1 if HOWOFNWRYABTMONEY2011>3 & HOWOFNWRYABTMONEY2011<8

/*created two dummy variables for frequency of worry about job future job.
0 = never worry about future job
infreqjob2011 covers concern of at least once a month or less.
freqsjob2011 covers concern of at least once a week or more.
All N/A; refused; DK; Inap responses were omitted*/
drop if HOWOFNWRYABTFUTUREJOB2011==8
drop if HOWOFNWRYABTFUTUREJOB2011==9
gen infreqjob2011 = 0
replace infreqjob2011 = 1 if HOWOFNWRYABTFUTUREJOB2011>1 & HOWOFNWRYABTFUTUREJOB2011<4
gen freqjob2011 = 0
replace freqjob2011 = 1 if HOWOFNWRYABTFUTUREJOB2011>3 & HOWOFNWRYABTFUTUREJOB2011<8

/*created two dummy variables for how often the person felt discouraged.
0 = never felt discouraged.
infreqdisc2011 covers concern of at least once a month or less.
freqsdisc2011 covers concern of at least once a week or more.
All N/A; refused; DK; Inap responses were omitted*/
drop if HOWOFNFEELDISCOURAGED2011==8
drop if HOWOFNFEELDISCOURAGED2011==9
gen infreqdisc2011 = 0
replace infreqdisc2011 = 1 if HOWOFNFEELDISCOURAGED2011>1 & HOWOFNFEELDISCOURAGED2011<4
gen freqdisc2011 = 0
replace freqdisc2011 = 1 if HOWOFNFEELDISCOURAGED2011>3 & HOWOFNFEELDISCOURAGED2011<8


/*created two dummy variables for likelyhood of divorce.
0 – never worried about divorce.
unlikediv2011 covers concern of at least some chance of divorce.
likelydiv2011 covers concern of at least being 50/50 confident in divorce chance.
All N/A; refused; DK; Inap responses were omitted*/
drop if LIKELIHOODOFDIVORCE2011==8
drop if LIKELIHOODOFDIVORCE2011==9
gen unlikediv2011 = 0
replace unlikediv2011 = 1 if LIKELIHOODOFDIVORCE2011==2
gen likelydiv2011 = 0
replace likelydiv2011 = 1 if LIKELIHOODOFDIVORCE2011>2 & LIKELIHOODOFDIVORCE2011<8

/*dropped DK; NA; Refused; Inap responses from Number of hours worked.*/
drop if AVGHRSWKWORKED2011==998
drop if AVGHRSWKWORKED2011==999

/*dropped DK; NA; Refused; Inap responses from Number of hours slept.*/
drop if NMBROFHRSOFSLPIN24HR2011==98
drop if NMBROFHRSOFSLPIN24HR2011==99

/*created two dummy variables for frequency of muscle building activity.
0 = never performed muscle building activities.
freqmuscle2011 covers muscle building several times a month or more.
infreqmuscle2011 covers muscle building once a month or less.
All N/A; refused; DK; Inap responses were omitted*/
drop if HOWOFNMSCLBLD2011==8
drop if HOWOFNMSCLBLD2011==9
gen freqmuscle2011 = 0
replace freqmuscle2011 = 1 if HOWOFNMSCLBLD2011>0 & HOWOFNMSCLBLD2011<4
gen infreqmuscle2011 = 0
replace infreqmuscle2011 = 1 if HOWOFNMSCLBLD2011>4 & HOWOFNMSCLBLD2011<6

/*created two dummy variables for how often snacked instead of eating meal.
0 = never snacked instead of having meals.
infreqsnack2011 covers snack instead of meal a couple times a month or less.
freqssnack2011 covers snack isntead of meal more than once a week.
All N/A; refused; DK; Inap responses were omitted*/
drop if FREQOFSNCKINSTDOFMEAL2011==8
drop if FREQOFSNCKINSTDOFMEAL2011==9
gen infreqsnack2011 = 0
replace infreqsnack2011 = 1 if FREQOFSNCKINSTDOFMEAL2011>1 & FREQOFSNCKINSTDOFMEAL2011<5
gen freqsnack2011 = 0
replace freqsnack2011 = 1 if FREQOFSNCKINSTDOFMEAL2011>4 & FREQOFSNCKINSTDOFMEAL2011<7

/*created two dummy variables for how often drank alcohol.
0 = never drank alcohol.
infreqdrink2011 covers drinking about once a week or less.
freqsdrink2011 covers drinking several times a week or more.
All N/A; refused; DK; Inap responses were omitted*/
drop if HOWOFNHAVEDRINKS2011==8
drop if HOWOFNHAVEDRINKS2011==9
gen infreqdrink2011 = 0
replace infreqdrink2011 = 1 if HOWOFNHAVEDRINKS2011>1 & HOWOFNHAVEDRINKS2011<5
gen freqdrink2011 = 0
replace freqdrink2011 = 1 if HOWOFNHAVEDRINKS2011>4 & HOWOFNHAVEDRINKS2011<7


/*created two dummy variables for frequency of internet use for email.
infrequentemail2013 covers email usage of once a week or less.
frequentemail2013 covers email usage of several times a week or more.
0 = never used for email.
All N/A; refused; DK; Inap responses were omitted*/
drop if WTRUSEDNETFOREMAIL2013==8
drop if WTRUSEDNETFOREMAIL2013==9
gen infrequentemail2013 = 0
replace infrequentemail2013 = 1 if WTRUSEDNETFOREMAIL2013>0 & WTRUSEDNETFOREMAIL2013<4
gen frequentemail2013 = 0
replace frequentemail2013 = 1 if WTRUSEDNETFOREMAIL2013>3 & WTRUSEDNETFOREMAIL2013<7

/*created two dummy variables for frequency of internet use for school.
0 = never used for school.
infreqschool2013 covers internet use for school of once a week or less.
freqschool2013 covers internet use for school of several times a week or more.
All N/A; refused; DK; Inap responses were omitted*/
drop if WTRUSEDNETFORSCHOOL2013==8
drop if WTRUSEDNETFORSCHOOL2013==9
gen infreqschool2013 = 0
replace infreqschool2013 = 1 if WTRUSEDNETFORSCHOOL2013>0 & WTRUSEDNETFORSCHOOL2013<4
gen freqschool2013 = 0
replace freqschool2013 = 1 if WTRUSEDNETFORSCHOOL2013>3 & WTRUSEDNETFORSCHOOL2013<7

/*created two dummy variables for frequency of internet use for shopping.
0 = never used to shop.
infreqshop2013 covers internet use for shopping of once a month or less.
freqsshop2013 covers internet use for shopping of once a week or more.
All N/A; refused; DK; Inap responses were omitted*/
drop if WTRUSEDNETTOSHOP2013==8
drop if WTRUSEDNETTOSHOP2013==9
gen infreqshop2013 = 0
replace infreqshop2013 = 1 if WTRUSEDNETTOSHOP2013>0 & WTRUSEDNETTOSHOP2013<3
gen freqshop2013 = 0
replace freqshop2013 = 1 if WTRUSEDNETTOSHOP2013>2 & WTRUSEDNETTOSHOP2013<7

/*created two dummy variables for frequency of internet use for gaming.
0 = never used for gaming.
infreqgame2013 covers internet use for gaming of once a week or less.
freqsgame2013 covers internet use for gaming of several times a week or more.
All N/A; refused; DK; Inap responses were omitted*/
drop if WTRUSEDNETFORGAMES2013==8
drop if WTRUSEDNETFORGAMES2013==9
gen infreqgame2013 = 0
replace infreqgame2013 = 1 if WTRUSEDNETFORGAMES2013>0 & WTRUSEDNETFORGAMES2013<4
gen freqgame2013 = 0
replace freqgame2013 = 1 if WTRUSEDNETFORGAMES2013>3 & WTRUSEDNETFORGAMES2013<7


/*created two dummy variables for frequency of worry about money.
0 = no worries about money.
infreqmoney2013 covers concern of at least once a month or less.
freqsmoney2013 covers concern of at least once a week or more.
All N/A; refused; DK; Inap responses were omitted*/
drop if HOWOFNWRYABTMONEY2013==8
drop if HOWOFNWRYABTMONEY2013==9
gen infreqmoney2013 = 0
replace infreqmoney2013 = 1 if HOWOFNWRYABTMONEY2013>1 & HOWOFNWRYABTMONEY2013<4
gen freqmoney2013 = 0
replace freqmoney2013 = 1 if HOWOFNWRYABTMONEY2013>3 & HOWOFNWRYABTMONEY2013<8

/*created two dummy variables for frequency of worry about job future job.
0 = never worry about future job
infreqjob2013 covers concern of at least once a month or less.
freqsjob2013 covers concern of at least once a week or more.
All N/A; refused; DK; Inap responses were omitted*/
drop if HOWOFNWRYABTFUTUREJOB2013==8
drop if HOWOFNWRYABTFUTUREJOB2013==9
gen infreqjob2013 = 0
replace infreqjob2013 = 1 if HOWOFNWRYABTFUTUREJOB2013>1 & HOWOFNWRYABTFUTUREJOB2013<4
gen freqjob2013 = 0
replace freqjob2013 = 1 if HOWOFNWRYABTFUTUREJOB2013>3 & HOWOFNWRYABTFUTUREJOB2013<8

/*created two dummy variables for how often the person felt discouraged.
0 = never felt discouraged.
infreqdisc2013 covers concern of at least once a month or less.
freqsdisc2013 covers concern of at least once a week or more.
All N/A; refused; DK; Inap responses were omitted*/
drop if HOWOFNFEELDISCOURAGED2013==8
drop if HOWOFNFEELDISCOURAGED2013==9
gen infreqdisc2013 = 0
replace infreqdisc2013 = 1 if HOWOFNFEELDISCOURAGED2013>1 & HOWOFNFEELDISCOURAGED2013<4
gen freqdisc2013 = 0
replace freqdisc2013 = 1 if HOWOFNFEELDISCOURAGED2013>3 & HOWOFNFEELDISCOURAGED2013<8


/*created two dummy variables for likelyhood of divorce.
0 – never worried about divorce.
unlikediv2013 covers concern of at least some chance of divorce.
likelydiv2013 covers concern of at least being 50/50 confident in divorce chance.
All N/A; refused; DK; Inap responses were omitted*/
drop if LIKELIHOODOFDIVORCE2013==8
drop if LIKELIHOODOFDIVORCE2013==9
gen unlikediv2013 = 0
replace unlikediv2013 = 1 if LIKELIHOODOFDIVORCE2013==2
gen likelydiv2013 = 0
replace likelydiv2013 = 1 if LIKELIHOODOFDIVORCE2013>2 & LIKELIHOODOFDIVORCE2013<8

/*dropped DK; NA; Refused; Inap responses from Number of hours worked.*/
drop if AVGHRSWKWORKED2013==998
drop if AVGHRSWKWORKED2013==999

/*dropped DK; NA; Refused; Inap responses from Number of hours slept.*/
drop if NMBROFHRSOFSLPIN24HR2013==98
drop if NMBROFHRSOFSLPIN24HR2013==99

/*created two dummy variables for frequency of muscle building activity.
0 = never performed muscle building activities.
freqmuscle2013 covers muscle building several times a month or more.
infreqmuscle2013 covers muscle building once a month or less.
All N/A; refused; DK; Inap responses were omitted*/
drop if HOWOFNMSCLBLD2013==8
drop if HOWOFNMSCLBLD2013==9
gen freqmuscle2013 = 0
replace freqmuscle2013 = 1 if HOWOFNMSCLBLD2013>0 & HOWOFNMSCLBLD2013<4
gen infreqmuscle2013 = 0
replace infreqmuscle2013 = 1 if HOWOFNMSCLBLD2013>4 & HOWOFNMSCLBLD2013<6

/*created two dummy variables for how often snacked instead of eating meal.
0 = never snacked instead of having meals.
infreqsnack2013 covers snack instead of meal a couple times a month or less.
freqssnack2013 covers snack isntead of meal more than once a week.
All N/A; refused; DK; Inap responses were omitted*/
drop if FREQOFSNCKINSTDOFMEAL2013==8
drop if FREQOFSNCKINSTDOFMEAL2013==9
gen infreqsnack2013 = 0
replace infreqsnack2013 = 1 if FREQOFSNCKINSTDOFMEAL2013>1 & FREQOFSNCKINSTDOFMEAL2013<5
gen freqsnack2013 = 0
replace freqsnack2013 = 1 if FREQOFSNCKINSTDOFMEAL2013>4 & FREQOFSNCKINSTDOFMEAL2013<7

/*created two dummy variables for how often drank alcohol.
0 = never drank alcohol.
infreqdrink2013 covers drinking about once a week or less.
freqsdrink2013 covers drinking several times a week or more.
All N/A; refused; DK; Inap responses were omitted*/
drop if HOWOFNHAVEDRINKS2013==8
drop if HOWOFNHAVEDRINKS2013==9
gen infreqdrink2013 = 0
replace infreqdrink2013 = 1 if HOWOFNHAVEDRINKS2013>1 & HOWOFNHAVEDRINKS2013<5
gen freqdrink2013 = 0
replace freqdrink2013 = 1 if HOWOFNHAVEDRINKS2013>4 & HOWOFNHAVEDRINKS2013<7


/*created two dummy variables for frequency of internet use for email.
infrequentemail2015 covers email usage of once a week or less.
frequentemail2015 covers email usage of several times a week or more.
0 = never used for email.
All N/A; refused; DK; Inap responses were omitted*/
drop if WTRUSEDNETFOREMAIL2015==8
drop if WTRUSEDNETFOREMAIL2015==9
gen infrequentemail2015 = 0
replace infrequentemail2015 = 1 if WTRUSEDNETFOREMAIL2015>0 & WTRUSEDNETFOREMAIL2015<4
gen frequentemail2015 = 0
replace frequentemail2015 = 1 if WTRUSEDNETFOREMAIL2015>3 & WTRUSEDNETFOREMAIL2015<7

/*created two dummy variables for frequency of internet use for school.
0 = never used for school.
infreqschool2015 covers internet use for school of once a week or less.
freqschool2015 covers internet use for school of several times a week or more.
All N/A; refused; DK; Inap responses were omitted*/
drop if WTRUSEDNETFORSCHOOL2015==8	
drop if WTRUSEDNETFORSCHOOL2015==9
gen infreqschool2015 = 0
replace infreqschool2015 = 1 if WTRUSEDNETFORSCHOOL2015>0 & WTRUSEDNETFORSCHOOL2015<4
gen freqschool2015 = 0
replace freqschool2015 = 1 if WTRUSEDNETFORSCHOOL2015>3 & WTRUSEDNETFORSCHOOL2015<7

/*created two dummy variables for frequency of internet use for shopping.
0 = never used to shop.
infreqshop2015 covers internet use for shopping of once a month or less.
freqsshop2015 covers internet use for shopping of once a week or more.
All N/A; refused; DK; Inap responses were omitted*/
drop if WTRUSEDNETTOSHOP2015==8
drop if WTRUSEDNETTOSHOP2015==9
gen infreqshop2015 = 0
replace infreqshop2015 = 1 if WTRUSEDNETTOSHOP2015>0 & WTRUSEDNETTOSHOP2015<3
gen freqshop2015 = 0
replace freqshop2015 = 1 if WTRUSEDNETTOSHOP2015>2 & WTRUSEDNETTOSHOP2015<7

/*created two dummy variables for frequency of internet use for gaming.
0 = never used for gaming.
infreqgame2015 covers internet use for gaming of once a week or less.
freqsgame2015 covers internet use for gaming of several times a week or more.
All N/A; refused; DK; Inap responses were omitted*/
drop if WTRUSEDNETFORGAMES2015==8
drop if WTRUSEDNETFORGAMES2015==9
gen infreqgame2015 = 0
replace infreqgame2015 = 1 if WTRUSEDNETFORGAMES2015>0 & WTRUSEDNETFORGAMES2015<4
gen freqgame2015 = 0
replace freqgame2015 = 1 if WTRUSEDNETFORGAMES2015>3 & WTRUSEDNETFORGAMES2015<7


/*created two dummy variables for frequency of worry about money.
0 = no worries about money.
infreqmoney2015 covers concern of at least once a month or less.
freqsmoney2015 covers concern of at least once a week or more.
All N/A; refused; DK; Inap responses were omitted*/
drop if HOWOFNWRYABTMONEY2015==8
drop if HOWOFNWRYABTMONEY2015==9
gen infreqmoney2015 = 0
replace infreqmoney2015 = 1 if HOWOFNWRYABTMONEY2015>1 & HOWOFNWRYABTMONEY2015<4
gen freqmoney2015 = 0
replace freqmoney2015 = 1 if HOWOFNWRYABTMONEY2015>3 & HOWOFNWRYABTMONEY2015<8

/*created two dummy variables for frequency of worry about job future job.
0 = never worry about future job
infreqjob2015 covers concern of at least once a month or less.
freqsjob2015 covers concern of at least once a week or more.
All N/A; refused; DK; Inap responses were omitted*/
drop if HOWOFNWRYABTFUTUREJOB2015==8
drop if HOWOFNWRYABTFUTUREJOB2015==9
gen infreqjob2015 = 0
replace infreqjob2015 = 1 if HOWOFNWRYABTFUTUREJOB2015>1 & HOWOFNWRYABTFUTUREJOB2015<4
gen freqjob2015 = 0
replace freqjob2015 = 1 if HOWOFNWRYABTFUTUREJOB2015>3 & HOWOFNWRYABTFUTUREJOB2015<8

/*created two dummy variables for how often the person felt discouraged.
0 = never felt discouraged.
infreqdisc2015 covers concern of at least once a month or less.
freqsdisc2015 covers concern of at least once a week or more.
All N/A; refused; DK; Inap responses were omitted*/
drop if HOWOFNFEELDISCOURAGED2015==8
drop if HOWOFNFEELDISCOURAGED2015==9
gen infreqdisc2015 = 0
replace infreqdisc2015 = 1 if HOWOFNFEELDISCOURAGED2015>1 & HOWOFNFEELDISCOURAGED2015<4
gen freqdisc2015 = 0
replace freqdisc2015 = 1 if HOWOFNFEELDISCOURAGED2015>3 & HOWOFNFEELDISCOURAGED2015<8


/*created two dummy variables for likelyhood of divorce.
0 – never worried about divorce.
unlikediv2015 covers concern of at least some chance of divorce.
likelydiv2015 covers concern of at least being 50/50 confident in divorce chance.
All N/A; refused; DK; Inap responses were omitted*/
drop if LIKELIHOODOFDIVORCE2015==8
drop if LIKELIHOODOFDIVORCE2015==9
gen unlikediv2015 = 0
replace unlikediv2015 = 1 if LIKELIHOODOFDIVORCE2015==2
gen likelydiv2015 = 0
replace likelydiv2015 = 1 if LIKELIHOODOFDIVORCE2015>2 & LIKELIHOODOFDIVORCE2015<8

/*dropped DK; NA; Refused; Inap responses from Number of hours worked.*/
drop if AVGHRSWKWORKED2015==998
drop if AVGHRSWKWORKED2015==999

/*dropped DK; NA; Refused; Inap responses from Number of hours slept.*/
drop if NMBROFHRSOFSLPIN24HR2015==98
drop if NMBROFHRSOFSLPIN24HR2015==99

/*created two dummy variables for frequency of muscle building activity.
0 = never performed muscle building activities.
freqmuscle2015 covers muscle building several times a month or more.
infreqmuscle2015 covers muscle building once a month or less.
All N/A; refused; DK; Inap responses were omitted*/
drop if HOWOFNMSCLBLD2015==8
drop if HOWOFNMSCLBLD2015==9
gen freqmuscle2015 = 0
replace freqmuscle2015 = 1 if HOWOFNMSCLBLD2015>0 & HOWOFNMSCLBLD2015<4
gen infreqmuscle2015 = 0
replace infreqmuscle2015 = 1 if HOWOFNMSCLBLD2015>4 & HOWOFNMSCLBLD2015<6

/*created two dummy variables for how often snacked instead of eating meal.
0 = never snacked instead of having meals.
infreqsnack2015 covers snack instead of meal a couple times a month or less.
freqssnack2015 covers snack isntead of meal more than once a week.
All N/A; refused; DK; Inap responses were omitted*/
drop if FREQOFSNCKINSTDOFMEAL2015==8
drop if FREQOFSNCKINSTDOFMEAL2015==9
gen infreqsnack2015 = 0
replace infreqsnack2015 = 1 if FREQOFSNCKINSTDOFMEAL2015>1 & FREQOFSNCKINSTDOFMEAL2015<5
gen freqsnack2015 = 0
replace freqsnack2015 = 1 if FREQOFSNCKINSTDOFMEAL2015>4 & FREQOFSNCKINSTDOFMEAL2015<7

/*created two dummy variables for how often drank alcohol.
0 = never drank alcohol.
infreqdrink2015 covers drinking about once a week or less.
freqsdrink2015 covers drinking several times a week or more.
All N/A; refused; DK; Inap responses were omitted*/
drop if HOWOFNHAVEDRINKS2015==8
drop if HOWOFNHAVEDRINKS2015==9
gen infreqdrink2015 = 0
replace infreqdrink2015 = 1 if HOWOFNHAVEDRINKS2015>1 & HOWOFNHAVEDRINKS2015<5
gen freqdrink2015 = 0
replace freqdrink2015 = 1 if HOWOFNHAVEDRINKS2015>4 & HOWOFNHAVEDRINKS2015<7

/*summarized the data across each year of observations for analysis and presentation*/

summarize NMBROFHRSOFSLPIN24HR2005 AVGHRSWKWORKED2005 infrequentemail2005 frequentemail2005 infreqschool2005 freqschool2005 infreqshop2005 freqshop2005 infreqgame2005 freqgame2005 infreqmoney2005 freqmoney2005 infreqjob2005 freqjob2005 infreqdisc2005 freqdisc2005 unlikediv2005 likelydiv2005 freqmuscle2005 infreqmuscle2005 infreqsnack2005 freqsnack2005 infreqdrink2005 freqdrink2005
summarize NMBROFHRSOFSLPIN24HR2007 AVGHRSWKWORKED2007 infrequentemail2007 frequentemail2007 infreqschool2007 freqschool2007 infreqshop2007 freqshop2007 infreqgame2007 freqgame2007 infreqmoney2007 freqmoney2007 infreqjob2007 freqjob2007 infreqdisc2007 freqdisc2007 unlikediv2007 likelydiv2007 freqmuscle2007 infreqmuscle2007 infreqsnack2007 freqsnack2007 infreqdrink2007 freqdrink2007
summarize NMBROFHRSOFSLPIN24HR2009 AVGHRSWKWORKED2009 infrequentemail2009 frequentemail2009 infreqschool2009 freqschool2009 infreqshop2009 freqshop2009 infreqgame2009 freqgame2009 infreqmoney2009 freqmoney2009 infreqjob2009 freqjob2009 infreqdisc2009 freqdisc2009 unlikediv2009 likelydiv2009 freqmuscle2009 infreqmuscle2009 infreqsnack2009 freqsnack2009 infreqdrink2009 freqdrink2009
summarize NMBROFHRSOFSLPIN24HR2011 AVGHRSWKWORKED2011 infrequentemail2011 frequentemail2011 infreqschool2011 freqschool2011 infreqshop2011 freqshop2011 infreqgame2011 freqgame2011 infreqmoney2011 freqmoney2011 infreqjob2011 freqjob2011 infreqdisc2011 freqdisc2011 unlikediv2011 likelydiv2011 freqmuscle2011 infreqmuscle2011 infreqsnack2011 freqsnack2011 infreqdrink2011 freqdrink2011
summarize NMBROFHRSOFSLPIN24HR2013 AVGHRSWKWORKED2013 infrequentemail2013 frequentemail2013 infreqschool2013 freqschool2013 infreqshop2013 freqshop2013 infreqgame2013 freqgame2013 infreqmoney2013 freqmoney2013 infreqjob2013 freqjob2013 infreqdisc2013 freqdisc2013 unlikediv2013 likelydiv2013 freqmuscle2013 infreqmuscle2013 infreqsnack2013 freqsnack2013 infreqdrink2013 freqdrink2013
summarize NMBROFHRSOFSLPIN24HR2015 AVGHRSWKWORKED2015 infrequentemail2015 frequentemail2015 infreqschool2015 freqschool2015 infreqshop2015 freqshop2015 infreqgame2015 freqgame2015 infreqmoney2015 freqmoney2015 infreqjob2015 freqjob2015 infreqdisc2015 freqdisc2015 unlikediv2015 likelydiv2015 freqmuscle2015 infreqmuscle2015 infreqsnack2015 freqsnack2015 infreqdrink2015 freqdrink2015

/*tabulated data across each year of observations for analysis and presentation of the effect of the data on the independant variable.
tabulating is the cleanest way to represent binary data in Stata14.*/

tabulate freqgame2005, summarize(NMBROFHRSOFSLPIN24HR2005)
tabulate freqgame2007, summarize(NMBROFHRSOFSLPIN24HR2007)
tabulate freqgame2009, summarize(NMBROFHRSOFSLPIN24HR2009)
tabulate freqgame2011, summarize(NMBROFHRSOFSLPIN24HR2011)
tabulate freqgame2013, summarize(NMBROFHRSOFSLPIN24HR2013)
tabulate freqgame2015, summarize(NMBROFHRSOFSLPIN24HR2015)

/*these commands are in preparation of running a regression on the selected data*/

reshape long NMBROFHRSOFSLPIN24HR AVGHRSWKWORKED infrequentemail frequentemail infreqschool freqschool infreqshop freqshop infreqgame freqgame infreqmoney freqmoney infreqjob freqjob infreqdisc freqdisc unlikediv likelydiv freqmuscle infreqmuscle infreqsnack freqsnack infreqdrink freqdrink, i(ID2005) j(year) 

xtset ID2005 year

xtreg NMBROFHRSOFSLPIN24HR AVGHRSWKWORKED infrequentemail frequentemail infreqschool freqschool infreqshop freqshop infreqgame freqgame infreqmoney freqmoney infreqjob freqjob infreqdisc freqdisc unlikediv likelydiv freqmuscle infreqmuscle infreqsnack freqsnack infreqdrink freqdrink, re

estimates store random

xtreg NMBROFHRSOFSLPIN24HR AVGHRSWKWORKED infrequentemail frequentemail infreqschool freqschool infreqshop freqshop infreqgame freqgame infreqmoney freqmoney infreqjob freqjob infreqdisc freqdisc unlikediv likelydiv freqmuscle infreqmuscle infreqsnack freqsnack infreqdrink freqdrink, fe

estimates store fixed

/*this is the robustness test for the regression.*/

hausman fixed random

xtreg NMBROFHRSOFSLPIN24HR AVGHRSWKWORKED infrequentemail frequentemail infreqschool freqschool infreqshop freqshop infreqgame freqgame infreqmoney freqmoney infreqjob freqjob infreqdisc freqdisc unlikediv likelydiv freqmuscle infreqmuscle infreqsnack freqsnack infreqdrink freqdrink, re































