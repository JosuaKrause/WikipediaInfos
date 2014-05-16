Wikipedia - Infos
=================

./show_intersections.sh -a "Category:Computer_science" "Category:Mathematics" | grep -v "[Bb][Oo][Tt]" | ./get_authors_count.sh | sort -gr | less

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

./find_authors.sh | grep -v "[Bb][Oo][Tt]" | ./get_authors_count.sh | sort -gr | less

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

./find_authors.sh | grep "[Bb][Oo][Tt]" | ./get_authors_count.sh | wc -l

    395

./find_authors.sh | grep "[Bb][Oo][Tt]" | ./get_authors_count.sh | sort -gr | less

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

./show_author_count.sh 1 "[Bb][Oo][Tt]" | less

./show_author_count.sh 1 "[Bb][Oo][Tt]" | wc -l

   16431

./show_author_count.sh -m 0 "[Bb][Oo][Tt]"

./find_authors.sh | ./get_authors_count.sh | sort -gr | less

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

./show_author.sh "Michael Hardy"

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

./show_author.sh "Rjwilmsi"

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

./show_author.sh "Rjwilmsi" | tail -n +3 | sed 's/^ *//' | cut -d' ' -f2 | ./show_author_cat.sh | sort -u

./show_page.sh "Banach–Tarski_paradox"

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

./find_cat.sh "Banach–Tarski_paradox"

Category:Mathematics

./show_author.sh "Michael Hardy" | tail -n +3 | sed 's/^ *//' | cut -d' ' -f2 | ./show_author_cat.sh | sort -u

Category:Computer_science
Category:Mathematics
Category:Social_sciences

./show_author.sh "ABCD" | tail -n +3 | sed 's/^ *//' | cut -d' ' -f2 | ./show_author_cat.sh | sort -u

Category:Mathematics

./show_author.sh "Free Software Knight"

Author: Free Software Knight
Page: http://en.wikipedia.org/wiki/User:Free Software Knight
Edits:
   1 Journal_of_Artificial_Intelligence_Research
   1 Journal_of_Machine_Learning_Research
   1 Journal_of_Statistical_Software
   1 List_of_numerical_analysis_software

./show_author.sh "Acs4b"

Author: Acs4b
Page: http://en.wikipedia.org/wiki/User:Acs4b
Edits:
   1 Category:Literature
   1 Journal_of_Artificial_Intelligence_Research
   1 Journal_of_Machine_Learning_Research
   1 Journal_of_Statistical_Software

./show_page.sh "Journal_of_Artificial_Intelligence_Research"


./show_unique.sh -a "Category:Mathematics" | grep -v "[Bb][Oo][Tt]" | ./get_authors_count.sh | sort -gr | less

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
