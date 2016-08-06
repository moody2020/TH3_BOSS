--[[ 
▀▄ ▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀          
▀▄ ▄▀                                      ▀▄ ▄▀ 
▀▄ ▄▀    BY MOHAMMED HISHAM                ▀▄ ▄▀ 
▀▄ ▄▀     BY MOHAMMEDHISHAM (@TH3BOSS)     ▀▄ ▄▀ 
▀▄ ▄▀ JUST WRITED BY MOHAMMED HISHAM       ▀▄ ▄▀   
▀▄ ▄▀                                      ▀▄ ▄▀ 
▀▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀
--]]

do
    
local function mohammedboss(msg,matches)
    if matches[1] == "chat_add_user"  then 
      return "🔺اهلا وسهلا بك في المجموعه كبد حياتي😽❤️\n".."🔺 اسم المجموعه :: "..msg.to.title.."\n".." 🔺ايدي المجموعه :: "..msg.to.id.."\n".."🔺 اسم الي ضافك ::"..(msg.from.first_name or " ").."\n".."🔺 معرف الي ضافك :: @"..(msg.from.username or " ").."\n".."🔺 معرفك :: @"..(msg.action.user.username or "لايوجد " ).."\n".."🔺ايدي الي ضافك ::"..msg.from.id

    elseif matches[1] == "chat_add_user_link" then
      return "🔺اهلا وسهلا بك كبد حياتي  😽❤️ \n".."🔺 اسم المجموعه :: "..msg.to.title.."\n".."🔺 ايدي المجموعه :: "..msg.to.id.."\n".."🔺 اسم الي ضافك :: "..(msg.from.first_name or " ").."\n".."🔺 معرف الي ضافك :: @"..(msg.from.username or " ").."\n".."🔺 معرفك :: @"..(msg.from.username or "لايوجد " ).."\n".." 🔺ايديك ::"..msg.from.id

    end
    if matches[1] == "chat_del_user" then
    return "🔺 الله وياك كبد حياتي 😽❤️ سد الباب وراك 🌝"..msg.action.user.first_name
end
end
return {
    patterns = {
        "^!!tgservice (chat_add_user)$",
        "^!!tgservice (chat_add_user_link)$",
        "^!!tgservice (chat_del_user)$"
       
    },
 run = mohammedboss,
}
end
-- Dev💀: @TH3BOSS
-- Dev bot💀: @ll60Kllbot
-- DevChannel 💀: @llDEV1ll
