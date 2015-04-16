% This file was generated from the PH model 'tcrsig94_flat.ph'

% Process
process("__coop0", 0..3).
process("__coop1", 0..3).
process("abl", 0..1).
process("akap79", 0..1).
process("ap1", 0..1).
process("bad", 0..1).
process("bcat", 0..1).
process("bcl10", 0..1).
process("bclxl", 0..1).
process("ca", 0..1).
process("cabin1", 0..1).
process("calcin", 0..1).
process("calpr1", 0..1).
process("cam", 0..1).
process("camakap79cabin1calpr1", 0..15).
process("camk2", 0..1).
process("camk4", 0..1).
process("card11", 0..1).
process("card11a", 0..1).
process("card11apkcth", 0..3).
process("card11bcl10malt1", 0..7).
process("cblb", 0..1).
process("cblblckp2x", 0..7).
process("ccblp1", 0..1).
process("ccblp2", 0..1).
process("ccblr", 0..1).
process("cd28", 0..1).
process("cd4", 0..1).
process("cd45", 0..1).
process("cd45cd4lckr", 0..7).
process("cd45lckp1tcrblckr", 0..15).
process("cdc42", 0..1).
process("cdc42rac1p2", 0..3).
process("cre", 0..1).
process("creb", 0..1).
process("csk", 0..1).
process("cyc1", 0..1).
process("dag", 0..1).
process("dgk", 0..1).
process("dgkplcga", 0..3).
process("erk", 0..1).
process("fkhr", 0..1).
process("fos", 0..1).
process("fyn", 0..1).
process("fynccblr", 0..3).
process("gab2", 0..1).
process("gab2zap70gads", 0..7).
process("gadd45", 0..1).
process("gads", 0..1).
process("gap", 0..1).
process("grb2", 0..1).
process("gsk3", 0..1).
process("hpk1", 0..1).
process("ikb", 0..1).
process("ikkab", 0..1).
process("ikkg", 0..1).
process("ikkgcamk2", 0..3).
process("ip3", 0..1).
process("itk", 0..1).
process("jnk", 0..1).
process("jun", 0..1).
process("junfos", 0..3).
process("lat", 0..1).
process("latgrb2zap70gads", 0..15).
process("latzap70", 0..3).
process("lckp1", 0..1).
process("lckp1erk", 0..3).
process("lckp1fyn", 0..3).
process("lckp1tcrbfyn", 0..7).
process("lckp2", 0..1).
process("lckr", 0..1).
process("malt1", 0..1).
process("mek", 0..1).
process("mekk1", 0..1).
process("mekk1gadd45zap70", 0..7).
process("mekk1mkk4", 0..3).
process("mekk1mlk3", 0..3).
process("mkk4", 0..1).
process("mlk3", 0..1).
process("nfat", 0..1).
process("nfkb", 0..1).
process("p21c", 0..1).
process("p27k", 0..1).
process("p38", 0..1).
process("p70s", 0..1).
process("pag", 0..1).
process("pdk1", 0..1).
process("pdk1vav1dag", 0..7).
process("pi3k", 0..1).
process("pip3", 0..1).
process("pkb", 0..1).
process("pkcth", 0..1).
process("plcga", 0..1).
process("plcgb", 0..1).
process("plcgbitkrlk", 0..7).
process("pten", 0..1).
process("ptenship1pi3k", 0..7).
process("rac1p1", 0..1).
process("rac1p1hpk1", 0..3).
process("rac1p2", 0..1).
process("rac1p2hpk1cdc42", 0..7).
process("rac1r", 0..1).
process("raf", 0..1).
process("ras", 0..1).
process("rasgrp", 0..1).
process("rasgrpsosgap", 0..7).
process("rlk", 0..1).
process("rsk", 0..1).
process("sh3bp2", 0..1).
process("ship1", 0..1).
process("shp1", 0..1).
process("shp1csk", 0..3).
process("shp2", 0..1).
process("slp76", 0..1).
process("slp76pip3zap70", 0..7).
process("sos", 0..1).
process("sre", 0..1).
process("tcrb", 0..1).
process("tcrbfyn", 0..3).
process("tcrblckr", 0..3).
process("tcrlig", 0..1).
process("tcrligccblp1", 0..3).
process("tcrp", 0..1).
process("tcrpablccblp1", 0..7).
process("vav1", 0..1).
process("vav1rac1r", 0..3).
process("vav1zap70ccblp2slp76", 0..15).
process("vav3", 0..1).
process("vav3rac1r", 0..3).
process("x", 0..1).
process("xzap70sh3bp2", 0..7).
process("zap70", 0..1).
process("zap70ccblr", 0..3).

