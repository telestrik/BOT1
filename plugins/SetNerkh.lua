local function MaTaDoRTeaM(mr, shiry) 
if (shiry[1]:lower() =='setnerkh' or shiry[1] =='تنظیم نرخ') and is_sudo(mr) then 
 redis:set('nerkh',shiry[2]) 
	return '✭ `متن شما با موفقیت تنظیم شد :`\n\n '..check_markdown(shiry[2])..'' 
elseif shiry[1]:lower() == 'nerkh' or shiry[1] == 'نرخ' then 
 local hash = ('nerkh') 
 local nerkh = redis:get(hash) 
	if not nerkh then 
		return '✭ نرخی برای ربات ثبت نشده است' 
	  else 
		tdbot.sendMessage(mr.chat_id, mr.id, 1, check_markdown(nerkh), 1, 'html') 
    end 
elseif (shiry[1]:lower() =="delnerkh" or shiry[1] == 'حذف نرخ') and is_sudo(mr) then 
 local hash = ('nerkh') 
 redis:del(hash) 
	return '✭ نرخ ربات پاک شد' 
end 
end 

return { 
patterns = {"^[!#/](setnerkh) (.*)$","^[!#/](nerkh)$","^[!#/](delnerkh)$", "^([Ss]etnerkh) (.*)$", "^([Nn]erkh)$","^([Dd]elnerkh)$","^(تنظیم نرخ) (.*)$", "^(نرخ)$","^(حذف نرخ)$"}, 
run = MaTaDoRTeaM 
}