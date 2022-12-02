set -e

alloc(){
    ll_file=$1
    var=$(basename ${ll_file} .ll)
    ON=-O2

    set +e
    ../../../mp4_build/llvm-14.0.0.src/build/bin/llc -regalloc=simple -verify-machineinstrs ${var}.ll $ON -o ${var}.student.s &> /dev/null
    RESULT=$?
    if [ $RESULT != 0 ]; then
        echo Regalloc failed!
        set -e
        ../../../mp4_build/llvm-14.0.0.src/build/bin/llc -regalloc=simple -verify-machineinstrs -debug-only=regalloc $ON ${var}.ll
    fi
    ../../../mp4_build/llvm-14.0.0.src/build/bin/llc ${var}.ll -o ${var}.reference.s > /dev/null
    set -e
}

#for ll_file in [!mp3]*.ll
for ll_file in $(find . -name "*.ll" ! -name "mp3-*")
do
    echo Compiling file ${ll_file}:
    alloc ${ll_file}

    var=$(basename ${ll_file} .ll)
    set +e
    echo Expect:
    clang ${var}.reference.s  && ./a.out ; echo $?
    echo Actual:
    clang ${var}.student.s  && ./a.out ; echo $?
    set -e
    echo --------------------------------------------------------------------
done

echo ===================================================================
for ll_file in mp3*.ll
do
    echo Compiling file ${ll_file}:
    alloc ${ll_file}

    var=$(basename ${ll_file} .ll)
    set +e
    echo Expect:
    clang ${var}.reference.s coolrt.o -no-pie && ./a.out ; echo $?
    echo Actual:
    clang ${var}.student.s coolrt.o -no-pie && ./a.out ; echo $?
    set -e
    echo --------------------------------------------------------------------
done


#for ll_file in *.ll
#do
#var=$(basename ${ll_file} .ll)
#echo ${var}:
#echo Expect:
#clang ${var}.reference.s && ./a.out ; echo $?
#echo Actual:
#clang ${var}.student.s && ./a.out ; echo $?
#echo --------------------------------------------------------------------
#done

