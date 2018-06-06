if [ ! -e diff ]; then
    mkdir diff
fi

git show master:$1 > diff/$1
latexdiff diff/$1 $1  > diff/diff.tex
rm diff/$1