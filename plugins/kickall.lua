local function kick_all(cb_extra, success, result)
local receiver = cb_extra.receiver
 local msg = cb_extra.msg
  local deleted = 0 
if success == 0 then
send_large_msg(receiver, "للـمـطـوريـن فـقـط 👮") 
end
for k,v in pairs(result) do
 kick_user(v.peer_id,msg.to.id)
 end
 send_large_msg(receiver, "👮 تــــم طــــرد الــــكــــل")
 end 
local function th3boss(msg, matches)
if is_owner(msg) then
 local receiver = get_receiver(msg) 
channel_get_users(receiver, kick_all,{receiver = receiver, msg = msg})
 end
 end
 return {
       patterns = { 
        '^(طرد الكل)$' 
    }, 
    run = th3boss 
}
