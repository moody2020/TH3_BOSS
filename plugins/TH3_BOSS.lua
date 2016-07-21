do 

local function run(msg, matches) 

if ( msg.text ) then

  if ( msg.to.type == "user" ) then

return "للتحدث مع المطور اضغط على المعرف التالي \n🔹  @TH3BOSS \n او اذا محظور اضغط هنا \n🔹  @ll60Kllbot\n قنأة البوت \n🔹  @llDEV1ll "     
  end 
   
end 

-- @TH3BOSS 

end 

return { 
  patterns = { 
       "(.*)$"
  }, 
  run = run, 
} 

end 
-- By @TH3BOSS
