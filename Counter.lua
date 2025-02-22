--[[
  OPEN SOURCE : BY ICARUS SOFTWARE
  PLEASE GIVE CREDIT, NO SKIDDING
]]--

-- Gui to Lua
-- Version: 3.2

-- Instances:

local Counter = Instance.new("ScreenGui")
local Backframe = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Count = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local HumaneDelay = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local Reset = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local SetCounterTB = Instance.new("TextBox")
local UICorner_5 = Instance.new("UICorner")
local SetCount = Instance.new("TextButton")
local UICorner_6 = Instance.new("UICorner")
local Captials = Instance.new("TextButton")
local UICorner_7 = Instance.new("UICorner")
local Errors = Instance.new("TextButton")
local UICorner_8 = Instance.new("UICorner")

local function StringtoTable(s)
   local t = {}
   s:gsub(".", function(c) table.insert(t, c) return c end)
   return t
end

function Chat(Message)
	Message = tostring(Message)
	local suc, err = pcall(function()
		if game:GetService("ReplicatedStorage"):FindFirstChild('DefaultChatSystemChatEvents') then
			local args = {
				[1] = Message,
				[2] = "All"
			}

			game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
		else
			local textchannel = game:GetService("TextChatService"):WaitForChild("TextChannels"):WaitForChild("RBXGeneral")
			textchannel:SendAsync(Message)
		end
	end)
	if not suc then
		warn("Chat message has an error! [0x009]"..err)
	end
end

--Properties:

Counter.Name = "Counter"
Counter.Parent = game.CoreGui
Counter.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Backframe.Name = "Backframe"
Backframe.Parent = Counter
Backframe.BackgroundColor3 = Color3.fromRGB(13, 13, 13)
Backframe.BorderColor3 = Color3.fromRGB(0, 0, 0)
Backframe.BorderSizePixel = 0
Backframe.Position = UDim2.new(0.0655555576, 0, 0.150862068, 0)
Backframe.Size = UDim2.new(0.289999992, 0, 0.303879321, 0)
Backframe.Active = true
Backframe.Draggable = true

UICorner.Parent = Backframe

Count.Name = "Count"
Count.Parent = Backframe
Count.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Count.BackgroundTransparency = 0.900
Count.BorderColor3 = Color3.fromRGB(0, 0, 0)
Count.BorderSizePixel = 0
Count.Position = UDim2.new(0.0306513403, 0, 0.340425521, 0)
Count.Size = UDim2.new(0.471264362, 0, 0.141843975, 0)
Count.Font = Enum.Font.SourceSansBold
Count.Text = "COUNT : 0"
Count.TextColor3 = Color3.fromRGB(255, 255, 255)
Count.TextScaled = true
Count.TextSize = 14.000
Count.TextWrapped = true

UICorner_2.CornerRadius = UDim.new(0, 3)
UICorner_2.Parent = Count

HumaneDelay.Name = "HumaneDelay"
HumaneDelay.Parent = Backframe
HumaneDelay.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HumaneDelay.BackgroundTransparency = 0.900
HumaneDelay.BorderColor3 = Color3.fromRGB(0, 0, 0)
HumaneDelay.BorderSizePixel = 0
HumaneDelay.Position = UDim2.new(0.0306513403, 0, 0.560283661, 0)
HumaneDelay.Size = UDim2.new(0.471264362, 0, 0.141843975, 0)
HumaneDelay.Font = Enum.Font.SourceSansBold
HumaneDelay.Text = "Humane Delay : True"
HumaneDelay.TextColor3 = Color3.fromRGB(255, 255, 255)
HumaneDelay.TextScaled = true
HumaneDelay.TextSize = 14.000
HumaneDelay.TextWrapped = true

UICorner_3.CornerRadius = UDim.new(0, 3)
UICorner_3.Parent = HumaneDelay

Reset.Name = "Reset"
Reset.Parent = Backframe
Reset.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Reset.BackgroundTransparency = 0.900
Reset.BorderColor3 = Color3.fromRGB(0, 0, 0)
Reset.BorderSizePixel = 0
Reset.Position = UDim2.new(0.540229857, 0, 0.560283661, 0)
Reset.Size = UDim2.new(0.432950199, 0, 0.141843975, 0)
Reset.Font = Enum.Font.SourceSansBold
Reset.Text = "RESET COUNTER"
Reset.TextColor3 = Color3.fromRGB(255, 255, 255)
Reset.TextScaled = true
Reset.TextSize = 14.000
Reset.TextWrapped = true

