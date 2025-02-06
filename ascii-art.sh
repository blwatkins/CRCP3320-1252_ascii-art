#!/bin/bash

brittni_art() {
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

if [ "$artName" == "brittni" ]
then
    brittni_art
else
    echo "FAILURE: No such art name."
    exit 1
fi
