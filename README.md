Wikipedia - Infos
=================

./show_intersections.sh -a "Category:Computer_science" "Category:Mathematics" | ./get_authors_count.sh | sort -gr | less

./find_authors.sh "bot" | ./get_authors_count.sh | sort -gr | less

./show_author_count.sh 1 "bot" | less

./show_author_count.sh -m 0 "bot"

ls "authors_pages/" | ./get_authors_count.sh | sort -gr | less

./show_author.sh "namehere"

./show_page.sh "namehere"
