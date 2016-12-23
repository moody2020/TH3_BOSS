local function history(extra, suc, result) 
  for i=1, #result do 
    delete_msg(result[i].id, ok_cb, false) 
if tonumber(i) > 99 then 
    delete_msg(result[i].id, ok_cb, false) 
else 
if tonumber(i) > 99 then 
    delete_msg(result[i].id, ok_cb, false) 
else 
if tonumber(i) > 99 then 
    delete_msg(result[i].id, ok_cb, false) 
else 
if tonumber(i) > 99 then 
    delete_msg(result[i].id, ok_cb, false) 
else 
if tonumber(i) > 99 then 
    delete_msg(result[i].id, ok_cb, false) 
else 
if tonumber(i) > 99 then 
    delete_msg(result[i].id, ok_cb, false) 
else 
if tonumber(i) > 99 then 
    delete_msg(result[i].id, ok_cb, false) 
  end 
end 
end 
end 
end 
end 
end 
end 
  if tonumber(extra.con) == #result then 
    send_msg(extra.chatid, '"'..#result..'" 📌 من الرسائل تم تنظيفها 🍃 🗑', ok_cb, false) 
  else 
    send_msg(extra.chatid,
 '📌 تم ☑️ تـنـظـيـف الـمـجـمـوعـه 🛡👍🏿 🍃 🗑', ok_cb, false) 
  end 
end 
local function th3boss(msg, matches) 
if is_sudo(msg) then 
  if matches[1] == 'تنظيف الكل'  then 
    if msg.to.type == 'channel' then 
      get_history(msg.to.peer_id, 500 + 1 , history , {chatid = msg.to.peer_id, con = 500}) 
    else 
      return "للـمـطـوريـن فـقـط 👮"
    end 
    end 
  else 
   -- return "للـمـطـوريـن فـقـط 👮"
  end 
end 

return { 
    patterns = { 
        '^(تنظيف الكل)$' 
    }, 
    run = th3boss 
}