UICorner_4.CornerRadius = UDim.new(0, 3)
UICorner_4.Parent = Reset

Frame.Parent = Backframe
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BackgroundTransparency = 0.900
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0, 0, 0.205673754, 0)
Frame.Size = UDim2.new(1, 0, 0.0496453904, 0)

TextLabel.Parent = Backframe
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.114942528, 0, 0.0496453904, 0)
TextLabel.Size = UDim2.new(0.766283512, 0, 0.156028375, 0)
TextLabel.Font = Enum.Font.Unknown
TextLabel.Text = "MILITARY TRAINING COUNTER"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

SetCounterTB.Name = "SetCounterTB"
SetCounterTB.Parent = Backframe
SetCounterTB.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SetCounterTB.BackgroundTransparency = 0.850
SetCounterTB.BorderColor3 = Color3.fromRGB(0, 0, 0)
SetCounterTB.BorderSizePixel = 0
SetCounterTB.Position = UDim2.new(0.858237565, 0, 0.347517729, 0)
SetCounterTB.Size = UDim2.new(0.111111112, 0, 0.134751767, 0)
SetCounterTB.ZIndex = -1
SetCounterTB.Font = Enum.Font.SourceSans
SetCounterTB.Text = ""
SetCounterTB.TextColor3 = Color3.fromRGB(255, 255, 255)
SetCounterTB.TextScaled = true
SetCounterTB.TextSize = 14.000
SetCounterTB.TextWrapped = true

UICorner_5.CornerRadius = UDim.new(0, 3)
UICorner_5.Parent = SetCounterTB

SetCount.Name = "SetCount"
SetCount.Parent = Backframe
SetCount.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SetCount.BackgroundTransparency = 0.900
SetCount.BorderColor3 = Color3.fromRGB(0, 0, 0)
SetCount.BorderSizePixel = 0
SetCount.Position = UDim2.new(0.540229857, 0, 0.340425521, 0)
SetCount.Size = UDim2.new(0.291187733, 0, 0.141843975, 0)
SetCount.Font = Enum.Font.SourceSansBold
SetCount.Text = "SetCount :"
SetCount.TextColor3 = Color3.fromRGB(255, 255, 255)
SetCount.TextScaled = true
SetCount.TextSize = 14.000
SetCount.TextWrapped = true

UICorner_6.CornerRadius = UDim.new(0, 3)
UICorner_6.Parent = SetCount

Captials.Name = "Captials"
Captials.Parent = Backframe
Captials.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Captials.BackgroundTransparency = 0.900
Captials.BorderColor3 = Color3.fromRGB(0, 0, 0)
Captials.BorderSizePixel = 0
Captials.Position = UDim2.new(0.540229857, 0, 0.787234068, 0)
Captials.Size = UDim2.new(0.432950199, 0, 0.141843975, 0)
Captials.Font = Enum.Font.SourceSansBold
Captials.Text = "All Caps : True"
Captials.TextColor3 = Color3.fromRGB(255, 255, 255)
Captials.TextScaled = true
Captials.TextSize = 14.000
Captials.TextWrapped = true

UICorner_7.CornerRadius = UDim.new(0, 3)
UICorner_7.Parent = Captials

Errors.Name = "Type"
Errors.Parent = Backframe
Errors.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Errors.BackgroundTransparency = 0.900
Errors.BorderColor3 = Color3.fromRGB(0, 0, 0)
Errors.BorderSizePixel = 0
Errors.Position = UDim2.new(0.0306513403, 0, 0.787234068, 0)
Errors.Size = UDim2.new(0.471264362, 0, 0.141843975, 0)
Errors.Font = Enum.Font.SourceSansBold
Errors.Text = "Type : Normal"
Errors.TextColor3 = Color3.fromRGB(255, 255, 255)
Errors.TextScaled = true
Errors.TextSize = 14.000
Errors.TextWrapped = true

UICorner_8.CornerRadius = UDim.new(0, 3)
UICorner_8.Parent = Errors

--Actual Code:

local NumberToWordsTable = {
    ["0"] = "",
	["1"] = "One",
	["2"] = "Two",
	["3"] = "Three",
	["4"] = "Four",
	["5"] = "Five",
	["6"] = "Six",
	["7"] = "Seven",
	["8"] = "Eight",
	["9"] = "Nine",
	["10"] = "Ten",
	["11"] = "Eleven",
	["12"] = "Twelve",
	["13"] = "Thirteen",
	["14"] = "Fourteen",
	["15"] = "Fifteen",
	["16"] = "Sixteen",
	["17"] = "Seventeen",
	["18"] = "Eighteen",
	["19"] = "Nineteen",
	["20"] = "Twenty",
	["30"] = "Thirty",
	["40"] = "Forty",
	["50"] = "Fifty",
	["60"] = "Sixty",
	["70"] = "Seventy",
	["80"] = "Eighty",
	["90"] = "Ninety",
	["100"] = "Hundred",
}

local CountNumber = 0
local CapitalsVal = 1 -- 1 : True, 2 : Grammer, 3 : None
local Reverse = 0 -- 0 : Normal, 1 : Reverse Order, 2 : Reverse Text, 3 : Hell, 4 : Death
local HumaneDelayBool = true

HumaneDelay.MouseButton1Click:Connect(function()
    HumaneDelayBool = not HumaneDelayBool
    if HumaneDelayBool then
        HumaneDelay.Text = "Humane Delay : True"
    else
        HumaneDelay.Text = "Humane Delay : False"
    end
end)

local typechanged = false
Errors.MouseButton1Click:Connect(function()
    Reverse = Reverse + 1
    if Reverse > 4 then
        Reverse = 0
    end
    typechanged = true
    if Reverse == 4 then
        Errors.Text = "Type : Death"
    elseif Reverse == 3 then
        Errors.Text = "Type : Hell"
    elseif Reverse == 2 then
        Errors.Text = "Type : Reverse Text"
    elseif Reverse == 1 then
        Errors.Text = "Type : Reverse Order"
    elseif Reverse == 0 then
        Errors.Text = "Type : Normal"
    end
end)

Captials.MouseButton1Click:Connect(function()
    CapitalsVal = CapitalsVal + 1
    if CapitalsVal > 3 then
        CapitalsVal = 1
    end
    if CapitalsVal == 3 then
        Captials.Text = "All Caps : None"
    elseif CapitalsVal == 2 then
        Captials.Text = "All Caps : Grammar"
    elseif CapitalsVal == 1 then
        Captials.Text = "All Caps : True"
    end
end)

local function SetCountFunc(SetCountNumber)
	CountNumber = SetCountNumber
	Count.Text = "COUNT : "..SetCountNumber
end

SetCount.MouseButton1Click:Connect(function()
    local NumbToSet = tonumber(SetCounterTB.Text)
    if NumbToSet == 0 or NumbToSet < 0 then
        NumbToSet = 1
    end
    SetCountFunc(NumbToSet)
end)

Reset.MouseButton1Click:Connect(function()
    SetCountFunc(0)
end)

