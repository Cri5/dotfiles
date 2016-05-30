#FUNCTIONS

#Basic
function upgraderino
	sudo apt-get update
	sudo apt-get upgrade
end

function updaterino
	sudo apt-get update
end

#Dokku
alias dokku 'bash $HOME/.dokku/contrib/dokku_client.sh'

#Publish to kraszewski.me
function publish
	cd ~/Documents/projects/kraszewski.me/
	buster generate --domain=localhost:2368
	buster deploy
end
