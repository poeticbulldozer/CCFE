-- CUSTOM CRITERIA FOR EVERYONE
-- Compiled and maintained by CMDR Julian Ford
-- v1.6.0 / Released April 26, 2026

--[[Elite Observatory is a phenomenal tool for exploring in Elite Dangerous, and it is all the better
    because we get to write our own custom criteria, which supplement the default criteria in the app
    and further enhance our experience in game. Here I have compiled or written what I felt were the 
    most important and/or convenient criteria missing from the Observatory default options, in an 
    organized and well-notated document that should be relatively easy to understand and, if you wish, 
    alter to your taste. Numerous default criteria from Observatory Explorer have also been reworked 
    to provide more information in the notification card, such as the radius of a Small object, or 
    the surface gravity of a high gravity world. 
    
    Extra special thanks to:
    -Vithigar: for developing and maintaining Elite Observatory;
	-CMDR Duvel McMuttons, who singlehandedly did a full revision on the file to bring it up to
		the Observatory 2.0	standard in version 1.6.0;
    -Matt G, DaftMav and fjk: for your variety of extensions and criteria, for many very interesting 
        conversations and thought experiments, and for being just so darn friendly and helpful;
    -Eahlstan, MariettaGecko,  Andrew Gaspurr, Arcanic, Spacetrash67 and many others, for 
		contributing your fabulous custom criteria to the community, and for answering my questions 
		as I figured this out;
    -Griff Rogers, as well as my squadmates in the Astral Survey Project, for early testing and 
        providing valuable critique;
    -CMDRs Sirob0911 and Marty--McFly, for creating the SNPX custom criteria file which was the 
        inspiration for my own.


----------------------------------------
----------------------------------------
--READ ME FIRST: HOW TO SET UP AND USE--
----------------------------------------
---------------------------------------- 

    HOW TO INSTALL?
    To get this criteria working with Elite Observatory:
        - Save the file somewhere on your hard drive
        - Open Elite Observatory
        - Right click on the "Explorer" tab and then on "Explorer Settings"
        - Check "Enable Custom Criteria" at the bottom of the window
        - In the "Custom Criteria File" box, click "Browse" and point it to this file on your hard drive.

    DUPLICATE CRITERIA (NATIVE)
    The following criteria are also included in Observatory Core by default, and should be disabled 
    either here or there, in order to prevent duplicate notifications. The alternate versions in 
    this criteria generally have more details written on the notification card than the default option.

        - Small Object (covered by 1.6 Small object)
        - Fast Orbit (covered by 1.2 Fast orbital period)
        - High-Value Body (covered by 2.3 High value body)
		- Landable & Terraformable (covered by 2.3 High value body)
        - Close Ring Proximity (covered by 3.3 Ring proximity / Shepherd moon)
        - Shepherd Moon (covered by 3.3 Ring proximity / Shepherd moon)
        - Landable w/ Atmosphere (covered by 4.6 Landable with atmosphere and biological signals)
        - Landable High-g (covered by 4.8 Landable with high gravity)
        - Landable Large (covered by 4.9 Large landable body)
		
	DUPLICATE CRITERIA (ASTROANALYTICA)
	The following criteria are also covered by Matt G's "AstroAnalytica" plugin. If you are running that
	plugin, disable the following criteria either in that plugin, or in this file:
	
		- 2.5 Potential Helium-rich boxel
		- 4.7 Landable with high angular diameter (AstroAnalytica version preferred)
		- 4.8 Landable with high gravity

    CHECK THE CONFIGS!
    Below the table of contents in this file, there is a config option for every criteria in the section 
    called GLOBAL. If you don't want one or more criteria to trigger, you can disable them. All criteria 
    are enabled by default, and that means A LOT of pings - probably more than you want - so you might 
    want to browse through and disable any you don't want. In addition, most criteria have thresholds or 
    other options you can change, so that the notifications happen on your terms as much as possible.
    
    UPDATING FROM AN OLDER VERSION?
    If you are using an older version of CCFE, and are installing this one in its place, you are advised
    not to delete the old file until you have redone any custom configurations to the new file, in case you 
	need to look back at it for reference. The new file will not inherit anything from the old one - if you
	made changes, disabled criteria etc, you will need to make those same changes to the new file.
    
    FURTHER QUESTIONS?
    Come and ask me! I live in the Discord server for the Independent Explorers Association. Here is a 
    permanent invite link to the server:
    
    https://discord.gg/S9Qrqgeh9D
    
    I am happy to answer questions about this file, or take suggestions for additional criteria to be added.
    I also publish new versions of the criteria file there, as I make changes or add new criteria.
    
    Happy hunting!
    
    -CMDR Julian Ford



---------------------------
---------------------------
-----TABLE OF CONTENTS-----
---------------------------
---------------------------
    Here you will find a list of the criteria included in this file, grouped by category. If you wish
    to configure a criteria, learn more about what it does, or enable or disable it entirely, you can 
    do so in its corresponding entry in the GLOBAL section below.
    
    
STELLAR AND ORBITAL MECHANICS
    1.1: Ancient star
    1.2: Fast orbital period
    1.3: Hot Jupiter
    1.4: Massive planet
    1.5: Ringed M, neutron, and white dwarf stars
    1.6: Small object
    1.7: Undiscovered system
	1.8: Void cross


VALUE AND RARITY
    2.1: Helium gas giant
    2.2: Helium-rich gas giant
    2.3: High value body
    2.4: Potential green gas giant
    2.5: Potential helium rich boxel
    2.6: Rare body with ring


RINGS
    3.1: Massive Ring
    3.2: Narrow ring gap with high rotational difference
    3.3: Ring proximity / Shepherd moon
    3.4: Ring with fast orbital period
    3.5: Ring with high orbital velocity
    3.6: Taylor’s rings and other narrow rings


LANDABLES, ATMOSPHERES AND SIGNALS
    4.1: Geological signals (GeoPredictor plugin recommended instead)
    4.2: High orbital inclination, landable, close to body with ring
    4.3: High surface pressure
    4.4: Hot landable
    4.5: Landable moon close to a rare body
    4.6: Landable with atmosphere and biological signals
    4.7: Landable with high angular diameter (AstroAnalytica plugin recommended instead)
    4.8: Landable with high gravity
    4.9: Large landable body

]]--

------------------------
-----GLOBAL SECTION-----
------------------------
------------------------
--[[Here you will find a brief description of each criteria, what requirements the criteria needs 
    to meet in order to trigger, any variables that affect the specifics of how it is triggered, 
    and an option to disable each criteria entirely. All criteria are defaulted to "true" and will 
    trigger unless disabled. If you wish to disable a criteria, simply change the appropriate 
    "true" to "false". You should pay attention to the instructions and not make edits anywhere 
    except where you are supposed to. If you are concerned you might break the file, back it up 
    before you make a change.
]]--

---@Global

------------------------------------------------
------------------------------------------------
--- SECTION 1: STELLAR AND ORBITAL MECHANICS ---
------------------------------------------------
------------------------------------------------

--------------------
-- 1.1: ANCIENT STAR
--------------------
--[[Any star older than the number specified in starAgeThreshold (in millions of years)  will 
    trigger the "Ancient star" notification.
]]--
    triggerForAncientStars = true
    starAgeThreshold = 13   
    -- in billions of years (decimals allowed)

---------------------------
-- 1.2: FAST ORBITAL PERIOD
---------------------------
--[[Any scanned body with an orbital period less than the number specified in fastOrbitThreshold 
    (in seconds) will trigger the "Fast orbital period" notification.
 ]]--
    triggerForFastOrbitalPeriod = true
    fastOrbitThreshold = 28800
    -- in seconds; example: 28800 == 0.3 days

-------------------
-- 1.3: HOT JUPITER
-------------------
--[[This notifies you of gas giants classified as "Hot Jupiters" - specifically, those which possess
    an orbital period of less than ten days.
]]--
    triggerForHotJupiter = true

