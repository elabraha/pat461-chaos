--draft one, just declares two pages with different color backgrounds.  
--I don't have my device right now so this hasn't been tested yet.

FreeAllRegions()

r = nil
local currentpage
--page 1 is harmony, page 2 is chaos
function SwitchPage(self)
    if currentpage == 2 then
        currentpage = 1
        SetPage(currentpage)     
    else
        currentpage = 2
        SetPage(currentpage)
    end       
end

SetPage(1)
currentpage = 1
--harmony
r1 = Region()
r1.t = r1:Texture(0,128,255,255) --sky blue
r1:Handle("OnHorizontalScroll", SwitchPage)
r1:Show()
r1:EnableInput(true)
r1:SetWidth(ScreenWidth())
r1:SetHeight(ScreenHeight())
r1:SetAnchor("BOTTOMLEFT",0,0)
r1:SetLayer("BACKGROUND")


SetPage(2)
currentpage = 2
--chaos
r2 = Region()
r2.t = r2:Texture(32,32,32,255) --dark gray
r2:Handle("OnHorizontalScroll", SwitchPage)
r2:Show()
r2:EnableInput(true)
r2:SetWidth(ScreenWidth())
r2:SetHeight(ScreenHeight())
r2:SetAnchor("BOTTOMLEFT",0,0)
r2:SetLayer("BACKGROUND")