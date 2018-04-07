local function MaTaDoRTeaM(mr, shiry) 
if ((shiry[1]:lower() == 'gif' ) or (shiry[1] == 'گیف' )) and is_mod(mr) then	
	local modes = {'memories-anim-logo','alien-glow-anim-logo','flash-anim-logo','flaming-logo','whirl-anim-logo','highlight-anim-logo','burn-in-anim-logo','shake-anim-logo','inner-fire-anim-logo','jump-anim-logo'}
	local text = URL.escape(shiry[2])
	local url = 'http://www.flamingtext.com/net-fu/image_output.cgi?_comBuyRedirect=false&script='..modes[math.random(#modes)]..'&text='..text..'&symbol_tagname=popular&fontsize=70&fontname=futura_poster&fontname_tagname=cool&textBorder=15&growSize=0&antialias=on&hinting=on&justify=2&letterSpacing=0&lineSpacing=0&textSlant=0&textVerticalSlant=0&textAngle=0&textOutline=off&textOutline=false&textOutlineSize=2&textColor=%230000CC&angle=0&blueFlame=on&blueFlame=false&framerate=75&frames=5&pframes=5&oframes=4&distance=2&transparent=off&transparent=false&extAnim=gif&animLoop=on&animLoop=false&defaultFrameRate=75&doScale=off&scaleWidth=240&scaleHeight=120&&_=1469943010141'
	local title , res = http.request(url)
	local mod = {'Blinking+Text','No+Button','Dazzle+Text','Walk+of+Fame+Animated','Wag+Finger','Glitter+Text','Bliss','Flasher','Roman+Temple+Animated',}
	local set = mod[math.random(#mod)]
	local colors = {'00FF00','6699FF','CC99CC','CC66FF','0066FF','000000','CC0066','FF33CC','FF0000','FFCCCC','FF66CC','33FF00','FFFFFF','00FF00'}
	local bc = colors[math.random(#colors)]
	local colorss = {'00FF00','6699FF','CC99CC','CC66FF','0066FF','000000','CC0066','FF33CC','FFF200','FF0000','FFCCCC','FF66CC','33FF00','FFFFFF','00FF00'}
	local tc = colorss[math.random(#colorss)]
	local url2 = 'http://www.imagechef.com/ic/maker.jsp?filter=&jitter=0&tid='..set..'&color0='..bc..'&color1='..tc..'&color2=000000&customimg=&0='..shiry[2]
	local title1 , res = http.request(url2)
			if res ~= 200 then return end
			if title then
				if json:decode(title) then
					local jdat = json:decode(title)
					local gif = jdat.src
					local file = download_to_file(gif,'Gif.gif')
					tdbot.sendDocument(mr.to.id, file, "℘ @TMStriKe", nil, mr.id, 0, 1, nil, dl_cb, nil)
				end
			end
			if title1 then
				if json:decode(title1) then
					local jdat = json:decode(title1)
					local gif = jdat.resImage
					local file = download_to_file(gif,'Gif-Random.gif')
					tdbot.sendDocument(mr.to.id, file, "℘ @TMStriKe", nil, mr.id, 0, 1, nil, dl_cb, nil)
				end
			end
end
end 

return { 
patterns = {"^[!#/](gif) (.*)","^([Gg]if) (.*)","^(گیف) (.*)$",}, 
run = MaTaDoRTeaM 
}