-----------------------
-- 1.4: MASSIVE PLANET
-----------------------
--[[This triggers for any planet with a total mass (in Earth masses) above the specified threshold.]]--
    triggerForMassivePlanets = true
    massivePlanetThreshold = 3300.00 
    -- in Earth masses

-----------------------------------------------
-- 1.5: RINGED M, NEUTRON AND WHITE DWARF STARS
-----------------------------------------------
--[[Triggers if there is a ringed M class, neutron or white dwarf star in the system.]]--
    triggerForRingedStar = true

--------------------
-- 1.6: SMALL OBJECT
--------------------
--[[Any scanned body with a radius under this smallBodyThreshold (in meters) will trigger the 
    "Small object" notification.
]]--
    triggerForSmallObject = true
    smallBodyThreshold = 300 
    -- in km

---------------------------
-- 1.7: UNDISCOVERED SYSTEM
---------------------------
--[[Any system with a previously undiscovered primary star will trigger this notification.]]--
    triggerForUndiscoveredSystem = true


------------------
-- 1.8: VOID CROSS
------------------
--[[The Void Cross is a large area where certain stars cannot be found due to a mistake with
	the Stellar Forge, along the X and Z axis with Sol as center. You can clearly see the 
	cross-shaped gaps on the galactic distribution charts on EdAstro, if you want a visualization
	of the phenomenon. This criteria will let you know when you enter or leave the Void Cross.
]]--

-- Enable/disable the notifications with true or false. Best set to false before doing a read-all.
	VoidCrossNotifications = true  
	
-- Distance in Ly where you want to be informed of entering/leaving the Void Cross (default: 1500)
	VoidCrossThreshold = 1500       


-----------------------------------
-----------------------------------
--- SECTION 2: VALUE AND RARITY ---
-----------------------------------
-----------------------------------

------------------------
-- 2.1: HELIUM GAS GIANT
------------------------
--[[This triggers on the very rare occasion that you scan a Helium Gas Giant. Note that this 
    planet class is different from Helium *Rich* Gas Giants, of which many thousands have 
    been found. There are only three known prcedurally generated examples of Helium Gas Giants 
    in the entire galaxy - the others all exist in catalog systems (52 Herculis and HR 6870). 
    If you find an undiscovered example of one of these, you are very lucky indeed.
]]--
    triggerForHeliumGasGiant = true

-----------------------------
-- 2.2: HELIUM-RICH GAS GIANT
-----------------------------
--[[This triggers when a Helium-rich gas giant is scanned while exploring in a Helium-rich
    boxel. These gas giants are not found anywhere except in Helium-rich boxels - systems
    which have a Helium content greater than 29.5% - and are more common the higher the 
    Helium content is.
]]--
    triggerForHeliumRichGasGiant = true

-----------------------
-- 2.3: HIGH VALUE BODY
-----------------------
--[[This notifies you of bodies which will net you a high amount of credits when scanned or mapped.
    You can enable or disable which classes of planet you want to trigger the notification.
]]--
    triggerForHighValueBody = true

--[[Setting any of these classes to false will entirely exclude that planet class from triggering 
    the notification.
]]--
    highValueClasses = {
    ["Sudarsky class II gas giant"] = false,
                     ["Rocky body"] = true,
                ["Metal rich body"] = true,
                    ["Water world"] = true,
                  ["Ammonia world"] = true,
        ["High metal content body"] = true,
                 ["Earthlike body"] = true
    }

--[[TERRAFORMABLES ONLY? Some planet classes (metal rich bodies, rocky bodies, high metal content worlds, 
    and water worlds) have non-terraformable versions which are worth substantially less than their
    terraformable versions. This file ignores these by default. If, however, you wish the criteria to ping
    for the NON-TERRAFORMABLE version of any of these planet classes, set that planet class to true below.
]]--
    pingNonTerraformableClasses = {
                ["Metal rich body"] = false,
                     ["Rocky body"] = false,
        ["High metal content body"] = false,
                    ["Water world"] = false,
    }

---------------------------------
-- 2.4: POTENTIAL GREEN GAS GIANT
---------------------------------
--[[This checks the surface temperature of green gas giants against a table of known green gas
    giant temperatures. If the scanned temp matches an entry in the table, or if it is similar
    according to the threshold set below, it will notify of a potential green gas giant.
]]--
    triggerForPotentialGGG = true
    
    -- Here you can set how far (in deg. K) the scanned temp. may vary from an entry in the table.
    GGGDelta = 0.001
    -- Set this to false if you only want known GGG temps and not theorized ones.
    useGGGTheorizedTemps = true

-----------------------------------
-- 2.5: POTENTIAL HELIUM RICH BOXEL
-----------------------------------
--[[A Helium rich boxel is an area of space in which Helium rich gas giants are generated. They do not 
    generate outside of these areas. This criteria scans gas giants and returns when it finds one with
    a Helium content greater than heliumMinimum (in percent) - the default is 30 percent and should not 
    be set any lower than 29.5.
]]--
    triggerForHRB = true
    heliumMinimum = 30

---------------------------
-- 2.6: RARE BODY WITH RING
---------------------------
--[[This triggers for any Earth-like world, Water world, or Ammonia world with a ring around it.]]--
    triggerForRingedRare = true


------------------------
------------------------
--- SECTION 3: RINGS ---
------------------------
------------------------

--------------------
-- 3.1: MASSIVE RING
--------------------
--[[Triggers a notification for any ring larger than ringWidthThreshold (in trillions of megatonnes). 
    Think big. 1 trillion megatonnes will net you thousands of rings. I settled on 10 trillion as the 
    default threshold with all rings active. Rocky rings seem the most commonly massive, followed 
    by metal rich, followed by icy. Turning off rocky rings will likely decrease your results 
    by at least half.
]]--
    triggerForMassiveRing = true
    ringMassThreshold = 10
            -- example: 10 == ten trillion megatonnes, or 10,000,000,000,000

--If you only want certain ring types to be called, change the appropriate "true" to "false" to 
--  exclude a specific ring type from triggering the notification.
    largeRingTypes = {
            ["eRingClass_Rocky"] = true, --Rocky rings
              ["eRingClass_Icy"] = true, --Icy rings
        ["eRingClass_MetalRich"] = true, --Metal Rich rings
          ["eRingClass_Metalic"] = true  --Metallic rings
    }

-------------------------------------------------------
-- 3.2: NARROW RING GAP WITH HIGH ROTATIONAL DIFFERENCE
-------------------------------------------------------
--[[A body with two rings, orbiting very close together and having very different rotational speeds, 
    triggers this notification.
]]--
    triggerForRingGapWithSpeedDifferential = true


--------------------------------------
-- 3.3: RING PROXIMITY / SHEPHERD MOON
--------------------------------------
--[[Bodies closer to a ring than closeRingDistance (in kilometers) will trigger the 
    "Close ring proximity" notification. It will also point out if the body is landable.
]]--
    triggerForRingProximity = true
    closeRingDistance = 2000

