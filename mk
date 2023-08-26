#!/bin/bash
read -e -p "Enter the name of the file: " name

echo '#!/bin/bash' > $name

chmod u+x $name

vim $name
