ff(){
	ack ${1}
}

function replace(){
	sed -i '' -e 's/$1/$2/g' $(gg $1| cut -d ":" -f1 | uniq)
}