--[[A body which orbits inside a parent's ring will trigger the Shepherd Moon notification.]]--
    triggerForShepherdMoon = true


-------------------------------------
-- 3.4: RING WITH FAST ORBITAL PERIOD
-------------------------------------
--[[A ring with an orbital period shorter than ringOrbitalPeriodThreshold (in seconds) will 
    trigger the "Ring has fast orbital period" notification.
]]--
    triggerForRingWithFastOrbitalPeriod = true
    ringOrbitalPeriodThreshold = 5400
                     -- example: 5400 == 90 minutes to execute one full rotation


---------------------------------------
-- 3.5: RING WITH HIGH ORBITAL VELOCITY
---------------------------------------
--[[A ring with an orbital velocity higher than ringVelocityThreshold (in kilometers/sec) will
    trigger this notification.
]]--
    triggerForHighVelocityRing = true
    ringVelocityThreshold = 100 --km/sec


---------------------------------------------
-- 3.6: TAYLOR'S RINGS AND OTHER NARROW RINGS
---------------------------------------------
--[[Bodies orbited by narrow rings can trigger one of two notifications:
    -Taylor's Ring: A single ring with a width less than 1/8th (12.5%) of its parent body's
        diameter.
    -Narrow single ring - A single ring with a width less than narrowRingThreshold of its parent 
        body's diameter. The default for narrowRingThreshold is 25% of the parent body's diameter.
        If you only want to be notified of Taylor's Rings, set narrowRingThreshold to 12.5.
]]--
    triggerForNarrowRings = true
    narrowRingThreshold = 25
        -- in percent of body's diamater (default 25%)



-------------------------------------------------
-------------------------------------------------
--- SECTION 4: LANDABLES, ATMOSPHERES AND SIGNALS
-------------------------------------------------
-------------------------------------------------

--------------------------
-- 4.1: GEOLOGICAL SIGNALS
--------------------------
--[[This criteria triggers for any body containing geological signals, returning the number of
    signals, the type of volcanism present on the body, and the average surface temperature.
    There is a better alternative to this criteria these days - the GeoPredictor plugin from
    CMDR Duvel McMuttons (who also wrote this criteria), which will notify you of new 
    geological Codex entries and other fun geo data as you explore, in the same vein as the 
    BioInsights plugin. If this simple criteria is enough for you, then woohoo, but I suggest 
    you try GeoPredictor out instead!
]]--
    triggerForGeoSignals = false


-------------------------------------------------------------------
-- 4.2: HIGH ORBITAL INCLINATION, LANDABLE, CLOSE TO BODY WITH RING
-------------------------------------------------------------------
--[[A body needs to meet three criteria in order to trigger this notification:

    1) it must be in close orbit to a body with a ring
    2) it must have an orbital inclination higher than the threshold set below
    3) it must be landable.
    
    The resulting bodies will have stunning views of a ringed planet in the sky.
]]--
    triggerForHighIncLandableRingProx = true
    inclinationThreshold = 10
               -- example: 10 == ten degrees of orbital inclination


----------------------------
--4.3: HIGH SURFACE PRESSURE
----------------------------
--[[Elite allows players with Odyssey to land on planets with atmospheres less than 0.1 atmospheric pressure. 
    The closer the atmosphere concentration gets to this limit, the brighter and richer it gets. This criteria
    pings when an atmosphere is above the threshold set below - the recommended default is 0.09, which is the 
    minimum level to see truly different colored atmospheres, like red oxygen.]]--
    
	triggerForHighSurfacePressure = true
	atmoSatThreshold = 0.09 --in atmospheric pressures; must be less than 0.1


----------------------------------
-- 4.4: HOT LANDABLE
----------------------------------
--[[Triggers for any landable with a surface temperature at or above this threshold. An additional
    warning is given if the body scanned has a surface temperature of 800K or greater, at which 
    point, the commander will burn to death over the course of about two minutes.
]]--
    triggerForHotLandable = true
    hotLandableThreshold = 500 --degrees Kelvin
    
--[[Lethal heat only: if you ONLY want to be notified if your commander will take damage upon 
    disembarking on foot, set this to true.]]--
    lethalOnly = false


------------------------------------------
-- 4.5: LANDABLE MOON CLOSE TO A RARE BODY
------------------------------------------
--[[Scanning a landable moon, which orbits an Earth-like, water world, or ammonia world at a 
    distance below the threshold set in terraMoonThreshold (in LS), will trigger this notification.
]]--
    triggerForLandableAndCloseToRare = true
                  terraMoonThreshold = 1.5


-----------------------------------------------------------------
-- 4.6: LANDABLE WITH ATMOSPHERE AND/OR BIOLOGICAL SIGNALS
-----------------------------------------------------------------
--[[Here, you can elect to receive notifications about landable bodies with an atmosphere,
    as well as landable bodies with biological signals. You can use the table below to filter out
    any landable atmospheres you are not interested in. Horizons bios will be pointed out by this
    criteria.
]]--

--Set this to true if you want to be notified of landable bodies with an atmosphere.
    triggerForLandableAtmosphere = true
--Set this ALSO to true if you only want to be notified of landables with rare atmospheres/horizons bios.
--This setting supercedes the Included_atmospheres list.
    triggerOnlyForRareFinds = false

--Set this to true to be notified of all landables with biological signals.
    triggerForBiosignals = true

--Set this to true to be notified of landables with rings around them.
    triggerForRingedLandable = true
    
--Set this ALSO to true if you ONLY want the above notification to trip if the ringed landable has an atmosphere.
    ringedWithAtmosphereOnly = false

--[[If you do not want to be notified about any specific atmospheric landable, set its atmosphere
    below to false, in order to exclude that atmosphere type from the notification.
]]--
    Included_Atmospheres = {
                  ["Ammonia"] = true,
              ["AmmoniaRich"] = true,
                    ["Argon"] = true,
                ["ArgonRich"] = true,
            ["CarbonDioxide"] = true,
        ["CarbonDioxideRich"] = true,
                   ["Helium"] = true,
                  ["Methane"] = true,
              ["MethaneRich"] = true,
                     ["Neon"] = true,
                 ["NeonRich"] = true,
                 ["Nitrogen"] = true,
                   ["Oxygen"] = true,
           ["SilicateVapour"] = true,
           ["SulphurDioxide"] = true,
                    ["Water"] = true,
                ["WaterRich"] = true
        }


-------------------------------------------
-- 4.7: LANDABLE WITH HIGH ANGULAR DIAMETER
-------------------------------------------
--[[This triggers for landable bodies which have a parent that looms large in the sky. If you'd prefer
    a more flexible option for finding bodies with high angular diameter, consider the AstroAnalytica plugin
    by Matt G. It notifies of this and several other neat things.]]--
    triggerForHighAngularDiameter = true

    starDiameterThreshold = 25 --these are both measured in degrees
    planetDiameterThreshold = 45


----------------------------------
-- 4.8: LANDABLE WITH HIGH GRAVITY
----------------------------------
--[[This triggers for any landable body with surface gravity greater than gravityThreshold (in G).]]--
    triggerForHighG = true
    gravityThreshold = 2 --number, in Gs, which will trigger the ping


---------------------------
-- 4.9: LARGE LANDABLE BODY
---------------------------
--[[This triggers for any landable body with a radius higher than largeLandableThreshold (in meters).]]--

triggerForLargeLandable = true
largeLandableThreshold = 18000
    -- radius in km

---------------------------------------------
---------------------------------------------
-- USERS: DO NOT TOUCH ANYTHING BELOW HERE --
---------------------------------------------
---------------------------------------------
--[[
    The rest of the section contains functions, formulae and variables which should not be changed 
    by hand - they are needed by the criteria below to remain in exactly the state they are in. 
    Following this section is the Criteria Section itself, which should similarly not be altered 
    in any way. If you have a suggestion for a variable you do not see in the options above, 
    contact CMDR Julian Ford on the Independent Explorers Association Discord server (or anywhere 
    else you can find him) and he will see about adding it. Thank you and happy scanning!
--]]


