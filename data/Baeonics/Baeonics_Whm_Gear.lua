-- Setup vars that are user-dependent.  Can override this in a sidecar file.
function user_job_setup()
	state.OffenseMode:options('Normal','Acc')
	state.CastingMode:options('Normal','Resistant')
	state.IdleMode:options('Normal','PDT','MDT','MEVA')
	state.PhysicalDefenseMode:options('PDT')
	state.MagicalDefenseMode:options('MDT')
	state.ResistDefenseMode:options('MEVA')
	state.Weapons:options('None','DualWeapons','Maxentius')
	state.WeaponskillMode:options('Normal','Fodder')
	state.PWUnlock = M(true, 'PWUnlock')
	
	default_weapons = 'Maxentius'
	default_dual_weapons = 'DualWeapons'
	
	autows_list = {['DualWeapons']='Black Halo',['Maxentius']='Black Halo'}

--Artifact Gear
	AF_HEAD 	= {name="Theophany Cap +3"}		--low 
	AF_BODY 	= {name="Theo. Bliaut +3"}		--Upgrade
	AF_HANDS 	= {name="Theophany Mitts +3"}		--Upgrade
	AF_LEGS 	= {name="Th. Pant. +3"}			--Upgrade
	AF_FEET 	= {name="Theo. Duckbills +3"}		--Upgrade

--Relic Gear
	RELIC_HEAD 	= {name="Piety Cap +1"}			--low
	RELIC_BODY 	= {name="Piety Bliaut +3"}		--low	
	RELIC_HANDS 	= {name="Piety Mitts +1"}		--low
	RELIC_LEGS 	= {name="Piety Pantaln. +3"}		--Upgrade
	RELIC_FEET 	= {name="Piety Duckbills +1"}		--Upgrade

--Empyrean Gear
	EMPY_HEAD 	= {name="Ebers Cap +3"}			--yes		
	EMPY_BODY 	= {name="Ebers Bliaut +3"}		--yes		
	EMPY_HANDS 	= {name="Ebers Mitts +3"}		--yes		
	EMPY_LEGS 	= {name="Ebers Pant. +3"}		--yes		
	EMPY_FEET 	= {name="Ebers Duckbills +3"}		--yes

--Empyrean Ear
	EMPY_EAR = {name=EMPY_EAR}

--DD Neck
	JSE_NECK = {name="Clr. Torque +2"}

