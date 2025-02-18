#!/bin/bash

# added by brittni watkins
clover_art() {
    echo "        ,,,                      ,,,"
    echo "       {{{}}    ,,,             {{{}}    ,,,"
    echo "    ,,, ~Y~    {{{}},,,      ,,, ~Y~    {{{}},,,"
    echo "   {{}}} |/,,,  ~Y~{{}}}    {{}}} |/,,,  ~Y~{{}}}'"
    echo "    ~Y~ \|{{}}}/\|/ ~Y~  ,,, ~Y~ \|{{}}}/\|/ ~Y~  ,,,"
    echo "    \|/ \|/~Y~  \|,,,|/ {{}}}\|/ \|/~Y~  \|,,,|/ {{}}}"
    echo "    \|/ \|/\|/  \{{{}}/  ~Y~ \|/ \|/\|/  \{{{}}/  ~Y~"
    echo "    \|/\\\|/\|/ \\\|~Y~//  \|/ \|/\\\|/\|/ \\\|~Y~//  \|/"
    echo "    \|//\|/\|/,\\\|/|/|// \|/ \|//\|/\|/,\\\|/|/|// \|/"
    echo "jgs^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
}

# added by Allison Hart
aardvark_art() {
    
echo "       _.---._    /\\"
echo "     /'       \"--`\\//"
echo "   /              o \\          -----"
echo " / /\\  )______   \\__ \\        ( help! )"
echo " /  / /\\ \\    \\ \\  \\ \\       /`-----"
echo "   / /  \\ \\  | |\\ \\  \\7--- ooo ooo ooo ooo ooo ooo"
echo "       wWWWw               wWWWw"
echo " vVVVv (___) wWWWw         (___)  vVVVv"
echo " (___)  ~Y~  (___)  vVVVv   ~Y~   (___)"
echo "  ~Y~   \|    ~Y~   (___)    |/    ~Y~"
echo "  \|   \ |/   \| /  \~Y~/   \|    \ |/"
echo " \\|// \\|// \\|/// \\|//  \\|// \\\|///"
}


while getopts n: flag
do
    case "${flag}" in
        n) artName=${OPTARG};;
    esac
done

if [ -z "$artName" ]
then
    echo "FAILURE: No art name provided."
    exit 1
fi

echo "ASCII Art: $artName"

if [ "$artName" == "clover" ]
then
    clover_art
elif [ "$artName" == "aardvark" ]; then
    aardvark_art

else
    echo "FAILURE: No such art name."
    echo "Valid art names:"
    echo "    clover"
    echo "    aardvark"
    exit 1
fi


