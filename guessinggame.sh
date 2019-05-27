bingo=false
while [[ $bingo == false ]]
do
echo "How many files are in the current directory?"

	read guess
	echo $guess

	if [[ $guess -eq $(ls | wc -l) ]]
	then
		echo "Congratulations!  You've guessed correctly!"
		bingo=true
	elif [[ $guess -lt $(ls | wc -l) ]]
	then
		echo "Just a tad off -- try a little higher."
	else [[ $guess -gt $(ls | wc -l) ]]
		echo "Just a tad off -- try a little lower."
	fi
done
