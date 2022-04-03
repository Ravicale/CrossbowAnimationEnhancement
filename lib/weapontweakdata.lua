--Sets the time for the "reload" animation of the string to cut off at. The opening is pretty generous since 
--Currently, all crossbows look correct with this timing. But it may change with future additions.
--The actual window of reasonable values for these is surprisingly big, since the string is static for much of the "reload".
local orig_init = WeaponTweakData.init
function WeaponTweakData:init(...)
	orig_init(self, ...)

	--Vanilla Weapons.
	self.arblast.crossbow_string_time = 0.067 --Heavy Crossbow
	self.frankish.crossbow_string_time = 0.067 --Light Crossbow
	self.hunter.crossbow_string_time = 0.067 --Pistol Crossbow
	--NOTE: The pistol crossbow has a few minor animation issues. There's some sort of weighting issue on the
	--string that adds a jaggy. Only visible when ADS-ed.
	--There's also a weird jigger for a few frames after firing. It appears to be tied to that animation specifically.
	
	--Custom Weapons
	if self.heart_piercer_crossbow then 
		self.heart_piercer_crossbow.crossbow_string_time = 0.067 --Matthelzor's Heart Piercer Crossbow
	end
end