
--- Model where a given Society grows, filling
-- the whole space. Agents reproduce with 20% of
-- probability if there is an empty neighbor.
-- @image growing-society.bmp
GrowingSociety = LogoModel{
	quantity = 1,
	dim = 20,
	chart = true,
	background = "green",
	finalTime = 100,
	changes = function(agent)
		if Random():number() < 0.2 then
			agent:breed()
		end

		agent:relocate()
	end
}

