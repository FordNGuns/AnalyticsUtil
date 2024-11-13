--[=[
	Retrieves the number of likes for a given universe ID.

	@param universeId number -- The universe ID to retrieve likes for.
	@return number? -- The number of likes, or nil if an error occurred.

	```lua
	local likes = GetLikes(123456789)
	if likes then
		print("Likes:", likes)
	else
		print("Failed to retrieve likes.")
	end
	```
]=]
local id = "" -- Replace with your google scripts project id
local url = "https://script.google.com/macros/s/" .. id .. "/exec"
local https = game:GetService('HttpService')

function GetLikes(universeId)
	local response = https:GetAsync(url .. "?UniverseId=" .. tostring(universeId))
	response = https:JSONDecode(response)

	if response.result == "error" then
		return nil
	else
		local likes = response.response.response.data[1].upVotes
		return likes
	end
end

return GetLikes

