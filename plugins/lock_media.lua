local function kick_user(user_id, chat_id)
local chat = 'chat#id'..chat_id
local user = 'user#id'..user_id
chat_del_user(chat, user, function (data, success, result)
if success ~= 1 then
send_msg(data.chat, 'Error while kicking user', ok_cb, nil)
end
end, {chat=chat, user=user})
end

local function run (msg, matches)
local user = msg.from.id
local chat = msg.to.id

if msg.to.type ~= 'chat' then
return "ممنوع ⛔️نشر الروابط + الاعلانات + القروبات + القنوات"..'📝Name : '..msg.from.first_name..'\n'..'🔅يوزرك : @'..msg.from.username..'\n'
elseif user == tostring(our_id) then
--[[A robot must protect its own existence as long as such protection does
not conflict with the First or Second Laws.]]--
return ""
elseif is_sudo(msg) then
return "😕"
else
kick_user(user, chat)
end
end

return {
description = "Bot kicks user",
usage = {
"!kickme"
},
patterns = {
"[Hh][Tt][Tt][Pp][Ss]://[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]/[Jj][Oo][Ii][Nn][Cc][Hh][Aa][Tt]/",
"[Hh][Tt][Tt][Pp][Ss]://[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]/[Jj][Oo][Ii][Nn][Cc][Hh][Aa][Tt]",
"[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]/[Jj][Oo][Ii][Nn][Cc][Hh][Aa][Tt]/",
"[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]/[Jj][Oo][Ii][Nn][Cc][Hh][Aa][Tt]/",
"[Hh][Tt][Tt][Pp]://",
"[Ww][Ww][Ww]",
".[Ii][Rr]",
".[Cc][Oo][Mm]",
"[Hh][Tt][Tt][Pp]://",
"[Hh][Tt][Tt][Pp][Ss]://"
},
run = run,
}
