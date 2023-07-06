print!

lowHealthThreshold = 0.25
health = 8
maxHelth = 10

healthRate = health / maxHelth
hasLowHealth = healthRate <= lowHealthThreshold
message = if hasLowHealth then "Low health" else "Normal health"
    
print message

print "!!! Warning !!!" if hasLowHealth

print "You're good! Carry on." unless hasLowHealth