% Actions
action("card11",1,"card11bcl10malt1",1,5).
action("bcl10",1,"card11bcl10malt1",1,3).
action("malt1",0,"card11bcl10malt1",1,0).
action("rac1p2",1,"rac1p2hpk1cdc42",2,6).
action("hpk1",0,"rac1p2hpk1cdc42",2,0).
action("cdc42",1,"rac1p2hpk1cdc42",2,3).
action("cd45lckp1tcrblckr",0,"fyn",1,0).
action("cd45lckp1tcrblckr",8,"fyn",1,0).
action("cd45lckp1tcrblckr",4,"fyn",1,0).
action("cd45lckp1tcrblckr",2,"fyn",1,0).
action("cd45lckp1tcrblckr",10,"fyn",1,0).
action("cd45lckp1tcrblckr",6,"fyn",1,0).
action("cd45lckp1tcrblckr",1,"fyn",1,0).
action("cd45lckp1tcrblckr",9,"fyn",1,0).
action("cd45lckp1tcrblckr",5,"fyn",1,0).
action("lat",1,"latgrb2zap70gads",3,11).
action("grb2",1,"latgrb2zap70gads",3,7).
action("zap70",0,"latgrb2zap70gads",3,1).
action("gads",0,"latgrb2zap70gads",3,2).
action("lckp1fyn",0,"abl",1,0).
action("card11apkcth",3,"ikkg",0,1).
action("tcrp",0,"tcrpablccblp1",7,3).
action("abl",0,"tcrpablccblp1",7,5).
action("ccblp1",0,"tcrpablccblp1",7,6).
action("x",0,"xzap70sh3bp2",6,2).
action("zap70",0,"xzap70sh3bp2",6,4).
action("sh3bp2",1,"xzap70sh3bp2",6,7).
action("card11a",0,"card11apkcth",3,1).
action("pkcth",0,"card11apkcth",3,2).
action("card11",1,"card11bcl10malt1",2,6).
action("bcl10",0,"card11bcl10malt1",2,0).
action("malt1",1,"card11bcl10malt1",2,3).
action("tcrpablccblp1",6,"zap70",0,1).
action("dag",1,"rasgrp",0,1).
action("lat",1,"latgrb2zap70gads",4,12).
action("grb2",0,"latgrb2zap70gads",4,0).
action("zap70",1,"latgrb2zap70gads",4,6).
action("gads",1,"latgrb2zap70gads",4,5).
action("pdk1",1,"p70s",0,1).
action("pdk1",1,"pdk1vav1dag",3,7).
action("vav1",0,"pdk1vav1dag",3,1).
action("dag",0,"pdk1vav1dag",3,2).
action("plcgb",0,"plcgbitkrlk",4,0).
action("itk",1,"plcgbitkrlk",4,6).
action("rlk",1,"plcgbitkrlk",4,5).
action("pten",1,"ptenship1pi3k",3,7).
action("ship1",0,"ptenship1pi3k",3,1).
action("pi3k",0,"ptenship1pi3k",3,2).
action("vav1",1,"vav1zap70ccblp2slp76",2,10).
action("zap70",1,"vav1zap70ccblp2slp76",2,6).
action("ccblp2",0,"vav1zap70ccblp2slp76",2,0).
action("slp76",1,"vav1zap70ccblp2slp76",2,3).
action("x",0,"xzap70sh3bp2",4,0).
action("zap70",1,"xzap70sh3bp2",4,6).
action("sh3bp2",1,"xzap70sh3bp2",4,5).
action("fyn",0,"fynccblr",2,0).
action("ccblr",1,"fynccblr",2,3).
action("lckp1erk",0,"shp1",1,0).
action("lckp1erk",1,"shp1",1,0).
action("lckp1erk",3,"shp1",1,0).
action("tcrp",0,"tcrpablccblp1",5,1).
action("abl",1,"tcrpablccblp1",5,7).
action("ccblp1",0,"tcrpablccblp1",5,4).
action("cdc42rac1p2",0,"sre",1,0).
action("ptenship1pi3k",0,"pip3",1,0).
action("ptenship1pi3k",4,"pip3",1,0).
action("ptenship1pi3k",2,"pip3",1,0).
action("ptenship1pi3k",6,"pip3",1,0).
action("ptenship1pi3k",5,"pip3",1,0).
action("ptenship1pi3k",3,"pip3",1,0).
action("ptenship1pi3k",7,"pip3",1,0).
action("x",1,"xzap70sh3bp2",2,6).
action("zap70",0,"xzap70sh3bp2",2,0).
action("sh3bp2",1,"xzap70sh3bp2",2,3).
action("rac1p1",0,"rac1p1hpk1",3,1).
action("hpk1",0,"rac1p1hpk1",3,2).
action("cd45",1,"cd45lckp1tcrblckr",3,11).
action("lckp1",1,"cd45lckp1tcrblckr",3,7).
action("tcrb",0,"cd45lckp1tcrblckr",3,1).
action("lckr",0,"cd45lckp1tcrblckr",3,2).
action("vav1",0,"vav1zap70ccblp2slp76",11,3).
action("zap70",1,"vav1zap70ccblp2slp76",11,15).
action("ccblp2",0,"vav1zap70ccblp2slp76",11,9).
action("slp76",0,"vav1zap70ccblp2slp76",11,10).
action("jun",0,"junfos",2,0).
action("fos",1,"junfos",2,3).
action("pten",1,"ptenship1pi3k",0,4).
action("ship1",1,"ptenship1pi3k",0,2).
action("pi3k",1,"ptenship1pi3k",0,1).
action("cblblckp2x",0,"pi3k",1,0).
action("cblblckp2x",4,"pi3k",1,0).
action("cblblckp2x",6,"pi3k",1,0).
action("cblblckp2x",5,"pi3k",1,0).
action("cblblckp2x",7,"pi3k",1,0).
action("vav1",0,"vav1rac1r",3,1).
action("rac1r",0,"vav1rac1r",3,2).
action("ikkgcamk2",0,"ikkab",1,0).
action("ikkgcamk2",2,"ikkab",1,0).
action("ikkgcamk2",1,"ikkab",1,0).
action("junfos",3,"ap1",0,1).
action("lckp1",0,"lckp1fyn",2,0).
action("fyn",1,"lckp1fyn",2,3).
action("lat",0,"latzap70",3,1).
action("zap70",0,"latzap70",3,2).
action("shp1",0,"shp1csk",2,0).
action("csk",1,"shp1csk",2,3).
action("tcrp",1,"tcrpablccblp1",2,6).
action("abl",0,"tcrpablccblp1",2,0).
action("ccblp1",1,"tcrpablccblp1",2,3).
action("latzap70",0,"sh3bp2",1,0).
action("latzap70",2,"sh3bp2",1,0).
action("latzap70",1,"sh3bp2",1,0).
action("mekk1mkk4",0,"jnk",1,0).
action("lckp1erk",2,"shp1",0,1).
action("gab2",1,"shp2",0,1).
action("cd28",1,"x",0,1).
action("cblb",0,"cblblckp2x",7,3).
action("lckp2",0,"cblblckp2x",7,5).
action("x",0,"cblblckp2x",7,6).
action("cd45",0,"cd45lckp1tcrblckr",9,1).
action("lckp1",1,"cd45lckp1tcrblckr",9,13).
action("tcrb",1,"cd45lckp1tcrblckr",9,11).
action("lckr",0,"cd45lckp1tcrblckr",9,8).
action("jnk",1,"jun",0,1).
action("tcrlig",0,"tcrligccblp1",2,0).
action("ccblp1",1,"tcrligccblp1",2,3).
action("ptenship1pi3k",1,"pip3",0,1).
action("dgk",0,"dgkplcga",3,1).
action("plcga",0,"dgkplcga",3,2).
action("cblblckp2x",2,"pi3k",0,1).
action("cblblckp2x",1,"pi3k",0,1).
action("cblblckp2x",3,"pi3k",0,1).
action("tcrlig",1,"tcrligccblp1",0,2).
action("ccblp1",1,"tcrligccblp1",0,1).
action("cdc42",0,"cdc42rac1p2",3,1).
action("rac1p2",0,"cdc42rac1p2",3,2).
action("rac1p1",0,"rac1p1hpk1",2,0).
action("hpk1",1,"rac1p1hpk1",2,3).
action("mekk1",0,"mekk1gadd45zap70",4,0).
action("gadd45",1,"mekk1gadd45zap70",4,6).
action("zap70",1,"mekk1gadd45zap70",4,5).
action("tcrb",0,"tcrbfyn",2,0).
action("fyn",1,"tcrbfyn",2,3).
action("ikkgcamk2",3,"ikkab",0,1).
action("mekk1",1,"mekk1mlk3",0,2).
action("mlk3",1,"mekk1mlk3",0,1).
action("rac1p2",1,"rac1p2hpk1cdc42",3,7).
action("hpk1",0,"rac1p2hpk1cdc42",3,1).
action("cdc42",0,"rac1p2hpk1cdc42",3,2).
action("mekk1",1,"mekk1mlk3",1,3).
action("mlk3",0,"mekk1mlk3",1,0).
action("cd45",0,"cd45cd4lckr",6,2).
action("cd4",0,"cd45cd4lckr",6,4).
action("lckr",1,"cd45cd4lckr",6,7).
action("cam",1,"camakap79cabin1calpr1",1,9).
action("akap79",1,"camakap79cabin1calpr1",1,5).
action("cabin1",1,"camakap79cabin1calpr1",1,3).
action("calpr1",0,"camakap79cabin1calpr1",1,0).
action("mekk1",0,"mekk1gadd45zap70",5,1).
action("gadd45",1,"mekk1gadd45zap70",5,7).
action("zap70",0,"mekk1gadd45zap70",5,4).
action("tcrb",0,"tcrblckr",3,1).
action("lckr",0,"tcrblckr",3,2).
action("cd45cd4lckr",0,"__coop0",2,0).
action("cd45cd4lckr",1,"__coop0",2,0).
action("cd45cd4lckr",2,"__coop0",2,0).
action("cd45cd4lckr",3,"__coop0",2,0).
action("cd45cd4lckr",4,"__coop0",2,0).
action("cd45cd4lckr",5,"__coop0",2,0).
action("cd45cd4lckr",6,"__coop0",2,0).
action("shp1csk",0,"__coop0",2,3).
action("plcgbitkrlk",0,"__coop1",2,0).
action("plcgbitkrlk",1,"__coop1",2,0).
action("plcgbitkrlk",2,"__coop1",2,0).
action("plcgbitkrlk",3,"__coop1",2,0).
action("plcgbitkrlk",4,"__coop1",2,0).
action("vav1zap70ccblp2slp76",13,"__coop1",2,3).
action("ikkg",0,"ikkgcamk2",3,1).
action("camk2",0,"ikkgcamk2",3,2).
action("cam",0,"camakap79cabin1calpr1",14,6).
action("akap79",0,"camakap79cabin1calpr1",14,10).
action("cabin1",0,"camakap79cabin1calpr1",14,12).
action("calpr1",1,"camakap79cabin1calpr1",14,15).
action("junfos",0,"ap1",1,0).
action("junfos",2,"ap1",1,0).
action("junfos",1,"ap1",1,0).
action("cblb",0,"cblblckp2x",6,2).
action("lckp2",0,"cblblckp2x",6,4).
action("x",1,"cblblckp2x",6,7).
action("card11",0,"card11bcl10malt1",7,3).
action("bcl10",0,"card11bcl10malt1",7,5).
action("malt1",0,"card11bcl10malt1",7,6).
action("vav1",1,"vav1zap70ccblp2slp76",4,12).
action("zap70",0,"vav1zap70ccblp2slp76",4,0).
action("ccblp2",1,"vav1zap70ccblp2slp76",4,6).
action("slp76",1,"vav1zap70ccblp2slp76",4,5).
action("lat",0,"latgrb2zap70gads",9,1).
action("grb2",1,"latgrb2zap70gads",9,13).
action("zap70",1,"latgrb2zap70gads",9,11).
action("gads",0,"latgrb2zap70gads",9,8).
action("cd45",1,"cd45cd4lckr",1,5).
action("cd4",1,"cd45cd4lckr",1,3).
action("lckr",0,"cd45cd4lckr",1,0).
action("xzap70sh3bp2",0,"vav1",1,0).
action("xzap70sh3bp2",2,"vav1",1,0).
action("xzap70sh3bp2",1,"vav1",1,0).
action("rasgrp",1,"rasgrpsosgap",1,5).
action("sos",1,"rasgrpsosgap",1,3).
action("gap",0,"rasgrpsosgap",1,0).
action("cam",0,"camakap79cabin1calpr1",12,4).
action("akap79",0,"camakap79cabin1calpr1",12,8).
action("cabin1",1,"camakap79cabin1calpr1",12,14).
action("calpr1",1,"camakap79cabin1calpr1",12,13).
action("cd45",1,"cd45lckp1tcrblckr",0,8).
action("lckp1",1,"cd45lckp1tcrblckr",0,4).
action("tcrb",1,"cd45lckp1tcrblckr",0,2).
action("lckr",1,"cd45lckp1tcrblckr",0,1).
action("pdk1",0,"pdk1vav1dag",6,2).
action("vav1",0,"pdk1vav1dag",6,4).
action("dag",1,"pdk1vav1dag",6,7).
action("plcgb",0,"plcgbitkrlk",7,3).
action("itk",0,"plcgbitkrlk",7,5).
action("rlk",0,"plcgbitkrlk",7,6).
action("vav1",0,"vav1zap70ccblp2slp76",13,5).
action("zap70",0,"vav1zap70ccblp2slp76",13,9).
action("ccblp2",1,"vav1zap70ccblp2slp76",13,15).
action("slp76",0,"vav1zap70ccblp2slp76",13,12).
action("fyn",1,"fynccblr",0,2).
action("ccblr",1,"fynccblr",0,1).
action("cam",1,"camk2",0,1).
action("cam",1,"camk4",0,1).
action("rac1p1",1,"rac1p1hpk1",1,3).
action("hpk1",0,"rac1p1hpk1",1,0).
action("lckp1",1,"lckp1erk",1,3).
action("erk",0,"lckp1erk",1,0).
action("pdk1",1,"pdk1vav1dag",1,5).
action("vav1",1,"pdk1vav1dag",1,3).
action("dag",0,"pdk1vav1dag",1,0).
action("plcgb",1,"plcgbitkrlk",2,6).
action("itk",0,"plcgbitkrlk",2,0).
action("rlk",1,"plcgbitkrlk",2,3).
action("cd45",1,"cd45lckp1tcrblckr",6,14).
action("lckp1",0,"cd45lckp1tcrblckr",6,2).
action("tcrb",0,"cd45lckp1tcrblckr",6,4).
action("lckr",1,"cd45lckp1tcrblckr",6,7).
action("xzap70sh3bp2",4,"vav1",0,1).
action("xzap70sh3bp2",6,"vav1",0,1).
action("xzap70sh3bp2",5,"vav1",0,1).
action("xzap70sh3bp2",3,"vav1",0,1).
action("xzap70sh3bp2",7,"vav1",0,1).
action("lckp1",1,"lckp1tcrbfyn",0,4).
action("tcrb",1,"lckp1tcrbfyn",0,2).
action("fyn",1,"lckp1tcrbfyn",0,1).
action("vav3",1,"vav3rac1r",1,3).
action("rac1r",0,"vav3rac1r",1,0).
action("sh3bp2",1,"vav3",0,1).
action("cd45",0,"cd45lckp1tcrblckr",13,5).
action("lckp1",0,"cd45lckp1tcrblckr",13,9).
action("tcrb",1,"cd45lckp1tcrblckr",13,15).
action("lckr",0,"cd45lckp1tcrblckr",13,12).
action("pkb",1,"gsk3",1,0).
action("vav3",0,"vav3rac1r",2,0).
action("rac1r",1,"vav3rac1r",2,3).
action("lat",1,"latgrb2zap70gads",1,9).
action("grb2",1,"latgrb2zap70gads",1,5).
action("zap70",1,"latgrb2zap70gads",1,3).
action("gads",0,"latgrb2zap70gads",1,0).
action("lckp1",1,"lckp1fyn",0,2).
action("fyn",1,"lckp1fyn",0,1).
action("gab2",1,"gab2zap70gads",3,7).
action("zap70",0,"gab2zap70gads",3,1).
action("gads",0,"gab2zap70gads",3,2).
action("cblb",0,"cblblckp2x",5,1).
action("lckp2",1,"cblblckp2x",5,7).
action("x",0,"cblblckp2x",5,4).
action("card11",1,"card11bcl10malt1",0,4).
action("bcl10",1,"card11bcl10malt1",0,2).
action("malt1",1,"card11bcl10malt1",0,1).
action("lat",1,"latgrb2zap70gads",2,10).
action("grb2",1,"latgrb2zap70gads",2,6).
action("zap70",0,"latgrb2zap70gads",2,0).
action("gads",1,"latgrb2zap70gads",2,3).
action("pkb",1,"bad",1,0).
action("shp1",1,"shp1csk",0,2).
action("csk",1,"shp1csk",0,1).
action("__coop0",0,"lckp1",1,0).
action("__coop0",1,"lckp1",1,0).
action("__coop0",2,"lckp1",1,0).
action("tcrblckr",0,"lckp2",1,0).
action("tcrblckr",2,"lckp2",1,0).
action("tcrblckr",1,"lckp2",1,0).
action("dgk",1,"dgkplcga",1,3).
action("plcga",0,"dgkplcga",1,0).
action("jun",1,"junfos",1,3).
action("fos",0,"junfos",1,0).
action("mekk1mlk3",0,"mkk4",1,0).
action("pten",0,"ptenship1pi3k",6,2).
action("ship1",0,"ptenship1pi3k",6,4).
action("pi3k",1,"ptenship1pi3k",6,7).
action("gab2",1,"gab2zap70gads",0,4).
action("zap70",1,"gab2zap70gads",0,2).
action("gads",1,"gab2zap70gads",0,1).
action("rac1p2",0,"rac1p2hpk1cdc42",4,0).
action("hpk1",1,"rac1p2hpk1cdc42",4,6).
action("cdc42",1,"rac1p2hpk1cdc42",4,5).
action("rac1p1",1,"rac1p1hpk1",0,2).
action("hpk1",1,"rac1p1hpk1",0,1).
action("shp1",0,"shp1csk",3,1).
action("csk",0,"shp1csk",3,2).
action("__coop1",0,"plcga",1,0).
action("__coop1",1,"plcga",1,0).
action("__coop1",2,"plcga",1,0).
action("latzap70",3,"sh3bp2",0,1).
action("rasgrp",0,"rasgrpsosgap",6,2).
action("sos",0,"rasgrpsosgap",6,4).
action("gap",1,"rasgrpsosgap",6,7).
action("slp76",0,"slp76pip3zap70",7,3).
action("pip3",0,"slp76pip3zap70",7,5).
action("zap70",0,"slp76pip3zap70",7,6).
action("latgrb2zap70gads",0,"gab2",1,0).
action("latgrb2zap70gads",8,"gab2",1,0).
action("latgrb2zap70gads",4,"gab2",1,0).
action("latgrb2zap70gads",12,"gab2",1,0).
action("latgrb2zap70gads",2,"gab2",1,0).
action("latgrb2zap70gads",10,"gab2",1,0).
action("latgrb2zap70gads",6,"gab2",1,0).
action("latgrb2zap70gads",1,"gab2",1,0).
action("latgrb2zap70gads",9,"gab2",1,0).
action("latgrb2zap70gads",5,"gab2",1,0).
action("latgrb2zap70gads",13,"gab2",1,0).
action("latgrb2zap70gads",3,"gab2",1,0).
action("latgrb2zap70gads",7,"gab2",1,0).
action("ras",1,"raf",0,1).
action("vav1",1,"vav1zap70ccblp2slp76",6,14).
action("zap70",0,"vav1zap70ccblp2slp76",6,2).
action("ccblp2",0,"vav1zap70ccblp2slp76",6,4).
action("slp76",1,"vav1zap70ccblp2slp76",6,7).
action("rasgrp",0,"rasgrpsosgap",4,0).
action("sos",1,"rasgrpsosgap",4,6).
action("gap",1,"rasgrpsosgap",4,5).
action("rasgrpsosgap",6,"ras",0,1).
action("pten",0,"ptenship1pi3k",4,0).
action("ship1",1,"ptenship1pi3k",4,6).
action("pi3k",1,"ptenship1pi3k",4,5).
action("cdc42",1,"cdc42rac1p2",1,3).
action("rac1p2",0,"cdc42rac1p2",1,0).
action("lckp1",0,"lckp1tcrbfyn",7,3).
action("tcrb",0,"lckp1tcrbfyn",7,5).
action("fyn",0,"lckp1tcrbfyn",7,6).
action("cblb",0,"cblblckp2x",4,0).
action("lckp2",1,"cblblckp2x",4,6).
action("x",1,"cblblckp2x",4,5).
action("card11a",1,"card11apkcth",1,3).
action("pkcth",0,"card11apkcth",1,0).
action("tcrb",1,"tcrbfyn",0,2).
action("fyn",1,"tcrbfyn",0,1).
action("lat",0,"latzap70",2,0).
action("zap70",1,"latzap70",2,3).
action("tcrb",1,"tcrblckr",1,3).
action("lckr",0,"tcrblckr",1,0).
action("lat",0,"latgrb2zap70gads",14,6).
action("grb2",0,"latgrb2zap70gads",14,10).
action("zap70",0,"latgrb2zap70gads",14,12).
action("gads",1,"latgrb2zap70gads",14,15).
action("mekk1mlk3",2,"mkk4",0,1).
action("mekk1mlk3",1,"mkk4",0,1).
action("mekk1mlk3",3,"mkk4",0,1).
action("rac1p2hpk1cdc42",0,"mekk1",1,0).
action("lckp1",0,"lckp1erk",3,1).
action("erk",0,"lckp1erk",3,2).
action("__coop0",3,"lckp1",0,1).
action("pkb",1,"p21c",1,0).
action("tcrblckr",3,"lckp2",0,1).
action("rasgrp",1,"rasgrpsosgap",2,6).
action("sos",0,"rasgrpsosgap",2,0).
action("gap",1,"rasgrpsosgap",2,3).
action("bad",1,"bclxl",1,0).
action("cd45",0,"cd45cd4lckr",4,0).
action("cd4",1,"cd45cd4lckr",4,6).
action("lckr",1,"cd45cd4lckr",4,5).
action("lckp1",0,"lckp1tcrbfyn",5,1).
action("tcrb",1,"lckp1tcrbfyn",5,7).
action("fyn",0,"lckp1tcrbfyn",5,4).
action("vav1",0,"vav1zap70ccblp2slp76",15,7).
action("zap70",0,"vav1zap70ccblp2slp76",15,11).
action("ccblp2",0,"vav1zap70ccblp2slp76",15,13).
action("slp76",0,"vav1zap70ccblp2slp76",15,14).
action("tcrb",0,"tcrbfyn",3,1).
action("fyn",0,"tcrbfyn",3,2).
action("latgrb2zap70gads",14,"gab2",0,1).
action("latgrb2zap70gads",11,"gab2",0,1).
action("latgrb2zap70gads",15,"gab2",0,1).
action("lat",0,"latgrb2zap70gads",15,7).
action("grb2",0,"latgrb2zap70gads",15,11).
action("zap70",0,"latgrb2zap70gads",15,13).
action("gads",0,"latgrb2zap70gads",15,14).
action("__coop1",3,"plcga",0,1).
action("vav1",1,"vav1rac1r",1,3).
action("rac1r",0,"vav1rac1r",1,0).
action("lat",1,"plcgb",0,1).
action("cam",0,"camakap79cabin1calpr1",11,3).
action("akap79",1,"camakap79cabin1calpr1",11,15).
action("cabin1",0,"camakap79cabin1calpr1",11,9).
action("calpr1",0,"camakap79cabin1calpr1",11,10).
action("pten",1,"ptenship1pi3k",1,5).
action("ship1",1,"ptenship1pi3k",1,3).
action("pi3k",0,"ptenship1pi3k",1,0).
action("vav1",0,"vav1rac1r",2,0).
action("rac1r",1,"vav1rac1r",2,3).
action("cd45",0,"cd45lckp1tcrblckr",10,2).
action("lckp1",1,"cd45lckp1tcrblckr",10,14).
action("tcrb",0,"cd45lckp1tcrblckr",10,8).
action("lckr",1,"cd45lckp1tcrblckr",10,11).
action("x",1,"xzap70sh3bp2",0,4).
action("zap70",1,"xzap70sh3bp2",0,2).
action("sh3bp2",1,"xzap70sh3bp2",0,1).
action("lckp1",1,"lckp1tcrbfyn",3,7).
action("tcrb",0,"lckp1tcrbfyn",3,1).
action("fyn",0,"lckp1tcrbfyn",3,2).
action("tcrp",1,"tcrpablccblp1",3,7).
action("abl",0,"tcrpablccblp1",3,1).
action("ccblp1",0,"tcrpablccblp1",3,2).
action("cam",0,"camakap79cabin1calpr1",9,1).
action("akap79",1,"camakap79cabin1calpr1",9,13).
action("cabin1",1,"camakap79cabin1calpr1",9,11).
action("calpr1",0,"camakap79cabin1calpr1",9,8).
action("mekk1",1,"mekk1gadd45zap70",2,6).
action("gadd45",0,"mekk1gadd45zap70",2,0).
action("zap70",1,"mekk1gadd45zap70",2,3).
action("pip3",1,"pdk1",0,1).
action("zap70",1,"lat",0,1).
action("pdk1",0,"pdk1vav1dag",4,0).
action("vav1",1,"pdk1vav1dag",4,6).
action("dag",1,"pdk1vav1dag",4,5).
action("plcgb",0,"plcgbitkrlk",5,1).
action("itk",1,"plcgbitkrlk",5,7).
action("rlk",0,"plcgbitkrlk",5,4).
action("zap70ccblr",0,"ccblp1",1,0).
action("zap70ccblr",2,"ccblp1",1,0).
action("zap70ccblr",1,"ccblp1",1,0).
action("fynccblr",0,"ccblp2",1,0).
action("fynccblr",2,"ccblp2",1,0).
action("fynccblr",1,"ccblp2",1,0).
action("pdk1",0,"malt1",1,0).
action("calcin",0,"malt1",1,0).
action("rsk",0,"malt1",1,0).
action("ip3",0,"malt1",1,0).
action("cam",1,"camakap79cabin1calpr1",7,15).
action("akap79",0,"camakap79cabin1calpr1",7,3).
action("cabin1",0,"camakap79cabin1calpr1",7,5).
action("calpr1",0,"camakap79cabin1calpr1",7,6).
action("creb",0,"malt1",1,0).
action("cd28",0,"malt1",1,0).
action("lat",0,"malt1",1,0).
action("pip3",0,"malt1",1,0).
action("dag",0,"malt1",1,0).
action("erk",0,"malt1",1,0).
action("lckp1",0,"malt1",1,0).
action("raf",0,"malt1",1,0).
action("lat",0,"malt1",1,0).
action("cam",0,"malt1",1,0).
action("cam",0,"malt1",1,0).
action("pdk1",0,"malt1",1,0).
action("lat",0,"malt1",1,0).
action("grb2",0,"malt1",1,0).
action("gab2",0,"malt1",1,0).
action("erk",0,"malt1",1,0).
action("sh3bp2",0,"malt1",1,0).
action("jnk",0,"malt1",1,0).
action("plcga",0,"malt1",1,0).
action("ca",0,"malt1",1,0).
action("mek",0,"malt1",1,0).
action("ras",0,"malt1",1,0).
action("tcrb",0,"malt1",1,0).
action("zap70",0,"malt1",1,0).
action("pag",0,"malt1",1,0).
action("lat",0,"malt1",1,0).
action("rac1p2hpk1cdc42",4,"mekk1",0,1).
action("rac1p2hpk1cdc42",2,"mekk1",0,1).
action("rac1p2hpk1cdc42",6,"mekk1",0,1).
action("rac1p2hpk1cdc42",1,"mekk1",0,1).
action("rac1p2hpk1cdc42",5,"mekk1",0,1).
action("rac1p2hpk1cdc42",3,"mekk1",0,1).
action("rac1p2hpk1cdc42",7,"mekk1",0,1).
action("mekk1",1,"mekk1gadd45zap70",3,7).
action("gadd45",0,"mekk1gadd45zap70",3,1).
action("zap70",0,"mekk1gadd45zap70",3,2).
action("cblb",1,"cblblckp2x",3,7).
action("lckp2",0,"cblblckp2x",3,1).
action("x",0,"cblblckp2x",3,2).
action("pdk1vav1dag",0,"pkcth",1,0).
action("pdk1vav1dag",4,"pkcth",1,0).
action("pdk1vav1dag",2,"pkcth",1,0).
action("pdk1vav1dag",6,"pkcth",1,0).
action("pdk1vav1dag",1,"pkcth",1,0).
action("pdk1vav1dag",5,"pkcth",1,0).
action("pdk1vav1dag",3,"pkcth",1,0).
action("tcrp",1,"tcrpablccblp1",0,4).
action("abl",1,"tcrpablccblp1",0,2).
action("ccblp1",1,"tcrpablccblp1",0,1).
action("rasgrpsosgap",0,"ras",1,0).
action("rasgrpsosgap",4,"ras",1,0).
action("rasgrpsosgap",2,"ras",1,0).
action("rasgrpsosgap",1,"ras",1,0).
action("rasgrpsosgap",5,"ras",1,0).
action("rasgrpsosgap",3,"ras",1,0).
action("rasgrpsosgap",7,"ras",1,0).
action("cam",1,"camakap79cabin1calpr1",5,13).
action("akap79",0,"camakap79cabin1calpr1",5,1).
action("cabin1",1,"camakap79cabin1calpr1",5,7).
action("calpr1",0,"camakap79cabin1calpr1",5,4).
action("mek",1,"erk",0,1).
action("cd28",1,"cblb",1,0).
action("plcgb",1,"plcgbitkrlk",0,4).
action("itk",1,"plcgbitkrlk",0,2).
action("rlk",1,"plcgbitkrlk",0,1).
action("lat",1,"hpk1",0,1).
action("card11",0,"card11bcl10malt1",5,1).
action("bcl10",1,"card11bcl10malt1",5,7).
action("malt1",0,"card11bcl10malt1",5,4).
action("lat",1,"latgrb2zap70gads",7,15).
action("grb2",0,"latgrb2zap70gads",7,3).
action("zap70",0,"latgrb2zap70gads",7,5).
action("gads",0,"latgrb2zap70gads",7,6).
action("cam",1,"camakap79cabin1calpr1",3,11).
action("akap79",1,"camakap79cabin1calpr1",3,7).
action("cabin1",0,"camakap79cabin1calpr1",3,1).
action("calpr1",0,"camakap79cabin1calpr1",3,2).
action("rac1p2",0,"rac1p2hpk1cdc42",5,1).
action("hpk1",1,"rac1p2hpk1cdc42",5,7).
action("cdc42",0,"rac1p2hpk1cdc42",5,4).
action("lat",1,"gads",0,1).
action("pkb",1,"p27k",1,0).
action("gab2zap70gads",0,"slp76",1,0).
action("gab2zap70gads",4,"slp76",1,0).
action("gab2zap70gads",2,"slp76",1,0).
action("gab2zap70gads",6,"slp76",1,0).
action("gab2zap70gads",1,"slp76",1,0).
action("gab2zap70gads",5,"slp76",1,0).
action("gab2zap70gads",7,"slp76",1,0).
action("slp76",1,"slp76pip3zap70",0,4).
action("pip3",1,"slp76pip3zap70",0,2).
action("zap70",1,"slp76pip3zap70",0,1).
action("card11",0,"card11bcl10malt1",6,2).
action("bcl10",0,"card11bcl10malt1",6,4).
action("malt1",1,"card11bcl10malt1",6,7).
action("ikkg",1,"ikkgcamk2",1,3).
action("camk2",0,"ikkgcamk2",1,0).
action("lat",0,"latgrb2zap70gads",8,0).
action("grb2",1,"latgrb2zap70gads",8,12).
action("zap70",1,"latgrb2zap70gads",8,10).
action("gads",1,"latgrb2zap70gads",8,9).
action("ikkg",0,"ikkgcamk2",2,0).
action("camk2",1,"ikkgcamk2",2,3).
action("cd45",1,"cd45lckp1tcrblckr",1,9).
action("lckp1",1,"cd45lckp1tcrblckr",1,5).
action("tcrb",1,"cd45lckp1tcrblckr",1,3).
action("lckr",0,"cd45lckp1tcrblckr",1,0).
action("bad",0,"malt1",0,1).
action("pkb",0,"malt1",0,1).
action("camk4",0,"malt1",0,1).
action("pkb",0,"malt1",0,1).
action("gsk3",0,"malt1",0,1).
action("ikkab",0,"malt1",0,1).
action("gsk3",0,"malt1",0,1).
action("ikb",0,"malt1",0,1).
action("cd28",0,"malt1",0,1).
action("pkb",0,"malt1",0,1).
action("pkb",0,"malt1",0,1).
action("pkb",0,"malt1",0,1).
action("vav1",0,"vav1zap70ccblp2slp76",8,0).
action("zap70",1,"vav1zap70ccblp2slp76",8,12).
action("ccblp2",1,"vav1zap70ccblp2slp76",8,10).
action("slp76",1,"vav1zap70ccblp2slp76",8,9).
action("x",0,"xzap70sh3bp2",7,3).
action("zap70",0,"xzap70sh3bp2",7,5).
action("sh3bp2",0,"xzap70sh3bp2",7,6).
action("gsk3",1,"bcat",1,0).
action("pdk1vav1dag",7,"pkcth",0,1).
action("slp76",1,"slp76pip3zap70",1,5).
action("pip3",1,"slp76pip3zap70",1,3).
action("zap70",0,"slp76pip3zap70",1,0).
action("x",0,"xzap70sh3bp2",5,1).
action("zap70",1,"xzap70sh3bp2",5,7).
action("sh3bp2",0,"xzap70sh3bp2",5,4).
action("mekk1",0,"mekk1mkk4",2,0).
action("mkk4",1,"mekk1mkk4",2,3).
action("ca",1,"cam",0,1).
action("lckp1",1,"rlk",0,1).
action("card11a",0,"card11apkcth",2,0).
action("pkcth",1,"card11apkcth",2,3).
action("cblb",1,"cblblckp2x",2,6).
action("lckp2",0,"cblblckp2x",2,0).
action("x",1,"cblblckp2x",2,3).
action("rsk",1,"creb",0,1).
action("mekk1",0,"mekk1mkk4",3,1).
action("mkk4",0,"mekk1mkk4",3,2).
action("zap70",0,"zap70ccblr",3,1).
action("ccblr",0,"zap70ccblr",3,2).
action("shp1",1,"shp1csk",1,3).
action("csk",0,"shp1csk",1,0).
action("cd45",1,"cd45lckp1tcrblckr",7,15).
action("lckp1",0,"cd45lckp1tcrblckr",7,3).
action("tcrb",0,"cd45lckp1tcrblckr",7,5).
action("lckr",0,"cd45lckp1tcrblckr",7,6).
action("slp76",1,"slp76pip3zap70",2,6).
action("pip3",0,"slp76pip3zap70",2,0).
action("zap70",1,"slp76pip3zap70",2,3).
action("jun",1,"junfos",0,2).
action("fos",1,"junfos",0,1).
action("camk4",1,"cabin1",1,0).
action("gab2zap70gads",3,"slp76",0,1).
action("lat",1,"latzap70",0,2).
action("zap70",1,"latzap70",0,1).
action("x",1,"xzap70sh3bp2",3,7).
action("zap70",0,"xzap70sh3bp2",3,1).
action("sh3bp2",0,"xzap70sh3bp2",3,2).
action("cd45",0,"cd45lckp1tcrblckr",14,6).
action("lckp1",0,"cd45lckp1tcrblckr",14,10).
action("tcrb",0,"cd45lckp1tcrblckr",14,12).
action("lckr",1,"cd45lckp1tcrblckr",14,15).
action("gab2",0,"gab2zap70gads",6,2).
action("zap70",0,"gab2zap70gads",6,4).
action("gads",1,"gab2zap70gads",6,7).
action("cd45",0,"cd45cd4lckr",7,3).
action("cd4",0,"cd45cd4lckr",7,5).
action("lckr",0,"cd45cd4lckr",7,6).
action("lat",1,"latgrb2zap70gads",0,8).
action("grb2",1,"latgrb2zap70gads",0,4).
action("zap70",1,"latgrb2zap70gads",0,2).
action("gads",1,"latgrb2zap70gads",0,1).
action("vav3",1,"vav3rac1r",0,2).
action("rac1r",1,"vav3rac1r",0,1).
action("dgk",1,"dgkplcga",0,2).
action("plcga",1,"dgkplcga",0,1).
action("cd45",1,"cd45cd4lckr",2,6).
action("cd4",0,"cd45cd4lckr",2,0).
action("lckr",1,"cd45cd4lckr",2,3).
action("gab2",0,"gab2zap70gads",4,0).
action("zap70",1,"gab2zap70gads",4,6).
action("gads",1,"gab2zap70gads",4,5).
action("tcrb",1,"tcrbfyn",1,3).
action("fyn",0,"tcrbfyn",1,0).
action("pkb",1,"fkhr",1,0).
action("tcrlig",0,"tcrligccblp1",3,1).
action("ccblp1",0,"tcrligccblp1",3,2).
action("pdk1",0,"pdk1vav1dag",7,3).
action("vav1",0,"pdk1vav1dag",7,5).
action("dag",0,"pdk1vav1dag",7,6).
action("camakap79cabin1calpr1",0,"calcin",1,0).
action("camakap79cabin1calpr1",4,"calcin",1,0).
action("camakap79cabin1calpr1",12,"calcin",1,0).
action("camakap79cabin1calpr1",2,"calcin",1,0).
action("camakap79cabin1calpr1",10,"calcin",1,0).
action("camakap79cabin1calpr1",6,"calcin",1,0).
action("camakap79cabin1calpr1",14,"calcin",1,0).
action("camakap79cabin1calpr1",1,"calcin",1,0).
action("camakap79cabin1calpr1",9,"calcin",1,0).
action("camakap79cabin1calpr1",5,"calcin",1,0).
action("camakap79cabin1calpr1",13,"calcin",1,0).
action("camakap79cabin1calpr1",3,"calcin",1,0).
action("camakap79cabin1calpr1",11,"calcin",1,0).
action("camakap79cabin1calpr1",7,"calcin",1,0).
action("camakap79cabin1calpr1",15,"calcin",1,0).
action("cblb",1,"cblblckp2x",1,5).
action("lckp2",1,"cblblckp2x",1,3).
action("x",0,"cblblckp2x",1,0).
action("zap70",0,"zap70ccblr",2,0).
action("ccblr",1,"zap70ccblr",2,3).
action("tcrligccblp1",0,"tcrb",1,0).
action("tcrligccblp1",1,"tcrb",1,0).
action("tcrligccblp1",3,"tcrb",1,0).
action("vav1",1,"vav1zap70ccblp2slp76",1,9).
action("zap70",1,"vav1zap70ccblp2slp76",1,5).
action("ccblp2",1,"vav1zap70ccblp2slp76",1,3).
action("slp76",0,"vav1zap70ccblp2slp76",1,0).
action("tcrlig",1,"tcrligccblp1",1,3).
action("ccblp1",0,"tcrligccblp1",1,0).
action("lckp1tcrbfyn",0,"tcrp",1,0).
action("lckp1tcrbfyn",4,"tcrp",1,0).
action("lckp1tcrbfyn",2,"tcrp",1,0).
action("lckp1tcrbfyn",1,"tcrp",1,0).
action("lckp1tcrbfyn",5,"tcrp",1,0).
action("rac1p1hpk1",0,"mlk3",1,0).
action("lat",0,"latgrb2zap70gads",12,4).
action("grb2",0,"latgrb2zap70gads",12,8).
action("zap70",1,"latgrb2zap70gads",12,14).
action("gads",1,"latgrb2zap70gads",12,13).
action("pten",0,"ptenship1pi3k",7,3).
action("ship1",0,"ptenship1pi3k",7,5).
action("pi3k",0,"ptenship1pi3k",7,6).
action("gab2",1,"gab2zap70gads",1,5).
action("zap70",1,"gab2zap70gads",1,3).
action("gads",0,"gab2zap70gads",1,0).
action("rac1p2",0,"rac1p2hpk1cdc42",6,2).
action("hpk1",0,"rac1p2hpk1cdc42",6,4).
action("cdc42",1,"rac1p2hpk1cdc42",6,7).
action("tcrb",1,"tcrblckr",0,2).
action("lckr",1,"tcrblckr",0,1).
action("fyn",1,"fynccblr",1,3).
action("ccblr",0,"fynccblr",1,0).
action("pdk1",1,"pdk1vav1dag",2,6).
action("vav1",0,"pdk1vav1dag",2,0).
action("dag",1,"pdk1vav1dag",2,3).
action("plcgb",1,"plcgbitkrlk",3,7).
action("itk",0,"plcgbitkrlk",3,1).
action("rlk",0,"plcgbitkrlk",3,2).
action("lckp1",0,"lckp1erk",2,0).
action("erk",1,"lckp1erk",2,3).
action("vav1",0,"vav1zap70ccblp2slp76",14,6).
action("zap70",0,"vav1zap70ccblp2slp76",14,10).
action("ccblp2",0,"vav1zap70ccblp2slp76",14,12).
action("slp76",1,"vav1zap70ccblp2slp76",14,15).
action("gsk3",1,"cyc1",1,0).
action("erk",1,"rsk",0,1).
action("vav1",0,"vav1zap70ccblp2slp76",10,2).
action("zap70",1,"vav1zap70ccblp2slp76",10,14).
action("ccblp2",0,"vav1zap70ccblp2slp76",10,8).
action("slp76",1,"vav1zap70ccblp2slp76",10,11).
action("plcga",1,"ip3",0,1).
action("lat",0,"latgrb2zap70gads",13,5).
action("grb2",0,"latgrb2zap70gads",13,9).
action("zap70",1,"latgrb2zap70gads",13,15).
action("gads",0,"latgrb2zap70gads",13,12).
action("zap70ccblr",3,"ccblp1",0,1).
action("fynccblr",3,"ccblp2",0,1).
action("tcrligccblp1",2,"tcrb",0,1).
action("pten",0,"ptenship1pi3k",5,1).
action("ship1",1,"ptenship1pi3k",5,7).
action("pi3k",0,"ptenship1pi3k",5,4).
action("cd45",1,"cd45lckp1tcrblckr",4,12).
action("lckp1",0,"cd45lckp1tcrblckr",4,0).
action("tcrb",1,"cd45lckp1tcrblckr",4,6).
action("lckr",1,"cd45lckp1tcrblckr",4,5).
action("cam",0,"camakap79cabin1calpr1",15,7).
action("akap79",0,"camakap79cabin1calpr1",15,11).
action("cabin1",0,"camakap79cabin1calpr1",15,13).
action("calpr1",0,"camakap79cabin1calpr1",15,14).
action("rac1p2",1,"rac1p2hpk1cdc42",0,4).
action("hpk1",1,"rac1p2hpk1cdc42",0,2).
action("cdc42",1,"rac1p2hpk1cdc42",0,1).
action("lckp1",1,"lckp1fyn",1,3).
action("fyn",0,"lckp1fyn",1,0).
action("cam",1,"camakap79cabin1calpr1",0,8).
action("akap79",1,"camakap79cabin1calpr1",0,4).
action("cabin1",1,"camakap79cabin1calpr1",0,2).
action("calpr1",1,"camakap79cabin1calpr1",0,1).
action("lckp1tcrbfyn",6,"tcrp",0,1).
action("lckp1tcrbfyn",3,"tcrp",0,1).
action("lckp1tcrbfyn",7,"tcrp",0,1).
action("mekk1",1,"mekk1gadd45zap70",0,4).
action("gadd45",1,"mekk1gadd45zap70",0,2).
action("zap70",1,"mekk1gadd45zap70",0,1).
action("rac1p1hpk1",2,"mlk3",0,1).
action("rac1p1hpk1",1,"mlk3",0,1).
action("rac1p1hpk1",3,"mlk3",0,1).
action("tcrp",0,"tcrpablccblp1",6,2).
action("abl",0,"tcrpablccblp1",6,4).
action("ccblp1",1,"tcrpablccblp1",6,7).
action("cd45",0,"cd45lckp1tcrblckr",11,3).
action("lckp1",1,"cd45lckp1tcrblckr",11,15).
action("tcrb",0,"cd45lckp1tcrblckr",11,9).
action("lckr",0,"cd45lckp1tcrblckr",11,10).
action("cam",0,"camakap79cabin1calpr1",13,5).
action("akap79",0,"camakap79cabin1calpr1",13,9).
action("cabin1",1,"camakap79cabin1calpr1",13,15).
action("calpr1",0,"camakap79cabin1calpr1",13,12).
action("tcrbfyn",0,"pag",0,1).
action("tcrbfyn",1,"pag",0,1).
action("tcrbfyn",3,"pag",0,1).
action("cblb",1,"cblblckp2x",0,4).
action("lckp2",1,"cblblckp2x",0,2).
action("x",1,"cblblckp2x",0,1).
action("zap70",1,"zap70ccblr",1,3).
action("ccblr",0,"zap70ccblr",1,0).
action("vav1",1,"vav1rac1r",0,2).
action("rac1r",1,"vav1rac1r",0,1).
action("cd45cd4lckr",7,"__coop0",0,2).
action("shp1csk",0,"__coop0",0,1).
action("plcgbitkrlk",5,"__coop1",0,2).
action("plcgbitkrlk",6,"__coop1",0,2).
action("plcgbitkrlk",7,"__coop1",0,2).
action("vav1zap70ccblp2slp76",13,"__coop1",0,1).
action("mekk1",1,"mekk1gadd45zap70",1,5).
action("gadd45",1,"mekk1gadd45zap70",1,3).
action("zap70",0,"mekk1gadd45zap70",1,0).
action("dgk",0,"dgkplcga",2,0).
action("plcga",1,"dgkplcga",2,3).
action("ikkab",1,"ikb",1,0).
action("pten",1,"ptenship1pi3k",2,6).
action("ship1",0,"ptenship1pi3k",2,0).
action("pi3k",1,"ptenship1pi3k",2,3).
action("rasgrp",1,"rasgrpsosgap",0,4).
action("sos",1,"rasgrpsosgap",0,2).
action("gap",1,"rasgrpsosgap",0,1).
action("vav1rac1r",0,"rac1p1",1,0).
action("vav1rac1r",2,"rac1p1",1,0).
action("vav1rac1r",1,"rac1p1",1,0).
action("vav3rac1r",0,"rac1p2",1,0).
action("vav3rac1r",2,"rac1p2",1,0).
action("vav3rac1r",1,"rac1p2",1,0).
action("tcrp",0,"tcrpablccblp1",4,0).
action("abl",1,"tcrpablccblp1",4,6).
action("ccblp1",1,"tcrpablccblp1",4,5).
action("card11",1,"card11bcl10malt1",3,7).
action("bcl10",0,"card11bcl10malt1",3,1).
action("malt1",0,"card11bcl10malt1",3,2).
action("cd45cd4lckr",0,"__coop0",3,1).
action("cd45cd4lckr",1,"__coop0",3,1).
action("cd45cd4lckr",2,"__coop0",3,1).
action("cd45cd4lckr",3,"__coop0",3,1).
action("cd45cd4lckr",4,"__coop0",3,1).
action("cd45cd4lckr",5,"__coop0",3,1).
action("cd45cd4lckr",6,"__coop0",3,1).
action("shp1csk",1,"__coop0",3,2).
action("shp1csk",2,"__coop0",3,2).
action("shp1csk",3,"__coop0",3,2).
action("plcgbitkrlk",0,"__coop1",3,1).
action("plcgbitkrlk",1,"__coop1",3,1).
action("plcgbitkrlk",2,"__coop1",3,1).
action("plcgbitkrlk",3,"__coop1",3,1).
action("plcgbitkrlk",4,"__coop1",3,1).
action("vav1zap70ccblp2slp76",0,"__coop1",3,2).
action("vav1zap70ccblp2slp76",1,"__coop1",3,2).
action("vav1zap70ccblp2slp76",2,"__coop1",3,2).
action("vav1zap70ccblp2slp76",3,"__coop1",3,2).
action("vav1zap70ccblp2slp76",4,"__coop1",3,2).
action("vav1zap70ccblp2slp76",5,"__coop1",3,2).
action("vav1zap70ccblp2slp76",6,"__coop1",3,2).
action("vav1zap70ccblp2slp76",7,"__coop1",3,2).
action("vav1zap70ccblp2slp76",8,"__coop1",3,2).
action("vav1zap70ccblp2slp76",9,"__coop1",3,2).
action("vav1zap70ccblp2slp76",10,"__coop1",3,2).
action("vav1zap70ccblp2slp76",11,"__coop1",3,2).
action("vav1zap70ccblp2slp76",12,"__coop1",3,2).
action("vav1zap70ccblp2slp76",14,"__coop1",3,2).
action("vav1zap70ccblp2slp76",15,"__coop1",3,2).
action("erk",1,"fos",0,1).
action("lat",1,"latgrb2zap70gads",5,13).
action("grb2",0,"latgrb2zap70gads",5,1).
action("zap70",1,"latgrb2zap70gads",5,7).
action("gads",0,"latgrb2zap70gads",5,4).
action("card11bcl10malt1",7,"card11a",0,1).
action("lckp1",1,"lckp1tcrbfyn",1,5).
action("tcrb",1,"lckp1tcrbfyn",1,3).
action("fyn",0,"lckp1tcrbfyn",1,0).
action("calcin",1,"nfat",0,1).
action("cdc42",0,"cdc42rac1p2",2,0).
action("rac1p2",1,"cdc42rac1p2",2,3).
action("ip3",1,"ca",0,1).
action("card11",0,"card11bcl10malt1",4,0).
action("bcl10",1,"card11bcl10malt1",4,6).
action("malt1",1,"card11bcl10malt1",4,5).
action("lat",1,"latgrb2zap70gads",6,14).
action("grb2",0,"latgrb2zap70gads",6,2).
action("zap70",0,"latgrb2zap70gads",6,4).
action("gads",1,"latgrb2zap70gads",6,7).
action("vav1",1,"vav1zap70ccblp2slp76",7,15).
action("zap70",0,"vav1zap70ccblp2slp76",7,3).
action("ccblp2",0,"vav1zap70ccblp2slp76",7,5).
action("slp76",0,"vav1zap70ccblp2slp76",7,6).
action("tcrb",0,"tcrblckr",2,0).
action("lckr",1,"tcrblckr",2,3).
action("fyn",0,"fynccblr",3,1).
action("ccblr",0,"fynccblr",3,2).
action("tcrp",1,"tcrpablccblp1",1,5).
action("abl",1,"tcrpablccblp1",1,3).
action("ccblp1",0,"tcrpablccblp1",1,0).
action("slp76pip3zap70",7,"itk",0,1).
action("vav1",1,"vav1zap70ccblp2slp76",3,11).
action("zap70",1,"vav1zap70ccblp2slp76",3,7).
action("ccblp2",0,"vav1zap70ccblp2slp76",3,1).
action("slp76",0,"vav1zap70ccblp2slp76",3,2).
action("cd45",0,"cd45cd4lckr",5,1).
action("cd4",1,"cd45cd4lckr",5,7).
action("lckr",0,"cd45cd4lckr",5,4).
action("cd45",1,"cd45lckp1tcrblckr",2,10).
action("lckp1",1,"cd45lckp1tcrblckr",2,6).
action("tcrb",0,"cd45lckp1tcrblckr",2,0).
action("lckr",1,"cd45lckp1tcrblckr",2,3).
action("zap70",1,"zap70ccblr",0,2).
action("ccblr",1,"zap70ccblr",0,1).
action("rac1p2",0,"rac1p2hpk1cdc42",7,3).
action("hpk1",0,"rac1p2hpk1cdc42",7,5).
action("cdc42",0,"rac1p2hpk1cdc42",7,6).
action("tcrbfyn",2,"pag",1,0).
action("ikkg",1,"ikkgcamk2",0,2).
action("camk2",1,"ikkgcamk2",0,1).
action("raf",1,"mek",0,1).
action("cd45",1,"cd45cd4lckr",0,4).
action("cd4",1,"cd45cd4lckr",0,2).
action("lckr",1,"cd45cd4lckr",0,1).
action("creb",1,"cre",0,1).
action("vav1",0,"vav1zap70ccblp2slp76",12,4).
action("zap70",0,"vav1zap70ccblp2slp76",12,8).
action("ccblp2",1,"vav1zap70ccblp2slp76",12,14).
action("slp76",1,"vav1zap70ccblp2slp76",12,13).
action("lckp1",0,"lckp1fyn",3,1).
action("fyn",0,"lckp1fyn",3,2).
action("rasgrp",0,"rasgrpsosgap",7,3).
action("sos",0,"rasgrpsosgap",7,5).
action("gap",0,"rasgrpsosgap",7,6).
action("pdk1",0,"pdk1vav1dag",5,1).
action("vav1",1,"pdk1vav1dag",5,7).
action("dag",0,"pdk1vav1dag",5,4).
action("plcgb",0,"plcgbitkrlk",6,2).
action("itk",0,"plcgbitkrlk",6,4).
action("rlk",1,"plcgbitkrlk",6,7).
action("cd45",0,"cd45lckp1tcrblckr",8,0).
action("lckp1",1,"cd45lckp1tcrblckr",8,12).
action("tcrb",1,"cd45lckp1tcrblckr",8,10).
action("lckr",1,"cd45lckp1tcrblckr",8,9).
action("pag",1,"csk",0,1).
action("lckp1",1,"lckp1erk",0,2).
action("erk",1,"lckp1erk",0,1).
action("mekk1",1,"mekk1mkk4",0,2).
action("mkk4",1,"mekk1mkk4",0,1).
action("cd45",0,"cd45lckp1tcrblckr",15,7).
action("lckp1",0,"cd45lckp1tcrblckr",15,11).
action("tcrb",0,"cd45lckp1tcrblckr",15,13).
action("lckr",0,"cd45lckp1tcrblckr",15,14).
action("rasgrp",0,"rasgrpsosgap",5,1).
action("sos",1,"rasgrpsosgap",5,7).
action("gap",0,"rasgrpsosgap",5,4).
action("rac1p2",1,"rac1p2hpk1cdc42",1,5).
action("hpk1",1,"rac1p2hpk1cdc42",1,3).
action("cdc42",0,"rac1p2hpk1cdc42",1,0).
action("mekk1",1,"mekk1mkk4",1,3).
action("mkk4",0,"mekk1mkk4",1,0).
action("dgkplcga",1,"dag",0,1).
action("jun",0,"junfos",3,1).
action("fos",0,"junfos",3,2).
action("camakap79cabin1calpr1",8,"calcin",0,1).
action("mekk1",0,"mekk1mlk3",2,0).
action("mlk3",1,"mekk1mlk3",2,3).
action("lat",1,"grb2",0,1).
action("ikb",1,"nfkb",1,0).
action("pdk1",1,"pdk1vav1dag",0,4).
action("vav1",1,"pdk1vav1dag",0,2).
action("dag",1,"pdk1vav1dag",0,1).
action("plcgb",1,"plcgbitkrlk",1,5).
action("itk",1,"plcgbitkrlk",1,3).
action("rlk",0,"plcgbitkrlk",1,0).
action("mekk1",0,"mekk1mlk3",3,1).
action("mlk3",0,"mekk1mlk3",3,2).
action("pdk1",1,"pkb",0,1).
action("rasgrp",1,"rasgrpsosgap",3,7).
action("sos",0,"rasgrpsosgap",3,1).
action("gap",0,"rasgrpsosgap",3,2).
action("lckp1",0,"lckp1tcrbfyn",6,2).
action("tcrb",0,"lckp1tcrbfyn",6,4).
action("fyn",1,"lckp1tcrbfyn",6,7).
action("gab2",0,"gab2zap70gads",7,3).
action("zap70",0,"gab2zap70gads",7,5).
action("gads",0,"gab2zap70gads",7,6).
action("card11a",1,"card11apkcth",0,2).
action("pkcth",1,"card11apkcth",0,1).
action("slp76pip3zap70",0,"itk",1,0).
action("slp76pip3zap70",4,"itk",1,0).
action("slp76pip3zap70",2,"itk",1,0).
action("slp76pip3zap70",6,"itk",1,0).
action("slp76pip3zap70",1,"itk",1,0).
action("slp76pip3zap70",5,"itk",1,0).
action("slp76pip3zap70",3,"itk",1,0).
action("mekk1gadd45zap70",4,"p38",0,1).
action("mekk1gadd45zap70",6,"p38",0,1).
action("mekk1gadd45zap70",1,"p38",0,1).
action("mekk1gadd45zap70",5,"p38",0,1).
action("mekk1gadd45zap70",7,"p38",0,1).
action("mekk1",0,"mekk1gadd45zap70",6,2).
action("gadd45",0,"mekk1gadd45zap70",6,4).
action("zap70",1,"mekk1gadd45zap70",6,7).
action("vav1",1,"vav1zap70ccblp2slp76",0,8).
action("zap70",1,"vav1zap70ccblp2slp76",0,4).
action("ccblp2",1,"vav1zap70ccblp2slp76",0,2).
action("slp76",1,"vav1zap70ccblp2slp76",0,1).
action("x",1,"xzap70sh3bp2",1,5).
action("zap70",1,"xzap70sh3bp2",1,3).
action("sh3bp2",0,"xzap70sh3bp2",1,0).
action("slp76",1,"slp76pip3zap70",3,7).
action("pip3",0,"slp76pip3zap70",3,1).
action("zap70",0,"slp76pip3zap70",3,2).
action("lckp1",0,"lckp1tcrbfyn",4,0).
action("tcrb",1,"lckp1tcrbfyn",4,6).
action("fyn",1,"lckp1tcrbfyn",4,5).
action("cd45lckp1tcrblckr",12,"fyn",0,1).
action("cd45lckp1tcrblckr",14,"fyn",0,1).
action("cd45lckp1tcrblckr",13,"fyn",0,1).
action("cd45lckp1tcrblckr",3,"fyn",0,1).
action("cd45lckp1tcrblckr",11,"fyn",0,1).
action("cd45lckp1tcrblckr",7,"fyn",0,1).
action("cd45lckp1tcrblckr",15,"fyn",0,1).
action("lckp1fyn",2,"abl",0,1).
action("lckp1fyn",1,"abl",0,1).
action("lckp1fyn",3,"abl",0,1).
action("lat",0,"latgrb2zap70gads",10,2).
action("grb2",1,"latgrb2zap70gads",10,14).
action("zap70",0,"latgrb2zap70gads",10,8).
action("gads",1,"latgrb2zap70gads",10,11).
action("cam",0,"camakap79cabin1calpr1",10,2).
action("akap79",1,"camakap79cabin1calpr1",10,14).
action("cabin1",0,"camakap79cabin1calpr1",10,8).
action("calpr1",1,"camakap79cabin1calpr1",10,11).
action("mekk1",0,"mekk1gadd45zap70",7,3).
action("gadd45",0,"mekk1gadd45zap70",7,5).
action("zap70",0,"mekk1gadd45zap70",7,6).
action("grb2",1,"sos",0,1).
action("gab2",0,"gab2zap70gads",5,1).
action("zap70",1,"gab2zap70gads",5,7).
action("gads",0,"gab2zap70gads",5,4).
action("lckp1",1,"lckp1tcrbfyn",2,6).
action("tcrb",0,"lckp1tcrbfyn",2,0).
action("fyn",1,"lckp1tcrbfyn",2,3).
action("vav1",0,"vav1zap70ccblp2slp76",9,1).
action("zap70",1,"vav1zap70ccblp2slp76",9,13).
action("ccblp2",1,"vav1zap70ccblp2slp76",9,11).
action("slp76",0,"vav1zap70ccblp2slp76",9,8).
action("slp76",0,"slp76pip3zap70",4,0).
action("pip3",1,"slp76pip3zap70",4,6).
action("zap70",1,"slp76pip3zap70",4,5).
action("cam",0,"camakap79cabin1calpr1",8,0).
action("akap79",1,"camakap79cabin1calpr1",8,12).
action("cabin1",1,"camakap79cabin1calpr1",8,10).
action("calpr1",1,"camakap79cabin1calpr1",8,9).
action("lat",0,"latgrb2zap70gads",11,3).
action("grb2",1,"latgrb2zap70gads",11,15).
action("zap70",0,"latgrb2zap70gads",11,9).
action("gads",0,"latgrb2zap70gads",11,10).
action("vav1",1,"vav1zap70ccblp2slp76",5,13).
action("zap70",0,"vav1zap70ccblp2slp76",5,1).
action("ccblp2",1,"vav1zap70ccblp2slp76",5,7).
action("slp76",0,"vav1zap70ccblp2slp76",5,4).
action("cd45cd4lckr",7,"__coop0",1,3).
action("shp1csk",1,"__coop0",1,0).
action("shp1csk",2,"__coop0",1,0).
action("shp1csk",3,"__coop0",1,0).
action("plcgbitkrlk",5,"__coop1",1,3).
action("plcgbitkrlk",6,"__coop1",1,3).
action("plcgbitkrlk",7,"__coop1",1,3).
action("vav1zap70ccblp2slp76",0,"__coop1",1,0).
action("vav1zap70ccblp2slp76",1,"__coop1",1,0).
action("vav1zap70ccblp2slp76",2,"__coop1",1,0).
action("vav1zap70ccblp2slp76",3,"__coop1",1,0).
action("vav1zap70ccblp2slp76",4,"__coop1",1,0).
action("vav1zap70ccblp2slp76",5,"__coop1",1,0).
action("vav1zap70ccblp2slp76",6,"__coop1",1,0).
action("vav1zap70ccblp2slp76",7,"__coop1",1,0).
action("vav1zap70ccblp2slp76",8,"__coop1",1,0).
action("vav1zap70ccblp2slp76",9,"__coop1",1,0).
action("vav1zap70ccblp2slp76",10,"__coop1",1,0).
action("vav1zap70ccblp2slp76",11,"__coop1",1,0).
action("vav1zap70ccblp2slp76",12,"__coop1",1,0).
action("vav1zap70ccblp2slp76",14,"__coop1",1,0).
action("vav1zap70ccblp2slp76",15,"__coop1",1,0).
action("dgkplcga",0,"dag",1,0).
action("dgkplcga",2,"dag",1,0).
action("dgkplcga",3,"dag",1,0).
action("cam",1,"camakap79cabin1calpr1",6,14).
action("akap79",0,"camakap79cabin1calpr1",6,2).
action("cabin1",0,"camakap79cabin1calpr1",6,4).
action("calpr1",1,"camakap79cabin1calpr1",6,7).
action("cdc42rac1p2",2,"sre",0,1).
action("cdc42rac1p2",1,"sre",0,1).
action("cdc42rac1p2",3,"sre",0,1).
action("card11apkcth",0,"ikkg",1,0).
action("card11apkcth",2,"ikkg",1,0).
action("card11apkcth",1,"ikkg",1,0).
action("tcrb",1,"dgk",0,1).
action("slp76",0,"slp76pip3zap70",5,1).
action("pip3",1,"slp76pip3zap70",5,7).
action("zap70",0,"slp76pip3zap70",5,4).
action("vav3",0,"vav3rac1r",3,1).
action("rac1r",0,"vav3rac1r",3,2).
action("gab2",1,"gab2zap70gads",2,6).
action("zap70",0,"gab2zap70gads",2,0).
action("gads",1,"gab2zap70gads",2,3).
action("lat",1,"latzap70",1,3).
action("zap70",0,"latzap70",1,0).
action("vav1rac1r",3,"rac1p1",0,1).
action("vav3rac1r",3,"rac1p2",0,1).
action("tcrpablccblp1",0,"zap70",1,0).
action("tcrpablccblp1",4,"zap70",1,0).
action("tcrpablccblp1",2,"zap70",1,0).
action("tcrpablccblp1",1,"zap70",1,0).
action("tcrpablccblp1",5,"zap70",1,0).
action("tcrpablccblp1",3,"zap70",1,0).
action("tcrpablccblp1",7,"zap70",1,0).
action("cd45",1,"cd45lckp1tcrblckr",5,13).
action("lckp1",0,"cd45lckp1tcrblckr",5,1).
action("tcrb",1,"cd45lckp1tcrblckr",5,7).
action("lckr",0,"cd45lckp1tcrblckr",5,4).
action("cam",1,"camakap79cabin1calpr1",4,12).
action("akap79",0,"camakap79cabin1calpr1",4,0).
action("cabin1",1,"camakap79cabin1calpr1",4,6).
action("calpr1",1,"camakap79cabin1calpr1",4,5).
action("cdc42",1,"cdc42rac1p2",0,2).
action("rac1p2",1,"cdc42rac1p2",0,1).
action("cd45",0,"cd45lckp1tcrblckr",12,4).
action("lckp1",0,"cd45lckp1tcrblckr",12,8).
action("tcrb",1,"cd45lckp1tcrblckr",12,14).
action("lckr",1,"cd45lckp1tcrblckr",12,13).
action("card11bcl10malt1",0,"card11a",1,0).
action("card11bcl10malt1",4,"card11a",1,0).
action("card11bcl10malt1",2,"card11a",1,0).
action("card11bcl10malt1",6,"card11a",1,0).
action("card11bcl10malt1",1,"card11a",1,0).
action("card11bcl10malt1",5,"card11a",1,0).
action("card11bcl10malt1",3,"card11a",1,0).
action("mekk1gadd45zap70",0,"p38",1,0).
action("mekk1gadd45zap70",2,"p38",1,0).
action("mekk1gadd45zap70",3,"p38",1,0).
action("slp76",0,"slp76pip3zap70",6,2).
action("pip3",0,"slp76pip3zap70",6,4).
action("zap70",1,"slp76pip3zap70",6,7).
action("cam",1,"camakap79cabin1calpr1",2,10).
action("akap79",1,"camakap79cabin1calpr1",2,6).
action("cabin1",0,"camakap79cabin1calpr1",2,0).
action("calpr1",1,"camakap79cabin1calpr1",2,3).
action("cd45",1,"cd45cd4lckr",3,7).
action("cd4",0,"cd45cd4lckr",3,1).
action("lckr",0,"cd45cd4lckr",3,2).
action("mekk1mkk4",2,"jnk",0,1).
action("mekk1mkk4",1,"jnk",0,1).
action("mekk1mkk4",3,"jnk",0,1).

