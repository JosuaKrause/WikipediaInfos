Wikipedia - Infos
=================

./show_intersections.sh -a "Category:Computer_science" "Category:Mathematics" | grep -v "[Bb][Oo][Tt]" | ./get_authors_count.sh | sort -gr | less

./find_authors.sh | grep -v "[Bb][Oo][Tt]" | ./get_authors_count.sh | sort -gr | less

./show_author_count.sh 1 "[Bb][Oo][Tt]" | less

./show_author_count.sh -m 0 "[Bb][Oo][Tt]"

./find_authors.sh | ./get_authors_count.sh | sort -gr | less

./show_author.sh "namehere"

./show_page.sh "namehere"
