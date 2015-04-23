% This file was generated from the PH model 'metazoan_flat.ph'

% Process
process("a", 0..1).
process("c", 0..1).
process("f", 0..1).
process("fc", 0..3).

% Actions
action("c",1,"fc",2,3).
action("f",0,"fc",2,0).
action("fc",2,"c",0,1).
action("c",0,"fc",1,0).
action("f",1,"fc",1,3).
action("c",1,"a",1,0).
action("c",1,"c",1,0).
action("f",0,"c",1,0).
action("c",1,"fc",0,1).
action("f",1,"fc",0,2).
action("f",1,"f",1,0).
action("c",0,"fc",3,2).
action("f",0,"fc",3,1).
action("fc",2,"a",0,1).

% A MODIFIER 

% initialisation des process actifs
init(actifProcess("a",0 )).
init(actifProcess("c",1 )).
init(actifProcess("f",1 )).
init(actifProcess("fc",3 )).

% Liste des process à atteindre 
%goal(actifProcess("a", xx )).
%goal(actifProcess("c", xx )).
%goal(actifProcess("f", xx )).
%goal(actifProcess("fc", xx )).