% A MODIFIER 

% initialisation des process actifs
init(actifProcess("__coop0",0 )).
init(actifProcess("__coop1",0 )).
init(actifProcess("abl",0 )).
init(actifProcess("akap79",0 )).
init(actifProcess("ap1",0 )).
init(actifProcess("bad",0 )).
init(actifProcess("bcat",0 )).
init(actifProcess("bcl10",0 )).
init(actifProcess("bclxl",0 )).
init(actifProcess("ca",0 )).
init(actifProcess("cabin1",0 )).
init(actifProcess("calcin",0 )).
init(actifProcess("calpr1",0 )).
init(actifProcess("cam",0 )).
init(actifProcess("camakap79cabin1calpr1",0 )).
init(actifProcess("camk2",0 )).
init(actifProcess("camk4",0 )).
init(actifProcess("card11",0 )).
init(actifProcess("card11a",0 )).
init(actifProcess("card11apkcth",0 )).
init(actifProcess("card11bcl10malt1",0 )).
init(actifProcess("cblb",0 )).
init(actifProcess("cblblckp2x",0 )).
init(actifProcess("ccblp1",0 )).
init(actifProcess("ccblp2",0 )).
init(actifProcess("ccblr",0 )).
init(actifProcess("cd28",0 )).
init(actifProcess("cd4",0 )).
init(actifProcess("cd45",1 )).
init(actifProcess("cd45cd4lckr",0 )).
init(actifProcess("cd45lckp1tcrblckr",0 )).
init(actifProcess("cdc42",0 )).
init(actifProcess("cdc42rac1p2",0 )).
init(actifProcess("cre",0 )).
init(actifProcess("creb",0 )).
init(actifProcess("csk",0 )).
init(actifProcess("cyc1",0 )).
init(actifProcess("dag",0 )).
init(actifProcess("dgk",0 )).
init(actifProcess("dgkplcga",0 )).
init(actifProcess("erk",0 )).
init(actifProcess("fkhr",0 )).
init(actifProcess("fos",0 )).
init(actifProcess("fyn",0 )).
init(actifProcess("fynccblr",0 )).
init(actifProcess("gab2",0 )).
init(actifProcess("gab2zap70gads",0 )).
init(actifProcess("gadd45",0 )).
init(actifProcess("gads",0 )).
init(actifProcess("gap",0 )).
init(actifProcess("grb2",0 )).
init(actifProcess("gsk3",0 )).
init(actifProcess("hpk1",0 )).
init(actifProcess("ikb",0 )).
init(actifProcess("ikkab",0 )).
init(actifProcess("ikkg",0 )).
init(actifProcess("ikkgcamk2",0 )).
init(actifProcess("ip3",0 )).
init(actifProcess("itk",0 )).
init(actifProcess("jnk",0 )).
init(actifProcess("jun",0 )).
init(actifProcess("junfos",0 )).
init(actifProcess("lat",0 )).
init(actifProcess("latgrb2zap70gads",0 )).
init(actifProcess("latzap70",0 )).
init(actifProcess("lckp1",0 )).
init(actifProcess("lckp1erk",0 )).
init(actifProcess("lckp1fyn",0 )).
init(actifProcess("lckp1tcrbfyn",0 )).
init(actifProcess("lckp2",0 )).
init(actifProcess("lckr",0 )).
init(actifProcess("malt1",0 )).
init(actifProcess("mek",0 )).
init(actifProcess("mekk1",0 )).
init(actifProcess("mekk1gadd45zap70",0 )).
init(actifProcess("mekk1mkk4",0 )).
init(actifProcess("mekk1mlk3",0 )).
init(actifProcess("mkk4",0 )).
init(actifProcess("mlk3",0 )).
init(actifProcess("nfat",0 )).
init(actifProcess("nfkb",0 )).
init(actifProcess("p21c",0 )).
init(actifProcess("p27k",0 )).
init(actifProcess("p38",0 )).
init(actifProcess("p70s",0 )).
init(actifProcess("pag",0 )).
init(actifProcess("pdk1",0 )).
init(actifProcess("pdk1vav1dag",0 )).
init(actifProcess("pi3k",0 )).
init(actifProcess("pip3",0 )).
init(actifProcess("pkb",0 )).
init(actifProcess("pkcth",0 )).
init(actifProcess("plcga",0 )).
init(actifProcess("plcgb",0 )).
init(actifProcess("plcgbitkrlk",0 )).
init(actifProcess("pten",0 )).
init(actifProcess("ptenship1pi3k",0 )).
init(actifProcess("rac1p1",0 )).
init(actifProcess("rac1p1hpk1",0 )).
init(actifProcess("rac1p2",0 )).
init(actifProcess("rac1p2hpk1cdc42",0 )).
init(actifProcess("rac1r",0 )).
init(actifProcess("raf",0 )).
init(actifProcess("ras",0 )).
init(actifProcess("rasgrp",0 )).
init(actifProcess("rasgrpsosgap",0 )).
init(actifProcess("rlk",0 )).
init(actifProcess("rsk",0 )).
init(actifProcess("sh3bp2",0 )).
init(actifProcess("ship1",0 )).
init(actifProcess("shp1",0 )).
init(actifProcess("shp1csk",0 )).
init(actifProcess("shp2",0 )).
init(actifProcess("slp76",0 )).
init(actifProcess("slp76pip3zap70",0 )).
init(actifProcess("sos",0 )).
init(actifProcess("sre",0 )).
init(actifProcess("tcrb",0 )).
init(actifProcess("tcrbfyn",0 )).
init(actifProcess("tcrblckr",0 )).
init(actifProcess("tcrlig",0 )).
init(actifProcess("tcrligccblp1",0 )).
init(actifProcess("tcrp",0 )).
init(actifProcess("tcrpablccblp1",0 )).
init(actifProcess("vav1",0 )).
init(actifProcess("vav1rac1r",0 )).
init(actifProcess("vav1zap70ccblp2slp76",0 )).
init(actifProcess("vav3",0 )).
init(actifProcess("vav3rac1r",0 )).
init(actifProcess("x",0 )).
init(actifProcess("xzap70sh3bp2",0 )).
init(actifProcess("zap70",0 )).
init(actifProcess("zap70ccblr",0 )).

