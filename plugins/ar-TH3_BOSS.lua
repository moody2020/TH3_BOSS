  --[[ 
  ▀▄ ▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀          
  ▀▄ ▄▀                                      ▀▄ ▄▀ 
  ▀▄ ▄▀    BY MOHAMMED HISHAM                ▀▄ ▄▀ 
  ▀▄ ▄▀     BY MOHAMMEDHISHAM (@TH3BOSS)     ▀▄ ▄▀ 
  ▀▄ ▄▀ JUST WRITED BY MOHAMMED HISHAM       ▀▄ ▄▀   
  ▀▄ ▄▀      VIRSON      :  الاصدار           ▀▄ ▄▀ 
  ▀▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀
  --]]
  
  do
  
  function mohammed(msg, matches)
  local reply_id = msg['id']
    local S = '💢 السورس  TH3_BOSS 📁\n 💢   الاصدار 📋 V5\n 💢  الموقع \n \nhttps://github.com/moody2020/TH3_BOSS\n 💢    المطور : @TH3BOSS \n 💢   بوت_المطور :  @ll60Kllbot \n 💢   قناة_البوت :  @llDEV1ll '
  reply_msg(reply_id, S, ok_cb, false)
  end
  
  return {
    patterns = {
  "^(الاصدار)$",
    }, 
    run = mohammed 
  }
  
  end
