#!/bin/sh

./crawl.sh Category:Social_sciences 2 Category:Social_sciences
./compact.sh Social_sciences
./crawl.sh Category:Computer_science 2 Category:Computer_science
./compact.sh Computer_science
#./crawl.sh Category:Information_technology 2 Category:Information_technology
./crawl.sh Category:Arts 2 Category:Arts
./compact.sh Arts
./crawl.sh Category:Mathematics 2 Category:Mathematics
./compact.sh Mathematics
./crawl.sh Category:Cryptography 2 Category:Cryptography
./compact.sh Cryptography
