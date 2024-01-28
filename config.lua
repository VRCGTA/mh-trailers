Config = {}
Config.AttachedKey = 38     -- 38 = E
Config.AttacheKeyTxt = "E"  -- if AttachedKey = 38 this is E

Config.Models = {
    trucks = {'none', 'hauler', 'phantom', 'phantom3', 'packer'},
    trailers = {'trailers', 'docktrailer', 'tr4', 'baletrailer', 'trailerlogs', 'trailersmall', 'boattrailer', 'trflat', 'graintrailer', 'tvtrailer', 'tr2', 'tanker2', 'trailers3', 'trailers2', 'tanker', 'trailers4'},
    ramp = "imp_prop_flatbed_ramp" -- hash -901038522
}

-- Trailer rent shop
Config.Rent = {
    shop = {
        ped      = "S_M_M_TRUCKER_01",
        senario  = "WORLD_HUMAN_STAND_MOBILE",
        location = vector4(193.60, -3206.77, 5.79, 91.04),
        cost     = 500
    },
    spawn = {
        truck   = vector3(166.39, -3228.21, 5.95),
        trailer = vector3(165.92, -3178.02, 5.96),
        garage  = vector3(210.86, -3124.19, 5.86),
        heading = 270.0,
    },
    blip = {
        garagelabel = "Trailer Rent Garage",
        shoplabel   = "Trailer Rent Shop",
        sprite      = 479,
        color       = 5,
        scale       = 0.5,
    }
}

-- ignore this vehicle hash to attach a trailer
Config.IgnoreVehicle = {
    [1377619001] = true,  -- man truck
    [2078290630] = true,  -- tr2 trailer
    [1029869057] = true,  -- pjtrailer
    [-1352468814] = true, -- trflat
    [712162987] = true,   -- small trailer
    [524108981] = true,   -- boat trailer
    [-901038522] = true,  -- ramp
}

Config.TrailerSettings = {
    -- tr2 trailer
    [2078290630] = {
        offsetX = 0.0,   -- dont edit this part
        offsetY = 0.0,   -- dont edit this part
        offsetZ = 0.08,  -- dont edit this part
        hasRamp = false, -- if this trailer has a ramp already
        hasdoors = true, -- if this trailer has doors (this can be ramps as well, depends on the door numver)
        width = 3.0,     -- the width of the trailer 
        length = 9.0,    -- the length of the trailer
        loffset = -1.0,  -- lower offset (dont edit this part)
        doors = {ramp = 5, platform = 4}, -- door numbers (make sure this is right)
        ramp = {},       -- this trailer has its own ramp
        maxspace = 6,    -- max space for vehicles
        parked = 0,      -- count the total parked vehicles on this trailer.
    },

    -- pjtrailer (gooseneck)
    [1029869057]  = {
        offsetX = 0.0,
        offsetY = 0.0,
        offsetZ = 0.08,
        width = 3.0,
        length = 9.0,
        loffset = -1.0,
        hasRamp = false,
        hasdoors = true,
        doors = {ramp = 5, platform = 4},
        ramp = {},
        maxspace = 2,
        parked = 0,
    }, 

    -- trflat (only a ramp)
    [-1352468814] = {
        offsetX = 0.0,
        offsetY = 0.0,
        offsetZ = 0.15,
        width = 3.0,
        length = 9.0,
        loffset = -1.0,
        hasRamp = true,
        hasdoors = false,
        doors = {ramp = 5},
        ramp = {offsetX = 0.0, offsetY = -9.3, offsetZ = -1.4, rotation = 180.0},
        maxspace = 2,
        parked = 0,
    },      

    -- small trailer (no doords)
    [712162987] = {
        offsetX = 0.0,
        offsetY = -0.3,
        offsetZ = 0.08,
        width = 3.0,
        length = 9.0,
        loffset = -1.0,
        hasdoors = false,
        hasRamp = false,
        doors = {},
        ramp = {},
        maxspace = 1,
        parked = 0,
    },

    -- boat trailer (no doors)
    [524108981] = {
        offsetX = 0.0,
        offsetY = 0.0,
        offsetZ = 0.08,
        width = 3.0,
        length = 9.0,
        loffset = -1.0,
        hasdoors = false,
        hasRamp = false,
        doors = {},
        ramp = {},
        maxspace = 1,
        parked = 0,
    },                                   
}

-- just for debugging
Config.DebugTrailers = false
Config.DebugDoor = false
Config.DebugPlatform = false
Config.DebugRamp = false
