alloc() {
    ll_file=$1
    var=$(basename ${ll_file} .ll)
    echo $var :
    NLOADS=$(../../../mp4_build/llvm-14.0.0.src/build/bin/llc -verify-machineinstrs -regalloc=simple -O0 -stats ${var}.ll 2>&1 | grep 'Number of loads added' | awk '{print $1}')
    NSTORE=$(../../../mp4_build/llvm-14.0.0.src/build/bin/llc -verify-machineinstrs -regalloc=simple -O0 -stats ${var}.ll 2>&1 | grep 'Number of stores added' | awk '{print $1}')
    ../../../mp4_build/llvm-14.0.0.src/build/bin/llc -regalloc=simple -verify-machineinstrs ${var}.ll $ON -o ${var}.student.s &> /dev/null
    if [[ "$NLOADS" = "" ]]; then
        NLOADS=0
    fi
    if [[ "$NSTORE" == "" ]]; then
        NSTORE=0
    fi
    echo load: $NLOADS
    echo store: $NSTORE
    echo ------------
    echo "$var,$NLOADS,$NSTORE -- stu" >> my.csv
}

echo 'test,load,store' > my.csv

#for ll_file in [!mp3]*.ll
for ll_file in $(find . -name "*.ll" ! -name "mp3-*")
do
    alloc ${ll_file}
done

for ll_file in mp3*.ll
do
    alloc ${ll_file}
done

sort reference.csv > reference.csv.sorted
sort my.csv > my.csv.sorted
(cat -n my.csv.sorted ; cat -n reference.csv.sorted )  | sort -n  | cut -f2-
