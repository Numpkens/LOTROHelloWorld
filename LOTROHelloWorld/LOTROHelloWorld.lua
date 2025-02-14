--Import APIs
import "Turbine"
import "Turbine.UI"
import "Turbine.UI.Lotro"



--Create new class for plugin initialzation code
HelloWorld = class(Turbine.Plugin)

function HelloWorld:Constructor()
    Turbine.Plugin.Constructor(self)
    Turbine.Shell.WriteLine("HelloWorld Plugin is Loaded!")
    self.window = HelloWorldWindow()
end

--Create window
--Define window class
HelloWorldWindow = class(Turbine.UI.Window)

function HelloWorldWindow:Constructor()
    Turbine.UI.Window.Constructor(self)
    self.closeButton = Turbine.UI.Turbine.Button()
    self.closeButton:setParent(self)
    self.closeButton:SetText("Close")
    self.closeButton:SetSize (80,30)
    self.closeButton:SetPosition(100, 100)
    self.closeButton.MouseClick = function(sender, args)
    self:SetVisible(false) -- Hide the window
    end



--Window size
self:SetSize(300, 150)

--Add text label
self:SetText("Hello Middle Earth")

--Handle hide and show functionality
self:SetVisible(true)
end




