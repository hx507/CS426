diff --color=always <(../reference-binaries/lexer $1| ../reference-binaries/parser) <(make parser && ./lexer $1| ./parser)
