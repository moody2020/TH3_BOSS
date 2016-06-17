--[[ 
▀▄ ▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀          
▀▄ ▄▀                                       ▀▄ ▄▀ 
▀▄ ▄▀       BY MOHAMMED HISHAM              ▀▄ ▄▀ 
▀▄ ▄▀ BY MOHAMMEDHISHAM (@oOMOOMOo)         ▀▄ ▄▀          
▀▄ ▄▀ JUST WRITED BY MOHAMMED HISHAM        ▀▄ ▄▀   
▀▄ ▄▀          DEV  : المطور                ▀▄ ▄▀ 
▀▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀
--]] 

do

function run(msg, matches)
local reply_id = msg['id']
  local S = '🔶   السورس 🛢 TH3_BOSS 📁\n🔶   الاصدار 📋 V3\n🔶  الموقع 💻\n \nhttps://github.com/moody2020/TH3_BOSS\n🔶   #المطور : @oOMOOMOo\n🔶  #بوت_المطور :  @DEVIRAQ_BOT\n 🔶  #قناة_البوت :  @oOBOBOo '
reply_msg(reply_id, S, ok_cb, false)
end

return {
  patterns = {
"^(الاصدار)$",
  }, 
  run = run 
}

end
