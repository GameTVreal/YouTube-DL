#!/system/bin/sh

# Colors
# ----------------------------------------
 BL='\e[01;90m' &>/dev/null ; # Black
 R='\e[01;91m'  &>/dev/null ; # Red
 G='\e[01;92m'  &>/dev/null ; # Green
 Y='\e[01;93m'  &>/dev/null ; # Yellow
 B='\e[01;94m'  &>/dev/null ; # Blue
 P='\e[01;95m'  &>/dev/null ; # Purple
 C='\e[01;96m'  &>/dev/null ; # Cyan
 W='\e[01;97m'  &>/dev/null ; # White
 LG='\e[01;37m' &>/dev/null ; # Light Gray
 N='\e[0m'      &>/dev/null ; # Null
 L='\033[7m'    &>/dev/null ; #Lines
 X='\033[0m'    &>/dev/null ; #Closer
# ----------------------------------------
 clear
 echo -e "------------------------------------------------\n"

 echo -e $R"        _    _    ____   ___   ___"$N
 sleep 0.3
 echo -e $R"       / \  | | _| ___| / _ \ / _ \ "$N
 sleep 0.3
 echo -e $R"      / _ \ | |/ /___ \| | | | | | |"$N
 sleep 0.3
 echo -e $R"     / ___ \|   < ___) | |_| | |_| |"$N
 sleep 0.3
 echo -e $R"    /_/   \_\_|\_\____/ \___/ \___/"$N

 echo -e "\n\n------------------------------------------------\n"
 sleep 1.5

 echo -e $Y$L"\n Aggiornamento... \n"$N
 pkg update && apt upgrade -y

 clear

echo -e "\n--------------------------------------------------------\n"

echo -e $R"__   __          _         _                ____  _"$N
sleep 0.5
echo -e $R"\ \ / /__  _   _| |_ _   _| |__   ___      |  _ \| |"$N
sleep 0.5
echo -e $R" \ V / _ \| | | | __| | | | '_ \ / _ \_____| | | | |"$N
sleep 0.5
echo -e $R"  | | (_) | |_| | |_| |_| | |_) |  __/_____| |_| | |___"$N
sleep 0.5
echo -e $R"  |_|\___/ \__,_|\__|\__,_|_.__/ \___|     |____/|_____|"$N

echo -e "\n\n--------------------------------------------------------"


 sleep 1.5


 echo -e $Y$L"\n Programma di installazione di YouTube-YTDL " $R" Doxerina/Army \n"$N

 echo -e $Y$L"\n Installazione di Python... "$N

		apt install python --no-install-recommends -y
        pkg install --no-install-recommends -y python-pip
        #        /data/data/com.termux/files/usr/bin/python3 -m pip install --upgrade pip
		clear
 sleep 0.2		

 echo -e $Y$L"\n Installazione ffmpeg... \n"$N

		pkg install ffmpeg -y
		clear
		

echo -e $Y$L"\n Aggiornamento del sistema Termux...\n"$N

                pkg update && apt upgrade -y
                apt --fix-broken install
		clear


 sleep 0.2		

 echo -e $Y$L"\n Installazione di wget... \n"$N

		 pkg install wget -y
		 clear

 sleep 0.2

 echo -e $Y$L"\n Installazione di YouTube-YTDL... \n"$N 

		pip install yt-dlp
                pip install yt-dlp -U
 clear

 echo -e $Y$L"\n Configurazione delle configurazioni... " $G" Doxerina/Army\n"$N

 sleep 2

 echo -e $Y$L"\n Creazione della cartella Youtube... \n"$N

 mkdir /data/data/com.termux/files/home/storage/shared/YouTube
	
 sleep 1.5


 echo -e $Y$L"\n Creating youtube-dl config... \n"$N
		rm -rf ~/.config/yt-dlp
		mkdir -p ~/.config/yt-dlp
 sleep 1.5

 echo -e $Y$L"\n Ottengo i file di configurazione... \n"$N

 wget https://pastebin.com/raw/UMdXvq2Y -P /data/data/com.termux/files/home/.config/yt-dlp
 
 cd /data/data/com.termux/files/home/.config/yt-dlp
 chmod +x config

 sleep 1

 echo -e $Y$L"\n Creazione della cartella bin... \n"$N

		mkdir ~/bin

 sleep 1.5

 echo -e $Y$L"\n Sto scaricando i file per l'installazione...\n"$N
 rm -rf /data/data/com.termux/files/home/bin/termux-url-opener
 wget https://pastebin.com/raw/UMdXvq2Y/termux-url-opener -P /data/data/com.termux/files/home/bin

 cd /data/data/com.termux/files/home/bin
 chmod +x termux-url-opener
 	
 clear
mkdir /data/data/com.termux/files/home/storage/shared/termux-url-opener

 echo -e $Y$L"\n Finishing configuration..." $G" Doxerina/Army \n"$N

 sleep 3.5

 echo -e $G"\n   Installazione completata, GRAZIE ✌️\n"$N

 kill -1 $PPID