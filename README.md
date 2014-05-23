Wikipedia - Infos
=================

Use the following command to start crawling of a prepared set of categories. This
command also creates interlinkage between authors and pages.

`./crawl_all.sh`

The following command finds all authors that edited articles in the categories
Computer Science and Mathematics. Bot authors are excluded and the results are
sorted by the number of distinct articles the users edited.

`./show_intersections.sh -a "Category:Computer_science" "Category:Mathematics" | grep -v "[Bb][Oo][Tt]" | ./get_authors_count.sh | sort -gr | less`

     204 Michael Hardy
     148 Jpbowen
     131 Charles Matthews
     117 Rich Farmbrough
     106 Giftlite
      93 Miym
      91 David Eppstein
      82 Oleg Alexandrov
      75 Guillaume2303
      72 Salix alba
      70 Mdd
      69 Headbomb
      65 Gregbard
      60 Pegship
      58 Wavelength
      51 Fadesga
      50 CBM
      46 Tim!
      45 Martarius
      45 CommonsDelinker
      44 Edward
      40 John
      36 Tobias Bergemann
      ...

Sorts all authors that are not bots descending by the number of distinct edited articles.

`./find_authors.sh | grep -v "[Bb][Oo][Tt]" | ./get_authors_count.sh | sort -gr | less`

     204 Michael Hardy
     148 Rjwilmsi
     148 Jpbowen
     131 Charles Matthews
     117 Ruud Koot
     117 Rich Farmbrough
     106 Giftlite
      93 Miym
      91 Woohookitty
      91 David Eppstein
      83 BD2412
      82 Oleg Alexandrov
      80 ChrisGualtieri
      79 R'n'B
      75 Omnipaedista
      75 Guillaume2303
      73 Bender235
      72 Salix alba
      70 Mdd
      69 Headbomb
      66 D6
      65 Gregbard
      64 Lquilter
      ...

Counts the number of bots.

`./find_authors.sh | grep "[Bb][Oo][Tt]" | ./get_authors_count.sh | wc -l`

    395

Shows the number of distinct articles edited by the bots sorted descending by this number.

`./find_authors.sh | grep "[Bb][Oo][Tt]" | ./get_authors_count.sh | sort -gr | less`

     556 Addbot
     411 SmackBot
     289 Yobot
     286 Cydebot
     218 Luckas-bot
     213 EmausBot
     190 ClueBot NG
     183 Helpful Pixie Bot
     171 Lightbot
     169 ZéroBot
     169 AnomieBOT
     150 FrescoBot
     147 Xqbot
     142 YurikBot
     141 RussBot
     140 TXiKiBoT
     134 ClueBot
     126 VolkovBot
     113 RjwilmsiBot
     106 Thijs!bot
     105 Bluebot
     100 Chobot
      97 SieBot

Shows all authors that edited at most one distinct article and excludes all bots.

`./show_author_count.sh 1 "[Bb][Oo][Tt]" | less`

Counts all authors that edited at most one distinct article excluding all bots.

`./show_author_count.sh 1 "[Bb][Oo][Tt]" | wc -l`

   16431

Computes the maximal number of distinct articles edited by one user that is not a bot.
The zero is used to create no output by excluding all authors from the output list.

`./show_author_count.sh -m 0 "[Bb][Oo][Tt]"`

Sorts all authors by the number of distinct edited articles.

