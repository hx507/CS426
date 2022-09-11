diff --color=always <(../reference-binaries/lexer $1| ../reference-binaries/parser) <(make parser && ./lexer $1| ./parser)
../reference-binaries/lexer $1| ../reference-binaries/parser > parser_truth
make parser && ./lexer $1| ./parser > parser_student
