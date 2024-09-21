getgenv().AuthTime = tick()

fuckyou = (game.PlaceId) or (game.JobId) or game.gameId
request = (syn and syn.request) or (http and http.request) or http_request or (fluxus and fluxus.request) or request

if not game:IsLoaded() then game.Loaded:Wait() end

local a = request({
    --Url = "https://raw.githubusercontent.com/pri4c1lla/Loader/main/folder"..fuckyou..".lua",
    Method = "GET"
})
if a.StatusCode == 200 then
    print("Loading main(script)")
    loadstring(a.Body)()
else
    print("แย่วะ. "..StatusCode)
    game.StarterGui:SetCore("SendNotification", {Icon = "rbxassetid://9419562118";Title = "Script is No Longer", Text = "",})
end
