--[[ 
▀▄ ▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀ 
▀▄ ▄▀                                      ▀▄ ▄▀ 
▀▄ ▄▀    BY MOHAMMED HISHAM                ▀▄ ▄▀ 
▀▄ ▄▀     BY MOHAMMEDHISHAM (@TH3BOSS)     ▀▄ ▄▀ 
▀▄ ▄▀ JUST WRITED BY MOHAMMED HISHAM       ▀▄ ▄▀ 
▀▄ ▄▀     delete : حذف الرسائل            ▀▄ ▄▀ 
▀▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀ 
--]]

local function history(extra, suc, result) 
  for i=1, #result do 
    delete_msg(result[i].id, ok_cb, false) 
  end 
  if tonumber(extra.con) == #result then 
    send_msg(extra.chatid, '"'..#result..'"    📌 من الرسائل تم تنظيفها 🍃', ok_cb, false) 
  else 
send_msg(extra.chatid, '📌 تم ☑️ تـنـظـيـف الـمـجـمـوعـه 🛡👍🏿 🍃', ok_cb, false) 
  end 
end 
local function run(msg, matches) 
  if matches[1] == 'تنظيف' and is_sudo(msg) then 
    if msg.to.type == 'channel' then 
      if tonumber(matches[2]) > 10000000000000 or tonumber(matches[2]) < 1 then 
        return "📌 يمكنك وضع عدد 10000000000000  رسالة او اقل فقط" 
      end 
      get_history(msg.to.peer_id, matches[2] + 1 , history , {chatid = msg.to.peer_id, con = matches[2]}) 
    else 
      return "للـمـطـوريـن فـقـط 👮"
    end 
  else 
    return "للـمـطـوريـن فـقـط 👮"
  end 
end 

return { 
    patterns = { 
        '^(تنظيف) (%d*)$' 
    }, 
    run = run 
} 
--@TH3BOSS