% Liste des process à atteindre 
%goal(actifProcess("__coop0", xx )).
%goal(actifProcess("__coop1", xx )).
%goal(actifProcess("abl", xx )).
%goal(actifProcess("akap79", xx )).
%goal(actifProcess("ap1", xx )).
%goal(actifProcess("bad", xx )).
%goal(actifProcess("bcat", xx )).
%goal(actifProcess("bcl10", xx )).
%goal(actifProcess("bclxl", xx )).
%goal(actifProcess("ca", xx )).
%goal(actifProcess("cabin1", xx )).
%goal(actifProcess("calcin", xx )).
%goal(actifProcess("calpr1", xx )).
%goal(actifProcess("cam", xx )).
%goal(actifProcess("camakap79cabin1calpr1", xx )).
%goal(actifProcess("camk2", xx )).
%goal(actifProcess("camk4", xx )).
%goal(actifProcess("card11", xx )).
%goal(actifProcess("card11a", xx )).
%goal(actifProcess("card11apkcth", xx )).
%goal(actifProcess("card11bcl10malt1", xx )).
%goal(actifProcess("cblb", xx )).
%goal(actifProcess("cblblckp2x", xx )).
%goal(actifProcess("ccblp1", xx )).
%goal(actifProcess("ccblp2", xx )).
%goal(actifProcess("ccblr", xx )).
%goal(actifProcess("cd28", xx )).
%goal(actifProcess("cd4", xx )).
%goal(actifProcess("cd45", xx )).
%goal(actifProcess("cd45cd4lckr", xx )).
%goal(actifProcess("cd45lckp1tcrblckr", xx )).
%goal(actifProcess("cdc42", xx )).
%goal(actifProcess("cdc42rac1p2", xx )).
%goal(actifProcess("cre", xx )).
%goal(actifProcess("creb", xx )).
%goal(actifProcess("csk", xx )).
%goal(actifProcess("cyc1", xx )).
%goal(actifProcess("dag", xx )).
%goal(actifProcess("dgk", xx )).
%goal(actifProcess("dgkplcga", xx )).
%goal(actifProcess("erk", xx )).
%goal(actifProcess("fkhr", xx )).
%goal(actifProcess("fos", xx )).
%goal(actifProcess("fyn", xx )).
%goal(actifProcess("fynccblr", xx )).
%goal(actifProcess("gab2", xx )).
%goal(actifProcess("gab2zap70gads", xx )).
%goal(actifProcess("gadd45", xx )).
%goal(actifProcess("gads", xx )).
%goal(actifProcess("gap", xx )).
%goal(actifProcess("grb2", xx )).
%goal(actifProcess("gsk3", xx )).
%goal(actifProcess("hpk1", xx )).
%goal(actifProcess("ikb", xx )).
%goal(actifProcess("ikkab", xx )).
%goal(actifProcess("ikkg", xx )).
%goal(actifProcess("ikkgcamk2", xx )).
%goal(actifProcess("ip3", xx )).
%goal(actifProcess("itk", xx )).
%goal(actifProcess("jnk", xx )).
%goal(actifProcess("jun", xx )).
%goal(actifProcess("junfos", xx )).
%goal(actifProcess("lat", xx )).
%goal(actifProcess("latgrb2zap70gads", xx )).
%goal(actifProcess("latzap70", xx )).
%goal(actifProcess("lckp1", xx )).
%goal(actifProcess("lckp1erk", xx )).
%goal(actifProcess("lckp1fyn", xx )).
%goal(actifProcess("lckp1tcrbfyn", xx )).
%goal(actifProcess("lckp2", xx )).
%goal(actifProcess("lckr", xx )).
%goal(actifProcess("malt1", xx )).
%goal(actifProcess("mek", xx )).
%goal(actifProcess("mekk1", xx )).
%goal(actifProcess("mekk1gadd45zap70", xx )).
%goal(actifProcess("mekk1mkk4", xx )).
%goal(actifProcess("mekk1mlk3", xx )).
%goal(actifProcess("mkk4", xx )).
%goal(actifProcess("mlk3", xx )).
%goal(actifProcess("nfat", xx )).
%goal(actifProcess("nfkb", xx )).
%goal(actifProcess("p21c", xx )).
%goal(actifProcess("p27k", xx )).
%goal(actifProcess("p38", xx )).
%goal(actifProcess("p70s", xx )).
%goal(actifProcess("pag", xx )).
%goal(actifProcess("pdk1", xx )).
%goal(actifProcess("pdk1vav1dag", xx )).
%goal(actifProcess("pi3k", xx )).
%goal(actifProcess("pip3", xx )).
%goal(actifProcess("pkb", xx )).
%goal(actifProcess("pkcth", xx )).
%goal(actifProcess("plcga", xx )).
%goal(actifProcess("plcgb", xx )).
%goal(actifProcess("plcgbitkrlk", xx )).
%goal(actifProcess("pten", xx )).
%goal(actifProcess("ptenship1pi3k", xx )).
%goal(actifProcess("rac1p1", xx )).
%goal(actifProcess("rac1p1hpk1", xx )).
%goal(actifProcess("rac1p2", xx )).
%goal(actifProcess("rac1p2hpk1cdc42", xx )).
%goal(actifProcess("rac1r", xx )).
%goal(actifProcess("raf", xx )).
%goal(actifProcess("ras", xx )).
%goal(actifProcess("rasgrp", xx )).
%goal(actifProcess("rasgrpsosgap", xx )).
%goal(actifProcess("rlk", xx )).
%goal(actifProcess("rsk", xx )).
%goal(actifProcess("sh3bp2", xx )).
%goal(actifProcess("ship1", xx )).
%goal(actifProcess("shp1", xx )).
%goal(actifProcess("shp1csk", xx )).
%goal(actifProcess("shp2", xx )).
%goal(actifProcess("slp76", xx )).
%goal(actifProcess("slp76pip3zap70", xx )).
%goal(actifProcess("sos", xx )).
%goal(actifProcess("sre", xx )).
%goal(actifProcess("tcrb", xx )).
%goal(actifProcess("tcrbfyn", xx )).
%goal(actifProcess("tcrblckr", xx )).
%goal(actifProcess("tcrlig", xx )).
%goal(actifProcess("tcrligccblp1", xx )).
%goal(actifProcess("tcrp", xx )).
%goal(actifProcess("tcrpablccblp1", xx )).
%goal(actifProcess("vav1", xx )).
%goal(actifProcess("vav1rac1r", xx )).
%goal(actifProcess("vav1zap70ccblp2slp76", xx )).
%goal(actifProcess("vav3", xx )).
%goal(actifProcess("vav3rac1r", xx )).
%goal(actifProcess("x", xx )).
%goal(actifProcess("xzap70sh3bp2", xx )).
%goal(actifProcess("zap70", xx )).
%goal(actifProcess("zap70ccblr", xx )).

