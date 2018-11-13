#!/usr/bin/bash
grep -rli $1 app-frontend/dist/ | xargs perl -pi.bak -e "s/$1/$2/g"
# find . -iname "*bak*" -exec rm -rf {} \;
