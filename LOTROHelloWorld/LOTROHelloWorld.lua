-- Import APIs
import "Turbine"
import "Turbine.UI"
import "Turbine.UI.Lotro"

-- Create new class for plugin initialization
LOTROHelloWorld = class(Turbine.Plugin)

function TestPlugin:Constructor()
Turbine.Plugin.Constructor(self)
Turbine.Shell.WriteLine("TestPlugin is Loaded!")
self.window = HelloWorldWindow() -- Create the window when plugin loads
end

-- Define window class
HelloWorldWindow = class(Turbine.UI.Window)

function HelloWorldWindow:Constructor()
Turbine.UI.Window.Constructor(self)

-- Window size
self:SetSize(300, 150)
self:SetPosition(500, 300) -- Optional: Adjust position on screen

-- Create text label inside the window
self.label = Turbine.UI.Label()
self.label:SetParent(self)
self.label:SetSize(280, 30)
self.label:SetPosition(10, 50)
self.label:SetText("Hello Middle Earth!")
self.label:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter)

-- Create a close button
self.closeButton = Turbine.UI.Lotro.Button()
self.closeButton:SetParent(self)
self.closeButton:SetText("Close")
self.closeButton:SetSize(80, 30)
self.closeButton:SetPosition(110, 100)

-- Hide window when button is clicked
self.closeButton.MouseClick = function(sender, args)
self:SetVisible(false)
end

-- Show the window
self:SetVisible(true)
end
