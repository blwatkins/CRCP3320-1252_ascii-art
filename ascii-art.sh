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

# Joey Luu's Submission :D
welcome_to_the_show() {
    echo "      W E L C O M E   "
    echo "             T O    "
    echo "                 T H E     "
    echo "                     S H O W     "
    echo "        \`        *         *         \`      "
    echo "  / __       __       __       __     __ \  "
    echo "                                            "
    echo "      (●ˇ∀ˇ●)      (ﾉ◕ヮ◕)ﾉ*:･ﾟ✧            "
    echo "      ~~~~~~~      --------                 "
    echo "          (✪ ω ✪)              (;´༎ຶД༎ຶ\`)     "
    echo "____________________________________________"
    echo " | |    o        \`     --        .       | |"
    echo " | | '      @        ()             *    | |"
    echo " | |     !        ~              ~       | |"
}

# Max's submission
batman() {
    echo "          .  ."
    echo "          |\_|\ "
    echo "          | a_a\ "
    echo "          | | \"]"
    echo "      ____| '-\___"
    echo "     /.----.___.-'\ "
    echo "    //        _    \ "
    echo "   //   .-. (~v~) /|"
    echo "  |'|  /\:  .--  / \ "
    echo " // |-/  \_/____/\/~|"
    echo "|/  \ |  []_|_|_] \ |"
    echo "| \  | \ |___   _\ ]_}"
    echo "| |  '-' /   '.'  |"
    echo "| |     /    /|:  | "
    echo "| |     |   / |:  /\ "
    echo "| |     /  /  |  /  \ "
    echo "| |    |  /  /  |    \ "
    echo "\ |    |/\/  |/|/\    \ "
    echo " \|\ |\|  |  | / /\/\__\ "
    echo "  \ \| | /   | |__"
    echo "       / |   |____)"
    echo "       |_/"
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
elif [ "$artName" == "batman" ]
then
    batman
else
    echo "FAILURE: No such art name."
    echo "Valid art names:"
    echo "    * clover"
    echo "    * squiggle"
    echo "    * show"
    echo "    * batman"
    exit 1
fi
