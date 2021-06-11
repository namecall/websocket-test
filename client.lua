--[[
   WebSocket Test v0.1b SOURCE // NOT Finished!
   
   Credits:
   -- {Soul#7195}
]]
-- global env functions
getgenv()["getservice"] = function(self, service)
   return game:GetService(service) or nil;
end
getgenv()["console"] = function(self, title)
    consolecreate(); -- creates console
    consolesettitle(title); -- sets console's title to <title>
end
-- services
local RunService = getservice("RunService")
local HttpService = getservice("HttpService")
local Players = getservice("Players")
-- client vars
local client = Players.LocalPlayer
local _clientName = client.Name
-- initialize console
console("Exploiter Chat");
-- initialize connection
local _websocket = "ws://localhost:4532/"
local _connection = WebSocket.connect(_websocket)
-- connection events
_connection.OnMessage:Connect(function(self, message)
    rconsoleprint("" .. tostring(message) .. "\n")
end
client.Chatted:Connect(function(message)
    _connection:Send(_clientName .. " : " .. message)
end
