local function run(msg)
   local data = load_data(_config.moderation.data)
    if data[tostring(msg.to.id)]['settings']['chat'] == '❌' then
    return nil
  end
if msg.text == "خوبی" then
	return reply_msg(msg.id, "فدات تو خوبی", ok_cb, false)
end
if msg.text == "چه خبر" then
	return reply_msg(msg.id,  "سلامتی", ok_cb, false)
end
if msg.text == "تم استریک؟" then
	return reply_msg(msg.id, "بلی؟", ok_cb, false)
end
if msg.text == "سام" then
	return reply_msg(msg.id, "مآی فادِر بیا این دئوث کارت داره😐", ok_cb, false)
end
if msg.text == "سامان" then
	return reply_msg(msg.id, "مآی فادِر بیا این دئوث کارت داره😐", ok_cb, false)
end
if msg.text == "ابول" then
	return reply_msg(msg.id, "مآی فادِر بیا این دئوث کارت داره😐", ok_cb, false)
end
if msg.text == "سدو" then
	return reply_msg(msg.id, "به بابام سام چی کار داری؟", ok_cb, false)
end
if msg.text == "sam" then
	return reply_msg(msg.id, "به بابام سام چی کار داری", ok_cb, false)
end
if msg.text == "سام کجایه" then
	return reply_msg(msg.id, "بابام سرش شلوغه برو فردا بیا :|", ok_cb, false)
end
if msg.text == "سام بیا" then
	return reply_msg(msg.id, "بابام سرش شلوغه برو فردا بیا :|", ok_cb, false)
end
if msg.text == "ابول بیا" then
	return reply_msg(msg.id, " بابام سرش شلوغه برو فردا بیا:|", ok_cb, false)
end 
if msg.text == "TELE STRIKE" then
	return reply_msg(msg.id, "Best Team Of Telegram😎", ok_cb, false)
end
if msg.text == "telestrike" then
	return reply_msg(msg.id, "Best Team Of Telegram😎", ok_cb, false)
end
if msg.text == "TELE STRIKE" then
	return reply_msg(msg.id, "Best Team Of Telegram😎", ok_cb, false)
end
if msg.text == "STRIKE TM" then
	return reply_msg(msg.id, "Best Team Of Telegram😎", ok_cb, false)
end
if msg.text == "ربات" then
	return reply_msg(msg.id, "وات؟😐", ok_cb, false)
end
if msg.text == "کانال" then
	return reply_msg(msg.id, "کانال تیم @TM_StRiKe", ok_cb, false)
end
if msg.text == "علی" then
	return reply_msg(msg.id, "اسم اصلیش علی بنگی😂", ok_cb, false)
end
if msg.text == "مهدی" then
	return reply_msg(msg.id, "اسم اصلیش پوست خیار", ok_cb, false)
end
if msg.text == "/start" then
	return reply_msg(msg.id, "میخاری؟", ok_cb, false)
end
if msg.text == "دوخی" then
	return reply_msg(msg.id, "چس اسپمر نگاییدم", ok_cb, false)
end
if msg.text == "سدو سام" then
	return reply_msg(msg.id, "مآی فادِر بیا این دئوث کارت داره😐", ok_cb, false)
end
if msg.text == "تل استریک" then
	return reply_msg(msg.id, "What?", ok_cb, false)
end
if msg.text == "استریک" then
	return reply_msg(msg.id, "بلی؟", ok_cb, false)
end
if msg.text == "تم استریک" then
	return reply_msg(msg.id, "بلی؟", ok_cb, false)
end
if msg.text == "bot" then
	return reply_msg(msg.id, "😐؟", ok_cb, false)
end
if msg.text == "Bot" then
	return reply_msg(msg.id, "کاری داری؟", ok_cb, false)
end
if msg.text == "؟" then
	return reply_msg(msg.id, ":|", ok_cb, false)
end
if msg.text == "بای" then
	return reply_msg(msg.id, "خدافظ😐✋", ok_cb, false)
end
if msg.text == "bye" then
	return reply_msg(msg.id, "Bye😐✋", ok_cb, false)
end
if msg.text == "Bye" then
	return reply_msg(msg.id, "Bye😐✋", ok_cb, false)
end
if msg.text == "کص نگو" then
	return reply_msg(msg.id, "نگایدمت بابا کص  گفتنی نی کردنیه بده بکنیم", ok_cb, false)
end
if msg.text == "سلام" and is_sudo(msg) then
	return reply_msg(msg.id, "😐✋سلام مآی فادِر", ok_cb, false)
    else
	return reply_msg(msg.id, "😐✋سلام", ok_cb, false)
end
end

return {
	description = "Chat With Robot Server", 
	usage = "chat with robot",
	patterns = {
		"^سلام$",
		"^خوبی$",
		"^چه خبر$",
		"^تم استریک؟$",
		"^دوخی$",
		"^کص نگو$",
		"^کانال$",
		"^ربات$",
   "^علی$",
		"^استریک تیم$",
  		"^sam$",
   "^/start$",
   "^تل استریک$",
   "^ابول$",
   "^STRIKE TM$",
   "^مهدی$",
                                "^[Tt]elestrike$",
		"^[Bb]ye$",
                                "^[Bb]ot$",
		"^؟$",
		"^بای$",
		"^سام$",
		"^سدو$",
		"^سام کجایه$",
		"^سام بیا$"
		}, 
	run = run,
	pre_process = pre_process
}
