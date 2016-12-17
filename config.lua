
-- Note: Any mods which define the collision box size of prototypes in data-final-fixes.lua will not be affected by this code.
--       Prototypes normally defined in data.lua - or data-updates.lua loaded before this - will be properly updated.

-- Table of prototype types to check and the minimum gap required to allow walking in between them. Tiles are 0.5 wide. Can be set to a large value (e.g 1000) create the smallest possible collision box {{0,0},{0,0}}.
prototype_type_gap_requirements =
{
	["solar-panel"]             = 0.25,
	["accumulator"]             = 0.25,
	["generator"]               = 0.25,
	["pipe"]                    = 0.42,
	["pipe-to-ground"]          = 0.42,
	["container"]               = 0.25,
	["logistic-container"]      = 0.25,
	["assembling-machine"]      = 0.25,
	["arithmetic-combinator"]   = 0.25,
	["decider-combinator"]      = 0.25,
	["constant-combinator"]     = 0.25,
	["boiler"]                  = 0.42,
	["electric-pole"]           = 0.25,
	["mining-drill"]            = 0.25,
	["pump"]                    = 0.42,
	["radar"]                   = 0.25,
	["storage-tank"]            = 0.25,
	["tree"]                    = 0.42,
	["turret"]                  = 0.25,
	["beacon"]                  = 0.25,
	["furnace"]                 = 0.25,
	["lab"]                     = 0.25
}
-- All defined prototypes of the types listed above will be checked in adjust_collision_boxes() and have their collision boxes reduced to form the specified gap where needed.



--[[  Defines which prototypes squeak though should not alter for mod compatibility.

		apply_when_object_exists (optional):   Exclusions will only be applied when an object of the specified type and name is found ( in data.raw[type][name] ).
		                                       If omitted the exclusions will always be applied.
			type                                Note: The type and name code can be copied directly from the prototype definition in the mod to here.
			name

		excluded_prototype_names (optional):   (array) Individual prototypes which should not be altered e.g "small-pump" or "steam-engine".

		excluded_prototype_types (optional):   (array) Types of prototypes which should not be altered e.g "pump" or "generator".
		                                       All prototypes from all mods of the types specified will be excluded from alteration.
		                                       Meaning if you exclude "pump" no pumps will have their collision boxes changed.
--]]
exclusions =
{
	{  -- General Exclusions (always applied)
		excluded_prototype_names = {
			-- List names of individual prototypes to always exclude here (if needed).
		}
	},

	{  -- UraniumPower mod    (some test-entities display errors if altered so are excluded below)
		apply_when_object_exists = {
			type = "storage-tank",
			name = "lube-port"
		},
		excluded_prototype_names = {
			"lube-port",
			"fluid-box-1",
			"fluid-box-2"
		}
	},

	{  -- RailTanker mod needs vanilla sized pumps (RailTanker version 1.1.3 and later includes compatibility for squeak through).
		apply_when_object_exists = {
			type = "cargo-wagon",
			name = "rail-tanker"
		},
		excluded_prototype_types = {
			"pump"
		}
	},

	{  -- Logistics Railway mod
		apply_when_object_exists = {
			type = "logistic-container",
			name = "requester-rail-dummy-chest",
		},
		excluded_prototype_names = {
			"requester-rail-dummy-chest",
		}
	},

	{  -- Reactors mod
		apply_when_object_exists = {
			type = "assembling-machine",
			name = "nuclear-reactor",
		},
		excluded_prototype_names = {
			"nuclear-reactor",
			"reactor-interface",
		}
	},

}
