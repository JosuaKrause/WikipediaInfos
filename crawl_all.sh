#!/bin/sh

./crawl_authors.sh "Category:Social_sciences" "Category:Social_sciences" 2
./compact.sh Social_sciences
./crawl_authors.sh "Category:Computer_science" "Category:Computer_science" 2
./compact.sh Computer_science
#./crawl_authors.sh Category:Information_technology Category:Information_technology 1
#./crawl_authors.sh "Category:Arts" "Category:Arts" 2
#./compact.sh Arts
./crawl_authors.sh "Category:Mathematics" "Category:Mathematics" 2
./compact.sh Mathematics
#./crawl_authors.sh "Category:Cryptography" "Category:Cryptography" 2
#./compact.sh Cryptography

./create_backlinks.sh
./show_cat.sh "Category:Social_sciences"
./show_cat.sh "Category:Computer_science"
#./show_cat.sh "Category:Arts"
./show_cat.sh "Category:Mathematics"
#./show_cat.sh "Category:Cryptography"
