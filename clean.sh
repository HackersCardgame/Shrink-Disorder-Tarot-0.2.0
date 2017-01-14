#!/bin/bash

sudo apt-get purge clipit


#!/bin/bash

echo cleaning...

find assembled/ -name '*-*.svg' -exec rm '{}' \;
find pdf/ -type f -exec rm '{}' \;
find jpg/ -type f -exec rm '{}' \;
find png/ -type f -exec rm '{}' \;

echo "

  you shold reboot now or remove the clipit manually from the RAM

"
