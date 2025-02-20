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

# added by jaisannotjaxsxn
squirtle_art() {
    echo "             _,........__"
    echo "          ,-'            \"\`-."
    echo "        ,'                   \`-."
    echo "      ,'                        \\"
    echo "     ,'                          ."
    echo "     .'\\               ,\"\".      \`"
    echo "    ._.'|             / |  \`       \\"
    echo "    |   |            \`-.'  ||       \`."
    echo "    |   |            '-._,'||       | \\"
    echo "    .\`.,'             \`..,'.'       , |\`-."
    echo "    l                       .'\`.  _/  |   \`."
    echo "    \`-.._'-   ,          _ _'   -\" \\  .     \`"
    echo "\`.\"\"\"\"\"'-.\`-...,---------','         \`. \`....__."
    echo ".'        \`\"-..___      __,'\\          \\  \\     \\"
    echo "\\_ .          |   \`\"\"\"\"'    \`.           . \\     \\"
    echo "  \`.          |              \`.          |  .     L"
    echo "    \`.        |\`--...________.'.        j   |     |"
    echo "      \`._    .'      |          \`.     .|   ,     |"
    echo "         \`--,\\       .            \`7\"\"' |  ,      |"
    echo "            \` \`      \`            /     |  |      |    _,-'\"\"\"\`-."
    echo "             \\ \`.     .          /      |  '      |  ,'          \`."
    echo "              \\  v.__  .        '       .   \\    /| /              \\"
    echo "               \\/    \`\"\"\\\"\"\"\"\"\"\"\`.       \\   \\  /.''                |"
    echo "                \`        .        \`._ ___,j.  \`/ .-       ,---.     |"
    echo "                ,\`-.      \\         .\"     \`.  |/        j     \`    |"
    echo "               /    \`.     \\       /         \\ /         |     /    j"
    echo "              |       \`-.   7-.._ .          |\"          '         /"
    echo "              |          \`./_    \`|          |            .     _,'"
    echo "              \`.           / \`----|          |-............\`---'"
    echo "                \\          \\      |          |"
    echo "               ,'           )     \`.         |"
    echo "                7____,,..--'      /          |"
    echo "                                  \`---.__,--.'"
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
elif [ "$artName" == "squiggle" ]
then
    echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
elif [ "$artName" == "squirtle" ]   #added by jaisannotjaxsxn
then
    squirtle_art
else
    echo "FAILURE: No such art name."
    echo "Valid art names:"
    echo "    clover"
    echo "    squiggle"
    echo "    squirtle"
    exit 1
fi
