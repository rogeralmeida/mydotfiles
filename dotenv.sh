precmd(){
	if [ -f "./.env" ]; then
		source .env;
	fi
}
