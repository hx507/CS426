echo "Expected:"
make parser && ./lexer $1 | ../reference-binaries/parser
echo "==========================================================="
echo "Actual:"
make parser && ./lexer $1 | ./parser
