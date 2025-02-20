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

# Simone LeFavour's Submission 
cat_art() {
    echo "             *     ,MMM8&&&.            *"
    echo "                  MMMM88&&&&&    ."
    echo "     *           MMM88&&&&&&&&"
    echo "                 MMM88&&&&&&&&"
    echo "                 'MMM88&&&&&&'"
    echo "                   'MMM8&&&'      *"
    echo "          |\___/|"
    echo "          )     (             .              '"
    echo "         =\     /="
    echo "           )===(       *"
    echo "          /     \\"
    echo "          |     |"
    echo "         /       \\"
    echo "         \\       /"
    echo "  _/\_/\_/\__  _/_/\_/\_/\_/\_/\_/\_/\_/\_/\_"
    echo "  |  |  |  |( (  |  |  |  |  |  |  |  |  |  |"
    echo "  |  |  |  | ) ) |  |  |  |  |  |  |  |  |  |"
    echo "  |  |  |  |(_(  |  |  |  |  |  |  |  |  |  |"
    echo "  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |"
}

#Anika Krieger Submission
cactus_art() {
echo "             __                           "
echo "            /| \                                          "
echo "            || |                          "
echo "            || |   _                          "
echo "            || |  | |                     "
echo "            || '--' |                     "
echo "      __    || .----'                     "
echo "     || |   || |                          "
echo "     |  '---'| |                          "
echo "     '------.| |                                  _____       "
echo "     ((_))  || |                                 / /|\ \      "
echo "     (o o)  || |     ( ))(( )                    | | | |          "
echo "  ____\_/___||_|_____((__^_))____________________\_\|/_/__    "
echo "                                  "
echo "                                  "
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
elif [ "$artName" == "cat" ]
then
    cat_art
elif [ "$artName" == "cactus" ]
then
    cactus_art

else
    echo "FAILURE: No such art name."
    echo "Valid art names:"
    echo "    * clover"
    echo "    * squiggle"
    echo "    * show"
    echo "    * cat"
    echo "    * cactus"
    exit 1
fi
