--[[ 
▀▄ ▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀          
▀▄ ▄▀                                      ▀▄ ▄▀ 
▀▄ ▄▀    BY SAJJAD NOORI                   ▀▄ ▄▀ 
▀▄ ▄▀     BY SAJAD NOORI (@SAJJADNOORI)    ▀▄ ▄▀ 
▀▄ ▄▀ JUST WRITED BY SAJJAD NOORI          ▀▄ ▄▀   
▀▄ ▄▀     ADD SUDO  : اضافه مطور           ▀▄ ▄▀ 
▀▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀
--]]
do

local function callback(extra, success, result)
  vardump(success)
  vardump(result)
end

local function run(msg, matches)
 if matches[1] == 'addsudo' then
        chat = 'chat#'..msg.to.id
        user1 = 'user#'..18293081
        chat_add_user(chat, user1, callback, false)
	return "Developer It has been added to this group "
      end
if matches[1] == 'addsudo1' then
        chat = 'chat#'..msg.to.id
        user2 = 'user#'..18293081
        chat_add_user(chat, user2, callback, false)
	return "Developer It has been added to this group "
      end
 
 end

return {
  description = "Invite Sudo and Admin", 
  usage = {
    "/addsudo : invite Bot Sudo", 
	},
  patterns = {
    "^[!/#$](addsudo)",
    "^[!/#$](addsudo1)",
    "^/(add dev)",
    "^/(add dev)",
  }, 
  run = run,
}
-- arabic : @SAJJADNOORI

end
