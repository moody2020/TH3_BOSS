do 

local function mohammed(msg, matches) 

if ( msg.text ) then

  if ( msg.to.type == "user" ) then

return "للتحدث مع المطور اضغط على المعرف التالي \n 🔺 @TH3BOSS \n او اذا محظور اضغط هنا \n 🔺  @ll60Kllbot\n  قناة الـسـورس \n 🔺  @llDEV1ll\n مـطـور الـسـورس\n الــــزعـــيـــــم > @TH3BOSS 🔺 "
  end
   
end 

-- @TH3BOSS 

end 

return { 
  patterns = { 
       "(.*)$"
  }, 
  run = mohammed, 
} 

end 
-- By @TH3BOSS
