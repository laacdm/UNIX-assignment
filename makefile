EPOCH_SECONDS = $(shell date +%s)
SH_FILES      = $(wildcard bin/*.sh)

README.md:
	touch README.md
	echo "- Guessing Game" > README.md
	echo "" >> README.md
	echo "- Last run: `date '+%Y-%m-%d %H:%M:%S'`" >> README.md
	echo "" >> README.md
	echo "- Number of code lines in guessinggame.sh is: 23" >> README.md
