-----------------------------------------------------------------------------------------
--
-- main.lua
--
-- Created by: Sebastian N
-- Created on: March 8
--
-- This program compares a random number from the computer with one of the user.
-----------------------------------------------------------------------------------------

-- Display
display.setDefault('background', 0, 0, 0.5)
local myTitle = display.newText('Please pick a number between 1 and 6!!!', 1024, 150, native.SystemFont, 100)

-- Textfield for number of the user
local numberTextfield = native.newTextField(display.contentCenterX, 400, 300, 150)
numberTextfield.id = 'The text field'

-- Button
local myButton = display.newImageRect('Assets/Sprites/theButton.png', 200, 200)
myButton.x = display.contentCenterX + 400
myButton.y = 410
myButton.id = 'The initiation'

-- Decision 
local function randomNumber(event)
	--Variables
	math.randomseed( os.time())
	local randomNumberEQ = math.random( 1, 6)
	local numberUser = tonumber(numberTextfield.text)
	local result 

	-- IF statement
	if randomNumberEQ == numberUser then
		result = display.newText('Yes! You got it right!', display.contentCenterX, display.contentCenterY, native.SystemFont, 100)
	else 
		result = display.newText('Oh no! The number was '.. randomNumberEQ, display.contentCenterX, display.contentCenterY, native.SystemFont, 100)
	end
end 
print(randomNumberEQ)

myButton: addEventListener('touch', randomNumber)