--Adoulin Gears

	TELCHINE_ENH_HEAD = {name="Telchine Cap", augments={'"Cure" potency +8%','Enh. Mag. eff. dur. +8',}}
	TELCHINE_ENH_BODY = {name="Telchine Chas.", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +10',}}
	TELCHINE_ENH_HANDS = {name="Telchine Gloves", augments={'"Cure" potency +8%','Enh. Mag. eff. dur. +10',}}
	TELCHINE_ENH_LEGS = {name="Telchine Braconi", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +9',}}
	TELCHINE_ENH_FEET = {name="Telchine Pigaches", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +9',}}
	
	TelchineHead_EMD_CP	= { name="Telchine Cap", augments={'"Cure" potency +8%','Enh. Mag. eff. dur. +8',}}
	TelchineBody_EMD_CP	= { name="Telchine Chas.", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +10',}}
	TelchineHand_EMD_CP	= { name="Telchine Gloves", augments={'"Cure" potency +8%','Enh. Mag. eff. dur. +10',}}
	TelchineLegs_EMD_CP	= { name="Telchine Braconi", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +9',}}
	TelchineFeet_EMD_CP	= { name="Telchine Pigaches", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +9',}}

--Capes
	AMBUIDLE_BACK = {name="Alaunus's Cape", augments={'MND+20','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Phys. dmg. taken-10%',}}
	AMBUCURE_BACK = {name="Alaunus's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','MND+10','Enmity-10','Spell interruption rate down-10%',}}

--Oseem
	GADA_FC = {name="Gada", augments={'"Fast Cast"+5','Potency of "Cure" effect received+2%','INT+9 MND+9 CHR+9',}}
	GADA_ENHANCE = {name="Gada"}

--Rings
	StikiniRing_Ring1	= {name = "Stikini Ring +1", bag = "wardrobe2"}
	StikiniRing_Ring2	= {name = "Stikini Ring +1", bag = "wardrobe3"}

	ChirichRing_Ring1	= {name = "Chirich Ring +1", bag = "wardrobe2"}
	ChirichRing_Ring2	= {name = "Chirich Ring +1", bag = "wardrobe3"}

		-- Additional local binds
	send_command('bind @` gs c cycle ElementalMode')
	send_command('bind ^` gs c scholar dark')
	send_command('bind !` gs c scholar light')
	send_command('bind ^@!` gs c toggle AutoCaress')
	send_command('bind ^backspace input /ja "Sacrosanctity" <me>')
	send_command('bind !backspace input /ja "Afflatus Solace" <me>')
	send_command('bind @backspace input /ja "Afflatus Misery" <me>')
	send_command('bind ^\\\\ input /ma "Protectra V" <me>')
	send_command('bind @\\\\ input /ma "Shellra V" <me>')
	send_command('bind !\\\\ input /ma "Reraise IV" <me>')
	send_command('bind @f8 gs c toggle AutoNukeMode')
	send_command('bind !pause gs c toggle AutoSubMode') --Automatically uses sublimation.
	send_command('bind ^r gs c set skipprocweapons true;gs c reset weaponskillmode;gs c weapons Default;gs c set unlockweapons false')
	send_command('bind !r gs c set skipprocweapons true;gs c reset weaponskillmode;gs c weapons none')

	select_default_macro_book()
end

-- Define sets and vars used by this job file.
function init_gear_sets()
--------------------------------------
-- Start defining the sets
--------------------------------------

-- Weapons sets
	sets.weapons.Maxentius = {main="Maxentius",sub="Genmei Shield"}
	sets.weapons.DualWeapons = {main="Maxentius",sub="Daybreak"}

-- Precast Sets
	
-- Precast sets to enhance JAs
	sets.precast.JA.Benediction = 
	{
		body=RELIC_BODY
	}
	
	-- Waltz set (chr and vit)
	sets.precast.Waltz = {}
	
	-- Fast cast sets for spells
	sets.precast.FC = 
	{
		--82 FC
		main="Hvergelmir",		--50 FC
		sub="Clerisy Strap +1",		--03 FC	
		ammo="Impatiens",		--	02 QM	10 SIRD		
		head=MBOZE_HEAD,		--10 FC			-07 DT		
		neck=JSE_NECK,			--10 FC
		ear1="Loquac. Earring",		--02 FC
		ear2="Malignance Earring",	--04 FC
		body=EMPY_BODY,
		hands="Chironic Gloves",	--		20 SIRD
		ring1="Lebeche Ring",		--	02 QM
		ring2=StikiniRing_Ring2,
		back="Perimede Cape",		--	04 QM	
		waist="Witful Belt",		--03 FC	03 QM
		legs="Chironic Hose",
		feet=BUMBA_FEET			--			-07 DR
	}
		
	sets.precast.FC.DT = {main="Hvergelmir",sub="Clerisy Strap +1",ammo="Impatiens",
		head="Bunzi's Hat",neck=JSE_NECK,ear1="Loquac. Earring",ear2="Malignance Earring",
		body=INYANGA_BODY,hands="Fanatic Gloves",ring1="Kishar Ring",ring2="Lebeche Ring",
		back="Perimede Cape",waist="Witful Belt",legs=AYANMO_LEGS,feet="Regal Pumps +1"}
	
	sets.precast.FC['Healing Magic'] = set_combine(sets.precast.FC, {legs=EMPY_LEGS})
	sets.precast.FC.StatusRemoval = sets.precast.FC['Healing Magic']
	sets.precast.FC.Cure = set_combine(sets.precast.FC['Healing Magic'], {})
	sets.precast.FC.Curaga = sets.precast.FC.Cure
	sets.precast.FC.CureSolace = sets.precast.FC.Cure
	sets.precast.FC.Impact =  set_combine(sets.precast.FC, {head=empty,body="Crepuscular Cloak"})
	sets.precast.FC.Dispelga = set_combine(sets.precast.FC, {main="Daybreak",sub="Genmei Shield"})

    -- Weaponskill sets

    -- Default set for any weaponskill that isn't any more specifically defined
	sets.precast.WS = {ammo="Oshasha's Treatise",
		head="Nyame Helm",neck="Fotia Gorget",ear1="Brutal Earring",ear2="Moonshade Earring",
		body="Nyame Mail",hands="Nyame Gauntlets",ring1="Epaminondas's Ring",ring2="Cornelia's Ring",
		back="Null Shawl",waist="Fotia Belt",legs="Nyame Flanchard",feet="Nyame Sollerets"}

	sets.precast.WS['Flash Nova'] = {ammo="Oshasha's Treatise",
		head="Nyame Helm",neck="Null Loop",ear1="Brutal Earring",ear2="Moonshade Earring",
		body="Nyame Mail",hands="Nyame Gauntlets",ring1="Epaminondas's Ring",ring2="Cornelia's Ring",
		back="Null Shawl",waist="Orpheus's Sash",legs="Nyame Flanchard",feet="Nyame Sollerets"}
	sets.precast.WS['Mystic Boon'] = {}
		
	sets.MaxTP = {}
	sets.MaxTP.Myrkr = {}
	sets.MaxTP.Dagan = {}
	
	-- Midcast Sets
	sets.midcast.FastRecast = 
	{
		main="Hvergelmir",
		sub="Clerisy Strap +1",
		ammo="Pemphredo Tathlum",
		head=EMPY_HEAD,
		neck=JSE_NECK,
		ear1="Loquac. Earring",
		ear2="Malignance Earring",
		body=INYANGA_BODY,
		hands="Fanatic Gloves",
		ring1="Defending Ring",
		ring2="Freke Ring",
		back="Alaunus's Cape",
		waist="Cornelia's Belt",
		legs=AYANMO_LEGS,
		feet="Regal Pumps +1"
	}

-- Cure sets

	sets.midcast['Full Cure'] = sets.midcast.FastRecast
	
	sets.midcast.Cure = 
	{
		main="Queller Rod",
		sub="Ammurapi Shield",
		ammo="Pemphredo Tathlum",
		head=EMPY_HEAD,
		neck=JSE_NECK,
		ear1="Mendi. Earring",
		ear2="Glorious Earring",
		body=AF_BODY,
		hands=AF_HANDS,
		ring1="Sirona's Ring",
		ring2="Lebeche Ring",
		back="Alaunus's Cape",
		waist="Luminary Sash",
		legs=EMPY_LEGS,
		feet=RELIC_FEET
	}
		
	sets.midcast.CureSolace = 
	{
		main="Queller Rod",
		sub="Ammurapi Shield",
		ammo="Pemphredo Tathlum",
		head=EMPY_HEAD,
		neck=JSE_NECK,
		ear1="Mendi. Earring",
		ear2="Glorious Earring",
		body=EMPY_BODY,
		hands=AF_HANDS,
		ring1="Sirona's Ring",
		ring2="Lebeche Ring",
		back="Alaunus's Cape",
		waist="Luminary Sash",
		legs=EMPY_LEGS,
		feet=RELIC_FEET
	}
	
	sets.midcast.LightWeatherCure = 
	{
		main="Chatoyant Staff",
		sub="Enki Strap",
		ammo="Pemphredo Tathlum",
		head=EMPY_HEAD,
		neck=JSE_NECK,
		ear1="Mendi. Earring",
		ear2="Glorious Earring",
		body=AF_BODY,
		hands=AF_HANDS,
		ring1="Sirona's Ring",
		ring2="Lebeche Ring",
		back="Twilight Cape",
		waist="Hachirin-no-Obi",
		legs=EMPY_LEGS,
		feet=RELIC_FEET
	}
	
	sets.midcast.LightWeatherCureSolace = 
	{
		main="Chatoyant Staff",sub="Enki Strap",ammo="Pemphredo Tathlum",
		head=EMPY_HEAD,neck=JSE_NECK,ear1="Mendi. Earring",ear2="Glorious Earring",
		body=EMPY_BODY,hands=AF_HANDS,ring1="Sirona's Ring",ring2="Lebeche Ring",
		back="Alaunus's Cape",waist="Hachirin-no-Obi",legs=EMPY_LEGS,feet=RELIC_FEET
	}
		
	sets.midcast.LightDayCureSolace = 
	{
		main="Queller Rod",sub="Ammurapi Shield",ammo="Pemphredo Tathlum",
		head=EMPY_HEAD,neck=JSE_NECK,ear1="Mendi. Earring",ear2="Glorious Earring",
		body=EMPY_BODY,hands=AF_HANDS,ring1="Sirona's Ring",ring2="Lebeche Ring",
		back="Alaunus's Cape",waist="Hachirin-no-Obi",legs=EMPY_LEGS,feet=RELIC_FEET
	}
	
	sets.midcast.LightDayCure = 
	{
		main="Queller Rod",sub="Ammurapi Shield",ammo="Pemphredo Tathlum",
		head=EMPY_HEAD,neck=JSE_NECK,ear1="Mendi. Earring",ear2="Glorious Earring",
		body=EMPY_BODY,hands=AF_HANDS,ring1="Sirona's Ring",ring2="Lebeche Ring",
		back="Twilight Cape",waist="Hachirin-no-Obi",legs=EMPY_LEGS,feet=RELIC_FEET
	}
	
	sets.midcast.Curaga = 
	{
		main="Queller Rod",sub="Ammurapi Shield",ammo="Pemphredo Tathlum",
		head=EMPY_HEAD,neck=JSE_NECK,ear1="Mendi. Earring",ear2="Glorious Earring",
		body=AF_BODY,hands=AF_HANDS,ring1="Sirona's Ring",ring2="Lebeche Ring",
		back="Mending Cape",waist="Luminary Sash",legs=EMPY_LEGS,feet=RELIC_FEET
	}
		
	sets.midcast.LightWeatherCuraga = 
	{
		main="Chatoyant Staff",sub="Enki Strap",ammo="Pemphredo Tathlum",
		head=EMPY_HEAD,neck=JSE_NECK,ear1="Mendi. Earring",ear2="Glorious Earring",
		body=AF_BODY,hands=AF_HANDS,ring1="Sirona's Ring",ring2="Lebeche Ring",
		back="Twilight Cape",waist="Hachirin-no-Obi",legs=EMPY_LEGS,feet=RELIC_FEET
	}
		
	sets.midcast.LightDayCuraga = 
	{
		main="Queller Rod",sub="Ammurapi Shield",ammo="Pemphredo Tathlum",
		head=EMPY_HEAD,neck=JSE_NECK,ear1="Mendi. Earring",ear2="Glorious Earring",
		body=EMPY_BODY,hands=AF_HANDS,ring1="Sirona's Ring",ring2="Lebeche Ring",
		back="Twilight Cape",waist="Hachirin-no-Obi",legs=EMPY_LEGS,feet=RELIC_FEET
	}
	
	sets.midcast.Cure.DT = 
	{
		main="Daybreak",sub="Culminus",range=empty,ammo="Staunch Tathlum +1",
		head="Bunzi's Hat",neck="Loricate Torque +1",ear1="Mendi. Earring",ear2="Glorious Earring",
		body="Bunzi's Robe",hands=gear.chironic_aspir_gloves,ring1="Defending Ring",ring2="Freke Ring",
		back="Alaunus's Cape",waist="Emphatikos Rope",legs=EMPY_LEGS,feet=AF_FEET
	}
		
	--Melee Curesets are used whenever your Weapons state is set to anything but None.
	sets.midcast.MeleeCure = 
	{
		main="Queller Rod",sub="Ammurapi Shield",ammo="Pemphredo Tathlum",
		head=EMPY_HEAD,neck=JSE_NECK,ear1="Mendi. Earring",ear2="Glorious Earring",
		body=gear.chironic_nuke_body,hands="Bokwus Gloves",ring1="Sirona's Ring",ring2="Lebeche Ring",
		back="Mending Cape",waist="Luminary Sash",legs=gear.chironic_macc_legs,feet=RELIC_FEET
	}
		
	sets.midcast.MeleeCureSolace = set_combine(sets.midcast.MeleeCure, {body=EMPY_BODY,back="Alaunus's Cape",})
	sets.midcast.MeleeLightWeatherCure = set_combine(sets.midcast.MeleeCure, {back="Twilight Cape",waist="Hachirin-no-Obi"})
	sets.midcast.MeleeLightWeatherCureSolace = set_combine(sets.midcast.MeleeCure, {body=EMPY_BODY,back="Alaunus's Cape",waist="Hachirin-no-Obi"})
	sets.midcast.MeleeLightDayCureSolace = set_combine(sets.midcast.MeleeCure, {body=EMPY_BODY,back="Twilight Cape",waist="Hachirin-no-Obi"})
	sets.midcast.MeleeLightDayCure = set_combine(sets.midcast.MeleeCure, {back="Twilight Cape",waist="Hachirin-no-Obi"})
	sets.midcast.MeleeCuraga = set_combine(sets.midcast.MeleeCure, {})
	sets.midcast.MeleeLightWeatherCuraga = set_combine(sets.midcast.MeleeCure, {back="Twilight Cape",waist="Hachirin-no-Obi"})
	sets.midcast.MeleeLightDayCuraga = set_combine(sets.midcast.MeleeCure, {back="Twilight Cape",waist="Hachirin-no-Obi"})
	
	sets.midcast.CureSolace.DT = set_combine(sets.midcast.Cure.DT, {body=EMPY_BODY})
	sets.midcast.LightWeatherCure.DT = set_combine(sets.midcast.Cure.DT, {waist="Hachirin-no-Obi"})
	sets.midcast.LightWeatherCureSolace.DT = set_combine(sets.midcast.Cure.DT, {body=EMPY_BODY,waist="Hachirin-no-Obi"})
	sets.midcast.LightDayCureSolace.DT = set_combine(sets.midcast.Cure.DT, {body=EMPY_BODY,waist="Hachirin-no-Obi"})
	sets.midcast.LightDayCure.DT = set_combine(sets.midcast.Cure.DT, {waist="Hachirin-no-Obi"})
	sets.midcast.Curaga.DT = set_combine(sets.midcast.Cure.DT, {})
	sets.midcast.LightWeatherCuraga.DT = set_combine(sets.midcast.Cure.DT, {waist="Hachirin-no-Obi"})
	sets.midcast.LightDayCuraga.DT = set_combine(sets.midcast.Cure.DT, {waist="Hachirin-no-Obi"})
	sets.midcast.MeleeCure.DT = set_combine(sets.midcast.Cure.DT, {})
	
	sets.midcast.MeleeCureSolace.DT = set_combine(sets.midcast.Cure.DT, {body=EMPY_BODY})
	sets.midcast.MeleeLightWeatherCure.DT = set_combine(sets.midcast.Cure.DT, {waist="Hachirin-no-Obi"})
	sets.midcast.MeleeLightWeatherCureSolace.DT = set_combine(sets.midcast.Cure.DT, {body=EMPY_BODY,waist="Hachirin-no-Obi"})
	sets.midcast.MeleeLightDayCureSolace.DT = set_combine(sets.midcast.Cure.DT, {body=EMPY_BODY,waist="Hachirin-no-Obi"})
	sets.midcast.MeleeLightDayCure.DT = set_combine(sets.midcast.Cure.DT, {waist="Hachirin-no-Obi"})
	sets.midcast.MeleeCuraga.DT = set_combine(sets.midcast.Cure.DT, {})
	sets.midcast.MeleeLightWeatherCuraga.DT = set_combine(sets.midcast.Cure.DT, {waist="Hachirin-no-Obi"})
	sets.midcast.MeleeLightDayCuraga.DT = set_combine(sets.midcast.Cure.DT, {waist="Hachirin-no-Obi"})
	
--Situational Healing Sets
	sets.Self_Healing = {neck="Phalaina Locket",waist="Gishdubar Sash"}
	sets.Cure_Received = {neck="Phalaina Locket",waist="Gishdubar Sash"}
	
	sets.midcast.Cursna = 
	{
		main="Hvergelmir",
		sub="Clemency Grip",
		ammo="Hasty Pinion +1",
		head=EMPY_HEAD,
		neck="Debilis Medallion",
		ear1="Meili Earring",
		ear2=EMPY_EAR,
		body=EMPY_BODY,
		hands="Fanatic Gloves",
		ring1="Haoma's Ring",
		ring2="Menelaus's Ring",
		back="Alaunus's Cape",
		waist="Bishop's Sash",
		legs=AF_LEGS,
		feet="Regal Pumps +1"
	}
	
	sets.midcast.StatusRemoval = 
	{
		main="Hvergelmir",
		sub="Clemency Grip",
		ammo="Pemphredo Tathlum",
		head=EMPY_HEAD,
		neck=JSE_NECK,
		ear1="Loquac. Earring",
		ear2="Malignance Earring",
		body=INYANGA_BODY,
		hands="Fanatic Gloves",
		ring1="Kishar Ring",
		ring2="Lebeche Ring",
		back="Perimede Cape",
		waist="Embla Sash",
		legs=EMPY_LEGS,
		feet="Regal Pumps +1"
	}
		
	sets.midcast.Erase = set_combine(sets.midcast.StatusRemoval, {neck=JSE_NECK})

-- 110 total Enhancing Magic Skill; caps even without Light Arts
	sets.midcast['Enhancing Magic'] = 
	{
		main="Gada",
		sub="Ammurapi Shield",
		ammo="Pemphredo Tathlum",
		head="Telchine Cap",
		neck="Incanter's Torque",
		ear1="Mimir Earring",
		ear2="Andoaa Earring",
		body="Telchine Chas.",
		hands="Telchine Gloves",
		ring1=StikiniRing_Ring1,
		ring2=StikiniRing_Ring2,
		back="Mending Cape",
		waist="Embla Sash",
		legs="Telchine Braconi",
		feet="Telchine Pigaches"
	}
	
	sets.midcast.Stoneskin = set_combine(sets.midcast['Enhancing Magic'], {neck="Nodens Gorget",waist="Siegel Sash"})
	sets.midcast.Auspice = set_combine(sets.midcast['Enhancing Magic'], {feet="Ebers Duckbills +3"})
	sets.midcast.Aquaveil = set_combine(sets.midcast['Enhancing Magic'], {main="Vadose Rod",sub="Ammurapi Shield",head=gear.chironic_nuke_head,waist="Emphatikos Rope"})
	sets.midcast.Regen = set_combine(sets.midcast['Enhancing Magic'], {main="Bolelabunga",sub="Ammurapi Shield",head="Inyanga Tiara +2",body=RELIC_BODY,hands="Ebers Mitts +3",legs=AF_LEGS})
	sets.midcast.Protect = set_combine(sets.midcast['Enhancing Magic'], {})
	sets.midcast.Protectra = set_combine(sets.midcast['Enhancing Magic'], {ring2="Sheltered Ring"})
	sets.midcast.Shell = set_combine(sets.midcast['Enhancing Magic'], {})
	sets.midcast.Shellra = set_combine(sets.midcast['Enhancing Magic'], {ring2="Sheltered Ring"})
	sets.midcast.BarElement = {main="Beneficus",sub="Ammurapi Shield",ammo="Pemphredo Tathlum",
		head=EMPY_HEAD,neck="Incanter's Torque",ear1="Mimir Earring",ear2="Andoaa Earring",
		body=EMPY_BODY,hands="Ebers Mitts +3",ring1=StikiniRing_Ring1,ring2=StikiniRing_Ring2,
		back="Alaunus's Cape",waist="Embla Sash",legs="Piety Pantaln. +3",feet="Ebers Duckbills +3"}
	
	sets.midcast.BarStatus = set_combine(sets.midcast['Enhancing Magic'], {neck="Sroda Necklace"})
	
	sets.Self_Refresh = {back="Grapevine Cape",waist="Gishdubar Sash",feet="Inspirited Boots"}
	sets.Refresh_Received = {back="Grapevine Cape",waist="Gishdubar Sash",feet="Inspirited Boots"}
	
	sets.midcast.Impact = {main="Bunzi's Rod",sub="Ammurapi Shield",ammo="Pemphredo Tathlum",
		head=empty,neck="Null Loop",ear1="Gwati Earring",ear2="Malignance Earring",
		body="Crepuscular Cloak",hands="Ebers Mitts +3",ring1=StikiniRing_Ring1,ring2="Metamor. Ring +1",
		back="Null Shawl",waist="Null Belt",legs=EMPY_LEGS,feet="Ebers Duckbills +3"}
		
	sets.midcast['Elemental Magic'] = {main="Bunzi's Rod",sub="Culminus",ammo="Ghastly Tathlum +1",
		head="Bunzi's Hat",neck="Saevus Pendant +1",ear1="Friomisi Earring",ear2="Malignance Earring",
		body="Bunzi's Robe",hands="Bunzi's Gloves",ring1="Freke Ring",ring2="Metamor. Ring +1",
		back="Null Shawl",waist="Sacro Cord",legs="Bunzi's Pants",feet="Bunzi's Sabots"}
	
	sets.midcast['Elemental Magic'].Resistant = {main="Bunzi's Rod",sub="Ammurapi Shield",ammo="Ghastly Tathlum +1",
		head="Bunzi's Hat",neck="Null Loop",ear1="Friomisi Earring",ear2="Malignance Earring",
		body="Bunzi's Robe",hands="Bunzi's Gloves",ring1="Freke Ring",ring2="Metamor. Ring +1",
		back="Null Shawl",waist="Null Belt",legs="Bunzi's Pants",feet="Bunzi's Sabots"}
		
	sets.midcast['Divine Magic'] = {main="Daybreak",sub="Ammurapi Shield",ammo="Pemphredo Tathlum",
		head=EMPY_HEAD,neck="Null Loop",ear1="Gwati Earring",ear2="Malignance Earring",
		body=EMPY_BODY,hands="Ebers Mitts +3",ring1=StikiniRing_Ring1,ring2="Metamor. Ring +1",
		back="Null Shawl",waist="Null Belt",legs=EMPY_LEGS,feet="Ebers Duckbills +3"}
		
	sets.midcast.Repose = {main="Daybreak",sub="Ammurapi Shield",ammo="Pemphredo Tathlum",
		head=EMPY_HEAD,neck="Null Loop",ear1="Gwati Earring",ear2="Malignance Earring",
		body=EMPY_BODY,hands="Ebers Mitts +3",ring1=StikiniRing_Ring1,ring2="Metamor. Ring +1",
		back="Null Shawl",waist="Null Belt",legs=EMPY_LEGS,feet="Ebers Duckbills +3"}
		
	sets.midcast.Holy = {main="Daybreak",sub="Ammurapi Shield",ammo="Pemphredo Tathlum",
		head="C. Palug Crown",neck="Saevus Pendant +1",ear1="Gwati Earring",ear2="Malignance Earring",
		body="Shamash Robe",hands="Bunzi's Gloves",ring1="Freke Ring",ring2="Metamor. Ring +1",
		back="Null Shawl",waist="Sacro Cord",legs="Bunzi's Pants",feet="Bunzi's Sabots"}
		
	-- Gear for Magic Burst mode.
	sets.MagicBurst = {neck="Mizu. Kubikazari",body="Bunzi's Robe",hands="Bunzi's Gloves",ring2="Mujin Band",legs="Bunzi's Pants",feet="Bunzi's Sabots"}
	
	sets.midcast['Dark Magic'] = {main="Bunzi's Rod",sub="Ammurapi Shield",ammo="Pemphredo Tathlum",
		head=EMPY_HEAD,neck="Null Loop",ear1="Gwati Earring",ear2="Malignance Earring",
		body=EMPY_BODY,hands="Ebers Mitts +3",ring1=StikiniRing_Ring1,ring2="Metamor. Ring +1",
		back="Null Shawl",waist="Null Belt",legs=EMPY_LEGS,feet="Ebers Duckbills +3"}
	
	sets.midcast.Drain = {main="Rubicundity",sub="Ammurapi Shield",ammo="Pemphredo Tathlum",
		head="Pixie Hairpin +1",neck="Erra Pendant",ear1="Gwati Earring",ear2="Malignance Earring",
		body=EMPY_BODY,hands=gear.chironic_aspir_gloves,ring1=StikiniRing_Ring1,ring2="Metamor. Ring +1",
		back="Null Shawl",waist="Null Belt",legs=gear.chironic_aspir_legs,feet="Ebers Duckbills +3"}
	
	sets.midcast.Drain.Resistant = {main="Bunzi's Rod",sub="Ammurapi Shield",ammo="Pemphredo Tathlum",
		head=EMPY_HEAD,neck="Null Loop",ear1="Gwati Earring",ear2="Malignance Earring",
		body=EMPY_BODY,hands="Ebers Mitts +3",ring1=StikiniRing_Ring1,ring2="Metamor. Ring +1",
		back="Null Shawl",waist="Null Belt",legs=EMPY_LEGS,feet="Ebers Duckbills +3"}
	
	sets.midcast.Aspir = sets.midcast.Drain
	sets.midcast.Aspir.Resistant = sets.midcast.Drain.Resistant
	
	sets.midcast.Stun = {main="Hvergelmir",sub="Clerisy Strap +1",ammo="Hasty Pinion +1",
		head="Bunzi's Hat",neck=JSE_NECK,ear1="Gwati Earring",ear2="Malignance Earring",
		body=INYANGA_BODY,hands="Fanatic Gloves",ring1="Kishar Ring",ring2="Prolix Ring",
		back="Alaunus's Cape",waist="Embla Sash",legs=AYANMO_LEGS,feet="Regal Pumps +1"}
	
	sets.midcast.Stun.Resistant = {main="Bunzi's Rod",sub="Ammurapi Shield",ammo="Pemphredo Tathlum",
		head=EMPY_HEAD,neck="Null Loop",ear1="Gwati Earring",ear2="Malignance Earring",
		body=EMPY_BODY,hands="Ebers Mitts +3",ring1=StikiniRing_Ring1,ring2="Metamor. Ring +1",
		back="Null Shawl",waist="Null Belt",legs=EMPY_LEGS,feet="Ebers Duckbills +3"}
		
	sets.midcast.Dispel = {main="Bunzi's Rod",sub="Ammurapi Shield",ammo="Pemphredo Tathlum",
		head=EMPY_HEAD,neck="Null Loop",ear1="Gwati Earring",ear2="Malignance Earring",
		body=EMPY_BODY,hands="Ebers Mitts +3",ring1=StikiniRing_Ring1,ring2="Metamor. Ring +1",
		back="Null Shawl",waist="Null Belt",legs=EMPY_LEGS,feet="Ebers Duckbills +3"}
		
	sets.midcast.Dispelga = set_combine(sets.midcast.Dispel, {main="Daybreak",sub="Ammurapi Shield"})

	sets.midcast['Enfeebling Magic'] = {main="Daybreak",sub="Ammurapi Shield",ammo="Pemphredo Tathlum",
		head=EMPY_HEAD,neck="Null Loop",ear1="Gwati Earring",ear2="Malignance Earring",
		body=AF_BODY,hands="Ebers Mitts +3",ring1="Kishar Ring",ring2=StikiniRing_Ring2,
		back="Alaunus's Cape",waist="Obstinate Sash",legs=gear.chironic_macc_legs,feet="Theo Duckbills +2"}
	
	sets.midcast['Enfeebling Magic'].Resistant = {main="Daybreak",sub="Ammurapi Shield",ammo="Pemphredo Tathlum",
		head=EMPY_HEAD,neck="Null Loop",ear1="Gwati Earring",ear2="Malignance Earring",
		body=EMPY_BODY,hands="Ebers Mitts +3",ring1=StikiniRing_Ring1,ring2="Metamor. Ring +1",
		back="Null Shawl",waist="Null Belt",legs=gear.chironic_macc_legs,feet="Ebers Duckbills +3"}
		
	sets.TreasureHunter = set_combine(sets.TreasureHunter, {feet=gear.chironic_treasure_feet})
	sets.midcast.Dia = set_combine(sets.midcast['Enfeebling Magic'], sets.TreasureHunter)
	sets.midcast.Diaga = set_combine(sets.midcast['Enfeebling Magic'], sets.TreasureHunter)
	sets.midcast['Dia II'] = set_combine(sets.midcast['Enfeebling Magic'], sets.TreasureHunter)
	sets.midcast.Bio = set_combine(sets.midcast['Enfeebling Magic'], sets.TreasureHunter)
	sets.midcast['Bio II'] = set_combine(sets.midcast['Enfeebling Magic'], sets.TreasureHunter)
	
	sets.midcast.ElementalEnfeeble = set_combine(sets.midcast['Enfeebling Magic'], {})
	sets.midcast.ElementalEnfeeble.Resistant = set_combine(sets.midcast['Enfeebling Magic'].Resistant, {})

-- Sets to return to when not performing an action.

-- Resting sets
	sets.resting = {main="Mpaca's Staff",sub="Oneiros Grip",ammo="Homiliary",
		head="Null Masque",neck="Sibyl Scarf",ear1="Sanare Earring",ear2="Ethereal Earring",
		body=EMPY_BODY,hands=gear.chironic_refresh_hands,ring1=StikiniRing_Ring1,ring2=StikiniRing_Ring2,
		back="Null Shawl",waist="Null Belt",legs="Assid. Pants +1",feet=gear.chironic_refresh_feet}

-- Idle sets (default idle set not needed since the other three are defined, but leaving for testing purposes)
	sets.idle = {main="Mpaca's Staff",sub="Oneiros Grip",ammo="Homiliary",
		head="Null Masque",neck="Sibyl Scarf",ear1="Sanare Earring",ear2="Ethereal Earring",
		body=EMPY_BODY,hands=gear.chironic_refresh_hands,ring1=StikiniRing_Ring1,ring2=StikiniRing_Ring2,
		back="Null Shawl",waist="Null Belt",legs="Assid. Pants +1",feet=gear.chironic_refresh_feet}
	
	sets.idle.PDT = {main="Daybreak",sub="Genmei Shield",ammo="Staunch Tathlum +1",
		head="Nyame Helm",neck="Loricate Torque +1",ear1="Sanare Earring",ear2="Ethereal Earring",
		body="Nyame Mail",hands="Nyame Gauntlets",ring1="Defending Ring",ring2="Shadow Ring",
		back="Shadow Mantle",waist="Null Belt",legs="Nyame Flanchard",feet="Nyame Sollerets"}
		
	sets.idle.MDT = {main="Daybreak",sub="Genmei Shield",ammo="Staunch Tathlum +1",
		head="Bunzi's Hat",neck="Warder's Charm +1",ear1="Sanare Earring",ear2="Ethereal Earring",
		body="Bunzi's Robe",hands="Bunzi's Gloves",ring1="Defending Ring",ring2="Shadow Ring",
		back="Null Shawl",waist="Null Belt",legs=EMPY_LEGS,feet="Ebers Duckbills +3"}
		
	sets.idle.MEVA = {main="Daybreak",sub="Genmei Shield",ammo="Staunch Tathlum +1",
		head="Bunzi's Hat",neck="Warder's Charm +1",ear1="Sanare Earring",ear2="Ethereal Earring",
		body="Bunzi's Robe",hands="Bunzi's Gloves",ring1="Defending Ring",ring2="Shadow Ring",
		back="Null Shawl",waist="Null Belt",legs=EMPY_LEGS,feet="Ebers Duckbills +3"}
		
	-- Situational Idle sets
	sets.Kiting = {ring2="Shneddick Ring"}
	sets.latent_refresh = {waist="Fucho-no-obi"}
	sets.latent_refresh_grip = {sub="Oneiros Grip"}
	sets.DayIdle = {}
	sets.NightIdle = {}

    -- Defense sets

	sets.defense.PDT = {main="Daybreak",sub="Genmei Shield",ammo="Staunch Tathlum +1",
		head="Nyame Helm",neck="Loricate Torque +1",ear1="Sanare Earring",ear2="Ethereal Earring",
		body="Nyame Mail",hands="Nyame Gauntlets",ring1="Defending Ring",ring2="Shadow Ring",
		back="Shadow Mantle",waist="Null Belt",legs="Nyame Flanchard",feet="Nyame Sollerets"}
	
	sets.defense.MDT = {main="Daybreak",sub="Genmei Shield",ammo="Staunch Tathlum +1",
		head="Bunzi's Hat",neck="Warder's Charm +1",ear1="Sanare Earring",ear2="Ethereal Earring",
		body="Bunzi's Robe",hands="Bunzi's Gloves",ring1="Defending Ring",ring2="Shadow Ring",
		back="Null Shawl",waist="Null Belt",legs=EMPY_LEGS,feet="Ebers Duckbills +3"}
	
	sets.defense.MEVA = {main="Daybreak",sub="Genmei Shield",ammo="Staunch Tathlum +1",
		head="Bunzi's Hat",neck="Warder's Charm +1",ear1="Sanare Earring",ear2="Ethereal Earring",
		body="Bunzi's Robe",hands="Bunzi's Gloves",ring1="Defending Ring",ring2="Shadow Ring",
		back="Null Shawl",waist="Null Belt",legs=EMPY_LEGS,feet="Ebers Duckbills +3"}
		
-- Engaged sets

-- Variations for TP weapon and (optional) offense/defense modes.  Code will fall back on previous
-- sets if more refined versions aren't defined.
-- If you create a set with both offense and defense modes, the offense mode should be first.
-- EG: sets.engaged.Dagger.Accuracy.Evasion

-- Basic set for if no TP weapon is defined.
	sets.engaged = {main="Maxentius",sub="Genmei Shield",ammo="Staunch Tathlum +1",
		head="Nyame Helm",neck="Null Loop",ear1="Brutal Earring",ear2="Dedition Earring",
		body="Nyame Mail",hands="Nyame Gauntlets",ring1="Chirich Ring +1",ring2="Chirich Ring +1",
		back="Null Shawl",waist="Null Belt",legs="Nyame Flanchard",feet="Nyame Sollerets"}
		
	sets.engaged.Acc = {main="Maxentius",sub="Genmei Shield",ammo="Staunch Tathlum +1",
		head="Nyame Helm",neck="Null Loop",ear1="Crep. Earring",ear2="Telos Earring",
		body="Nyame Mail",hands="Nyame Gauntlets",ring1="Chirich Ring +1",ring2="Chirich Ring +1",
		back="Null Shawl",waist="Null Belt",legs="Nyame Flanchard",feet="Nyame Sollerets"}
	
	sets.engaged.DW = {main="Maxentius",sub="Genmei Shield",ammo="Staunch Tathlum +1",
		head="Nyame Helm",neck="Null Loop",ear1="Suppanomimi",ear2="Dedition Earring",
		body="Nyame Mail",hands="Nyame Gauntlets",ring1="Chirich Ring +1",ring2="Chirich Ring +1",
		back="Null Shawl",waist="Null Belt",legs="Nyame Flanchard",feet="Nyame Sollerets"}
	
	sets.engaged.DW.Acc = {main="Maxentius",sub="Genmei Shield",ammo="Staunch Tathlum +1",
		head="Nyame Helm",neck="Null Loop",ear1="Suppanomimi",ear2="Telos Earring",
		body="Nyame Mail",hands="Nyame Gauntlets",ring1="Chirich Ring +1",ring2="Chirich Ring +1",
		back="Null Shawl",waist="Null Belt",legs="Nyame Flanchard",feet="Nyame Sollerets"}

-- Buff sets: Gear that needs to be worn to actively enhance a current player buff.
	sets.buff['Divine Caress'] = {hands="Ebers Mitts +3",back="Mending Cape"}
	sets.buff.Sublimation = {waist="Embla Sash"}
	sets.buff.DTSublimation = {waist="Embla Sash"}
	
	sets.HPDown = {main="Queller Rod",sub="Genmei Shield",ammo="Homiliary",
		head="Pixie Hairpin +1",neck="Loricate Torque +1",ear1="Hirudinea Earring",ear2="Ethereal Earring",
		body="Councilor's Garb",hands="Hieros Mittens",ring1="Defending Ring",ring2="Persis Ring",
		back="Null Shawl",waist="Null Belt",legs="",feet=""}
	
	sets.HPCure = {main="Queller Rod",sub="Ammurapi Shield",ammo="Pemphredo Tathlum",
		head=EMPY_HEAD,neck="Nodens Gorget",ear1="Etiolation Earring",ear2="Odnowa Earring +1",
		body=EMPY_BODY,hands="Bokwus Gloves",ring1="Sirona's Ring",ring2="Lebeche Ring",
		back="Twilight Cape",waist="Eschan Stone",legs="Piety Pantaln. +3",feet="Ebers Duckbills +3"}
	
	sets.buff.Doom = set_combine(sets.buff.Doom, {})

end

-- Select default macro book on initial load or subjob change.
function select_default_macro_book()
	set_macro_page(1, 1)
end

function user_job_buff_change(buff, gain)
	if buff:startswith('Addendum: ') or buff:endswith(' Arts') then
		style_lock = true
	end
end
