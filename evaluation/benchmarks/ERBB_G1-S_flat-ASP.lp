% This file was generated from the PH model 'ERBB_G1-S_flat.ph'

% Process
process("AKT1", 0..1). %+
process("AKT1ERalpha", 0..3).
process("AKT1MEK1", 0..3).
process("AKT1MEK1ERalpha", 0..7).
process("CDK2", 0..1). %+
process("CDK2CDK4CDK6", 0..7).
process("CDK2CDK4MYC", 0..7).
process("CDK4", 0..1). %+
process("CDK6", 0..1). %+
process("CycD1", 0..1). %+
process("CycD1p21p27", 0..7).
process("CycE1", 0..1). %+
process("CycE1p21p27", 0..7).
process("EGF", 0..1). %+
process("ERBB1", 0..1). %+
process("ERBB1ERBB1_2ERBB1_3", 0..7).
process("ERBB1ERBB2", 0..3).
process("ERBB1ERBB3", 0..3).
process("ERBB1_2", 0..1). %+
process("ERBB1_3", 0..1). %+
process("ERBB2", 0..1). %+
process("ERBB2ERBB3", 0..3).
process("ERBB2_3", 0..1). %+
process("ERBB2_3AKT1", 0..3).
process("ERBB2_3ERalpha", 0..3).
process("ERBB2_3IGF1R", 0..3).
process("ERBB3", 0..1). %+
process("ERalpha", 0..1). %+
process("ERalphaAKT1", 0..3).
process("ERalphaMYC", 0..3).
process("IGF1R", 0..1). %+
process("MEK1", 0..1). %+
process("MYC", 0..1). %+
process("MYCCDK4", 0..3).
process("__coop0", 0..3).
process("__coop1", 0..3).
process("__coop2", 0..3).
process("__coop3", 0..3).
process("__coop4", 0..3).
process("p21", 0..1). %+
process("p27", 0..1). %+
process("pRB", 0..1). %+

