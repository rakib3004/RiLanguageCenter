for num in $(seq $1); do
	let filenum="3*$num"
	mkdir -p "hw$num"
	cp script.sh "hw$num"
	cp criteria.txt "hw$num/Docs($filenum).txt"
	cd "hw$num/"
	bash ./script.sh "Docs($filenum).txt"
	cd ..
done
