local function run(msg, matches)
    if is_momod(msg) then
        return
    end
    local data = load_data(_config.moderation.data)
    if data[tostring(msg.to.id)] then
        if data[tostring(msg.to.id)]['settings'] then
            if data[tostring(msg.to.id)]['settings']['fosh'] then
                lock_fosh = data[tostring(msg.to.id)]['settings']['fosh']
            end
        end
    end
    local chat = get_receiver(msg)
    local user = "user#id"..msg.from.id
    if lock_fosh == "yes" then
       delete_msg(msg.id, ok_cb, true)
    end
end
 
return {
  patterns = {
    "(ک*س)$",
    "کیر",
	"کص",
	"کــــــــــیر",
	"join",
	"telegram",
	"https://t.me/joinchat/",
    "ک×یر",
	"ک÷یر",
	"ک*ص",
	"https://t.me/",
	"https",
	"سکسی",
    "kir",
	"kos",
	"گوساله",
	"کون",
	"تخم",
	"سیکتیر",
	"سکس",
	"جغ",
	"جلغ",
	"جلق",
	"@",	
  },
  run = run
}



