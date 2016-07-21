
id.lua


1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
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
(282 Bytes)19:4LuaSpaces: 4
TH3_BOSS/launch.sh - Running


msg matches:    ^(.+)$                                                                                                                                     
 [16:32]  Professional Iraq ll محترفين العراق ̴M̴̴o̴̴h̴̴a̴̴m̴̴m̴̴e̴̴d̴ ̴H̴̴i̴̴s̴̴h̴̴a̴̴m̴ ̴l̴̴l̴̴9̴̴9̴̴K̴̴l̴̴l̴ »»» ايدي                                                                             
channel#id1066650614                                                                                                                                       
Not valid: msg from us                                                                                                                                     
 [16:32]  Professional Iraq ll محترفين العراق TH3 BOSS BOT >>> [reply to ] 🔹ايديك :: 226861861                                                            
🔹معرفك :: @TH3BOSS                                                                                                                                        
🔹 المطور @TH3BOSS..                                                                                                                                       
channel#id1066650614                                                                                                                                       
Not valid: msg from us                                                                                                                                     
 [16:32]  Professional Iraq ll محترفين العراق TH3 BOSS BOT >>> 🔹 ايدي مجموعة Professional Iraq ll محترفين العراق: 1066650614                              
>                                                                                                                                                          
Stop

Run Config Name
Command:

TH3_BOSS/launch.sh
Runner: Shell script
CWD
ENV
CollaborateOutlineDebugger
