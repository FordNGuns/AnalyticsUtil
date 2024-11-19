--[=[
	Formats a number with commas as thousand separators.

	@param number number -- The number to format.
	@return string -- The formatted number as a string.

	```lua
	local formattedNumber = GetFormat(9000000)
	print(formattedNumber) -- Output: 9,000,000
	```
]=]
function GetFormat(number: number): number
	return tostring(number):reverse():gsub("(%d%d%d)", "%1,"):reverse():gsub("^,", "")
end

return GetFormat
