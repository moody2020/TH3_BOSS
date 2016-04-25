--[[ 
▀▄ ▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀          
▀▄ ▄▀                                      ▀▄ ▄▀ 
▀▄ ▄▀    BY SAJJAD NOORI                   ▀▄ ▄▀ 
▀▄ ▄▀     BY SAJAD NOORI (@SAJJADNOORI)    ▀▄ ▄▀ 
▀▄ ▄▀ JUST WRITED BY SAJJAD NOORI          ▀▄ ▄▀   
▀▄ ▄▀        insta  : انستا                ▀▄ ▄▀ 
▀▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀
--]]

local access_token = "3084249803.280d5d7.999310365c8248f8948ee0f6929c2f02" -- your api key
local function instagramUser(msg, query)
    local receiver = get_receiver(msg)
	local url = "https://api.instagram.com/v1/users/search?q="..URL.escape(query).."&access_token="..access_token
	local jstr, res = https.request(url)
	if res ~= 200 then
		return "❌ لآيــوجـدِ أتـصـأَلَ ✔️"
    end
	local jdat = json:decode(jstr)
	if #jdat.data == 0 then
		send_msg(receiver,"#عذرا\n❌ لمِ يـَتْم اَلــعثـْور ع يـوزرَ 👍🏻",ok_cb,false)
	end
	if jdat.meta.error_message then
		send_msg(receiver,"#عذرا\n"..jdat.meta.error_message,ok_cb,false)
	end
	local id = jdat.data[1].id
	local gurl = "https://api.instagram.com/v1/users/"..id.."/?access_token="..access_token
	local ress = https.request(gurl)
	local user = json:decode(ress)
   	if user.meta.error_message then
		send_msg(receiver,"#عذرا\n"..user.meta.error_message,ok_cb,false)
	end
	local text = ''
	if user.data.bio ~= '' then
		text = text.."❣ اليوزر : "..user.data.username:upper().."\n\n"
	else
		text = text.."❣ اليوزر : "..user.data.username:upper().."\n"
	end
	if user.data.bio ~= '' then
		text = text..user.data.bio.."\n\n"
	end
	if user.data.full_name ~= '' then
		text = text.."❣ الاسم : "..user.data.full_name.."\n"
	end
	text = text.."❣ عدد الوسائط : "..user.data.counts.media.."\n"
	text = text.."❣ اتابعهم : "..user.data.counts.follows.."\n"
	text = text.."❣ المتابعون : "..user.data.counts.followed_by.."\n"
	if user.data.website ~= '' then
		text = text.."❣ الموقع : "..user.data.website.."\n"
	end
	text = text.."\n❣ #المطور @SAJJADNOORI\n❣ #قناة_البوت : @S94IQ"
	local file_path = download_to_file(user.data.profile_picture,"insta.png")     -- disable this line if you want to send profile photo as sticker
	--local file_path = download_to_file(user.data.profile_picture,"insta.webp")    -- enable this line if you want to send profile photo as sticker
	local cb_extra = {file_path=file_path}
    local mime_type = mimetype.get_content_type_no_sub(ext)
	send_photo(receiver, file_path, rmtmp_cb, cb_extra)  -- disable this line if you want to send profile photo as sticker
	--send_document(receiver, file_path, rmtmp_cb, cb_extra)  -- enable this line if you want to send profile photo as sticker
	send_msg(receiver,text,ok_cb,false)
end

local function instagramMedia(msg, query)
    local receiver = get_receiver(msg)
	local url = "https://api.instagram.com/v1/media/shortcode/"..URL.escape(query).."?access_token="..access_token
	local jstr, res = https.request(url)
	if res ~= 200 then
		return "❌ لآيــوجـدِ أتـصـأَلَ ✔️"
    end
	local jdat = json:decode(jstr)
	if jdat.meta.error_message then
		send_msg(receiver,"#Error\n"..jdat.meta.error_type.."\n"..jdat.meta.error_message,ok_cb,false)
	end
	local text = ''
	local data = ''
	if jdat.data.caption then
	      data = jdat.data.caption
	      text = text.."❣ اليوزر : "..data.from.username:upper().."\n\n"
		  text = text..data.from.full_name.."\n\n"
		  text = text..data.text.."\n\n"
		  text = text.."❣ عدد الايك : "..jdat.data.likes.count.."\n"
    else
	      text = text.."❣ اليوزر : "..jdat.data.user.username:upper().."\n"
		  text = text.."❣ الاسم : "..jdat.data.user.full_name.."\n"
		  text = text.."❣ عدد الايك: "..jdat.data.likes.count.."\n"
	end
	text = text.."\n@SAJJADNOORI\n❣ #قناة_البوت : @S94IQ"
	send_msg(receiver,text,ok_cb,false)
end
local function run(msg, matches)

if matches[1] == "انستا" and not matches[3] then
    return instagramUser(msg,matches[2])
end
if matches[1] == "انستا" and matches[3] then
    local media = matches[3]
    if string.match(media , '/') then media = media:gsub("/", "") end
    return instagramMedia(msg,media)
end
end
return {
   patterns = {
   "^(انستا) ([Hh]ttps://www.instagram.com/p/)([^%s]+)$",
   "^(انستا) ([Hh]ttps://instagram.com/p/)([^%s]+)$",
   "^(انستا) ([Hh]ttp://www.instagram.com/p/)([^%s]+)$",
   "^(انستا) ([Hh]ttp://instagram.com/p/)([^%s]+)$",
   "^(انستا) ([^%s]+)$",
   },
   run = run
}
