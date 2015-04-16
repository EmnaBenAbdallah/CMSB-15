%Process of generated network
process("L",0..1).
process("PC",0..1).
process("G",0..1).

%Actions to be learnt 
action("PC",1,"L",0,"G",1,0,5). action("PC",0,"L",0,"G",0,1,5). action("G",0,"L",0,"PC",1,0,7). action("G",1,"L",0,"PC",0,1,6).
action("L",0,"L",0,"L",0,1,12). action("L",1,"L",1,"L",1,0,12).

%Genes influe on "PC"
existInfluence("PC","G").% :- not no_influence("PC","G").
%no_influence("PC","G") :- not existInfluence("PC","G").
existInfluence("PC","L").

%Genes influance on "G"
existInfluence("G","PC").
existInfluence("G","L").
existInfluence("L","L").

%Initial state of the network
init(actifProcess("PC",0 )).
init(actifProcess("G",0 )).
init(actifProcess("L",0 )).