`./find_authors.sh | ./get_authors_count.sh | sort -gr | less`

     556 Addbot
     411 SmackBot
     289 Yobot
     286 Cydebot
     218 Luckas-bot
     213 EmausBot
     204 Michael Hardy
     190 ClueBot NG
     183 Helpful Pixie Bot
     171 Lightbot
     169 ZéroBot
     169 AnomieBOT
     150 FrescoBot
     148 Rjwilmsi
     148 Jpbowen
     147 Xqbot
     142 YurikBot
     141 RussBot
     140 TXiKiBoT
     134 ClueBot
     131 Charles Matthews
     126 VolkovBot
     117 Ruud Koot
     117 Rich Farmbrough
     113 RjwilmsiBot
     106 Thijs!bot
     106 Giftlite
     105 Bluebot
     100 Chobot
      97 SieBot
      97 Citation bot
      95 FlaBot
      93 Miym
      91 Woohookitty
      91 JAnDbot
      91 David Eppstein
      88 CmdrObot
      83 BD2412
      82 Oleg Alexandrov
      80 ChrisGualtieri
      79 R'n'B
      78 Mathbot
      77 Alexbot
      75 Omnipaedista
      75 Guillaume2303
      73 Bender235
      ...

Shows the author Michael Hardy.

`./show_author.sh "Michael Hardy"`

    Author: Michael Hardy
    Page: http://en.wikipedia.org/wiki/User:Michael Hardy
    Edits:
       1 0.999...
       1 A_History_of_Vector_Analysis
       1 Abel_Prize
       1 Académie_française
       1 Adrian_Smith_(statistician)
       1 Alan_Turing_Year
       1 Algorithmic_Number_Theory_Symposium
       1 American_Journal_of_Mathematics
       1 American_Mathematical_Monthly
       1 An_Introduction_to_the_Theory_of_Numbers
       1 Anathem
       1 Anthropology_&amp;_Education_Quarterly
       1 Anti-racism_in_mathematics_teaching
       1 Applied_Mathematics_Panel
       1 Archaic_Greece
       1 Arithmetica_Universalis
       1 Ars_Conjectandi
       1 Banach–Tarski_paradox
       1 Bell_Labs
       1 Bob_Sproull
       ...

Shows the author Rjwilmsi

`./show_author.sh "Rjwilmsi"`

    Author: Rjwilmsi
    Page: http://en.wikipedia.org/wiki/User:Rjwilmsi
    Edits:
       1 ACM_Computing_Surveys
       1 ACM_Multimedia
       1 ACM_Transactions_on_Database_Systems
       1 ACM_Transactions_on_Graphics
       1 Abramowitz_and_Stegun
       1 American_Journal_of_Mathematics
       1 Annales_Henri_Poincaré
       1 Annals_of_Mathematics
       1 Annunciation_(van_Eyck,_Washington)
       1 Anti-racism_in_mathematics_teaching
       1 Arcadia_(play)
       1 Ars_Conjectandi
       1 Artificial_Intelligence_(journal)
       1 Association_for_the_Advancement_of_Artificial_Intelligence
       1 Association_of_University_Technology_Managers
       1 Bakhshali_manuscript
       1 Banach–Tarski_paradox
       1 Bell_Labs
       1 Brazilian_Carnival
       1 British_Computer_Society
       ...

Shows the categories of the articles edited by Rjwilmsi. The part before
`./show_author_cat.sh` extracts the articles edited by this user.

`./show_author.sh "Rjwilmsi" | tail -n +3 | sed 's/^ *//' | cut -d' ' -f2 | ./show_author_cat.sh | sort -u`

Shows the authors that edited the article Banach–Tarski_paradox.

`./show_page.sh "Banach–Tarski_paradox"`

    Page: Banach–Tarski_paradox
    Link: http://en.wikipedia.org/wiki/Banach–Tarski_paradox
    Authors:
    213.253.39.xxx
    ABCD
    Adavidb
    Addbot
    Aetheling
    Alexbot
    AlleborgoBot
    Altenmann
    Amirki
    Andres
    Andrewbadr
    Andrewbt
    Andrey Petrov
    Ankurdave
    AnomieBOT
    Arcfrk
    ArnoldReinhold
    Arthena
    Arthur Rubin
    Auric
    ...

Shows the category of the article Banach–Tarski_paradox.

`./find_cat.sh "Banach–Tarski_paradox"`

    Category:Mathematics

Shows the categories of the articles edited by Michael Hardy. The part before
`./show_author_cat.sh` extracts the articles edited by this user.

