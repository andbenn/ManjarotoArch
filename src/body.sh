#!/usr/bin/env bash
#some env stuff for more support
# https://www.gnu.org/licenses/old-licenses/gpl-2.0.html, from mariuszkurek/convert.sh
#I personally wanted to use the MIT or BSD-2 clause to not get sued, but the original one uses gpl2

__PRESCRIPT__

##/dev/null part is to mute meaningless stderr caused by cat's vulnerability
cat >/tmp/convert.sh 2>/dev/null <<EOF

__CONVERTSCRIPT__

EOF

chmod +x /tmp/convert.sh
sudo /tmp/convert.sh 2>/dev/null

__POSTSCRIPT__

rm /tmp/convert.sh
