for num in $(seq $1); do
	let filenum="2*$num"
	mkdir -p "hw$num"
	cp script.sh "hw$num"
	cp criteria.txt "hw$num/criteria($filenum).txt"
	cd "hw$num/"
	bash ./script.sh "criteria($filenum).txt"
	cd ..
done
