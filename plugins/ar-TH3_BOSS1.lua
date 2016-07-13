--[[ 
▀▄ ▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀          
▀▄ ▄▀                                       ▀▄ ▄▀ 
▀▄ ▄▀       BY MOHAMMED HISHAM              ▀▄ ▄▀ 
▀▄ ▄▀ BY MOHAMMEDHISHAM (@TH3BOSS)          ▀▄ ▄▀          
▀▄ ▄▀ JUST WRITED BY MOHAMMED HISHAM        ▀▄ ▄▀   
▀▄ ▄▀            مساعدة 1                 ▀▄ ▄▀ 
▀▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀
--]]
do

local function run(msg, matches)
local reply_id = msg['id']
if is_momod(msg) and matches[1]== 'م1' then
local S = [[  📍💭 اوامر حماية المجموعه 🀄️

💎 رفع ادمن :↭↜ ( لرفع ادمن في المجموعه )
💎 تنزيل ادمن : ↭↜ ( لتنزيل ادمن في المجموعه )
💎 الادمنيه : ↭↜ ( لعرض قائمة الادمنيه)
ـ🔸➖🔹➖🔸➖🔹➖🔸ـ

📍💭 اوامر تخص الادمنيه 🀄️

♨️حظر : ↭↜( لحظر وطرد عضو من المجموعه )
♨️الغاء الحظر : ↭↜ ( لالغاء الحظر عن عضو )
♨️منع : ↭↜ ( لمنع كلمه داخل المجموعه )
♨️الغاء منع : ↭↜ ( لالغاء منع كلمه داخل المجموعه )
ـ🔸➖🔹➖🔸➖🔹➖🔸ـ

♨️كتم بالرد : ↭↜ ( لكتم عضو بواسطة الرد )
♨️ايدي : ↭↜ ( لعرض ايدي المجموعه )
♨️ايدي بالرد : ↭↜ ( لعرض ايدي العضو )
 🔸➖🔹➖🔸➖🔹➖
♣️Dev💀: @TH3BOSS
♣️Dev bot💀: @ll60Kllbot
♣️DevChannel 💀: @llDEV1ll
]]
reply_msg(reply_id, S, ok_cb, false) 
end

if not is_momod(msg) then
local S = "ليش اصير دوده😎🖕🏿"
reply_msg(reply_id, S, ok_cb, false)
end

end
return {
description = "Help list", 
usage = "Help list",
patterns = {
"^(م1)$",
},
run = run 
}
end
