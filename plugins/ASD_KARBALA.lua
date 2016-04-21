do 

local function run(msg, matches) 

if ( msg.text ) then

  if ( msg.to.type == "user" ) then

     return "للتحدث مع المطور اضغط على المعرف التالي \n @SAJJADNOORI \n او اذا محظور اضغط هنا \n @S94_BOT\n قنأة البوت \n @S94IQ 👾 "
     
  end 
   
end 

-- #DEV @S94IQ

end 

return { 
  patterns = { 
       "(.*)$"
  }, 
  run = run, 
} 

end 
-- By @SAJJADNOORI