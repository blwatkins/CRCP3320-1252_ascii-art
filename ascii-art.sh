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

welcome_to_the_show() {
    echo "      W E L C O M E   "
    echo "             T O    "
    echo "                 T H E     "
    echo "                     S H O W     "
    echo "        `        *         *         `      "
    echo "  / __       __       __       __     __ \  "
    echo "                                            "
    echo "      (●ˇ∀ˇ●)      (ﾉ◕ヮ◕)ﾉ*:･ﾟ✧            "
    echo "      ~~~~~~~      --------                 "
    echo "          (✪ ω ✪)              (;´༎ຶД༎ຶ`)     "
    echo "____________________________________________"
    echo " | |    o        `     --        .       | |"
    echo " | | '      @        ()             *    | |"
    echo " | |     !        ~              ~       | |"
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
elif [ "$artName" == "show" ]
then
    welcome_to_the_show
else
    echo "FAILURE: No such art name."
    echo "Valid art names:"
    echo "    clover"
    echo "    squiggle"
    exit 1
fi
