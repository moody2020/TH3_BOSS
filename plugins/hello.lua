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
      return "▫️ اهـلا بـك عـزيـزي ❤️ \n".."▫️ اسم المجموعة :: "..msg.to.title.."\n".." ▫️ايدي المجموعة :: "..msg.to.id.."\n".."▫️ اسم الضافك ::"..(msg.from.first_name or " ").."\n".."▫️ معرف الضافك :: @"..(msg.from.username or " ").."\n".."▫️ معرفك :: @"..(msg.action.user.username or "لايوجد " ).."\n".."▫️ ايدي الضافك ::"..msg.from.id

    elseif matches[1] == "chat_add_user_link" then
      return "▫️اهـلا بـك عـزيـزي ❤️\n".."▫️ اسم المجموعة :: "..msg.to.title.."\n".."▫️ ايدي المجموعة :: "..msg.to.id.."\n".."▫️ اسم الضافك :: "..(msg.from.first_name or " ").."\n".."▫️ معرف الي ضافك :: @"..(msg.from.username or " ").."\n".."▫️ معرفك :: @"..(msg.from.username or "لايوجد " ).."\n".." ▫️ايديك ::"..msg.from.id

    end
    if matches[1] == "chat_del_user" then
    return "⚜ الله معاك 🙂⚜"..msg.action.user.first_name
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