---------------------------------------------------------
-- GGG TEMPERATURES LOOKUP TABLES AND HELPER FUNCTIONS --
-- by DaftMav
---------------------------------------------------------
-- Data and Functions --
-- GGG Temperatures lookup tables
--[[
    Surface Temperature data used is from CMDR Arcanic's research on GGGs:
    https://ed-ggg.github.io/edggg/  (Arcanic's in-depth website on GGGs)
    https://www.youtube.com/playlist?list=PLXsRqs-BpM8JDEm9b_ABzJh-nDhAZ1SYJ
    

    Reminder: While this table lists journal-style zero-padded decimal numbers (like 158.000000)
    these will be reduced by Lua to one decimal (158.0) or whatever the last non-zero decimal is
    (90.14109 instead of 90.141090) in any math/comparisons.
--]]
KnownGGGTemperatures = {
    ['Sudarsky class I gas giant'] = {
         77.450478,  83.943596,  85.945335,  89.193558,  90.14109,  100.046646,
        109.874001, 113.841248, 117.776886, 119.986717, 120.725380, 122.295380,
        125.933167, 126.062111, 128.909407, 129.582138, 130.000000, 130.000015,
        132.010391, 135.434097, 137.307129
    },
    ['Sudarsky class II gas giant'] = {
        157.798843, 160.396164, 164.465302, 166.724182, 174.249985, 204.975662,
        206.818893, 213.911560, 217.840744, 217.875320, 225.990601, 228.357773,
        238.650650
    },
    ['Sudarsky class III gas giant'] = {
        276.751648, 299.305664, 370.000000, 550.000000, 580.000000, 610.000000,
        640.000000, 670.000000, 700.000000
    },
    ['Sudarsky class IV gas giant'] = {
        1149.999878, 1150.000000
    },
    ['Water giant'] = {
        158.000000
    },
    ['Gas giant with water based life'] = {
        158.000000, 176.666641, 176.666656, 176.666672, 176.666687, 217.499985
    },
    ['Gas giant with ammonia based life'] = {
        102.234520, 107.355812, 121.179939, 133.438171, 133.510468
    }
}

-- Generate min/max GGG temperature ranges table from KnownGGGTemperatures and +/- GGGdelta offset.
NearGGGTemperatures = {}
for class,tab in pairs(KnownGGGTemperatures) do
    NearGGGTemperatures[class] = {}
    for _, value in pairs(tab) do
        NearGGGTemperatures[class][value] = { min = (value-GGGDelta), max = (value+GGGDelta) }
    end
end
-- Unconfirmed but theorized GGG temperatures:
if useGGGTheorizedTemps then 
    TheorizedGGGTemperatures = {
        ['Sudarsky class III gas giant'] = {
            310.000000, 340.000000, 400.000000, 490.000000, 520.000000, 760.000000, 790.000000
        }
    }
    -- Generate min/max GGG temperature ranges table from TheorizedGGGTemperatures and +/- GGGDelta offset.
    NearTheorizedGGGTemperatures = {}
    for class,tab in pairs(TheorizedGGGTemperatures) do
        NearTheorizedGGGTemperatures[class] = {}
        for _, value in pairs(tab) do
            NearTheorizedGGGTemperatures[class][value] = { min = (value-GGGDelta), max = (value+GGGDelta) }
        end
    end
end

-- Function in_ranges() - by DaftMav
--- Returns true if value falls within any min/max ranges inside given table,
---         false if not found or if table doesn't exist.
--- If true, also returns base/index value for the found range.
function in_ranges(tab, val)
    if type(tab) == 'table' then
        for base, ranges in pairs(tab) do
            if(val >= ranges.min and val <= ranges.max) then
                return true, base
            end
        end
    end
    return false
end

-- Function has_table() - By DaftMav
--- Returns true if value is found in table,
---         false if not found or if table doesn't exist.
function has_value(tab, val)
    if type(tab) == 'table' then
        for _, value in pairs(tab) do
            if value == val then
                return true
            end
        end
    end
    return false
end

-- Void Cross vars and functions
VoidCross = nil                 -- used to keep track of if you're in- or outside the Void Cross while travelling
Galactic = {['x'] = 0, ['y'] = 0, ['z'] = 0}    -- used for galactic XYZ coordinates, updated after each jump

function DistanceToSol(Gal)
    return math.sqrt(Gal.x^2 + Gal.y^2 + Gal.z^2)
end


----------------------
-- HELPER FUNCTIONS --
----------------------

-- Constants for conversion
solRadius   = 695500    -- radius of Sol according to Elite Dangerous in km

-- This variable stores the last potential helium-rich boxel scanned by the criteria of the same name, to prevent unnecessary repeated notifications.
lastHeliumBoxel = ''

-- This function checks if a string starts with a certain value
function string.startsWith(String,Start)
   if (String == nil) then
     return false
   end
   return string.sub(String,1,string.len(Start))==Start
end

-- This function reformats a specified increment of time (in seconds) into its component years, days, hours, minutes and seconds.
-- It is used in the Fast Orbital Period criteria to report the orbital period of the scanned body in a familiar, easy-to-read format.
function formatTime(time)
-- these local variables convert the input number of seconds into all of its larger chunks - from years on down.
    local years = math.floor(time/31536000)
    local days = math.floor(math.fmod(time, 31536000)/86400)
    local hours = math.floor(math.fmod(time, 86400)/3600)
    local minutes = math.floor(math.fmod(time,3600)/60)
    local seconds = math.floor(math.fmod(time,60))
    local timeString = ""
    
    -- this simple function adds commas only when needed between the newly spelled out years, months, etc, as timeString is constructed.
    local function addComma()
        if timeString ~= "" then
            timeString = timeString .. ", "
        end
    end

    -- now, we take all the nonzero divisions of time calculated above and turn them into a properly formatted string.
    if years ~= 0 then --in all these denominations, we check to see if the number is nonzero before adding it to the string.
        timeString = years .. " years" --no addComma() needed here, since this is guaranteed to be the beginning of the string if it is nonzero.
    end
    if days ~= 0 then
        addComma()
        timeString = timeString .. days .. " days"
    end
    if hours ~= 0 then
        addComma()
        timeString = timeString .. hours .. " hours"
    end
    if minutes ~= 0 then
        addComma()
        timeString = timeString .. minutes .. " minutes"
    end
    if seconds ~= 0 then
        addComma()
        timeString = timeString .. seconds .. " seconds"
    end

    return timeString --the string properly constructed, the function now returns it.
end

--This function inserts commas into very large numbers.
function formatNumber(amount)
  local formatted = amount
  while true do
    formatted, k = string.gsub(formatted, "^(-?%d+)(%d%d%d)", '%1,%2')
    if (k==0) then
      break
    end
  end
  return formatted
end


---@End --Global section



------------------------
------------------------
--- JUMP SECTION -------
------------------------
------------------------

---@Jump
-- Update Galactic XYZ coordinates
Galactic.x = jump.StarPos.x
Galactic.y = jump.StarPos.y
Galactic.z = jump.StarPos.z

-- 1.8 Void cross avoidance
if VoidCrossNotifications then
    local VoidNote = ''
    if DistanceToSol(Galactic) > 900 and (math.abs(jump.StarPos.y) <= VoidCrossThreshold
        and (math.abs(jump.StarPos.x) <= VoidCrossThreshold or math.abs(jump.StarPos.z) <= VoidCrossThreshold))
    then
        if VoidCross == false then
            VoidNote = 'Warning: Entering the Void Cross'
        elseif VoidCross == nil then
            VoidNote = 'Note: Currently inside the Void Cross'  -- only on first jump of session
        end
        VoidCross = true
    else
        if VoidCross == true then
            VoidNote = 'Note: Left the Void Cross'
        elseif VoidCross == nil then
            VoidNote = 'Note: Currently outside the Void Cross' -- only on first jump of session
        end
        VoidCross = false
    end
    if VoidNote ~= '' then
        notify(jump.StarSystem, VoidNote, string.format('XYZ: (%.2f, %.2f, %.2f) - Distance to Sol is %.1f Ly',
            jump.StarPos.x, jump.StarPos.y, jump.StarPos.z, DistanceToSol(Galactic)))
    end
end

---@End --Jump section

------------------------
------------------------
--- CRITERIA SECTION ---
------------------------
------------------------