local function CountSay()
    local StringFormat = ""
	if CountNumber <= 99 then
	    if CountNumber <= 20 then
	        StringFormat = NumberToWordsTable[tostring(CountNumber)]
	    else
	        local FirstNumber = string.sub(tostring(CountNumber), 1,1)
	        local SecondNumber = string.sub(tostring(CountNumber), 2,2)
	        if SecondNumber == tostring(0) then
	            StringFormat = NumberToWordsTable[tostring(FirstNumber * 10)]
	        else
	            StringFormat = NumberToWordsTable[tostring(FirstNumber * 10)] .. " ".. NumberToWordsTable[tostring(SecondNumber)]
	        end
	    end 
	elseif CountNumber <= 999 then
	    local FirstNumberr = string.sub(tostring(CountNumber), 1,1)
	    local SecondThirdNumber = tonumber(string.sub(tostring(CountNumber), 2,3))
	    
	    StringFormat = NumberToWordsTable[tostring(FirstNumberr)].." Hundred "
	    
	    if SecondThirdNumber > 0 then
	        if SecondThirdNumber <= 20 then
    	        StringFormat = StringFormat .. NumberToWordsTable[tostring(SecondThirdNumber)]
    	    else
    	        local FirstNumber = string.sub(tostring(SecondThirdNumber), 1,1)
    	        local SecondNumber = string.sub(tostring(SecondThirdNumber), 2,2)
    	        if SecondNumber == 0 then
    	            StringFormat = StringFormat .. NumberToWordsTable[tostring(FirstNumber * 10)]
    	        else
    	            StringFormat = StringFormat .. NumberToWordsTable[tostring(FirstNumber * 10)] .. " ".. NumberToWordsTable[tostring(SecondNumber)]
    	        end
    	    end  
	    end
	    
	    return StringFormat
	elseif CountNumber <= 9999 then
	    local FirstNumberr = string.sub(tostring(CountNumber), 1,1)
	    local SecondNumberr = string.sub(tostring(CountNumber), 2,2)
	    local ThirdForthNumber = tonumber(string.sub(tostring(CountNumber), 3,4))
	    
	    StringFormat = NumberToWordsTable[tostring(FirstNumberr)].." Thousand "
	    
	    if tonumber(SecondNumberr) > 0 then
	        StringFormat = StringFormat .. NumberToWordsTable[tostring(SecondNumberr)].." Hundred "   
	    end
	    
	    if ThirdForthNumber > 0 then
	        if ThirdForthNumber <= 20 then
    	        StringFormat = StringFormat .. NumberToWordsTable[tostring(ThirdForthNumber)]
    	    else
    	        local FirstNumber = string.sub(tostring(ThirdForthNumber), 1,1)
    	        local SecondNumber = string.sub(tostring(ThirdForthNumber), 2,2)
    	        if SecondNumber == 0 then
    	            StringFormat = StringFormat .. NumberToWordsTable[tostring(FirstNumber * 10)]
    	        else
    	            StringFormat = StringFormat .. NumberToWordsTable[tostring(FirstNumber * 10)] .. " ".. NumberToWordsTable[tostring(SecondNumber)]
    	        end
    	    end  
	    end
	    
	end
    
    if CapitalsVal == 1 then
        StringFormat = string.upper(StringFormat)
    elseif CapitalsVal == 2 then
        StringFormat = string.lower(StringFormat)
        StringFormat = string.upper(string.sub(StringFormat, 1, 1)) .. string.sub(StringFormat, 2,string.len(StringFormat)).."."
    else
        StringFormat = StringFormat
    end
    
    
	return StringFormat
end



-- 0 : Normal, 1 : Reverse Order, 2 : Reverse Text, 3 : Hell, 4 : Death
Count.MouseButton1Click:Connect(function()
  typechanged = false
    if Reverse == 1 then
        if CountNumber > 0 then
            SetCountFunc(CountNumber - 1)
        else
            return warn("False")
        end
    else
        SetCountFunc(CountNumber + 1) 
    end
    
    local Text = CountSay()
    
    if Reverse == 1 then
	    if CountNumber > 0 then
	        
	        if HumaneDelayBool then
                task.wait( string.len(Text) / 8  + .12)
	        end
	        Chat(CountSay())
	        
	    end
    elseif Reverse == 2 then
        local RText = ""
        local TextTab = StringtoTable(Text)
        for i ,v in pairs(TextTab) do
            RText = RText .. TextTab[#TextTab - i + 1]
            
            if HumaneDelayBool then
                task.wait( string.len(Text) / 6  + .08)
            end
        end
        
        Chat(RText)
    elseif Reverse == 3 then
        local TextTab = StringtoTable(Text)
        for i ,v in pairs(TextTab) do
          if typechanged then
            break
          end
            if HumaneDelayBool then
               task.wait(2.2 + math.random(20,60)/100) 
            end
            Chat(v)
        end
        
        if HumaneDelayBool then
            task.wait( string.len(Text) / 4  + 1.08)
        end
        if not typechanged then
          Chat(Text)
        end
        task.wait(0.05)
    elseif Reverse == 4 then
        local RText = ""
        local TextTab = StringtoTable(Text)
        for i ,v in pairs(TextTab) do
            RText = RText .. TextTab[#TextTab - i + 1]
            if HumaneDelayBool then
                task.wait(math.random(10,30)/100)
            end
        end
        
        TextTab = StringtoTable(RText)
        for i ,v in pairs(TextTab) do
          if typechanged then
            break
          end
            if HumaneDelayBool then
               task.wait(2.5 + string.len(Text) / 8 + math.random(19,30)/100) 
            end
            Chat(v)
        end
        
        if HumaneDelayBool then
            task.wait( string.len(Text) / 3  + .08 + 2.3)
        end
        if not typechanged then
          Chat(RText)
        end
        task.wait(0.05)
    else
        task.wait( string.len(Text) / 7  + .08)
	   Chat(CountSay())
	end
end)
