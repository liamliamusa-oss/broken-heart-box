#!/bin/bash
clear

# စာသားအရောင်များ သတ်မှတ်ခြင်း
RED='\e[1;31m'
GREEN='\e[1;32m'
YELLOW='\e[1;33m'
CYAN='\e[1;36m'
NC='\e[0m' # Color မရှိ

echo -e "${YELLOW}"
echo "      ___________________________"
echo "     /                          /|"
echo "    /__________________________/ |"
echo "    |                          | |"
echo "    |    🎁 SURPRISE BOX 🎁     | |"
echo "    |                          | |"
echo "    |     (Open Me Please)     | |"
echo "    |                          | /"
echo "    |__________________________|/"
echo -e "${NC}"

echo -e "${CYAN}==============================================${NC}"
echo -e "${RED} 💔 အသဲကွဲနေတဲ့မင်းအတွက်သီးသန့်လက်ဆောင် 💔 ${NC}"
echo -e "${CYAN}==============================================${NC}"
echo ""
echo -n -e "${GREEN}ဒီဗူးလေးကို ဖွင့်ကြည့်မလား? (y/n): ${NC}"
read choice

if [ "$choice" = "y" ] || [ "$choice" = "Y" ]; then
    clear
    
    # နောက်ခံ သီချင်းဖွင့်ခြင်း (music.mp3 ကို Background မှာ ဖွင့်ထားမယ်)
    if [ -f "music.mp3" ]; then
        play-audio music.mp3 > /dev/null 2>&1 &
        # music_pid ထဲမှာ သီချင်းရဲ့ ID ကို သိမ်းထားမယ် (နောက်မှ ပိတ်လို့ရအောင်)
        music_pid=$!
    fi

    echo -e "${RED}"
    figlet -c "W A K E  U P !!"
    echo -e "${NC}"
    
    echo -e "${YELLOW}========================================================================${NC}"
    echo -e "${RED} 😢 စောင့်မနေနဲ့တော့... ჰိုကအခြားသူရင်ခွင်မှာသာယာနေပြီ ပြန်မလာတော့ဘူး! 😢 ${NC}"
    echo -e "${YELLOW}========================================================================${NC}"
    echo ""
    echo -e "${CYAN}\t\t      💔       💔"
    echo -e "\t\t   💔    💔 💔    💔"
    echo -e "\t\t  💔       💔       💔"
    echo -e "\t\t   💔             💔"
    echo -e "\t\t     💔         💔"
    echo -e "\t\t        💔   💔"
    echo -e "\t\t           💔${NC}"
    echo ""
    echo -e "${GREEN}[ စိတ်မကောင်းပါဘူးသူငယ်ချင်းရာ... တရားရနိုင်ပါစေ။ ]${NC}"
    echo ""
    
    # သီချင်းပြီးအောင် စောင့်တာ ဒါမှမဟုတ် User က Enter နှိပ်ရင် ပိတ်ဖို့
    echo -e "${YELLOW}Script ကို ပိတ်ပြီး သီချင်းရပ်ချင်ရင် Enter နှိပ်လိုက်ပါ။${NC}"
    read -r
    
    # Script ပိတ်ရင် သီချင်းပါတစ်ခါတည်း ရပ်သွားအောင် လုပ်တာ
    if [ ! -z "$music_pid" ]; then
        kill $music_pid > /dev/null 2>&1
    fi
    clear
else
    echo -e "${RED}\nမဖွင့်ရဲဘူးလား... မင်းရင်ထဲမှာ အမှန်တရားကို ရင်မဆိုင်ရဲသေးဘူးပေါ့... 😢${NC}"
fi

