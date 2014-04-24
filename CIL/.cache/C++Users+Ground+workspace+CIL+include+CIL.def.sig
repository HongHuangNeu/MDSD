definition([module(unparameterized("general/CIL-Call"),[imports([module(unparameterized("lex/CIL-Names")),module(unparameterized("general/CIL-Type"))])],[exports(conc-grammars(conc-grammars(sorts([sort("Call")]),context-free-syntax([prod([lit("call"),sort("ReturnType"),sort("Library"),sort("Object"),lit("::"),sort("MethodName"),lit("("),iter-star-sep(sort("Type"),lit(",")),lit(")")],sort("Call"),attrs([term(cons("Call"))])),prod([sort("Type")],sort("ReturnType"),attrs([])),prod([lit("[mscorlib]")],sort("Library"),attrs([term(cons("MSLibrary"))])),prod([sort("ClassName")],sort("Object"),attrs([term(cons("Object"))])),prod([],sort("Library"),attrs([term(cons("None"))]))])),context-free-syntax([prod([sort("CONTENTCOMPLETE")],sort("Call"),attrs([term(cons("COMPLETION-Call"))])),prod([sort("CONTENTCOMPLETE")],sort("ReturnType"),attrs([term(cons("COMPLETION-ReturnType"))])),prod([sort("CONTENTCOMPLETE")],sort("Object"),attrs([term(cons("COMPLETION-Object"))])),prod([sort("CONTENTCOMPLETE")],sort("Library"),attrs([term(cons("COMPLETION-Library"))]))])))]),module(unparameterized("general/CIL-CilFILE"),[imports([module(unparameterized("general/CIL-Header")),module(unparameterized("general/CIL-Component"))])],[exports(conc-grammars(conc-grammars(sorts([sort("CilFILE")]),context-free-syntax([prod([sort("CILHeader"),iter-star(sort("Component"))],sort("CilFILE"),attrs([term(cons("File"))]))])),context-free-syntax([prod([sort("CONTENTCOMPLETE")],sort("CilFILE"),attrs([term(cons("COMPLETION-CilFILE"))]))])))]),module(unparameterized("general/CIL-Class"),[imports([module(unparameterized("lex/CIL-Names")),module(unparameterized("general/CIL-Type")),module(unparameterized("general/CIL-Statement")),module(unparameterized("general/CIL-Directive")),module(unparameterized("general/CIL-Method"))])],[exports(conc-grammars(context-free-syntax([prod([lit(".class"),iter-star(sort("ClassAccess")),sort("ClassName"),lit("{"),iter-star(sort("Method")),lit("}")],sort("Class"),attrs([term(cons("Class"))])),prod([lit("public")],sort("ClassAccess"),attrs([term(cons("PUBLIC"))]))]),context-free-syntax([prod([sort("CONTENTCOMPLETE")],sort("Class"),attrs([term(cons("COMPLETION-Class"))])),prod([sort("CONTENTCOMPLETE")],sort("ClassAccess"),attrs([term(cons("COMPLETION-ClassAccess"))]))])))]),module(unparameterized("general/CIL-Directive"),[imports([module(unparameterized("lex/CIL-Numbers"))])],[exports(conc-grammars(conc-grammars(sorts([sort("Directive")]),context-free-syntax([prod([lit(".maxstack"),sort("Int")],sort("Directive"),attrs([term(cons("MaxStack"))])),prod([lit("ret")],sort("Directive"),attrs([term(cons("Return"))])),prod([lit("ldc.i4"),sort("Int")],sort("Directive"),attrs([term(cons("LDC"))]))])),context-free-syntax([prod([sort("CONTENTCOMPLETE")],sort("Directive"),attrs([term(cons("COMPLETION-Directive"))]))])))]),module(unparameterized("general/CIL-Method"),[imports([module(unparameterized("lex/CIL-Names")),module(unparameterized("general/CIL-Type")),module(unparameterized("general/CIL-Statement")),module(unparameterized("general/CIL-Directive"))])],[exports(conc-grammars(conc-grammars(sorts([sort("Method")]),context-free-syntax([prod([lit(".method"),lit("public"),lit("specialname"),lit("rtspecialname"),lit("void"),lit(".ctor"),lit("("),iter-star-sep(sort("Type"),lit(",")),lit(")"),lit("cil"),lit("managed"),lit("{"),iter-star(sort("Statement")),lit("}")],sort("Method"),attrs([term(cons("Constructor")),prefer])),prod([lit(".method"),iter-star(sort("MethodAccess")),lit("static"),sort("Type"),sort("MethodName"),lit("("),iter-star-sep(sort("Type"),lit(",")),lit(")"),lit("{"),sort("EntryPoint"),iter-star(sort("Statement")),lit("}")],sort("Method"),attrs([term(cons("MainMethod")),prefer])),prod([lit(".method"),iter-star(sort("MethodAccess")),sort("Type"),sort("MethodName"),lit("("),iter-star-sep(sort("Type"),lit(",")),lit(")"),lit("{"),iter-star(sort("Statement")),lit("}")],sort("Method"),attrs([term(cons("Method"))])),prod([lit("public")],sort("MethodAccess"),attrs([term(cons("PUBLIC"))])),prod([lit("specialname")],sort("MethodAccess"),attrs([term(cons("SPECIALNAME"))])),prod([lit("rtspecialname")],sort("MethodAccess"),attrs([term(cons("RTSPECIALNAME"))])),prod([lit(".entrypoint")],sort("EntryPoint"),attrs([term(cons("EntryPoint"))]))])),context-free-syntax([prod([sort("CONTENTCOMPLETE")],sort("Method"),attrs([term(cons("COMPLETION-Method"))])),prod([sort("CONTENTCOMPLETE")],sort("MethodAccess"),attrs([term(cons("COMPLETION-MethodAccess"))])),prod([sort("CONTENTCOMPLETE")],sort("EntryPoint"),attrs([term(cons("COMPLETION-EntryPoint"))]))])))]),module(unparameterized("general/CIL-Component"),[imports([module(unparameterized("general/CIL-Class")),module(unparameterized("general/CIL-Method"))])],[exports(conc-grammars(conc-grammars(sorts([sort("Component")]),context-free-syntax([prod([sort("Method")],sort("Component"),attrs([])),prod([sort("Class")],sort("Component"),attrs([]))])),context-free-syntax([prod([sort("CONTENTCOMPLETE")],sort("Component"),attrs([term(cons("COMPLETION-Component"))]))])))]),module(unparameterized("general/CIL-Field"),[],[exports(conc-grammars(conc-grammars(sorts([sort("Field")]),context-free-syntax([prod([],sort("Field"),attrs([term(cons("Filed"))]))])),context-free-syntax([prod([sort("CONTENTCOMPLETE")],sort("Field"),attrs([term(cons("COMPLETION-Field"))]))])))]),module(unparameterized("general/CIL-Header"),[imports([module(unparameterized("lex/CIL-Names"))])],[exports(conc-grammars(conc-grammars(sorts([sort("CILHeader")]),context-free-syntax([prod([sort("CallExternal"),sort("Property")],sort("CILHeader"),attrs([term(cons("Header"))])),prod([lit(".assembly"),lit("extern"),lit("mscorlib"),lit("{}")],sort("CallExternal"),attrs([term(cons("CallExternal"))])),prod([lit(".assembly"),sort("ClassName"),lit("{"),iter-star(sort("ClassName")),lit("}")],sort("Property"),attrs([term(cons("Property"))]))])),context-free-syntax([prod([sort("CONTENTCOMPLETE")],sort("CILHeader"),attrs([term(cons("COMPLETION-CILHeader"))])),prod([sort("CONTENTCOMPLETE")],sort("CallExternal"),attrs([term(cons("COMPLETION-CallExternal"))])),prod([sort("CONTENTCOMPLETE")],sort("Property"),attrs([term(cons("COMPLETION-Property"))]))])))]),module(unparameterized("general/CIL-Statement"),[imports([module(unparameterized("general/CIL-Directive")),module(unparameterized("lex/CIL-Names")),module(unparameterized("general/CIL-Call"))])],[exports(conc-grammars(conc-grammars(sorts([sort("Statement")]),context-free-syntax([prod([sort("Directive")],sort("Statement"),attrs([])),prod([sort("Label")],sort("Statement"),attrs([])),prod([sort("Call")],sort("Statement"),attrs([])),prod([sort("LabelName"),lit(":")],sort("Label"),attrs([]))])),context-free-syntax([prod([sort("CONTENTCOMPLETE")],sort("Statement"),attrs([term(cons("COMPLETION-Statement"))])),prod([sort("CONTENTCOMPLETE")],sort("Label"),attrs([term(cons("COMPLETION-Label"))]))])))]),module(unparameterized("general/CIL-Type"),[],[exports(conc-grammars(conc-grammars(sorts([sort("Type")]),context-free-syntax([prod([lit("int32")],sort("Type"),attrs([term(cons("Int"))])),prod([lit("void")],sort("Type"),attrs([term(cons("Void"))]))])),context-free-syntax([prod([sort("CONTENTCOMPLETE")],sort("Type"),attrs([term(cons("COMPLETION-Type"))]))])))]),module(unparameterized("lex/CIL-WhiteSpace"),[],[exports(conc-grammars(conc-grammars(lexical-syntax([prod([char-class(simple-charclass(present(conc(short("\\ "),conc(short("\\t"),conc(short("\\n"),short("\\r")))))))],layout,attrs([])),prod([lit(";"),char-class(simple-charclass(present(conc(short("\\n"),short("\\r")))))],layout,attrs([])),prod([lit(";"),char-class(simple-charclass(present(conc(short("\\ "),short("\\t"))))),iter-star(char-class(comp(simple-charclass(present(conc(short("\\n"),short("\\r"))))))),alt(char-class(simple-charclass(present(conc(short("\\n"),short("\\r"))))),sort("EOF"))],layout,attrs([])),prod([],sort("EOF"),attrs([]))]),lexical-restrictions([follow([sort("EOF")],single(char-class(comp(simple-charclass(absent)))))])),context-free-restrictions([follow([opt(layout)],single(char-class(simple-charclass(present(conc(short("\\ "),conc(short("\\t"),conc(short("\\n"),short("\\r"))))))))),follow([opt(layout)],single(seq(simple-charclass(present(short("\\;"))),single(char-class(simple-charclass(present(conc(short("\\ "),short("\\t"))))))))),follow([opt(layout)],single(seq(simple-charclass(present(short("\\;"))),single(char-class(simple-charclass(present(conc(short("\\n"),short("\\r")))))))))])))]),module(unparameterized("lex/CIL-Numbers"),[],[exports(conc-grammars(conc-grammars(conc-grammars(sorts([sort("Constant"),sort("Int")]),lexical-syntax([prod([char-class(simple-charclass(present(range(short("0"),short("9"))))),iter-star(char-class(simple-charclass(present(range(short("0"),short("9"))))))],sort("Int"),attrs([]))])),lexical-restrictions([follow([sort("Int")],single(char-class(simple-charclass(present(range(short("0"),short("9")))))))])),context-free-syntax([prod([sort("Int")],sort("Constant"),attrs([]))])))]),module(unparameterized("lex/CIL-Names"),[imports([module(unparameterized("lex/CIL-Numbers"))])],[exports(conc-grammars(conc-grammars(conc-grammars(conc-grammars(conc-grammars(conc-grammars(conc-grammars(conc-grammars(sorts([sort("Identifier"),sort("SQIdentifier"),sort("QualifiedName"),sort("LabelName"),sort("ClassName"),sort("FieldName"),sort("MethodName"),sort("ClassRef"),sort("VarRef"),sort("LabelRef"),sort("FRef"),sort("MRef")]),lexical-syntax([prod([char-class(simple-charclass(present(conc(range(short("A"),short("Z")),range(short("a"),short("z")))))),iter-star(char-class(simple-charclass(present(conc(range(short("A"),short("Z")),conc(range(short("a"),short("z")),conc(range(short("0"),short("9")),short("\\_"))))))))],sort("Identifier"),attrs([])),prod([sort("Identifier")],sort("SQIdentifier"),attrs([])),prod([lit("'"),sort("Identifier"),lit("'")],sort("SQIdentifier"),attrs([])),prod([iter-sep(sort("Identifier"),lit("."))],sort("QualifiedName"),attrs([])),prod([iter(char-class(comp(simple-charclass(present(conc(short("\\="),conc(short("\\:"),conc(short("\\."),conc(short("\\\""),conc(short("\\-"),conc(short("\\ "),conc(short("\\t"),conc(short("\\n"),short("\\r"))))))))))))))],sort("LabelName"),attrs([])),prod([lit("extern")],sort("Identifier"),attrs([reject])),prod([lit("mscorlib")],sort("Identifier"),attrs([reject])),prod([lit("assembly")],sort("Identifier"),attrs([reject])),prod([lit("extern")],sort("LabelName"),attrs([reject])),prod([lit("mscorlib")],sort("LabelName"),attrs([reject])),prod([lit("assembly")],sort("LabelName"),attrs([reject])),prod([lit("ret")],sort("LabelName"),attrs([reject])),prod([lit("ret")],sort("Identifier"),attrs([reject])),prod([lit("call")],sort("LabelName"),attrs([reject])),prod([lit("call")],sort("Identifier"),attrs([reject])),prod([lit("void")],sort("LabelName"),attrs([reject])),prod([lit("void")],sort("Identifier"),attrs([reject])),prod([lit("int32")],sort("LabelName"),attrs([reject])),prod([lit("int32")],sort("Identifier"),attrs([reject])),prod([lit("[mscorlib]")],sort("LabelName"),attrs([reject])),prod([lit("[mscorlib]")],sort("Identifier"),attrs([reject]))])),lexical-restrictions([follow([sort("Identifier")],single(char-class(simple-charclass(present(conc(range(short("a"),short("z")),conc(range(short("A"),short("Z")),conc(range(short("0"),short("9")),short("\\_"))))))))),follow([sort("LabelName")],single(char-class(comp(simple-charclass(present(conc(short("\\="),conc(short("\\:"),conc(short("\\."),conc(short("\\\""),conc(short("\\-"),conc(short("\\ "),conc(short("\\t"),conc(short("\\n"),short("\\r")))))))))))))))])),context-free-syntax([prod([sort("QualifiedName")],sort("ClassName"),attrs([])),prod([sort("Identifier")],sort("FieldName"),attrs([])),prod([sort("Identifier")],sort("MethodName"),attrs([])),prod([sort("SQIdentifier")],sort("VarName"),attrs([])),prod([sort("Identifier")],sort("VarName"),attrs([]))])),context-free-syntax([prod([sort("CONTENTCOMPLETE")],sort("ClassName"),attrs([term(cons("COMPLETION-ClassName"))])),prod([sort("CONTENTCOMPLETE")],sort("FieldName"),attrs([term(cons("COMPLETION-FieldName"))])),prod([sort("CONTENTCOMPLETE")],sort("MethodName"),attrs([term(cons("COMPLETION-MethodName"))])),prod([sort("CONTENTCOMPLETE")],sort("VarName"),attrs([term(cons("COMPLETION-VarName"))]))])),context-free-syntax([prod([sort("ClassName")],sort("ClassRef"),attrs([term(cons("CRef"))])),prod([sort("Int")],sort("VarRef"),attrs([term(cons("VarNum"))])),prod([sort("LabelName")],sort("LabelRef"),attrs([term(cons("LabelRef"))])),prod([sort("FieldName")],sort("FRef"),attrs([term(cons("FRef"))])),prod([sort("MethodName")],sort("MRef"),attrs([term(cons("MRef"))]))])),context-free-syntax([prod([sort("CONTENTCOMPLETE")],sort("ClassRef"),attrs([term(cons("COMPLETION-ClassRef"))])),prod([sort("CONTENTCOMPLETE")],sort("VarRef"),attrs([term(cons("COMPLETION-VarRef"))])),prod([sort("CONTENTCOMPLETE")],sort("LabelRef"),attrs([term(cons("COMPLETION-LabelRef"))])),prod([sort("CONTENTCOMPLETE")],sort("FRef"),attrs([term(cons("COMPLETION-FRef"))])),prod([sort("CONTENTCOMPLETE")],sort("MRef"),attrs([term(cons("COMPLETION-MRef"))]))])),syntax([])),context-free-syntax([prod([lit("byte")],sort("BaseTypeName"),attrs([term(cons("ByteName"))])),prod([lit("char")],sort("BaseTypeName"),attrs([term(cons("CharName"))])),prod([lit("double")],sort("BaseTypeName"),attrs([term(cons("DoubleName"))])),prod([lit("float")],sort("BaseTypeName"),attrs([term(cons("FloatName"))])),prod([lit("int")],sort("BaseTypeName"),attrs([term(cons("IntName"))])),prod([lit("long")],sort("BaseTypeName"),attrs([term(cons("LongName"))])),prod([lit("short")],sort("BaseTypeName"),attrs([term(cons("ShortName"))])),prod([lit("boolean")],sort("BaseTypeName"),attrs([term(cons("BooleanName"))]))])))]),module(unparameterized("Common"),[],[exports(conc-grammars(conc-grammars(lexical-syntax([prod([char-class(simple-charclass(present(conc(range(short("a"),short("z")),range(short("A"),short("Z")))))),iter-star(char-class(simple-charclass(present(conc(range(short("a"),short("z")),conc(range(short("A"),short("Z")),range(short("0"),short("9"))))))))],sort("ID"),attrs([])),prod([opt(lit("-")),iter(char-class(simple-charclass(present(range(short("0"),short("9"))))))],sort("INT"),attrs([])),prod([lit("\\\""),iter-star(sort("StringChar")),lit("\\\"")],sort("STRING"),attrs([])),prod([char-class(comp(simple-charclass(present(conc(short("\\\""),short("\\n"))))))],sort("StringChar"),attrs([])),prod([lit("\\\\\\\"")],sort("StringChar"),attrs([])),prod([sort("BackSlashChar")],sort("StringChar"),attrs([])),prod([lit("\\\\")],sort("BackSlashChar"),attrs([])),prod([char-class(simple-charclass(present(conc(short("\\ "),conc(short("\\t"),conc(short("\\n"),short("\\r")))))))],layout,attrs([])),prod([char-class(simple-charclass(present(short("\\*"))))],sort("CommentChar"),attrs([])),prod([lit("/*"),iter-star(alt(char-class(comp(simple-charclass(present(short("\\*"))))),sort("CommentChar"))),lit("*/")],layout,attrs([])),prod([lit("//"),iter-star(char-class(comp(simple-charclass(present(conc(short("\\n"),short("\\r"))))))),alt(char-class(simple-charclass(present(conc(short("\\n"),short("\\r"))))),sort("EOF"))],layout,attrs([])),prod([],sort("EOF"),attrs([]))]),lexical-restrictions([follow([sort("CommentChar")],single(char-class(simple-charclass(present(short("\\/")))))),follow([sort("INT")],single(char-class(simple-charclass(present(range(short("0"),short("9"))))))),follow([sort("ID")],single(char-class(simple-charclass(present(conc(range(short("a"),short("z")),conc(range(short("A"),short("Z")),conc(range(short("0"),short("9")),short("\\_"))))))))),follow([sort("EOF")],single(char-class(comp(simple-charclass(absent))))),follow([sort("BackSlashChar")],single(char-class(simple-charclass(present(short("\\\""))))))])),context-free-restrictions([follow([opt(layout)],single(char-class(simple-charclass(present(conc(short("\\ "),conc(short("\\t"),conc(short("\\n"),short("\\r"))))))))),follow([opt(layout)],single(seq(simple-charclass(present(short("\\/"))),single(char-class(simple-charclass(present(short("\\/")))))))),follow([opt(layout)],single(seq(simple-charclass(present(short("\\/"))),single(char-class(simple-charclass(present(short("\\*"))))))))])))]),module(unparameterized("CIL"),[imports([module(unparameterized("Common")),module(unparameterized("lex/CIL-Names")),module(unparameterized("lex/CIL-Numbers")),module(unparameterized("lex/CIL-WhiteSpace")),module(unparameterized("general/CIL-Type")),module(unparameterized("general/CIL-Statement")),module(unparameterized("general/CIL-Header")),module(unparameterized("general/CIL-Field")),module(unparameterized("general/CIL-Component")),module(unparameterized("general/CIL-Method")),module(unparameterized("general/CIL-Directive")),module(unparameterized("general/CIL-Class")),module(unparameterized("general/CIL-CilFILE")),module(unparameterized("general/CIL-Call"))])],[exports(conc-grammars(context-free-start-symbols([sort("Start"),sort("Identifier"),sort("SQIdentifier"),sort("QualifiedName"),sort("LabelName"),sort("ClassName"),sort("FieldName"),sort("MethodName"),sort("ClassRef"),sort("VarRef"),sort("LabelRef"),sort("FRef"),sort("MRef"),sort("Constant"),sort("Int"),sort("Type"),sort("Statement"),sort("Method"),sort("CILHeader"),sort("Field"),sort("Directive"),sort("Component"),sort("Class"),sort("CilFILE"),sort("Call")]),context-free-syntax([prod([sort("CilFILE")],sort("Start"),attrs([]))])))])])