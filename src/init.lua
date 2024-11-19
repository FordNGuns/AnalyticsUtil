--[=[
	AnalyticsUtil module provides utility functions for analytics purposes.

	Functions:
	- GetIsFollowing: Checks if a user is following another user on Roblox.
	- GetFollowers: Retrieves the number of followers for a given user ID.
	- GetLikes: Retrieves the number of likes for a given universe ID.
	- GetSuffix: Retrieves the number you input as a shortened version, E.G 1.5k.
	- GetFormat: Formats a number with commas as thousand separators.

	```lua
	local isFollowing = AnalyticsUtil.GetIsFollowing(1318471639, 86107548) (is 86107548 following 1318471639)
	local followers = AnalyticsUtil.GetFollowers(123456789)
	local likes = AnalyticsUtil.GetLikes(987654321)
	local suffix = AnalyticsUtil.GetSuffix(1000000)
	local formattedNumber = AnalyticsUtil.GetFormat(9000000)
    	print("Is Following:", isFollowing, "Followers:", followers, "Likes:", likes, "1 Million:", suffix, "Formatted Number:", formattedNumber)
	```
]=]
local AnalyticsUtil = {
	GetIsFollowing = require(script.GetIsFollowing);
	GetFollowers =  require(script.GetFollowers);
	GetLikes =  require(script.GetLikes);
	GetSuffix = require(script.GetSuffix);
	GetFormat = require(script.GetFormat);
}

type AnalyticsUtil = {
	GetIsFollowing: (userId: number, targetUserId: number, cursor: string?) -> boolean,
	GetFollowers: (UserId: number) -> number,
	GetLikes: (UniverseId: number) -> number,
	GetSuffix: (Number: number) -> number,
	GetFormat: (number: number) -> number,
}

return AnalyticsUtil:: AnalyticsUtil
