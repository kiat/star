:- module(terms,[displayRules/1,showRules/3,substTerm/3,
        genTplStruct/2,isTplStruct/1,isLiteral/1,isGround/1,mkTpl/2,isUnit/1,
        termHash/2,dispTerm/2,showTerm/3,locTerm/2]).

:- use_module(misc).
:- use_module(canon).
:- use_module(operators).
:- use_module(location).
:- use_module(types).

showRules(mdule(Pkg,Imports,Types,_,Defs,Contracts,Impls),O,Ox) :-
  appStr("Package :",O,O0),
  showPkg(Pkg,O0,O1),
  appStr("\n",O1,O2),
  showImports(Imports,O2,O3),!,
  appStr("Package export: ",O3,O3a),
  showType(Types,O3a,O3b),
  appStr("\nPackage contracts:\n",O3b,O4),!,
  showContracts(Contracts,O4,O5),!,
  appStr("\nPackage implementations:\n",O5,O5a),!,
  showImpls(Impls,O5a,O6),!,
  appStr("\nPackage definitions:\n",O6,O6a),!,
  showRuleSets(Defs,O6a,O7),!,
  appStr("\n",O7,Ox),!.

displayRules(Term) :- showRules(Term,Chrs,[]), string_chars(Res,Chrs), write(Res).

showRuleSets(L,O,Ox) :-
  listShow(L,terms:showRuleSet,"\n\n",O,Ox).

showRuleSet(fnDef(_,Nm,Tp,Eqns),O,Ox) :-
  appStr("Function: ",O,O0),
  showTerm(Nm,O0,O1),
  appStr(":",O1,O2),
  showType(Tp,O2,O3),
  appStr("\n",O3,O4),
  showEqns(Eqns,Nm,O4,Ox).
showRuleSet(vrDef(_,Nm,Tp,Value),O,Ox) :-
  appStr("Global: ",O,O0),
  appStr(Nm,O0,O1),
  appStr(":",O1,O2),
  showType(Tp,O2,O3),
  appStr("\n",O3,O4),
  showTerm(Value,O4,Ox).

showEqns(L,Nm,O,Ox) :-
  listShow(L,terms:showEqn(Nm),"\n",O,Ox).

showEqn(Nm,eqn(_,Args,Value),O,Ox) :-
  showTerm(Nm,O,O1),
  showArgs(Args,O1,O2),
  appStr(" => ",O2,O3),
  showTerm(Value,O3,O4),
  appStr(".",O4,Ox).

showArgs(Args,O,Ox) :-
  showTerms(Args,"(",",",")",O,Ox).

showTerms(Terms,Lft,Mid,Rgt,O,Ox) :-
  appStr(Lft,O,O1),
  listShow(Terms,terms:showTerm,Mid,O1,O2),
  appStr(Rgt,O2,Ox).

