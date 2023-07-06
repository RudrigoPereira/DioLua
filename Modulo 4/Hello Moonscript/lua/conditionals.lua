print()
local lowHealthThreshold = 0.25
local health = 8
local maxHelth = 10
local healthRate = health / maxHelth
local hasLowHealth = healthRate <= lowHealthThreshold
local message
if hasLowHealth then
  message = "Low health"
else
  message = "Normal health"
end
print(message)
if hasLowHealth then
  print("!!! Warning !!!")
end
if not (hasLowHealth) then
  return print("You're good! Carry on.")
end
