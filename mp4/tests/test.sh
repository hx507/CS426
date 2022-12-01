for var in "$@"
do
    echo ${var}:
    clang ${var}.s && ./a.out ; echo $?
done