% Actions
action("CycE1",0,"CycE1p21p27",5,1).
action("p21",1,"CycE1p21p27",5,7).
action("p27",0,"CycE1p21p27",5,4).
action("__coop3",0,"p21",1,0).
action("__coop3",1,"p21",1,0).
action("__coop3",2,"p21",1,0).
action("AKT1",1,"AKT1MEK1ERalpha",0,4).
action("MEK1",1,"AKT1MEK1ERalpha",0,2).
action("ERalpha",1,"AKT1MEK1ERalpha",0,1).
action("ERBB2_3",1,"ERBB2_3AKT1",0,2).
action("AKT1",1,"ERBB2_3AKT1",0,1).
action("ERBB2_3",1,"ERBB2_3ERalpha",1,3).
action("ERalpha",0,"ERBB2_3ERalpha",1,0).
action("__coop4",0,"p27",1,0).
action("__coop4",1,"p27",1,0).
action("__coop4",2,"p27",1,0).
action("CDK2",0,"CDK2CDK4MYC",5,1).
action("CDK4",1,"CDK2CDK4MYC",5,7).
action("MYC",0,"CDK2CDK4MYC",5,4).
action("AKT1",1,"MYC",0,1).
action("ERalpha",1,"MYC",0,1).
action("MEK1",1,"MYC",0,1).
action("EGF",0,"ERBB1",1,0).
action("EGF",0,"ERBB2",1,0).
action("EGF",0,"ERBB3",1,0).
action("CycD1",0,"CycD1p21p27",6,2).
action("p21",0,"CycD1p21p27",6,4).
action("p27",1,"CycD1p21p27",6,7).
action("AKT1",0,"AKT1ERalpha",3,1).
action("ERalpha",0,"AKT1ERalpha",3,2).
action("ERalpha",1,"ERalphaMYC",1,3).
action("MYC",0,"ERalphaMYC",1,0).
action("AKT1",0,"AKT1MEK1",2,0).
action("MEK1",1,"AKT1MEK1",2,3).
action("ERBB1",1,"ERBB1ERBB1_2ERBB1_3",2,6).
action("ERBB1_2",0,"ERBB1ERBB1_2ERBB1_3",2,0).
action("ERBB1_3",1,"ERBB1ERBB1_2ERBB1_3",2,3).
action("ERBB1",0,"ERBB1ERBB2",2,0).
action("ERBB2",1,"ERBB1ERBB2",2,3).
action("ERBB1",0,"ERBB1ERBB3",2,0).
action("ERBB3",1,"ERBB1ERBB3",2,3).
action("CDK2",0,"CDK2CDK4CDK6",4,0).
action("CDK4",1,"CDK2CDK4CDK6",4,6).
action("CDK6",1,"CDK2CDK4CDK6",4,5).
action("MYC",1,"MYCCDK4",0,2).
action("CDK4",1,"MYCCDK4",0,1).
action("CycE1",0,"CycE1p21p27",4,0).
action("p21",1,"CycE1p21p27",4,6).
action("p27",1,"CycE1p21p27",4,5).
action("CDK2",0,"CDK2CDK4MYC",4,0).
action("CDK4",1,"CDK2CDK4MYC",4,6).
action("MYC",1,"CDK2CDK4MYC",4,5).
action("ERBB2",1,"ERBB2ERBB3",1,3).
action("ERBB3",0,"ERBB2ERBB3",1,0).
action("__coop2",0,"CycD1",1,0).
action("__coop2",1,"CycD1",1,0).
action("__coop2",2,"CycD1",1,0).
action("AKT1MEK1",0,"CycD1",1,0).
action("CycD1",0,"CycD1p21p27",5,1).
action("p21",1,"CycD1p21p27",5,7).
action("p27",0,"CycD1p21p27",5,4).
action("AKT1",0,"AKT1ERalpha",2,0).
action("ERalpha",1,"AKT1ERalpha",2,3).
action("ERalpha",0,"ERalphaAKT1",3,1).
action("AKT1",0,"ERalphaAKT1",3,2).
action("ERBB2_3",1,"ERBB2_3ERalpha",0,2).
action("ERalpha",1,"ERBB2_3ERalpha",0,1).
action("ERBB2_3",1,"ERBB2_3IGF1R",1,3).
action("IGF1R",0,"ERBB2_3IGF1R",1,0).
action("CDK2",1,"CDK2CDK4CDK6",0,4).
action("CDK4",1,"CDK2CDK4CDK6",0,2).
action("CDK6",1,"CDK2CDK4CDK6",0,1).
action("AKT1MEK1ERalpha",0,"MYC",1,0).
action("ERBB1",0,"ERBB1ERBB1_2ERBB1_3",7,3).
action("ERBB1_2",0,"ERBB1ERBB1_2ERBB1_3",7,5).
action("ERBB1_3",0,"ERBB1ERBB1_2ERBB1_3",7,6).
action("MYC",0,"CycE1",1,0).
action("ERBB1",0,"ERBB1ERBB1_2ERBB1_3",6,2).
action("ERBB1_2",0,"ERBB1ERBB1_2ERBB1_3",6,4).
action("ERBB1_3",1,"ERBB1ERBB1_2ERBB1_3",6,7).
action("CycE1",1,"CycE1p21p27",3,7).
action("p21",0,"CycE1p21p27",3,1).
action("p27",0,"CycE1p21p27",3,2).
action("EGF",1,"ERBB1",0,1).
action("EGF",1,"ERBB2",0,1).
action("EGF",1,"ERBB3",0,1).
action("AKT1",0,"AKT1MEK1ERalpha",7,3).
action("MEK1",0,"AKT1MEK1ERalpha",7,5).
action("ERalpha",0,"AKT1MEK1ERalpha",7,6).
action("CDK2",1,"CDK2CDK4MYC",3,7).
action("CDK4",0,"CDK2CDK4MYC",3,1).
action("MYC",0,"CDK2CDK4MYC",3,2).
action("ERBB2_3",1,"IGF1R",1,0).
action("AKT1ERalpha",0,"IGF1R",1,0).
action("__coop0",0,"AKT1",0,1).
action("__coop0",1,"AKT1",0,1).
action("__coop0",2,"AKT1",0,1).
action("CycD1",0,"CycD1p21p27",4,0).
action("p21",1,"CycD1p21p27",4,6).
action("p27",1,"CycD1p21p27",4,5).
action("AKT1",1,"AKT1ERalpha",1,3).
action("ERalpha",0,"AKT1ERalpha",1,0).
action("ERalpha",0,"ERalphaAKT1",2,0).
action("AKT1",1,"ERalphaAKT1",2,3).
action("AKT1",0,"AKT1MEK1ERalpha",5,1).
action("MEK1",1,"AKT1MEK1ERalpha",5,7).
action("ERalpha",0,"AKT1MEK1ERalpha",5,4).
action("ERBB1",1,"ERBB1ERBB1_2ERBB1_3",1,5).
action("ERBB1_2",1,"ERBB1ERBB1_2ERBB1_3",1,3).
action("ERBB1_3",0,"ERBB1ERBB1_2ERBB1_3",1,0).
action("CDK2CDK4CDK6",3,"pRB",0,1).
action("CDK2CDK4CDK6",7,"pRB",0,1).
action("__coop1",3,"MEK1",1,0).
action("CDK2",0,"CDK2CDK4CDK6",5,1).
action("CDK4",1,"CDK2CDK4CDK6",5,7).
action("CDK6",0,"CDK2CDK4CDK6",5,4).
action("ERalpha",1,"ERalphaMYC",0,2).
action("MYC",1,"ERalphaMYC",0,1).
action("ERBB1ERBB1_2ERBB1_3",1,"__coop0",2,0).
action("ERBB1ERBB1_2ERBB1_3",2,"__coop0",2,0).
action("ERBB1ERBB1_2ERBB1_3",3,"__coop0",2,0).
action("ERBB1ERBB1_2ERBB1_3",4,"__coop0",2,0).
action("ERBB1ERBB1_2ERBB1_3",5,"__coop0",2,0).
action("ERBB1ERBB1_2ERBB1_3",6,"__coop0",2,0).
action("ERBB1ERBB1_2ERBB1_3",7,"__coop0",2,0).
action("ERBB2_3IGF1R",0,"__coop0",2,3).
action("ERBB1ERBB1_2ERBB1_3",1,"__coop1",2,0).
action("ERBB1ERBB1_2ERBB1_3",2,"__coop1",2,0).
action("ERBB1ERBB1_2ERBB1_3",3,"__coop1",2,0).
action("ERBB1ERBB1_2ERBB1_3",4,"__coop1",2,0).
action("ERBB1ERBB1_2ERBB1_3",5,"__coop1",2,0).
action("ERBB1ERBB1_2ERBB1_3",6,"__coop1",2,0).
action("ERBB1ERBB1_2ERBB1_3",7,"__coop1",2,0).
action("ERBB2_3IGF1R",0,"__coop1",2,3).
action("ERalphaMYC",0,"__coop2",2,0).
action("ERalphaMYC",1,"__coop2",2,0).
action("ERalphaMYC",2,"__coop2",2,0).
action("AKT1MEK1",2,"__coop2",2,3).
action("AKT1MEK1",1,"__coop2",2,3).
action("AKT1MEK1",3,"__coop2",2,3).
action("ERalphaAKT1",0,"__coop3",2,0).
action("ERalphaAKT1",1,"__coop3",2,0).
action("ERalphaAKT1",3,"__coop3",2,0).
action("MYCCDK4",0,"__coop3",2,3).
action("AKT1ERalpha",0,"__coop4",2,0).
action("AKT1ERalpha",2,"__coop4",2,0).
action("AKT1ERalpha",3,"__coop4",2,0).
action("CDK2CDK4MYC",0,"__coop4",2,3).
action("ERBB1",1,"ERBB1ERBB2",1,3).
action("ERBB2",0,"ERBB1ERBB2",1,0).
action("AKT1",1,"AKT1MEK1",1,3).
action("MEK1",0,"AKT1MEK1",1,0).
action("AKT1",1,"AKT1MEK1ERalpha",3,7).
action("MEK1",0,"AKT1MEK1ERalpha",3,1).
action("ERalpha",0,"AKT1MEK1ERalpha",3,2).
action("ERBB1",1,"ERBB1ERBB3",1,3).
action("ERBB3",0,"ERBB1ERBB3",1,0).
action("CycE1",1,"CycE1p21p27",2,6).
action("p21",0,"CycE1p21p27",2,0).
action("p27",1,"CycE1p21p27",2,3).
action("ERalpha",0,"ERalphaMYC",3,1).
action("MYC",0,"ERalphaMYC",3,2).
action("__coop2",3,"CycD1",0,1).
action("AKT1MEK1",0,"ERalpha",1,0).
action("ERBB1ERBB1_2ERBB1_3",1,"__coop0",3,1).
action("ERBB1ERBB1_2ERBB1_3",2,"__coop0",3,1).
action("ERBB1ERBB1_2ERBB1_3",3,"__coop0",3,1).
action("ERBB1ERBB1_2ERBB1_3",4,"__coop0",3,1).
action("ERBB1ERBB1_2ERBB1_3",5,"__coop0",3,1).
action("ERBB1ERBB1_2ERBB1_3",6,"__coop0",3,1).
action("ERBB1ERBB1_2ERBB1_3",7,"__coop0",3,1).
action("ERBB2_3IGF1R",1,"__coop0",3,2).
action("ERBB2_3IGF1R",2,"__coop0",3,2).
action("ERBB2_3IGF1R",3,"__coop0",3,2).
action("ERBB1ERBB1_2ERBB1_3",1,"__coop1",3,1).
action("ERBB1ERBB1_2ERBB1_3",2,"__coop1",3,1).
action("ERBB1ERBB1_2ERBB1_3",3,"__coop1",3,1).
action("ERBB1ERBB1_2ERBB1_3",4,"__coop1",3,1).
action("ERBB1ERBB1_2ERBB1_3",5,"__coop1",3,1).
action("ERBB1ERBB1_2ERBB1_3",6,"__coop1",3,1).
action("ERBB1ERBB1_2ERBB1_3",7,"__coop1",3,1).
action("ERBB2_3IGF1R",1,"__coop1",3,2).
action("ERBB2_3IGF1R",2,"__coop1",3,2).
action("ERBB2_3IGF1R",3,"__coop1",3,2).
action("ERalphaMYC",0,"__coop2",3,1).
action("ERalphaMYC",1,"__coop2",3,1).
action("ERalphaMYC",2,"__coop2",3,1).
action("AKT1MEK1",0,"__coop2",3,2).
action("CDK2",1,"CDK2CDK4MYC",2,6).
action("CDK4",0,"CDK2CDK4MYC",2,0).
action("MYC",1,"CDK2CDK4MYC",2,3).
action("ERalphaAKT1",0,"__coop3",3,1).
action("ERalphaAKT1",1,"__coop3",3,1).
action("ERalphaAKT1",3,"__coop3",3,1).
action("MYCCDK4",1,"__coop3",3,2).
action("MYCCDK4",2,"__coop3",3,2).
action("MYCCDK4",3,"__coop3",3,2).
action("MYC",0,"MYCCDK4",3,1).
action("CDK4",0,"MYCCDK4",3,2).
action("AKT1ERalpha",0,"__coop4",3,1).
action("AKT1ERalpha",2,"__coop4",3,1).
action("AKT1ERalpha",3,"__coop4",3,1).
action("CDK2CDK4MYC",1,"__coop4",3,2).
action("CDK2CDK4MYC",2,"__coop4",3,2).
action("CDK2CDK4MYC",3,"__coop4",3,2).
action("CDK2CDK4MYC",4,"__coop4",3,2).
action("CDK2CDK4MYC",5,"__coop4",3,2).
action("CDK2CDK4MYC",6,"__coop4",3,2).
action("CDK2CDK4MYC",7,"__coop4",3,2).
action("AKT1",1,"AKT1MEK1ERalpha",1,5).
action("MEK1",1,"AKT1MEK1ERalpha",1,3).
action("ERalpha",0,"AKT1MEK1ERalpha",1,0).
action("MYC",1,"CycE1",0,1).
action("CycD1",1,"CycD1p21p27",3,7).
action("p21",0,"CycD1p21p27",3,1).
action("p27",0,"CycD1p21p27",3,2).
action("AKT1",1,"AKT1ERalpha",0,2).
action("ERalpha",1,"AKT1ERalpha",0,1).
action("ERalpha",1,"ERalphaAKT1",1,3).
action("AKT1",0,"ERalphaAKT1",1,0).
action("ERBB2_3",0,"ERBB2_3IGF1R",2,0).
action("IGF1R",1,"ERBB2_3IGF1R",2,3).
action("ERBB2",1,"ERBB2ERBB3",0,2).
action("ERBB3",1,"ERBB2ERBB3",0,1).
action("CDK2",1,"CDK2CDK4CDK6",1,5).
action("CDK4",1,"CDK2CDK4CDK6",1,3).
action("CDK6",0,"CDK2CDK4CDK6",1,0).
action("ERBB1",0,"ERBB1ERBB1_2ERBB1_3",5,1).
action("ERBB1_2",1,"ERBB1ERBB1_2ERBB1_3",5,7).
action("ERBB1_3",0,"ERBB1ERBB1_2ERBB1_3",5,4).
action("CDK2",1,"CDK2CDK4CDK6",2,6).
action("CDK4",0,"CDK2CDK4CDK6",2,0).
action("CDK6",1,"CDK2CDK4CDK6",2,3).
action("ERBB2",0,"ERBB2ERBB3",3,1).
action("ERBB3",0,"ERBB2ERBB3",3,2).
action("ERBB2_3AKT1",1,"IGF1R",0,1).
action("ERBB2_3ERalpha",1,"IGF1R",0,1).
action("CycE1",1,"CycE1p21p27",1,5).
action("p21",1,"CycE1p21p27",1,3).
action("p27",0,"CycE1p21p27",1,0).
action("CDK6",0,"pRB",1,0).
action("CDK4",0,"pRB",1,0).
action("p21",1,"CDK2",1,0).
action("p27",1,"CDK2",1,0).
action("CycE1",0,"CDK2",1,0).
action("ERBB2_3",0,"ERBB2_3AKT1",3,1).
action("AKT1",0,"ERBB2_3AKT1",3,2).
action("CycD1",0,"CDK4",1,0).
action("p21",1,"CDK4",1,0).
action("p27",1,"CDK4",1,0).
action("CycD1",0,"CDK6",1,0).
action("CDK2",1,"CDK2CDK4MYC",1,5).
action("CDK4",1,"CDK2CDK4MYC",1,3).
action("MYC",0,"CDK2CDK4MYC",1,0).
action("ERBB3",0,"ERBB2_3",1,0).
action("ERBB2",0,"ERBB2_3",1,0).
action("ERBB1ERBB1_2ERBB1_3",0,"__coop0",1,3).
action("ERBB2_3IGF1R",1,"__coop0",1,0).
action("ERBB2_3IGF1R",2,"__coop0",1,0).
action("ERBB2_3IGF1R",3,"__coop0",1,0).
action("ERBB1ERBB1_2ERBB1_3",0,"__coop1",1,3).
action("ERBB2_3IGF1R",1,"__coop1",1,0).
action("ERBB2_3IGF1R",2,"__coop1",1,0).
action("ERBB2_3IGF1R",3,"__coop1",1,0).
action("ERalphaMYC",3,"__coop2",1,3).
action("AKT1MEK1",0,"__coop2",1,0).
action("ERalphaAKT1",2,"__coop3",1,3).
action("MYCCDK4",1,"__coop3",1,0).
action("MYCCDK4",2,"__coop3",1,0).
action("MYCCDK4",3,"__coop3",1,0).
action("AKT1ERalpha",1,"__coop4",1,3).
action("CDK2CDK4MYC",1,"__coop4",1,0).
action("CDK2CDK4MYC",2,"__coop4",1,0).
action("CDK2CDK4MYC",3,"__coop4",1,0).
action("CDK2CDK4MYC",4,"__coop4",1,0).
action("CDK2CDK4MYC",5,"__coop4",1,0).
action("CDK2CDK4MYC",6,"__coop4",1,0).
action("CDK2CDK4MYC",7,"__coop4",1,0).
action("ERBB1",1,"ERBB1ERBB1_2ERBB1_3",0,4).
action("ERBB1_2",1,"ERBB1ERBB1_2ERBB1_3",0,2).
action("ERBB1_3",1,"ERBB1ERBB1_2ERBB1_3",0,1).
action("CycD1",1,"CycD1p21p27",2,6).
action("p21",0,"CycD1p21p27",2,0).
action("p27",1,"CycD1p21p27",2,3).
action("ERalpha",1,"ERalphaAKT1",0,2).
action("AKT1",1,"ERalphaAKT1",0,1).
action("AKT1",1,"ERalpha",0,1).
action("MEK1",1,"ERalpha",0,1).
action("CDK2",0,"CDK2CDK4CDK6",6,2).
action("CDK4",0,"CDK2CDK4CDK6",6,4).
action("CDK6",1,"CDK2CDK4CDK6",6,7).
action("MYC",0,"MYCCDK4",2,0).
action("CDK4",1,"MYCCDK4",2,3).
action("ERBB1",0,"ERBB1_2",1,0).
action("ERBB2",0,"ERBB1_2",1,0).
action("ERBB1",0,"ERBB1_3",1,0).
action("ERBB3",0,"ERBB1_3",1,0).
action("CycE1",0,"CycE1p21p27",7,3).
action("CycE1",1,"CycE1p21p27",0,4).
action("p21",0,"CycE1p21p27",7,5).
action("p21",1,"CycE1p21p27",0,2).
action("p27",0,"CycE1p21p27",7,6).
action("p27",1,"CycE1p21p27",0,1).
action("ERBB2_3",0,"ERBB2_3AKT1",2,0).
action("AKT1",1,"ERBB2_3AKT1",2,3).
action("AKT1",0,"AKT1MEK1",3,1).
action("MEK1",0,"AKT1MEK1",3,2).
action("ERBB1",1,"ERBB1ERBB2",0,2).
action("ERBB2",1,"ERBB1ERBB2",0,1).
action("ERBB1",1,"ERBB1ERBB3",0,2).
action("ERBB3",1,"ERBB1ERBB3",0,1).
action("CDK2",0,"CDK2CDK4MYC",7,3).
action("CDK2",1,"CDK2CDK4MYC",0,4).
action("CDK4",0,"CDK2CDK4MYC",7,5).
action("CDK4",1,"CDK2CDK4MYC",0,2).
action("MYC",0,"CDK2CDK4MYC",7,6).
action("MYC",1,"CDK2CDK4MYC",0,1).
action("ERalpha",0,"ERalphaMYC",2,0).
action("MYC",1,"ERalphaMYC",2,3).
action("AKT1",1,"AKT1MEK1",0,2).
action("MEK1",1,"AKT1MEK1",0,1).
action("__coop1",0,"MEK1",0,1).
action("__coop1",1,"MEK1",0,1).
action("__coop1",2,"MEK1",0,1).
action("ERBB1",0,"ERBB1ERBB2",3,1).
action("ERBB2",0,"ERBB1ERBB2",3,2).
action("ERBB1",0,"ERBB1ERBB3",3,1).
action("ERBB3",0,"ERBB1ERBB3",3,2).
action("CycD1",1,"CycD1p21p27",1,5).
action("p21",1,"CycD1p21p27",1,3).
action("p27",0,"CycD1p21p27",1,0).
action("ERBB2_3",0,"ERBB2_3IGF1R",3,1).
action("IGF1R",0,"ERBB2_3IGF1R",3,2).
action("ERBB1",0,"ERBB1ERBB1_2ERBB1_3",4,0).
action("ERBB1_2",1,"ERBB1ERBB1_2ERBB1_3",4,6).
action("ERBB1_3",1,"ERBB1ERBB1_2ERBB1_3",4,5).
action("ERBB1",1,"ERBB1ERBB1_2ERBB1_3",3,7).
action("ERBB1_2",0,"ERBB1ERBB1_2ERBB1_3",3,1).
action("ERBB1_3",0,"ERBB1ERBB1_2ERBB1_3",3,2).
action("ERBB2_3",0,"ERBB2_3ERalpha",2,0).
action("ERalpha",1,"ERBB2_3ERalpha",2,3).
action("__coop3",3,"p21",0,1).
action("CDK2",1,"CDK2CDK4CDK6",3,7).
action("CDK4",0,"CDK2CDK4CDK6",3,1).
action("CDK6",0,"CDK2CDK4CDK6",3,2).
action("__coop4",3,"p27",0,1).
action("ERBB2ERBB3",3,"ERBB2_3",0,1).
action("AKT1",0,"AKT1MEK1ERalpha",6,2).
action("MEK1",0,"AKT1MEK1ERalpha",6,4).
action("ERalpha",1,"AKT1MEK1ERalpha",6,7).
action("ERBB1ERBB1_2ERBB1_3",0,"__coop0",0,2).
action("ERBB2_3IGF1R",0,"__coop0",0,1).
action("ERBB1ERBB1_2ERBB1_3",0,"__coop1",0,2).
action("ERBB2_3IGF1R",0,"__coop1",0,1).
action("ERalphaMYC",3,"__coop2",0,2).
action("AKT1MEK1",2,"__coop2",0,1).
action("AKT1MEK1",1,"__coop2",0,1).
action("AKT1MEK1",3,"__coop2",0,1).
action("CycE1",0,"CycE1p21p27",6,2).
action("p21",0,"CycE1p21p27",6,4).
action("p27",1,"CycE1p21p27",6,7).
action("ERalphaAKT1",2,"__coop3",0,2).
action("MYCCDK4",0,"__coop3",0,1).
action("AKT1ERalpha",1,"__coop4",0,2).
action("CDK2CDK4MYC",0,"__coop4",0,1).
action("ERBB2",0,"ERBB2ERBB3",2,0).
action("ERBB3",1,"ERBB2ERBB3",2,3).
action("ERBB2_3",1,"ERBB2_3AKT1",1,3).
action("AKT1",0,"ERBB2_3AKT1",1,0).
action("ERBB2_3",0,"ERBB2_3ERalpha",3,1).
action("ERalpha",0,"ERBB2_3ERalpha",3,2).
action("CDK2",0,"CDK2CDK4MYC",6,2).
action("CDK4",0,"CDK2CDK4MYC",6,4).
action("MYC",1,"CDK2CDK4MYC",6,7).
action("AKT1",0,"AKT1MEK1ERalpha",4,0).
action("MEK1",1,"AKT1MEK1ERalpha",4,6).
action("ERalpha",1,"AKT1MEK1ERalpha",4,5).
action("MYC",1,"MYCCDK4",1,3).
action("CDK4",0,"MYCCDK4",1,0).
action("ERBB1ERBB2",3,"ERBB1_2",0,1).
action("ERBB1ERBB3",3,"ERBB1_3",0,1).
action("CycD1",0,"CycD1p21p27",7,3).
action("CycD1",1,"CycD1p21p27",0,4).
action("p21",0,"CycD1p21p27",7,5).
action("p21",1,"CycD1p21p27",0,2).
action("p27",0,"CycD1p21p27",7,6).
action("p27",1,"CycD1p21p27",0,1).
action("ERBB2_3",1,"ERBB2_3IGF1R",0,2).
action("IGF1R",1,"ERBB2_3IGF1R",0,1).
action("AKT1",1,"AKT1MEK1ERalpha",2,6).
action("MEK1",0,"AKT1MEK1ERalpha",2,0).
action("ERalpha",1,"AKT1MEK1ERalpha",2,3).
action("__coop0",3,"AKT1",1,0).
action("CDK2",0,"CDK2CDK4CDK6",7,3).
action("CDK4",0,"CDK2CDK4CDK6",7,5).
action("CDK6",0,"CDK2CDK4CDK6",7,6).
action("CycE1p21p27",4,"CDK2",0,1).
action("CycD1p21p27",4,"CDK4",0,1).
action("CycD1",1,"CDK6",0,1).