showTerm(idnt(Nm),O,Ox) :- appStr(Nm,O,Ox).
showTerm(intgr(Ix),O,Ox) :- appInt(Ix,O,Ox).
showTerm(float(Ix),O,Ox) :- appInt(Ix,O,Ox).
showTerm(strg(Str),O,Ox) :-
  appStr("""",O,O1),
  appStr(Str,O1,O2),
  appStr("""",O2,Ox).
showTerm(cll(_,Op,Args),O,Ox) :-
  showTerm(Op,O,O1),
  showArgs(Args,O1,Ox).
showTerm(ocall(_,Call,Rec),O,Ox) :-
  showTerm(Rec,O,O1),
  appStr(".",O1,O2),
  showTerm(Call,O2,Ox).
showTerm(ecll(_,Es,Args),O,Ox) :-
  appStr(Es,O,O1),
  showArgs(Args,O1,Ox).
showTerm(ctpl(Op,A),O,Ox) :-
  showTerm(Op,O,O1),
  showArgs(A,O1,Ox).
showTerm(enum(Nm),O,Ox) :-
  appStr("'",O,O1),
  appStr(Nm,O1,O2),
  appStr("'",O2,Ox).
showTerm(lbl(Nm,Ar),O,Ox) :-
  appStr(Nm,O,O1),
  appStr("%",O1,O2),
  appInt(Ar,O2,Ox).
showTerm(whr(_,Ptn,Cond),O,Ox) :-
  showTerm(Ptn,O,O1),
  showTermGuard(Cond,O1,Ox).
showTerm(varNames(_,Vars,Value),O,Ox) :-
  appStr("varDebug: [",O,O0),
  showVarNames(Vars,O0,O1),
  appStr("] -> ",O1,O2),
  showTerm(Value,O2,Ox).
showTerm(case(_,T,Cases,Deflt),O,Ox) :-
  appStr("case ",O,O1),
  showTerm(T,O1,O2),
  appStr(" in {\n",O2,O3),
  showCases(Cases,O3,O4),
  appStr("\n} else ",O4,O5),
  showTerm(Deflt,O5,Ox).
showTerm(seq(_,L,R),O,Ox) :-
  showTerm(L,O,O1),
  appStr(";",O1,O2),
  showTerm(R,O2,Ox).
showTerm(cnj(_,L,R),O,Ox) :-
  showTerm(L,O,O1),
  appStr(" && ",O1,O2),
  showTerm(R,O2,Ox).
showTerm(cnd(_,T,L,R),O,Ox) :-
  appStr("(",O,O0),
  showTerm(T,O0,O1),
  appStr(" ? ",O1,O2),
  showTerm(L,O2,O3),
  appStr(" | ",O3,O4),
  showTerm(R,O4,O5),
  appStr(")",O5,Ox).
showTerm(dsj(_,Either,Or),O,Ox) :-
  appStr("(",O,O0),
  showTerm(Either,O0,O1),
  appStr(" || ",O1,O2),
  showTerm(Or,O2,O3),
  appStr(")",O3,Ox).
showTerm(cnd(_,Test,Either,Or),O,Ox) :-
  appStr("(",O,O1),
  showTerm(Test,O1,O2),
  appStr("?",O2,O3),
  showTerm(Either,O3,O4),
  appStr(" | ",O4,O5),
  showTerm(Or,O5,O6),
  appStr(")",O6,Ox).
showTerm(mtch(_,L,R),O,Ox) :-
  showTerm(L,O,O1),
  appStr(" .= ",O1,O2),
  showTerm(R,O2,Ox).
showTerm(ng(_,R),O,Ox) :-
  appStr("\\+",O,O1),
  showTerm(R,O1,Ox).
showTerm(error(_,Msg),O,Ox) :-
  appStr("error: ",O,O1),
  appQuoted(Msg,"\"",O1,Ox).

showTermGuard(enum("star.core#true"),Ox,Ox) :- !.
showTermGuard(T,O,Ox) :-
  appStr(" where ",O,O1),
  showTerm(T,O1,Ox).

showVarNames(Vrs,O,Ox) :-
  listShow(Vrs,terms:showVarBinding,", ",O,Ox).

showVarBinding((V,Vx),O,Ox) :-
  appStr(V,O,O1),
  appStr("/",O1,O2),
  showTerm(Vx,O2,Ox).

showCases(Cases,O,Ox) :-
  listShow(Cases,terms:showCase,"\n| ",O,Ox).

showCase((Lbl,Val),O,Ox) :-
  showTerm(Lbl,O,O1),
  appStr(": ",O1,O2),
  showTerm(Val,O2,Ox).

dispTerm(T,Txt) :-
  showTerm(T,Chrs,[]),
  string_chars(Txt,Chrs).

substTerm(_,intgr(Ix),intgr(Ix)).
substTerm(Q,idnt(Nm),Trm) :- is_member((Nm,Trm),Q),!.
substTerm(_,idnt(Nm),idnt(Nm)).
substTerm(_,float(Dx),float(Dx)).
substTerm(_,strg(Sx),strg(Sx)).
substTerm(_,enum(Nm),enum(Nm)).
substTerm(_,lbl(Nm,Ar),lbl(Nm,Ar)).
substTerm(Q,cll(Lc,Op,Args),cll(Lc,NOp,NArgs)) :-
  substTerm(Q,Op,NOp),
  substTerms(Q,Args,NArgs).
substTerm(Q,ocall(Lc,Call,Rec),ocall(Lc,NCall,NRec)) :-
  substTerm(Q,Call,NCall),
  substTerm(Q,Rec,NRec).
substTerm(Q,ctpl(Op,Args),ctpl(NOp,NArgs)) :-
  substTerm(Q,Op,NOp),
  substTerms(Q,Args,NArgs).
substTerm(Q,ecll(Lc,Call,Args),ecll(Lc,Call,NArgs)) :-
  substTerms(Q,Args,NArgs).
substTerm(Q,whr(Lc,T,C),whr(Lc,NT,NC)) :-
  substTerm(Q,T,NT),
  substTerm(Q,C,NC).
substTerm(Q,varNames(Lc,V,T),varNames(Lc,NV,NT)) :-
  map(V,terms:substVN(Q),NV),
  substTerm(Q,T,NT).
substTerm(Q,case(Lc,T,C),case(Lc,NT,NC)) :-
  substTerm(Q,T,NT),
  map(C,terms:substCase(Q),NC).
substTerm(Q,seq(Lc,L,R),seq(Lc,NL,NR)) :-
  substTerm(Q,L,NL),
  substTerm(Q,R,NR).
substTerm(Q,cnj(Lc,L,R),cnj(Lc,NL,NR)) :-
  substTerm(Q,L,NL),
  substTerm(Q,R,NR).
substTerm(Q,dsj(Lc,L,R),dsj(Lc,NL,NR)) :-
  substTerm(Q,L,NL),
  substTerm(Q,R,NR).
substTerm(Q,cnd(Lc,T,L,R),cnd(Lc,NT,NL,NR)) :-
  substTerm(Q,T,NT),
  substTerm(Q,L,NL),
  substTerm(Q,R,NR).
substTerm(Q,mtch(Lc,L,R),mtch(Lc,NL,NR)) :-
  substTerm(Q,L,NL),
  substTerm(Q,R,NR).
substTerm(Q,ng(Lc,R),ng(Lc,NR)) :-
  substTerm(Q,R,NR).

substTerms(Q,Els,NEls):-
  map(Els,terms:substTerm(Q),NEls).

substVN(Q,(T,E),(T,NE)) :-
  substTerm(Q,E,NE).

substCase(Q,(T,E),(NT,NE)) :-
  substTerm(Q,T,NT),
  substTerm(Q,E,NE).

genTplStruct(Cnt,lbl(Nm,Cnt)) :-
  swritef(Nm,"()%d",[Cnt]).

isTplStruct(lbl(Nm,Ar)) :- string_concat("()",A,Nm),number_string(Ar,A).

mkTpl(Els,ctpl(C,Els)) :-
  length(Els,Cnt),
  genTplStruct(Cnt,C).

isUnit(ctpl(lbl("()0",0),[])).

isLiteral(intgr(_)).
isLiteral(float(_)).
isLiteral(strg(_)).
isLiteral(enum(_)).
isLiteral(lbl(_,_)).

isGround(T) :- isLiteral(T),!.
isGround(ctpl(S,A)) :-
  isGround(S),
  forall(is_member(E,A), terms:isGround(E)).

termHash(intgr(Ix),Ix).
termHash(float(Dx),Ix) :- Ix is round(Dx).
termHash(strg(Sx),Ix) :- stringHash(0,Sx,Ix).
termHash(enum(Sx),Ix) :- termHash(lbl(Sx,0),Ix).
termHash(lbl(Nm,Ar),Ix) :-
  stringHash(0,Nm,H0),
  Ix is H0*37+Ar.

locTerm(loc(Pk,Ln,Off,Str,Len),ctpl(lbl("loc",5),[strg(Pk),intgr(Ln),intgr(Off),intgr(Str),intgr(Len)])).