`./show_author.sh "Michael Hardy" | tail -n +3 | sed 's/^ *//' | cut -d' ' -f2 | ./show_author_cat.sh | sort -u`

    Category:Computer_science
    Category:Mathematics
    Category:Social_sciences

Shows the categories of the articles edited by ABCD. The part before
`./show_author_cat.sh` extracts the articles edited by this user.

`./show_author.sh "ABCD" | tail -n +3 | sed 's/^ *//' | cut -d' ' -f2 | ./show_author_cat.sh | sort -u`

    Category:Mathematics

Shows the articles edited by Free Software Knight.

`./show_author.sh "Free Software Knight"`

    Author: Free Software Knight
    Page: http://en.wikipedia.org/wiki/User:Free Software Knight
    Edits:
       1 Journal_of_Artificial_Intelligence_Research
       1 Journal_of_Machine_Learning_Research
       1 Journal_of_Statistical_Software
       1 List_of_numerical_analysis_software

Shows the articles edited by Acs4b.

`./show_author.sh "Acs4b"`

    Author: Acs4b
    Page: http://en.wikipedia.org/wiki/User:Acs4b
    Edits:
       1 Category:Literature
       1 Journal_of_Artificial_Intelligence_Research
       1 Journal_of_Machine_Learning_Research
       1 Journal_of_Statistical_Software

Shows the authors that edited Journal_of_Artificial_Intelligence_Research.

`./show_page.sh "Journal_of_Artificial_Intelligence_Research"`

Shows the authors that only edited articles in the category Mathematics and are not
bots. Note that this operation takes a while.

`./show_unique.sh -a "Category:Mathematics" | grep -v "[Bb][Oo][Tt]" | ./get_authors_count.sh | sort -gr | less`

      40 John
      10 Ap
       9 Leibniz
       7 0
       6 Siddhant
       5 Mac
       4 D
       3 as
       3 Gauss
       2 s
       2 S
       2 Peter
       2 O
       2 Mu
       2 Conti
       2 Ab
       2 999
       2 (
       1 one
       1 m
       1 h
       1 b
       1 Will
       ...

Shows all articles edited by John.

`./show_author.sh "John"`

    Author: John
    Page: http://en.wikipedia.org/wiki/User:John
    Edits:
       1 Abramowitz_and_Stegun
       1 Categories_for_the_Working_Mathematician
       1 Centre_Georges_Pompidou
       1 Charles_Rennie_Mackintosh
       1 Compilers:_Principles,_Techniques,_and_Tools
       1 Computer_Graphics:_Principles_and_Practice
       1 Concepts,_Techniques,_and_Models_of_Computer_Programming
       1 Concrete_Mathematics
       1 Constance_Kamii
       1 Counterexamples_in_Topology
       1 Cryptonomicon
       1 Daniel_J._Bernstein
       1 Discourse_on_the_Method
       1 Disquisitiones_Arithmeticae
       1 Dunning–Kruger_effect
       1 Evolution_and_the_Theory_of_Games
       1 Flatland
       1 G._H._Hardy
       1 Gödel,_Escher,_Bach
       1 Introduction_to_Automata_Theory,_Languages,_and_Computation
       1 John_G._Kemeny
       1 John_Ruskin
       1 Lions'_Commentary_on_UNIX_6th_Edition,_with_Source_Code
       1 Martin_Gardner
       1 Measuring_the_World
       1 Opticks
       1 Persian_literature
       1 Prime_Obsession
       1 Public_administration
       1 Structure_and_Interpretation_of_Computer_Programs
       1 The_Annotated_Turing
       1 The_Art_of_Computer_Programming
       1 The_Emperor's_New_Mind
       1 The_Music_of_the_Primes
       1 Theory_of_Games_and_Economic_Behavior
       1 Two_New_Sciences
       1 aristocracy
       1 culture_of_India
       1 fashion_design
       1 mathematics_education
