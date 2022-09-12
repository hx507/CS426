echo "==========================================================="
echo "Expected:"
make parser && ../reference-binaries/lexer $1 | ../reference-binaries/parser -v
echo "-----------------------------------------------------------"
echo "Actual:"
make parser && ./lexer $1 | ./parser -v
echo "==========================================================="