% A MODIFIER 

% initialisation des process actifs
init(actifProcess("AKT1",0 )).
init(actifProcess("AKT1ERalpha",0 )).
init(actifProcess("AKT1MEK1",0 )).
init(actifProcess("AKT1MEK1ERalpha",0 )).
init(actifProcess("CDK2",0 )).
init(actifProcess("CDK2CDK4CDK6",0 )).
init(actifProcess("CDK2CDK4MYC",0 )).
init(actifProcess("CDK4",0 )).
init(actifProcess("CDK6",0 )).
init(actifProcess("CycD1",0 )).
init(actifProcess("CycD1p21p27",0 )).
init(actifProcess("CycE1",0 )).
init(actifProcess("CycE1p21p27",0 )).
init(actifProcess("EGF",1 )).
init(actifProcess("ERBB1",0 )).
init(actifProcess("ERBB1ERBB1_2ERBB1_3",0 )).
init(actifProcess("ERBB1ERBB2",0 )).
init(actifProcess("ERBB1ERBB3",0 )).
init(actifProcess("ERBB1_2",0 )).
init(actifProcess("ERBB1_3",0 )).
init(actifProcess("ERBB2",0 )).
init(actifProcess("ERBB2ERBB3",0 )).
init(actifProcess("ERBB2_3",0 )).
init(actifProcess("ERBB2_3AKT1",0 )).
init(actifProcess("ERBB2_3ERalpha",0 )).
init(actifProcess("ERBB2_3IGF1R",0 )).
init(actifProcess("ERBB3",0 )).
init(actifProcess("ERalpha",0 )).
init(actifProcess("ERalphaAKT1",0 )).
init(actifProcess("ERalphaMYC",0 )).
init(actifProcess("IGF1R",0 )).
init(actifProcess("MEK1",0 )).
init(actifProcess("MYC",0 )).
init(actifProcess("MYCCDK4",0 )).
init(actifProcess("__coop0",3 )).
init(actifProcess("__coop1",3 )).
init(actifProcess("__coop2",0 )).
init(actifProcess("__coop3",1 )).
init(actifProcess("__coop4",1 )).
init(actifProcess("p21",0 )).
init(actifProcess("p27",0 )).
init(actifProcess("pRB",0 )).

