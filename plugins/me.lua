--[[ 
▀▄ ▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀          
▀▄ ▄▀                                      ▀▄ ▄▀ 
▀▄ ▄▀    BY MOHAMMED HISHAM                ▀▄ ▄▀ 
▀▄ ▄▀   BY MOHAMMEDHISHAM (@TH3BOSS)      ▀▄ ▄▀ 
▀▄ ▄▀ JUST WRITED BY MOHAMMED HISHAM       ▀▄ ▄▀   
▀▄ ▄▀         ME   :  موقعي               ▀▄ ▄▀ 
▀▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀
--]]
do

local function run(msg, matches)
  if matches[1] == 'موقعي' then
    if is_sudo(msg) then
    send_document(get_receiver(msg), "./files/me/sudo.webp", ok_cb, false)
      return 'انت المطور مالتي 😻🙊\n\n 💢  مـعـرفك :️ @'..msg.from.username
    elseif is_admin1(msg) then
    send_document(get_receiver(msg), "./files/me/support.webp", ok_cb, false)
      return 'انت اداري  🌚💭\n\n 💢  مـعـرفك :️ @'..msg.from.username
    elseif is_owner(msg) then
    send_document(get_receiver(msg), "./files/me/owner.webp", ok_cb, false)
      return 'انت مدير المجموعه 🌺😍\n\n 💢  مـعـرفك :️ @'..msg.from.username
    elseif is_momod(msg) then
    send_document(get_receiver(msg), "./files/me/moderator.webp", ok_cb, false)
      return 'انت ادمن ☺️\n\n 💢  مـعـرفك :️ @'..msg.from.username
    else
    send_document(get_receiver(msg), "./files/me/member.webp", ok_cb, false)
      return 'انت مجرد عضو 😒💔\n\n 💢  مـعـرفك :️ @'..msg.from.username
    end
  end
end

return {
  patterns = {
    "^(موقعي)$",
    "^(موقعي)$"
    },
  run = run
}
end
