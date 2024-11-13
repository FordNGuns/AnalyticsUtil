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
	local followerCount = 0;
	local url = ("https://friends.roproxy.com/v1/users/%s/followers?limit=100"):format(tostring(userId));
	
	if(typeof(cursor) == "string") then
		url = ("%s&cursor=%s"):format(url, cursor);
	end
	
	local success, output = pcall(function() return HttpService:JSONDecode(HttpService:GetAsync(url)) end);
	
	if not (success) then
		return followerCount;
	end
	
	followerCount = followerCount + #output.data;
	
	if(output.nextPageCursor) then
		followerCount = followerCount + GetFollowers(userId, output.nextPageCursor);
	end
	
	return followerCount;
end

return GetFollowers