% Liste des process à atteindre 
%goal(actifProcess("AKT1", 1 )).
%goal(actifProcess("AKT1ERalpha", 3 )).
%goal(actifProcess("AKT1MEK1", 3 )).
%goal(actifProcess("AKT1MEK1ERalpha", 7 )).
%goal(actifProcess("CDK2", 1 )).
%goal(actifProcess("CDK2CDK4CDK6", 3 )).
%goal(actifProcess("CDK2CDK4MYC", 7 )).
goal(actifProcess("CDK4", 1 )). %+
goal(actifProcess("CDK6", 1 )). %+
goal(actifProcess("CycD1", 1 )). %+
%goal(actifProcess("CycD1p21p27", 4 )).
%goal(actifProcess("CycE1", 1 )).
%goal(actifProcess("CycE1p21p27", 4 )).
goal(actifProcess("EGF", 1 )).
goal(actifProcess("ERBB1", 1 )). %+
%goal(actifProcess("ERBB1ERBB1_2ERBB1_3", 7 )).
%goal(actifProcess("ERBB1ERBB2", 3 )).
%goal(actifProcess("ERBB1ERBB3", 3 )).
%goal(actifProcess("ERBB1_2", 1 )).
%goal(actifProcess("ERBB1_3", 1 )).
%goal(actifProcess("ERBB2", 1 )).
%goal(actifProcess("ERBB2ERBB3", 3 )).
%goal(actifProcess("ERBB2_3", 1 )).
%goal(actifProcess("ERBB2_3AKT1", 3 )).
%goal(actifProcess("ERBB2_3ERalpha", 3 )).
%goal(actifProcess("ERBB2_3IGF1R", 2 )).
%goal(actifProcess("ERBB3", 1 )).
goal(actifProcess("ERalpha", 1 )). %+
%goal(actifProcess("ERalphaAKT1", 3 )).
%goal(actifProcess("ERalphaMYC", 3 )).
%goal(actifProcess("IGF1R", 0 )).
goal(actifProcess("MEK1", 1 )). %+
goal(actifProcess("MYC", 1 )). %+
%goal(actifProcess("MYCCDK4", 3 )).
%goal(actifProcess("__coop0", 0 )).
%goal(actifProcess("__coop1", 0 )).
%goal(actifProcess("__coop2", 3 )).
%goal(actifProcess("__coop3", 0 )).
%goal(actifProcess("__coop4", 0 )).
%goal(actifProcess("p21", 0 )).
%goal(actifProcess("p27", 0 )).
goal(actifProcess("pRB", 1 )).

