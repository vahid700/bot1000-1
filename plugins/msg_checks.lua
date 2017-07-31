local function pre_process(msg)
if is_chat_msg(msg) or is_super_group(msg) then
	if msg and not is_momod(msg) and not is_whitelisted(msg.from.id) then --if regular user
	local data = load_data(_config.moderation.data)
	local print_name = user_print_name(msg.from):gsub("?", "") -- get rid of rtl in names
	local name_log = print_name:gsub("_", " ") -- name for log
	local to_chat = msg.to.type == 'chat'
end
-- End 'RondoMsgChecks' text checks by @Rondoozle
	return msg
	end
end
--End pre_process function
return {
	patterns = {},
	pre_process = pre_process
}