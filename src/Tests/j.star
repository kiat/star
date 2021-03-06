test.j{
  import star.
  import star.json.
  import star.parse.

  assert "11"::json == jNum(11.0).

  assert "[1]"::json == jSeq([jNum(1.0)]).

  assert "[1,2]"::json == jSeq([jNum(1.0),jNum(2.0)]).

  assert "\"alpha\""::json == jTxt("alpha").

  assert "[\"alpha\"]"::json == jSeq([jTxt("alpha")]).

  assert "{}"::json == jColl([]).

  assert "{\"alpha\":1}"::json == jColl(["alpha"->jNum(1.0)]).

  assert "{\"beta\":2}"::json == jColl(["beta"->jNum(2.0)]).

  assert (["alpha"->jNum(1.0),"beta"->jNum(2.0)]:map[string,json]) == ["alpha"->jNum(1.0),"beta"->jNum(2.0)].

  show disp("{\"alpha\":1,\"beta\":2}"::json).

  assert "{\"alpha\":1,\"beta\":2}"::json ==
    jColl(["alpha"->jNum(1.0),"beta"->jNum(2.0)]).

  show disp("{\"alpha\":1,\"beta\":[2,null]}"::json).

  assert "{\"alpha\":1,\"beta\":[2,null]}"::json ==
    jColl(["alpha"->jNum(1.0),"beta"->jSeq([jNum(2.0),jNull])]).

  str = """
  {
	"star.core": {
		"1.0.0": {
			"source": "file:/Users/fgm/Projects/cafe/src/Star/core.star",
			"code": "star.core5751615246627866486.cafe",
			"signature": "n6o6star.core$equality'(k'xar.cme':k't'C(k't')Uz1's't''id':k'a'F(k'a')k'a''•':k'a':k'b':k'c'F(F(k'b')k'c'F(k'a')k'b')F(k'a')k'c'}{'boolean'YlI{}{}'option':k't'YUz1'star.core*option'k't'I{}{}'ss'Yt'star.core*ss'I{}{}}\"n7o7'()7's'star.core#true's'star.core#ss's'star.core#sc's'star.core#ssSeq's'star.core#false's'star.core#none's'star.core#some'n9o9'()9'n3o3'()3's'equality's'star.core$equality's\":k'x'Zc'star.core$equality'(k'x')()I{'=='F(k'x'k'x')l}{}\"n3o3'()3's'comp's'star.core$comp's\":k'x'Zc'star.core$comp'(k'x')()I{'>='F(k'x'k'x')l'<'F(k'x'k'x')l}{}\"n3o3'("
		}
	}
}
""".

/*
)3's'hash's'star.core$hash's\":k'x'Zc'star.core$hash'(k'x')()I{'hash'F(k'x')i}{}\"n3o3'()3's'sizeable's'star.core$sizeable's\":k'c'Zc'star.core$sizeable'(k'c')()I{'isEmpty'F(k'c')l'size'F(k'c')i}{}\"n3o3'()3's'stream's'star.core$stream's\":k'S':k'E'Zc'star.core$stream'(k'S')(k'E')I{'_nil'k'S''_back'F(k'S')Uz1'star.core*option'(k'S'k'E')'_apnd'F(k'S'k'E')k'S''_cons'F(k'E'k'S')k'S''_hdtl'F(k'S')Uz1'star.core*option'(k'E'k'S')'_eof'F(k'S')l}{}\"n3o3'()3's'display's'star.core$display's\":k't'Zc'star.core$display'(k't')()I{'disp'F(k't')t'star.core*ss'}{}\"n3o3'()3's'format's'star.core$format's\":k't'Zc'star.core$format'(k't')()I{'frmt'F(k't'S)t'star.core*ss'}{}\"n3o3'()3's'concat's'star.core$concat's\":k'k'Zc'star.core$concat'(k'k')()I{'++'F(k'k'k'k')k'k'}{}\"n3o3'()3's'reversible's'star.core$reversible's\":k't'Zc'star.core$reversible'(k't')()I{'reverse'F(k't')k't'}{}\"n1o1'()1'n2o2'()2's'star.core$display!star.core*ss's\"Zc'star.core$display'(t'star.core*ss')()I{'disp'F(t'star.core*ss')t'star.core*ss'}{}\"
*/
  show disp(str::json).

  -- show disp(parse(pJson,str::list[integer])).

}