%Point fixe:
%% goal(actifProcess("AKT1",1). goal(actifProcess("AKT1ERalpha",3)). goal(actifProcess("AKT1MEK1",3)). goal(actifProcess("AKT1MEK1ERalpha",7)). goal(actifProcess("CDK2",1)). goal(actifProcess("CDK2CDK4CDK6",7)). goal(actifProcess("CDK2CDK4MYC",7)). goal(actifProcess("CDK4",1)). goal(actifProcess("CDK6",1)). goal(actifProcess("CycD1",1)). goal(actifProcess("CycD1p21p27",4)). goal(actifProcess("CycE1",1)). goal(actifProcess("CycE1p21p27",4)). goal(actifProcess("EGF",1)). goal(actifProcess("ERBB1",1)). goal(actifProcess("ERBB1ERBB1_2ERBB1_3",7)). goal(actifProcess("ERBB1ERBB2",3)). goal(actifProcess("ERBB1ERBB3",3)). goal(actifProcess("ERBB1_2",1)). goal(actifProcess("ERBB1_3",1)). goal(actifProcess("ERBB2",1)). goal(actifProcess("ERBB2ERBB3",3)). goal(actifProcess("ERBB2_3",1)). goal(actifProcess("ERBB2_3AKT1",3)). goal(actifProcess("ERBB2_3ERalpha",3)). goal(actifProcess("ERBB2_3IGF1R",2)). goal(actifProcess("ERBB3",1)). goal(actifProcess("ERalpha",1)). goal(actifProcess("ERalphaAKT1",3)). goal(actifProcess("ERalphaMYC",3)). goal(actifProcess("IGF1R",0)). goal(actifProcess("MEK1",1)). goal(actifProcess("MYC",1)). goal(actifProcess("MYCCDK4",3)). goal(actifProcess("__coop0",0)). goal(actifProcess("__coop1",0)). goal(actifProcess("__coop2",3)). goal(actifProcess("__coop3",0)). goal(actifProcess("__coop4",0)). goal(actifProcess("p21",0)). goal(actifProcess("p27",0)). goal(actifProcess("pRB",1)).


%Chemin:
%%actifFromTo("ERBB1",0,1,0) actifFromTo("ERBB1ERBB1_2ERBB1_3",0,4,1) actifFromTo("__coop1",3,1,2) actifFromTo("MEK1",0,1,3) actifFromTo("ERalpha",0,1,4) actifFromTo("ERalphaMYC",0,2,5) actifFromTo("MYC",0,1,6) actifFromTo("ERalphaMYC",2,3,7) actifFromTo("__coop2",0,2,8) actifFromTo("AKT1MEK1",0,1,9) actifFromTo("__coop2",2,3,10) actifFromTo("CycD1",0,1,11) actifFromTo("CycD1p21p27",0,4,12) actifFromTo("CDK4",0,1,13) actifFromTo("CDK6",0,1,14) actifFromTo("CDK2CDK4CDK6",0,2,15) actifFromTo("CDK2CDK4CDK6",2,3,16) actifFromTo("pRB",0,1,17) 
%%
