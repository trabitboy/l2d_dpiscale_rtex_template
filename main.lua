cvsw=640
cvsh=480

 dpiScl=love.window.getDPIScale()
 
ww,wh=love.window.getMode()
ww=ww/dpiScl
wh=wh/dpiScl

 function determineHDUicanvasZoom(nww,nwh)
	local pscrsx=nww/cvsw
	local pscrsy=nwh/cvsh
	if pscrsx>pscrsy then
		scrsy=pscrsy
		scrsx=pscrsy
	else
		scrsy=pscrsx
		scrsx=pscrsx
	
	end
	-- addMsg('zoom ' .. scrsx)
 
 end
 
 
 -- scrsx=ww/conf.cvsw
 -- scrsy=wh/conf.cvsh
 
determineHDUicanvasZoom(ww,wh) 
 
 
settings={}
settings.dpiscale=1.0

cvs=love.graphics.newCanvas(cvsw,cvsh,settings)







function love.draw()
	love.graphics.setCanvas(cvs)
	love.graphics.clear(0.,0.,0.,1.0)
	
	love.graphics.rectangle('line',10,10,cvsw-20,cvsh-20)

	love.graphics.setCanvas()
	love.graphics.draw(cvs,0,0,0,scrsx,scrsy)

end