-----------------------------
---@Complex 1.1: ANCIENT STAR
-- Ping for stars over a certain threshold of age. 
-- To change the age at which this pings, alter the 'starAgeThreshold' in Global variables.
-----------------------------
if triggerForAncientStars then
    if isStar(scan) then
        local ageInBillions = scan.Age_MY/1000
        if ageInBillions >= starAgeThreshold then
            local luminosityResult = scan.Luminosity or "Luminosity missing"
            local solarRadius = distanceAsKm(scan.Radius)/solRadius
            return  string.format("Ancient star\nType: %s\nAge: %.3f billion years", scan.StarType, ageInBillions),
                    string.format("Type: %s / Solar radius: %.2f\nSolar mass: %.2f / Subclass: %s / Luminosity: %s", 
                            scan.StarType, solarRadius, scan.StellarMass, scan.Subclass, luminosityResult)
        end
    end
end
---@End


------------------------------------
---@Complex 1.2: FAST ORBITAL PERIOD
-- Simple ping for a body with a fast orbital period. 
-- The orbital period threshold is set by the fastOrbitThreshold variable in Global.
------------------------------------
if triggerForFastOrbitalPeriod then
    if isPlanet(scan) and scan.OrbitalPeriod <= fastOrbitThreshold then
        return  string.format("Fast orbital period\n(%s)", formatTime(scan.OrbitalPeriod)),
                string.format("Body type: %s\nSpecific orbital period: %.4f hours", scan.PlanetClass, periodAsHour(scan.OrbitalPeriod))
    end
end
---@End


----------------------------
---@Complex 1.3: HOT JUPITER
----------------------------
if triggerForHotJupiter then
    if parents and parents[0].ParentType == 'Star' and isPlanet(scan) and string.find(string.lower(scan.PlanetClass), 'gas giant') and periodAsDay(scan.OrbitalPeriod) <= 10 then
        return  "Hot Jupiter",
                string.format('Orbital Period: %.2f days; Distance from parent: %.1f Ls', periodAsDay(scan.OrbitalPeriod), distanceAsLs(scan.SemiMajorAxis))
    end
end
---@End


-------------------------------
---@Complex 1.4: MASSIVE PLANET
-- Triggers for planets with a mass (in Earth masses) above the specified threshold.
-------------------------------
if triggerForMassivePlanets then
    if scan.PlanetClass and scan.MassEM  > massivePlanetThreshold then
        return  "Massive planet",
                string.format("Mass: %s EM / Body type: %s", formatNumber(math.floor(scan.MassEM)), scan.PlanetClass)
    end
end
---@End


--------------------------------------------------------
---@Complex 1.5: RINGED M, NEUTRON AND WHITE DWARF STARS
--------------------------------------------------------
if triggerForRingedStar then
    if hasRings (scan.Rings) then
        if scan.StarType == 'M' then
            return "Ringed M-class star", ""
        elseif scan.StarType == 'N' then
            return "Ringed Neutron star", ""
        elseif string.startsWith(scan.StarType, "D") then 
            return "Ringed White dwarf (" .. scan.StarType .. ")", ""
        end
    end
end
---@End


-----------------------------
---@Complex 1.6: SMALL OBJECT
-- Simple ping for small objects. The radius threshold is set by the smallBodyThreshold variable in Global.
-----------------------------
if triggerForSmallObject then
    local radiusInKm = distanceAsKm(scan.Radius)
    if radiusInKm <= smallBodyThreshold and scan.PlanetClass and not isBarycentre(scan) then
        local canLand = scan.Landable and "landable " or ""
        return  string.format("Small %sobject\n(%.0f km)", canLand, radiusInKm),
                string.format("Body type: %s\nSpecific radius: %.4f km", scan.PlanetClass, radiusInKm)
    end
end
---@End


------------------------------------
---@Complex 1.7: UNDISCOVERED SYSTEM
-- Simple ping for when you hit an undiscovered system.
------------------------------------
if triggerForUndiscoveredSystem then
    if scan.ScanType ~= "NavBeaconDetail" and not isBarycentre(scan) and not scan.WasDiscovered and scan.DistanceFromArrivalLS == 0 then
        return "Undiscovered system", "Primary Star: " .. scan.StarType
    end
end
---@End

------------------------------------
-- 1.8: VOID CROSS
-- Pings when entering or leaving the Void Cross.
------------------------------------

-- You can find the code for Criteria 1.8 in the Jump section, immediately following the Global section.

---------------------------------
---@Complex 2.1: HELIUM GAS GIANT
-- Simple ping for if you actually find a very rare Helium Gas Giant
---------------------------------
if triggerForHeliumGasGiant then
    if scan.PlanetClass and string.match(scan.PlanetClass,"Helium gas giant") then
        return true, "**HELIUM GAS GIANT**", 
        scan.PlanetClass
    end
end
---@End


--------------------------------------
---@Complex 2.2: HELIUM-RICH GAS GIANT
-- Simple ping when scanning a Helium-rich gas giant
--------------------------------------
if triggerForHeliumRichGasGiant then
    if scan.PlanetClass and string.match(scan.PlanetClass, 'Helium rich gas giant') then
        local ringedHRGG = hasRings(scan.Rings) and " with ring" or ""
        local atmosComp = "Atmosphere composition missing"

        if scan.AtmosphereComposition then
            for mat in materials(scan.AtmosphereComposition) do
                if mat.name == 'Helium' then
                    atmosComp = string.format('Helium content: %.2f%%', mat.percent)
                end
            end
        end

        return  string.format("Helium-rich gas giant%s", ringedHRGG), 
                atmosComp
    end
end
---@End


