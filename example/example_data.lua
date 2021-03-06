return {

	--[[
	style:
	1 - look up table list
	2 - formula
	
	--]]
	shooter = {
		level = 1,
		xp_needed = 0,
		total_xp = 0,
		style = 1, -- style determines the behavior of leveling up - using look up table vs formulas
		loop = false, -- to loop back to level 1 or not once loop_level is reached
		loop_level = 100,
		loop_reset_xp_amounts = false,
		loops_done = 0, -- loops done, can show stars next to level showing loops
		max_level = 100,
		limit_by_max_level = false,

		node_text_xp_current = nil, -- these are the names of the nodes and not the result of gui.get_node(id)
		node_text_xp_max = nil, -- you can set default values to these if you want
		node_clipper = nil,
		node_current_level_text = nil,
		
		formulas = { -- you can define different formulas for different level ranges
			[1] = {level = 10, formula = function (level) return level * 250 end}, -- these are only sample formulas not ones you should use
			[2] = {level = 11, formula = function (level) return level * 251 end},
			[2] = {level = 12, formula = function (level) return 10000 end}, -- you can return fixed numbers for levels too
			[3] = {level = 13, formula = function (level) return math.floor(0.02 * level^3 + 3.06 * level^2 + 105.6 * level - 895) end} -- this formula is only meant for levels 12 and up this is "souls" style xp
			-- above "souls" formula breaks at low levels fyi
		},
		xp_amounts = { -- this is a lookup table so you can easily control level amounts
			2000, -- 1
			3500, --  2
			5000,  -- 3
			6500,  -- 4
			7500,  -- 5
			8500,  -- 6
			9500,  -- 7
			10500,  -- 8
			11500,  -- 9
			12500, -- 10
			13500,  -- 11
			14500,  -- 12
			15000,  -- 13
			16000,  -- 14
			16500,  -- 15
			17000,  -- 16
			17500,  -- 17
			18000,  -- 18
			18500, -- 19
			19000,  -- 20
			20000 -- 21+
		},

		

	},
	arpg = {},
	rpg = {}

}
