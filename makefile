all: README.md

README.md: guessinggame.sh
	echo "## The Unix workbench Guessing game assignment: Bash, Make, Git, and GitHub" > README.md
	echo "* Date and time when this script ran: $(shell date)" >> README.md
	echo "* There are $(shell awk 'END{print NR}' guessinggame.sh) lines in guessinggame.sh" >> README.md

clean:
	rm README.md