--------------------------------
---@Complex 2.3: HIGH-VALUE BODY
-- Simple ping for high-value bodies - that is, terraformables, ammonia worlds, and earth-like worlds.
--------------------------------
if triggerForHighValueBody  then 
    if highValueClasses[scan.PlanetClass] then
        local isTerraformable = ""
        if (scan.TerraformState and #scan.TerraformState > 0 and scan.PlanetClass ~= "Ammonia world") and scan.PlanetClass ~= "Earthlike body" then
            isTerraformable = " // Terraformable"
        elseif not pingNonTerraformableClasses[scan.PlanetClass] and scan.PlanetClass ~= "Ammonia world" and scan.PlanetClass ~= "Sudarsky class II gas giant" and scan.PlanetClass ~= "Earthlike body" then
            return false
        end

        local isLandable = scan.Landable and " // Landable" or ""

        local highValue = "High value body"
        local isRare = ""
        if (scan.TerraformState and #scan.TerraformState > 0 and scan.PlanetClass == "Metal rich body") then
            highValue = "Terraformable metal rich body"
            isRare = "\n*RARE*"
        end

        return highValue .. isRare, scan.PlanetClass .. isTerraformable .. isLandable
    end
end
---@End


---------------------------------
---@Complex 2.4: Green Gas Giants (by DaftMav)
--- Check Gas Giants against known GGG surface temperatures - By DaftMav
--- To fix: Observatory unfortunately can give inaccurate values with scan.SurfaceTemperature (as float)
--- instead of exact journal log values (as string), therefore this can be somewhat inaccurate.
---------------------------------
if triggerForPotentialGGG then
    if scan.PlanetClass and string.find(string.lower(scan.PlanetClass), 'giant') then
        local realTemp = tonumber(string.format('%.6f', scan.SurfaceTemperature)) -- workaround for float issue
        if has_value(KnownGGGTemperatures[scan.PlanetClass], realTemp) then
            return true, 'Likely Green Gas Giant', string.format('Matches known GGG surface temperature of %s K (%s)', realTemp, scan.PlanetClass)
        else
            local result, knowntmp = in_ranges(NearGGGTemperatures[scan.PlanetClass], realTemp)
            if result then
                return 'Possible Green Gas Giant', 
                        string.format('Surface temperature %s K is close to known GGG with %s K (%s)', realTemp, knowntmp, scan.PlanetClass)
            end
        end
        if useGGGTheorizedTemps then
            if has_value(TheorizedGGGTemperatures[scan.PlanetClass], realTemp) then
                return true, 'Check for Green Gas Giant', string.format('Matches theorized GGG surface temperature of %s K (%s)', realTemp, scan.PlanetClass)
            else
                local result, knowntmp = in_ranges(NearTheorizedGGGTemperatures[scan.PlanetClass], realTemp)
                if result then
                    return 'Check for Green Gas Giant', 
                            string.format('Surface temperature %s K is close to theorized GGG surface temperature of %s K (%s)', realTemp, knowntmp, scan.PlanetClass)
                end
            end
        end
    end
end
---@End


--------------------------------------------
---@Complex 2.5: POTENTIAL HELIUM RICH BOXEL
-- This pushes a notification when you might have found a Helium-rich boxel.
--------------------------------------------
if triggerForHRB then
    -- the following checks to see if you have scanned a star system and a gas giant  
    if(scan.StarSystem and scan.PlanetClass and (string.match(scan.PlanetClass,'Helium') or string.match(scan.PlanetClass,'Sudarsky'))) then 
        local systemName = scan.StarSystem
        if string.find(systemName,'[%p][%d]-$') then --checks to see if this has a dashed system number after the mass code
            currentBoxel = systemName:gsub('[%p][%d]-$','') --removes the dash and the last half of the system number
        else
            currentBoxel = systemName:gsub('[%d-]+$','') --for systems without a dashed system number, it removes the number and leaves only the mass code.
        end
        if(currentBoxel ~= lastHeliumBoxel) then -- now that we have turned a system name into just its boxel, 
                                                 -- we can see whether we are still in the same boxel as the last helium-rich boxel we visited
            for mat in materials(scan.AtmosphereComposition) do
            -- below is the check to see if the helium content of the gas giant we just scanned is higher than the user-set threshold for an HR boxel.
                if mat.name == 'Helium' and mat.percent >= heliumMinimum then 
                -- this saves our most recently found helium rich boxel into this variable, so we don't get pinged for each system we visit in the same boxel.
                    lastHeliumBoxel = currentBoxel 
                    return  "Potential helium rich boxel", 
                            string.format("System helium content: %.2f%%", mat.percent)
                end
            end
        end
    end
end
---@End


------------------------------------
---@Complex 2.6: RARE BODY WITH RING
------------------------------------
if triggerForRingedRare then
    if hasRings(scan.Rings) then
        local planetType = ""
        if scan.PlanetClass == 'Earthlike body' then
            planetType = 'Earth-like world'
        elseif scan.PlanetClass == 'Water world' then
            planetType = 'water world'
        elseif scan.PlanetClass == 'Ammonia world' then
            planetType = 'ammonia world'
        else
            return false
        end 

        return  "Ringed " .. planetType, 
                string.format("Distance from arrival: %s LS", formatNumber(math.floor(scan.DistanceFromArrivalLS)))
    end
end
---@End


-----------------------------
---@Complex 3.1: MASSIVE RING
-----------------------------
if triggerForMassiveRing then
    if hasRings(scan.Rings) then
        for ring in ringsOnly(scan.Rings) do
            if math.floor(ring.massmt) >= (ringMassThreshold * 1000000000000) and largeRingTypes[ring.ringclass] then
                local ringType = ""
                local ringDiameter = distanceAsLs(ring.outerrad * 2)
                local ringWidth = distanceAsLs(ring.outerrad - ring.innerrad)
                local ringMass = math.floor(ring.massmt / 1000)
                if ring.ringclass == "eRingClass_Icy" then
                    ringType = "Icy"
                elseif ring.ringclass == "eRingClass_Rocky" then
                    ringType = "Rocky"
                elseif ring.ringclass == "eRingClass_MetalRich" then
                    ringType = "Metal rich"
                elseif ring.ringclass == "eRingClass_Metalic" then
                    ringType = "Metallic"
                end

                return  string.format("Massive ring (%s)", ringType), 
                        string.format("%s\nRing type: %s // Mass: %s Gt\nDiameter: %.2f LS // Width: %.2f LS",
                            ring.name, ringType, formatNumber(ringMass), ringDiameter, ringWidth)
            end
        end
    end
end
---@End


----------------------------------------------------------------
---@Complex 3.2: NARROW RING GAP WITH HIGH ROTATIONAL DIFFERENCE
-- This checks for a narrow gap between A and B rings, and tests their individual rotational speeds.
-- If there is a significant difference in orbital period, triggers the notification.
----------------------------------------------------------------
if triggerForRingGapWithSpeedDifferential then
    if hasRings(scan.Rings) and scan.Rings.Count >= 2 then
        -- Only checks 2 innermost rings because 3rd rings are rarely visible.
        local G = 6.674 * (10^(-11))
        local bodyMass_kg = scan.MassEM * 5.972*(10^24)
        local innerRing = scan.Rings[0]
        local outerRing = scan.Rings[1]
        -- Radii are specified in meters.
        local innerRingWidth_m = innerRing.OuterRad - innerRing.InnerRad
        local ringGap_km = distanceAsKm(outerRing.InnerRad - innerRing.OuterRad)
        local innerRingAvgRad_m = (innerRing.OuterRad + innerRing.InnerRad) / 2
        local outerRingAvgRad_m = (outerRing.OuterRad + outerRing.InnerRad) / 2

        local innerRingOrbitalVelocity_kmps = math.sqrt(G * (bodyMass_kg / innerRingAvgRad_m)) / 1000
        local outerRingOrbitalVelocity_kmps = math.sqrt(G * (bodyMass_kg / outerRingAvgRad_m)) / 1000
        local ringVelocityDelta_kmps = math.abs(outerRingOrbitalVelocity_kmps - innerRingOrbitalVelocity_kmps)

        if ringGap_km <= 99 and ringVelocityDelta_kmps >= 5 then
            local ringWidthText = ''
            if innerRingWidth_m >= 299792458/10 then
                ringWidthText = string.format("%.1f LS", innerRingWidth_m / 299792458)
            else
                ringWidthText = string.format("%.0f km", distanceAsKm(innerRingWidth_m))
            end

            return  "Narrow ring gap with high rotational difference",
                    string.format("Gap: %.0f km; Inner ring width: %s; Ring velocity delta: %.1f km/s; Inner ring velocity: %.1f km/s, outer ring velocity %.1f km/s",
                            ringGap_km, ringWidthText, ringVelocityDelta_kmps, innerRingOrbitalVelocity_kmps, outerRingOrbitalVelocity_kmps)
        end
    end
end
---@End


-----------------------------------------------
---@Complex 3.3: RING PROXIMITY / SHEPHERD MOON
-- Ping for shepherd moons and bodies close to the outside of a ring.
-- Replacement for the built in 'Close Ring Proximity' and 'Shepherd Moon'
-- Triggers for a Landable (or not) Moon which is very close to a Parent with Ring
-- Triggers also for Shepherd Moons 
-----------------------------------------------

if triggerForRingProximity then
    if not isRing(scan.BodyName) and parents and parents[0].Scan and hasRings(parents[0].Scan.Rings) then
        local ringCount = 0
        local outerRadius = {}
        local innerRadius = {}

        for ring in ringsOnly(parents[0].Scan.Rings) do 
            ringCount = ringCount + 1 --increments for every valid ring
            innerRadius[ringCount] = distanceAsKm(ring.innerrad) --adds the inner radius of each ring to the innerRadius table.
            outerRadius[ringCount] = distanceAsKm(ring.outerrad) --adds the outer radius of each ring to the outerRadius table.
        end

        local moonOrbit = math.floor(distanceAsKm(scan.SemiMajorAxis)) --sets the orbital distance of the body scanned
        local landable = scan.Landable and " (Landable)" or ""

        -- the following subtracts the outer radius of the outermost ring from the orbital distance of the moon. 
        -- if negative, that means the moon is inside the ring.
        if (moonOrbit - outerRadius[ringCount]) < 0 and triggerForShepherdMoon then
            local innerRingDistance = ringCount > 1
                and string.format("Distance to inner ring: %s km // Orbit: %s km\n", formatNumber(math.floor(moonOrbit - outerRadius[ringCount - 1])), formatNumber(moonOrbit))
                or ""
            return  "Shepherd moon" .. landable,
                    string.format("%sDistance to outer ring: %s km", innerRingDistance, formatNumber(math.floor(innerRadius[ringCount] - moonOrbit)))
        end

        -- the following checks to see if a barycenter is close to a ring
        if isBarycentre(scan) and math.abs((moonOrbit - outerRadius[ringCount])) < closeRingDistance then 
            return  'Barycenter is close to ring',
                    string.format("Orbit: %s km\nRing radius: %s km\nDistance to ring: %s km",
                        formatNumber(moonOrbit), formatNumber(outerRadius[ringCount]), formatNumber(moonOrbit - outerRadius[ringCount]))
        end

        if (math.abs(moonOrbit - outerRadius[ringCount])) < closeRingDistance then -- subtract the outer radius of the outermost ring from the orbit of the moon,
            return  string.format("Close ring proximity%s\nDistance to ring: %.0f km", landable, moonOrbit - outerRadius[ringCount]),
                    string.format("Orbit: %s km, Moon radius: %.0f km\nRing radius: %s km, Distance to ring: %.0f km",
                        formatNumber(moonOrbit), distanceAsKm(scan.Radius), formatNumber(math.floor(outerRadius[ringCount])), math.abs(moonOrbit - outerRadius[ringCount]))
        end
    end
end
---@End


----------------------------------------------
---@Complex 3.4: RING WITH FAST ORBITAL PERIOD
-- A ring with an orbital period shorter than ringOrbitalPeriodThreshold will trigger the "Ring has fast orbital period" notification.
----------------------------------------------
if triggerForRingWithFastOrbitalPeriod then
    if hasRings(scan.Rings) then
        local G = 6.674 * (10^(-11))
        local planetMass = scan.MassEM * 5.972*(10^24)
        local starMass = scan.StellarMass * 1.988*(10^30)
        local periodResult = ""
        
        for ring in ringsOnly(scan.Rings) do
            local averageRadius = (ring.outerrad + ring.innerrad) / 2 -- get average radius for the ring in meters, Elite uses this for calcs
            local orbitalVelocity = math.sqrt(G * (planetMass / averageRadius)) / 1000 --in km/s
                    
            if orbitalVelocity == 0 then --recalc velocity if it is a star rather than a planet
                orbitalVelocity = math.sqrt(G * (starMass / averageRadius)) / 1000 --in km/s
            end
            
            local ringCircumference = 2 * (3.1415926 * (averageRadius / 1000)) --in km
            local ringOrbitalPeriod = (ringCircumference / orbitalVelocity) --in seconds
            
            if ringOrbitalPeriod <= ringOrbitalPeriodThreshold then
                periodResult = periodResult .. "Ring: " .. ring.name
                formattedTime = formatTime(ringOrbitalPeriod)
            end
        end
        if periodResult ~= "" then
            return  "Ring has fast orbital period\n(" .. formattedTime .. ")", 
                    periodResult
        end
    end
end
---@End


---------------------------------------
---@Complex 3.5: RING WITH HIGH ORBITAL VELOCITY
-- A ring with an orbital velocity higher than ringVelocityThreshold will trigger the "Ring has high orbital velocity" notification.
---------------------------------------
if triggerForHighVelocityRing then
    if hasRings(scan.Rings) then
        local G = 6.674 * (10^(-11))
        local planetMass = scan.MassEM * 5.972*(10^24)
        local starMass = scan.StellarMass * 1.988*(10^30)
        
        for ring in ringsOnly(scan.Rings) do
            local averageRadius = (ring.outerrad + ring.innerrad) / 2 -- get average radius for the ring in meters
            local mass = isStar(scan) and starMass or planetMass
            local orbitalVelocity = math.sqrt(G * (mass / averageRadius)) / 1000

            if orbitalVelocity >= ringVelocityThreshold then
                return  string.format("Ring has high orbital velocity\n(%.2f km/s)", orbitalVelocity), 
                        ring.name
            end
        end
    end
end
---@End


------------------------------------------------------
---@Complex 3.6: TAYLOR'S RINGS AND OTHER NARROW RINGS
-- Narrow single ring - Single ring with a width less than 1/4th (25%) of its body's diameter (0.5 could be reduced to 0.4 for 20% max)
-- Taylor's Ring - Thin single ring with a width less than 1/8th (12.5%) of its body's diameter.
------------------------------------------------------
if triggerForNarrowRings then
    if hasRings(scan.Rings) and scan.Rings.Count == 1 then
        local ringWidthKm = distanceAsKm(scan.Rings[0].OuterRad - scan.Rings[0].InnerRad)
        local diameterKm = distanceAsKm(scan.Radius * 2)
        local thinnessPercent = (ringWidthKm / diameterKm) * 100

        local found = ""
        if thinnessPercent <= 12.5 then -- Taylor's ring
            found = string.format("Taylor's ring (%.2f%% of body diameter)", thinnessPercent)
        elseif thinnessPercent <= narrowRingThreshold then -- Narrow ring
            found = string.format("Narrow single ring (%.2f%% of body diameter)", thinnessPercent)
        else -- Ring not narrow enough
            return false
        end

        return  found,
                string.format("Ring width: %s km // Body diameter: %s km (%.2f%%)\n%s, Distance from arrival: %s LS",
                    formatNumber(math.floor(ringWidthKm)), formatNumber(math.floor(diameterKm)), thinnessPercent, scan.PlanetClass, formatNumber(math.floor(scan.DistanceFromArrivalLS)))
    end
end
---@End


-----------------------------------
---@Complex 4.1: GEOLOGICAL SIGNALS
-- Triggers for any body containing geological signals, returns the number of signals, the type of volcanism present, and the average surface temp.
-----------------------------------
if triggerForGeoSignals then
    if scan.Landable and geosignals > 0 then
        return  string.format ("Geological signals (%i)", geosignals),
                string.format ("%s with %s", scan.PlanetClass, scan.Volcanism)
    end
end
---@End


----------------------------------------------------------------------------
---@Complex 4.2: HIGH ORBITAL INCLINATION, LANDABLE, CLOSE TO BODY WITH RING
-- Ping for landable bodies with stunning views of their parent's ring(s).
----------------------------------------------------------------------------
if triggerForHighIncLandableRingProx then
    if (scan.PlanetClass and scan.Landable and parents and parents[0].Scan and parents[0].Scan.Rings) then

        local adjustedAxis = scan.SemiMajorAxis / 300000000

        if math.abs(scan.OrbitalInclination) > inclinationThreshold and adjustedAxis < 10 then
            for parentRing in ringsOnly(parents[0].Scan.Rings) do

                local withAtmosphere = scan.Atmosphere ~= "" and (" // " .. scan.Atmosphere) or ""

                return  string.format("High orbital inclination (%.0f°)\nClose to ringed parent(%.2f LS)\nLandable %s", scan.OrbitalInclination, adjustedAxis, withAtmosphere),
                        string.format("Body Type: %s\nSurface temperature: %.0f K", scan.PlanetClass, scan.SurfaceTemperature)
            end
        end
    end
end
---@End


--------------------------------------
---@Complex 4.3: HIGH SURFACE PRESSURE
-- Triggers for landable, tenuous atmospheres which have an atmospheric pressure which is >= to atmoSatThreshold.
--------------------------------------
if triggerForHighSurfacePressure then
    if scan.Landable and scan.Atmosphere and pressureAsAtm(scan.SurfacePressure) >= atmoSatThreshold then
        return  string.format("High surface pressure (Landable)\n(%.3f atm.)", pressureAsAtm(scan.SurfacePressure)),
                "Atmosphere type: " .. scan.AtmosphereType
    end
end
---@End


-----------------------------
---@Complex 4.4: HOT LANDABLE
-- Triggers for any landable with a surface temperature above threshold, and calls out if a landable has a surface temperature
-- at 800 K or higher, at which point the commander will slowly burn to death.
-----------------------------
if triggerForHotLandable then
    if scan.PlanetClass and scan.Landable then
        if scan.SurfaceTemperature >= 800 then
            return string.format("Lethal surface temperature\n%.0f K", scan.SurfaceTemperature), "Body type: " .. scan.PlanetClass
        elseif not lethalOnly and scan.SurfaceTemperature >= hotLandableThreshold then
            return string.format("Hot landable body\n%.0f K", scan.SurfaceTemperature), "Body type: " .. scan.PlanetClass
        end
    end
end
---@End


---------------------------------------------------
---@Complex 4.5: LANDABLE MOON CLOSE TO A RARE BODY
-- This function checks the parent's planet class of landable bodies with close orbits 
-- (the distance threshold can be adjusted in Global). If the planet class of the parent is 
-- an Earth-like world, a water world, or an ammonia world, it will trigger the notification.
---------------------------------------------------
if triggerForLandableAndCloseToRare then
    local orbitDistance =  distanceAsLs(scan.SemiMajorAxis)
    if scan.Landable and (orbitDistance <= terraMoonThreshold) and parents then
        local planetType = ""
        local ringText = ""
        if parents[0].Scan then
            if parents[0].Scan.PlanetClass == "Earthlike body" then
                planetType = "earth-like world"
            elseif parents[0].Scan.PlanetClass == "Water world" then
                planetType = "water world"
            elseif parents[0].Scan.PlanetClass == "Ammonia world" then
                planetType = "ammonia world"
            end

            if hasRings(parents[0].Scan.Rings) then ringText = "ringed " end
        end

        local atmoType = scan.Atmosphere ~= "" and ("with " .. scan.Atmosphere) or "(no atmosphere)"

        if planetType ~= "" then
            return  string.format("Close orbit to %s%s\nLandable %s\nOrbital distance: %.2f LS", ringText, planetType, atmoType, orbitDistance),
                    "Body Type: " .. scan.PlanetClass
        end
    end
end
---@End


-----------------------------------------------------------------------------------------
---@Complex 4.6: LANDABLE WITH ATMOSPHERE AND BIOLOGICAL SIGNALS / 4.11: RINGED LANDABLES
-- This function checks a scanned atmosphere against the table of previously discovered atmospheres.
-- If not found, returns that a new atmosphere type has been discovered.
-----------------------------------------------------------------------------------------
function isNewAtmosphere(atmo)
  for k,v in pairs(Included_Atmospheres) do
    if atmo == k then
      return false
    end
  end
  return true
end

if not scan.Landable then
    return false;
end

if triggerForRingedLandable or triggerForLandableAtmosphere or triggerForBiosignals then
    local notify = false
    
-- building the ringed prefix if necessary
    local baseText = "Landable"
    if triggerForRingedLandable and hasRings(scan.Rings) then
        baseText = "Ringed landable"
        if not ringedWithAtmosphereOnly then
            notify = true
        end
    end

-- appending atmosphere
    local withAtmo = " with no atmosphere"
    if scan.Atmosphere ~= "" then
        withAtmo = " with " .. scan.Atmosphere
        if (triggerForLandableAtmosphere and (Included_Atmospheres[scan.AtmosphereType] or isNewAtmosphere(scan.AtmosphereType))) or (hasRings(scan.Rings) and ringedWithAtmosphereOnly) then
            notify = true
        end
    end

-- appending biological signals
    local withLife = ""
    if triggerForBiosignals and biosignals > 0 then
        withLife = " and " .. string.format('%i biological signal%s', biosignals, biosignals > 1 and 's' or '')
        if triggerForBiosignals then
            notify = true
        end
    end

-- now we proceed further only if something relevant to an enabled criteria was detected above.
    if notify then
    
-- write a note if one of certain exceptional things is true
        local notes = ""
        if scan.AtmosphereType == "Water" or scan.AtmosphereType == "WaterRich" or scan.AtmosphereType == "Oxygen" then
            notes = string.char(10) .. "(Rare atmosphere)"
        elseif scan.AtmosphereType == "Helium" and scan.PlanetClass ~= "Icy body" then
            notes = string.char(10) .. "(Rare body type for this atmosphere)"
        elseif scan.AtmosphereType == "SilicateVapour" or scan.AtmosphereType == "AmmoniaRich" then
            notes = string.char(10) .. "(VERY rare atmosphere)"
        elseif scan.Atmosphere ~= "" and isNewAtmosphere(scan.AtmosphereType) then
            notes = string.char(10) .. "NEW LANDABLE ATMOSPHERE"
        elseif scan.Atmosphere == '' and biosignals > 0 and triggerForBiosignals then
            notes = string.char(10) .. "(Horizons bios likely)"
        elseif triggerOnlyForRareFinds then
            return false;
        end
        
        return baseText .. withAtmo .. withLife .. notes, "Body type: " .. scan.PlanetClass
    end
end
---@End


----------------------------------------------------
---@Complex 4.7: LANDABLE WITH HIGH ANGULAR DIAMETER
----------------------------------------------------
if triggerForHighAngularDiameter then
    if (scan.PlanetClass and scan.Landable and parents and parents.Count > 0 and parents[0].Scan) then
        local sizeQuotient = 0
        if(parents[0].Scan and (parents[0].Scan.PlanetClass or parents[0].Scan.StarType)) then
            sizeQuotient = 57.3 * ((2 * parents[0].Scan.Radius) / scan.SemiMajorAxis)
        end
    
        if ((sizeQuotient > starDiameterThreshold and parents[0].Scan.StarType) or (sizeQuotient > planetDiameterThreshold and parents[0].Scan.PlanetClass)) then
            local bodyTypeDetail = (parents[0].Scan.StarType or '') .. (parents[0].Scan.PlanetClass or '') -- only one will be set.
            return true, 'High angular diameter parent (' .. parents[0].ParentType .. ')' .. string.char(10) .. 'Landable' .. ' (' .. math.floor(sizeQuotient) .. '°)',
            string.format('%.1f°, Parent type: %s; %s', sizeQuotient, parents[0].ParentType, bodyTypeDetail)
        end
    end
end
---@End


-------------------------------------------
---@Complex 4.8: LANDABLE WITH HIGH GRAVITY
-- This triggers for any landable body with surface gravity greater than gravityThreshold.
-------------------------------------------
if triggerForHighG then
    local gravityCalc = gravityAsG(scan.SurfaceGravity)
    local onFootProhibited = gravityCalc > 2.7 and "\nSRV disembarkment only" or ""

    if scan.Landable and gravityCalc >= gravityThreshold then
        return  string.format("Landable with high gravity\n(%.2f G)%s", gravityCalc, onFootProhibited),
                string.format("Body type: %s\nSurface temperature: %.0f K", scan.PlanetClass, scan.SurfaceTemperature)
    end
end
---@End


---------------------------
---@Complex 4.9: LARGE LANDABLE BODY
-- This triggers for any landable body larger than largeLandableThreshold.
---------------------------
if triggerForLargeLandable then
    local radius = distanceAsKm(scan.Radius)
    if scan.Landable and radius >= largeLandableThreshold then
        return  string.format("Large landable body\nRadius: %s km // %.2f G", formatNumber(math.floor(radius)), gravityAsG(scan.SurfaceGravity)), 
                string.format("Body Type: %s\nSurface temperature: %.0f K", scan.PlanetClass, scan.SurfaceTemperature)
    end
end
---@End
