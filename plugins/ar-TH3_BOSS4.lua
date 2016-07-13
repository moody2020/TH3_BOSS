--[[ 
▀▄ ▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀          
▀▄ ▄▀                                       ▀▄ ▄▀ 
▀▄ ▄▀       BY MOHAMMED HISHAM              ▀▄ ▄▀ 
▀▄ ▄▀ BY MOHAMMEDHISHAM (@TH3BOSS)          ▀▄ ▄▀          
▀▄ ▄▀ JUST WRITED BY MOHAMMED HISHAM        ▀▄ ▄▀   
▀▄ ▄▀            م المطور                   ▀▄ ▄▀ 
▀▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀
--]]
do

local function run(msg, matches)
local reply_id = msg['id']
if is_sudo(msg) and matches[1]== "م المطور" then
local S = [[  ✔️تعمل جميع الاوامر بدون وضع / او ! او #
ـ🔸➖🔹➖🔸➖🔹➖🔸ـ

 📫تفعيل  : ↭↜ لتفعيل البوت ب المجموعه
 📫تعطيل : ↭↜ لتعطيل البوت ب المجموعه
 📫اذاعه : ↭↜ لنشر كلمه ب جميع مجموعات البوت
 📫تشغيل البوت : ↭↜ لتشغيل البوت ب المجموعه معينه
 📫طرد البوت : ↭↜ لطرد البوت من المجموعه
 📫جلب ملف : ↭↜ لجلب الملف من السيرفر
🔸➖🔹➖🔸➖🔹➖
♣️Dev💀: @TH3BOSS
 ♣️Dev bot💀: @ll60Kllbot
 ♣️DevChannel 💀: @llDEV1ll
]]
reply_msg(reply_id, S, ok_cb, false)
end

if not is_sudo(msg) then
local S = "ليش تبحبش😎🖕🏿"
reply_msg(reply_id, S, ok_cb, false)
end

end
return {
description = "Help list", 
usage = "Help list",
patterns = {
"^(م المطور)$",
},
run = run 
}
end
