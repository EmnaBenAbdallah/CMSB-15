% This file was generated from the PH model 'TH-tadpole-tail-applati.ph'

% Process
process("D2", 0..1).
process("D2T4D3", 0..7).
process("D3", 0..1).
process("EG", 0..1).
process("EGT3", 0..7).
process("IG", 0..1).
process("IGLG", 0..3).
process("LG", 0..1).
process("LGT3", 0..7).
process("T3", 0..3).
process("T4", 0..1).
process("TR", 0..1).
process("TRT3", 0..7).

% Actions
action("T3",2,"EG",0,1).
action("T3",3,"EG",0,1).
action("T3",3,"EGT3",4,7).
action("T3",2,"EGT3",4,6).
action("T3",1,"EGT3",4,5).
action("EG",0,"EGT3",4,0).
action("T3",3,"TRT3",5,7).
action("T3",2,"TRT3",5,6).
action("T3",0,"TRT3",5,4).
action("TR",0,"TRT3",5,1).
action("D3",1,"D2T4D3",6,7).
action("T4",0,"D2T4D3",6,4).
action("D2",0,"D2T4D3",6,2).
action("T3",0,"IG",1,0).
action("T3",2,"LGT3",3,2).
action("T3",1,"LGT3",3,1).
action("T3",0,"LGT3",3,0).
action("LG",1,"LGT3",3,7).
action("D3",0,"D2T4D3",7,6).
action("T4",0,"D2T4D3",7,5).
action("D2",0,"D2T4D3",7,3).
action("D3",0,"D2T4D3",1,0).
action("T4",1,"D2T4D3",1,3).
action("D2",1,"D2T4D3",1,5).
action("D2T4D3",0,"T3",0,1).
action("D2T4D3",1,"T3",0,1).
action("D2T4D3",2,"T3",0,1).
action("D2T4D3",3,"T3",0,1).
action("D2T4D3",4,"T3",0,1).
action("D2T4D3",5,"T3",0,1).
action("D2T4D3",6,"T3",0,1).
action("D2T4D3",7,"T3",0,1).
action("T3",3,"EGT3",0,3).
action("T3",2,"EGT3",0,2).
action("T3",1,"EGT3",0,1).
action("EG",1,"EGT3",0,4).
action("T3",3,"EGT3",2,3).
action("T3",1,"EGT3",2,1).
action("T3",0,"EGT3",2,0).
action("EG",1,"EGT3",2,6).
action("T3",3,"LGT3",1,3).
action("T3",2,"LGT3",1,2).
action("T3",0,"LGT3",1,0).
action("LG",1,"LGT3",1,5).
action("D3",1,"D2T4D3",0,1).
action("T4",1,"D2T4D3",0,2).
action("D2",1,"D2T4D3",0,4).
action("EGT3",1,"D3",1,0).
action("EGT3",2,"D3",1,0).
action("EGT3",3,"D3",1,0).
action("EGT3",0,"D3",1,0).
action("EGT3",4,"D3",1,0).
action("EGT3",5,"D3",1,0).
action("EGT3",6,"D3",1,0).
action("EGT3",7,"D3",1,0).
action("T3",3,"TRT3",6,7).
action("T3",1,"TRT3",6,5).
action("T3",0,"TRT3",6,4).
action("TR",0,"TRT3",6,2).
action("TRT3",0,"LG",1,0).
action("TRT3",1,"LG",1,0).
action("TRT3",2,"LG",1,0).
action("TRT3",3,"LG",1,0).
action("TRT3",4,"LG",1,0).
action("TRT3",5,"LG",1,0).
action("TRT3",6,"LG",1,0).
action("TRT3",7,"LG",1,0).
action("IGLG",0,"D2",1,0).
action("IGLG",1,"D2",1,0).
action("IGLG",3,"D2",1,0).
action("T3",2,"TRT3",7,6).
action("T3",1,"TRT3",7,5).
action("T3",0,"TRT3",7,4).
action("TR",0,"TRT3",7,3).
action("D3",0,"D2T4D3",5,4).
action("T4",1,"D2T4D3",5,7).
action("D2",0,"D2T4D3",5,1).
action("T3",3,"LGT3",6,7).
action("T3",1,"LGT3",6,5).
action("T3",0,"LGT3",6,4).
action("LG",0,"LGT3",6,2).
action("T3",3,"EGT3",1,3).
action("T3",2,"EGT3",1,2).
action("T3",0,"EGT3",1,0).
action("EG",1,"EGT3",1,5).
action("LG",1,"IGLG",0,1).
action("IG",1,"IGLG",0,2).
action("T3",3,"EGT3",6,7).
action("T3",1,"EGT3",6,5).
action("T3",0,"EGT3",6,4).
action("EG",0,"EGT3",6,2).
action("D3",1,"D2T4D3",2,3).
action("T4",0,"D2T4D3",2,0).
action("D2",1,"D2T4D3",2,6).
action("T3",2,"EGT3",7,6).
action("T3",1,"EGT3",7,5).
action("T3",0,"EGT3",7,4).
action("EG",0,"EGT3",7,3).
action("D3",1,"D2T4D3",4,5).
action("T4",1,"D2T4D3",4,6).
action("D2",0,"D2T4D3",4,0).
action("T3",3,"TRT3",2,3).
action("T3",1,"TRT3",2,1).
action("T3",0,"TRT3",2,0).
action("TR",1,"TRT3",2,6).
action("T3",0,"EG",1,0).
action("T3",1,"EG",1,0).
action("D3",0,"T4",0,1).
action("D3",1,"T4",0,1).
action("T3",3,"TRT3",0,3).
action("T3",2,"TRT3",0,2).
action("T3",1,"TRT3",0,1).
action("TR",1,"TRT3",0,4).
action("D3",0,"D2T4D3",3,2).
action("T4",0,"D2T4D3",3,1).
action("D2",1,"D2T4D3",3,7).
action("T3",3,"TRT3",4,7).
action("T3",2,"TRT3",4,6).
action("T3",1,"TRT3",4,5).
action("TR",0,"TRT3",4,0).
action("LGT3",0,"TR",1,0).
action("LGT3",1,"TR",1,0).
action("LGT3",4,"TR",1,0).
action("LGT3",5,"TR",1,0).
action("LGT3",6,"TR",1,0).
action("LGT3",7,"TR",1,0).
action("LGT3",0,"TR",1,0).
action("LGT3",1,"TR",1,0).
action("LGT3",4,"TR",1,0).
action("LGT3",5,"TR",1,0).
action("LGT3",6,"TR",1,0).
action("LGT3",7,"TR",1,0).
action("D2T4D3",0,"T3",1,2).
action("D2T4D3",2,"T3",1,2).
action("D2T4D3",4,"T3",1,2).
action("D2T4D3",6,"T3",1,2).
action("T3",3,"LGT3",0,3).
action("T3",2,"LGT3",0,2).
action("T3",1,"LGT3",0,1).
action("LG",1,"LGT3",0,4).
action("D2T4D3",0,"T3",3,2).
action("D2T4D3",1,"T3",3,2).
action("D2T4D3",2,"T3",3,2).
action("D2T4D3",3,"T3",3,2).
action("D2T4D3",4,"T3",3,2).
action("D2T4D3",5,"T3",3,2).
action("D2T4D3",7,"T3",3,2).
action("T3",3,"LGT3",4,7).
action("T3",2,"LGT3",4,6).
action("T3",1,"LGT3",4,5).
action("LG",0,"LGT3",4,0).
action("T3",3,"LGT3",2,3).
action("T3",1,"LGT3",2,1).
action("T3",0,"LGT3",2,0).
action("LG",1,"LGT3",2,6).
action("D2T4D3",1,"T3",2,1).
action("D2T4D3",3,"T3",2,1).
action("D2T4D3",5,"T3",2,1).
action("D2T4D3",6,"T3",2,3).
action("D2T4D3",7,"T3",2,1).
action("T3",3,"LGT3",5,7).
action("T3",2,"LGT3",5,6).
action("T3",0,"LGT3",5,4).
action("LG",0,"LGT3",5,1).
action("T3",3,"EGT3",5,7).
action("T3",2,"EGT3",5,6).
action("T3",0,"EGT3",5,4).
action("EG",0,"EGT3",5,1).
action("T3",1,"IG",0,1).
action("T3",2,"IG",0,1).
action("T3",3,"IG",0,1).
action("LG",1,"IGLG",2,3).
action("IG",0,"IGLG",2,0).
action("LGT3",2,"TR",0,1).
action("LGT3",3,"TR",0,1).
action("LGT3",2,"TR",0,1).
action("LGT3",3,"TR",0,1).
action("T3",2,"LGT3",7,6).
action("T3",1,"LGT3",7,5).
action("T3",0,"LGT3",7,4).
action("LG",0,"LGT3",7,3).
action("T3",2,"TRT3",3,2).
action("T3",1,"TRT3",3,1).
action("T3",0,"TRT3",3,0).
action("TR",1,"TRT3",3,7).
action("T3",2,"EGT3",3,2).
action("T3",1,"EGT3",3,1).
action("T3",0,"EGT3",3,0).
action("EG",1,"EGT3",3,7).
action("T3",3,"TRT3",1,3).
action("T3",2,"TRT3",1,2).
action("T3",0,"TRT3",1,0).
action("TR",1,"TRT3",1,5).
action("LG",0,"IGLG",3,2).
action("IG",0,"IGLG",3,1).
action("LG",0,"IGLG",1,0).
action("IG",1,"IGLG",1,3).
action("IGLG",2,"D2",0,1).

% A MODIFIER 
%(T4=0 & T3=0 & D2=0 & D3=1 & GI=0 & GP=0 & TR=0 & GT=0) 
% initialisation des process actifs
init(actifProcess("D2",0 )).
init(actifProcess("D2T4D3",0 )).
init(actifProcess("D3",1 )).
init(actifProcess("EG",0 )).
init(actifProcess("EGT3",0 )).
init(actifProcess("IG",0 )).
init(actifProcess("IGLG",0 )).
init(actifProcess("LG",0 )).
init(actifProcess("LGT3",0 )).
init(actifProcess("T3",0 )).
init(actifProcess("T4",0 )).
init(actifProcess("TR",0 )).
init(actifProcess("TRT3",0 )).


