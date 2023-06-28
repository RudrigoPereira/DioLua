local class = require 'libs.middleclass'

local Banana = class("Banana")

function Banana:initialize(madura)
    self.madura = madura
end

function Banana:isGood()
    return self.madura
end

return Banana