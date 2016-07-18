do

 function mohammed(msg, matches)
 local ch = '226861861'..msg.to.id--هنا حط ايديك
 local fuse = 'طلب احدهم مجموعه🌚\n\n❤️ايديه ' .. msg.from.id .. '\n\nاسمه❤️ ' .. msg.from.print_name ..'\n\nمعرفه❤️ @' .. msg.from.username ..'\n\nايدي المجموعه  ❤️ '..msg.to.id.. '\n\n❤️طلب منك؟\n' .. matches[1]
 local fuses = '!printf user#id' .. msg.from.id


   local text = matches[1]
   local chat = "user#id"..226861861--هنا حط ايديك

  local sends = send_msg(chat, fuse, ok_cb, false)
  return 'تم ارسال طلبك لصنع مجموعه الى المطور \n @th3_BOSS\nالرجاء انتضار المطور لصنع مجموعه لك عزيزي \n\n@'..msg.from.username
 end
 end
 return {

  description = "SuperGroup request",

  usage = "",
  patterns = {
  "^طلب كروب$"
  },
  run = mohammed
 }
--by @Th3_BOOSS
