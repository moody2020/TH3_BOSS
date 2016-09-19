--[[ 
▀▄ ▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀          
▀▄ ▄▀                                      ▀▄ ▄▀ 
▀▄ ▄▀    BY MOHAMMED HISHAM                ▀▄ ▄▀ 
▀▄ ▄▀   BY MOHAMMEDHISHAM (@TH3BOSS)      ▀▄ ▄▀ 
▀▄ ▄▀ JUST WRITED BY MOHAMMED HISHAM       ▀▄ ▄▀   
▀▄ ▄▀   ANTI replay  :  منع  رد           ▀▄ ▄▀ 
▀▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀
--]]

do

local function pre_process(msg)
    

    local hash = 'mate:'..msg.to.id
    if redis:get(hash) and msg.reply_id and not is_sudo(msg) and not is_owner(msg) and not is_momod(msg) and not is_admin1(msg) then
            delete_msg(msg.id, ok_cb, true)
            return "done"
        end
    
        return msg
    end

  


local function th3boss(msg, matches)
    chat_id =  msg.to.id
    
    if is_momod(msg) and matches[1] == 'قفل' then
      
            
                    local hash = 'mate:'..msg.to.id
                    redis:set(hash, true)
                    return ' تم ☑️ قفل 🔒 الرد ✋😽\n🔺Order By : @'..msg.from.username..'\n🔻Order By : '.. msg.from.id..'\n '
  elseif is_momod(msg) and matches[1] == 'فتح' then
                    local hash = 'mate:'..msg.to.id
                    redis:del(hash)
                    return ' تم ☑️ فتح 🔓 الرد ✋😽\n🔺Order By : @'..msg.from.username..'\n🔻Order By : '.. msg.from.id..'\n  '
end

end

return {
    patterns = {
        '^(قفل) الرد$',
        '^(فتح) الرد$'
    },
    run = th3boss,
    pre_process = pre_process
}
end
