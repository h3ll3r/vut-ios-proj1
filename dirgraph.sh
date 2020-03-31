i_arg="*"
n_arg=0
ND=0
NF=0

while getopts :i:n opt
do      
    case "$opt" in
        i)      i_arg=$OPTARG;;
        n)      n_arg=1;;
        *)      echo "Use option i with parameter or n" >&2
                exit 1;;
    esac
done

shift "$((OPTIND-1))"

if [ -z $1 ]; then
    root_arg=$PWD   
else
    root_arg=$1
fi

if [ "$i_arg" != "*" ]; then
    echo "i_arg: $i_arg"
else
    echo "i_arg: $i_arg"
fi

for file in $root_arg/*
do
    if [ -f "$file" ]; then
        echo "-f $(egrep '.*/' $file)"
        ((NF++))
    elif [ -d "$file" ]; then
        echo "-d $file"
        ((ND++))
    fi
done
# echo "Ignore attern: $i_arg"
# echo "Root arg: $root_arg"

echo "Root directory: $root_arg"
echo "Directories: $(find -E $root_arg -regex '.*/')"
echo "All files: $NF"

# echo "File size histogram:"
