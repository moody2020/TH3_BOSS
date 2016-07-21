do
function th3boss (msg, matches)

local reply_id = msg ['id']

local th3boss = '🔹ايديك :: '..msg.from.id..'\n'
..'🔹معرفك :: @'..msg.from.username..'\n'
..'🔹 المطور @TH3BOSS'

reply_msg(reply_id, th3boss, ok_cb, false)
end

return {
patterns = {
"(ايدي)$"
},
run = th3boss
}
end
