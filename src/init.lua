--[=[
	AnalyticsUtil module provides utility functions for analytics purposes.

	Functions:
	- GetFollowers: Retrieves the number of followers for a given user ID.
	- GetLikes: Retrieves the number of likes for a given universe ID.

	```lua
	local followers = AnalyticsUtil.GetFollowers(123456789)
	local likes = AnalyticsUtil.GetLikes(987654321)
	print("Followers:", followers, "Likes:", likes)
	```
]=]
local AnalyticsUtil = {
	GetFollowers =  require(script.GetFollowers);
	GetLikes =  require(script.GetLikes)
}

type AnalyticsUtil = {
	GetFollowers: (UserId: number) -> number,
	GetLikes: (UniverseId: number) -> number,
}

return AnalyticsUtil:: AnalyticsUtil