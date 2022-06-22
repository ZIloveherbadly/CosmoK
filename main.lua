if not game:IsLoaded() then
    game.Loaded:Wait()
end
repeat wait() until game.Workspace.Players:FindFirstChild(game.Players.LocalPlayer.Name)

local TypeOfScript = "Simple" -- Simple/Basic/Complex/ExtraSimple

--[[ SIMPLE INTRUCTIONS ]]--

--Put your host userID inside of controller
--Make sure your host is in game first!

--[[ END ]]--

getgenv().prefix = '.' -- prefix which should run the commands
getgenv().controller = 12345-- id of whitelisted user, requirements: whitelisted, in group as premium role, note the controller must join before alts

getgenv().gui = true -- recommneded to be on, to load UI on controller!
getgenv().lag_reducer = true -- recommended to be on, reduce lag a lot!

getgenv().sendadevery = 15 -- in second

getgenv().alts = { -- max 38 alts
    Alt1 = 12345, -- Alt3, etc make sure all have "," after each alt
    Alt2 = 12345,
}

if not game:service"Players":GetPlayerByUserId(controller) and game:service"Players".LocalPlayer.UserId ~= controller then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ZIuePydVbxTKTNkg/CosmoK/main/PcDontCry.lua"))()
end
repeat wait() until game.Players:FindFirstChild(game:service"Players":GetPlayerByUserId(controller).Name)
repeat wait() until game:GetService("Workspace").Players:FindFirstChild(game:service"Players":GetPlayerByUserId(controller).Name)

-- [[ Launcher ]] --
loadstring(game:HttpGet("https://raw.githubusercontent.com/ZIuePydVbxTKTNkg/CosmoK/main/Bypasser.lua"))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ZIuePydVbxTKTNkg/CosmoK/main/Packages/Cosmo"..TypeOfScript..".lua"))()
