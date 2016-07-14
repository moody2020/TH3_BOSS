
--[[ 
▀▄ ▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀          
▀▄ ▄▀                                       ▀▄ ▄▀ 
▀▄ ▄▀       BY MOHAMMED HISHAM              ▀▄ ▄▀ 
▀▄ ▄▀ BY MOHAMMEDHISHAM (@TH3BOSS)          ▀▄ ▄▀          
▀▄ ▄▀ JUST WRITED BY MOHAMMED HISHAM        ▀▄ ▄▀   
▀▄ ▄▀          الاوامر▀▄ ▄▀ 
▀▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀
--]]
do

function run(msg, matches)
local reply_id = msg['id']
local S = [[ 
ⱲєℓϚ๏๓є ₮๏ Ͳћє ꝕᴙịⱴạτє ⱳ๑ᴙℓᴆ
🃏〰〰〰〰〰〰〰〰〰🃏

اوامر  ═╬═ ᗨ   TH3BOSS 🀄️

📍 م1: لعرض الاوامر الرئيسية📜

📍 م2:لعرض الاوامر الثانويه📜

📍 م3:لعرض اوامرحمايةالمجموعه📜

📍 م4:لعرض اوامر التحكم بالميديا📜

📍 م المطور : لعرض اوامر المطور📜

🃏〰〰〰〰〰〰〰〰〰🃏
💯-Đєⱴ💀: @TH3BOSS
💯-Đєⱴ ฿๏ͳ💀: @ll60Kllbot
💯-Đєⱴ Ϲḫ₳ͷͷєℓ💀: @llDEV1ll
reply_msg(reply_id, S, ok_cb, false)
end

return {
description = "Help list", 
usage = "Help list",
patterns = {
"^(الاوامر)$",
},
run = run 
}
end
