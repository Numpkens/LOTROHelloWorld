-- numpyframes.lua
import "Turbine";
import "Turbine.UI";
import "Turbine.UI.Lotro";

NumpyFramesPlugin = class( Turbine.Plugin );

function NumpyFramesPlugin:Constructor()
    Turbine.Plugin.Constructor( self );
    Turbine.Shell.WriteLine("NumpyFrames: Starting to load...");
    
    -- Create a simple window to verify UI works
    local window = Turbine.UI.Window();
    window:SetSize(200, 100);
    window:SetPosition(100, 100);
    window:SetVisible(true);
    
    local label = Turbine.UI.Label();
    label:SetParent(window);
    label:SetText("NumpyFrames Test");
    label:SetPosition(10, 10);
    label:SetSize(180, 20);
    label:SetVisible(true);
    
    Turbine.Shell.WriteLine("NumpyFrames: Load complete!");
end

plugin = NumpyFramesPlugin();