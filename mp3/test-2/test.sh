make $1.ll
../reference-binaries/cgen-2  -c < $1.ast > reference_{$1}.ll
echo "============================================================"
echo "Correct:"
cat reference_{$1}.ll
echo "============================================================"
echo "Student:"
cat $1.ll
echo "============================================================"
#echo "Difference"
#diff --color -u $1.ll reference_{$1}.ll
#echo "============================================================"
make $1.out && ./$1.exe
