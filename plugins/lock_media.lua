--[[ 
▀▄ ▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀          
▀▄ ▄▀                                      ▀▄ ▄▀ 
▀▄ ▄▀    BY MOHAMMED HISHAM                ▀▄ ▄▀ 
▀▄ ▄▀   BY MOHAMMEDHISHAM (@TH3BOSS)      ▀▄ ▄▀ 
▀▄ ▄▀ JUST WRITED BY MOHAMMED HISHAM       ▀▄ ▄▀   
▀▄ ▄▀                   كتم الوسائط            ▀▄ ▄▀ 
▀▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀
--]]
 local function pre_process(msg) 
  local mohammed = msg['id']
  local user = msg.from.id
  local chat = msg.to.id
  local hash = 'mate:'..chat..':'..user
  if msg.media and not is_momod(msg) then
    if redis:get(hash) and msg.media and not is_momod(msg) then 
      delete_msg(msg.id, ok_cb, false) 
      redis:del(hash) 
      kick_user(user, chat)
    else
      local q = "عزيزي~["..msg.from.first_name.."]".."\n".."تنبية : لا ترسل الميديا في هاذة المجموعة.❗️ هاذا تحذير في المرة القادمة سوف اطردك من المجموعة ⛔️".."\n".."#username: @"..(msg.from.username or " ")
      reply_msg(jalal, q, ok_cb, true) 
      redis:set(hash, true)
    end
  end
  return  msg
end
       
       

local function run(msg, matches) 
  local mohammed = msg['id'] 
  if matches[1] == 'قفل الوسائط' then
    if is_momod(msg) then 
      local hash = 'mate:'..msg.to.id 
      redis:set(hash, true) 
      local x = ' تم كتم جميع الوسائط🌝🌹'
      reply_msg(mohammed, x, ok_cb, true) 
    else 
local moody = 'للمشرفين فقط 🌝☕️'
reply_msg(mohammed,moody, ok_cb, true) 
    end
  end
  if matches[1] == 'فتح الوسائط' then
    if is_momod(msg) then 
      local hash = 'mate:'..msg.to.id 
      redis:del(hash) 
      local don = ' تم الغاء كتم الوسائط🌚' 
      reply_msg(mohammed, don, ok_cb, true) 
    else
local moody = 'للمشرفين فقط 🌝☕️'
reply_msg(mohammed,moody, ok_cb, true) 
    end 
  end 
end
return { 
    patterns = {
"^(قفل الوسائط)$",
"^(فتح الوسائط)$"
 
    }, 
     
run = run, 
    pre_process = pre_process 
}
 
