--[=[
	Checks if a user is following another user on Roblox.

	@param userId number -- The user ID of the person whose followers are being checked.
	@param targetUserId number -- The user ID of the person to check if they are being followed.
	@param cursor string? -- The cursor for pagination, if needed.
	@return boolean -- Returns true if the target user is being followed, false otherwise.

	```lua
	local isFollowing = GetIsFollowing(123456, 654321)
	if isFollowing then
		print("User is following the target user.")
	else
		print("User is not following the target user.")
	end
	```
]=]
local HttpService = game:GetService("HttpService");

function GetIsFollowing(userId, targetUserId, cursor)
	local url = ("https://friends.roproxy.com/v1/users/%s/followers?limit=100"):format(tostring(userId));
	
	if(typeof(cursor) == "string") then
		url = ("%s&cursor=%s"):format(url, cursor);
	end
	
	local success, output = pcall(function() return HttpService:JSONDecode(HttpService:GetAsync(url)) end);
	
	if not (success) then
		return false;
	end
	
	if output.data then
		for index, entry in output.data do
			if entry["id"] == targetUserId then
				return true
			end
		end
	end
	
	if(output.nextPageCursor) then
		return GetIsFollowing(userId, targetUserId, output.nextPageCursor);
	end
	
	return false;
end

return GetIsFollowing

