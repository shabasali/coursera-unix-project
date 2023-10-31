README.md:
	touch README.md
	echo "### Project title: Bash, Make, Git, and GitHub (Coursera assignment - The Unix Workbench)" > README.md
	echo "### *make* file was run on:" `date` >> README.md
	echo "### Number of lines of code contained in guessinggame.sh:" `cat guessinggame.sh | wc -l` >> README.md
