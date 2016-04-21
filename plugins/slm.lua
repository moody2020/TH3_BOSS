do

function run(msg, matches)
local reply_id = msg['id']
local text = '💋😍ممَمَِمَِمَِمَِمِمِحَ اشـَلعَ شَفتَكَ َمـوَ بس أبوسكَ 🙈😘'
if is_sudo(msg) and matches[1] == 'اسودي بوسني' then
reply_msg(reply_id, text, ok_cb, false)
end

if not is_sudo(msg) then
return 'انجب ✋🏿😠 انا بس مطوريَ أشلعَ شفتَهَ 💋'
end 
end
return {
patterns = {
    "اسودي بوسني"
},
run = run
}

end