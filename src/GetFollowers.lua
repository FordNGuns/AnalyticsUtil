--[=[
	Retrieves the number of followers for a given user ID.

	@param userId number -- The user ID to retrieve followers for.
	@param cursor string? -- The cursor for pagination (optional).
	@return number -- The total number of followers.

	```lua
	local followerCount = GetFollowers(123456789)
	print("Follower Count:", followerCount)
	```
]=]
local HttpService = game:GetService("HttpService");

function GetFollowers(userId, cursor)
	local url = ("https://friends.roproxy.com/v1/users/%s/followers/count"):format(tostring(userId));
	
	local success, output = pcall(function() return HttpService:JSONDecode(HttpService:GetAsync(url)) end);
	
	if not (success) then
		print(success)
		return 0;
	else
		return output.count;
	end
end

return GetFollowers

