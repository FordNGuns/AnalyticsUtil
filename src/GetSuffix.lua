--[=[
	Formats a number with a suffix based on its magnitude.

	@param Number number -- The number to format.
	@return string -- The formatted number with a suffix.

	```lua
	local formattedNumber = GetSuffix(1500)
	print(formattedNumber) -- Output: "1.5K"
	```
]=]
local Suffixes = {'K','M','B','T','Q','S','O','N'}

function GetSuffix(Number)
	return math.floor(((Number < 1 and Number) or math.floor(Number) / 10 ^ (math.log10(Number) - math.log10(Number) % 3)) * 10 ^ (Decimals or 2)) / 10 ^ (Decimals or 2)..((Suffixes)[math.floor(math.log10(Number) / 3)] or "")
end

return GetSuffix
