--[=[
	AnalyticsUtil module provides utility functions for analytics purposes.

	Functions:
	- GetFollowers: Retrieves the number of followers for a given user ID.
	- GetLikes: Retrieves the number of likes for a given universe ID.
	- GetSuffix: Retrieves the number you input as a shortened version, E.G 1.5k.

	```lua
	local followers = AnalyticsUtil.GetFollowers(123456789)
	local likes = AnalyticsUtil.GetLikes(987654321)
	local suffix = AnalyticsUtil.GetSuffix(1000000)
	print("Followers:", followers, "Likes:", likes, "1 Million:", suffix)
	```
]=]
local AnalyticsUtil = {
	GetFollowers =  require(script.GetFollowers);
	GetLikes =  require(script.GetLikes)
	GetSuffix = require(script.GetSuffix);
}

type AnalyticsUtil = {
	GetFollowers: (UserId: number) -> number,
	GetLikes: (UniverseId: number) -> number,
	GetSuffix: (Number: number) -> number,
}

return AnalyticsUtil:: AnalyticsUtil
