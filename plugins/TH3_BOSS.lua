do 

local function run(msg, matches) 

if ( msg.text ) then

  if ( msg.to.type == "user" ) then

     return "للتحدث مع المطور اضغط على المعرف التالي \n  @oOMOOMOo \n او اذا محظور اضغط هنا \n  @DEVIRAQ_BOT\n قنأة البوت \n  @oOBOBOo 🔶  "
     
  end 
   
end 

-- OMOOMOo 

end 

return { 
  patterns = { 
       "(.*)$"
  }, 
  run = run, 
} 

end 
-- By @SAJJADNOORI
