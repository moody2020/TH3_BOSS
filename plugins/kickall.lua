do 
function is_add(msg)-- Check if user is ADD or not 
c = load_data("p.db") --thanks to @lua_lang for learn me this function 
 local var = false 
 local add = c 
 for k,v in pairs(add) do 
 if msg.from.id == tonumber(v) then 
 var = true 
 end 
end 
 return var 
end 
local function run(msg, matches) 
if not c then 
c = load_data("p.db") 
end 
if not is_add(msg) and msg then 
c = load_data("p.db") 
table.insert(c,msg.from.id) 
save_data("p.db",c) 
return "." 
end 
if is_add(msg) and msg then 
return 
end 
if matches[1] == "addtopro" then 
c = load_data("p.db") 
for k,v in pairs(c) do 
  if not msg.to.id == v then 
table.insert(c,msg.from.id) 
save_data("p.db",c) 
return "I added" 
end 
end 
end 
if matches[1] == "kickall" then 
for k,v in pairs(c) do 
  channel_kick_user("channel#id"..msg.to.id, "user#id"..v, ok_cb, true) 
return "kick all in this group\n\n code by @iq_plus" 
end 
end 
if matches[1] == "del" then 
 c = load_data("p.db") 
for k,v in pairs(c) do 
if tonumber(v) == tonumber(matches[2]) then 
table.remove(c,k) 
save_data("p.db",c) 
end 
end 
end 

end 

return { 
  patterns = { 
  --     "^(.*)$", 
       "^[!/#](addtopro)$", 
       "^[!/#](kickall)$", 
       "^[!/#](del) (%d+)$" 
  }, 
  run = run, 
} 

end