-- Setup vars that are user-dependent.  Can override this in a sidecar file.
function user_job_setup()
	state.OffenseMode:options('Normal','Acc')
	state.CastingMode:options('Normal','SIRD','Resistant')
	state.IdleMode:options('Normal','PDT','MDT','MEVA')
	state.PhysicalDefenseMode:options('PDT')
	state.MagicalDefenseMode:options('MDT')
	state.ResistDefenseMode:options('MEVA')
	state.Weapons:options('None','DualWeapons','Maxentius')
	state.WeaponskillMode:options('Normal','Fodder')
	state.PWUnlock = M(true, 'PWUnlock')
	
	default_weapons 	='Maxentius'
	default_dual_weapons 	='DualWeapons'
	
	autows_list = 
	{
		['DualWeapons']	='Black Halo',
		['Maxentius']	='Black Halo'
	}

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
	EMPY_EAR = {name="Ebers Earring +1"}

--DD Neck
	JSE_NECK = {name="Clr. Torque +2"}

--Adoulin Gears

	TELCHINE_ENH_HEAD = {name="Telchine Cap", augments={'"Cure" potency +8%','Enh. Mag. eff. dur. +8',}}
	TELCHINE_ENH_BODY = {name="Telchine Chas.", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +10',}}
	TELCHINE_ENH_HANDS = {name="Telchine Gloves", augments={'"Cure" potency +8%','Enh. Mag. eff. dur. +10',}}
	TELCHINE_ENH_LEGS = {name="Telchine Braconi", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +9',}}
	TELCHINE_ENH_FEET = {name="Telchine Pigaches", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +9',}}
	
	--TelchineHead_EMD_CP	= { name="Telchine Cap", augments={'"Cure" potency +8%','Enh. Mag. eff. dur. +8',}}
	--TelchineBody_EMD_CP	= { name="Telchine Chas.", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +10',}}
	--TelchineHand_EMD_CP	= { name="Telchine Gloves", augments={'"Cure" potency +8%','Enh. Mag. eff. dur. +10',}}
	--TelchineLegs_EMD_CP	= { name="Telchine Braconi", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +9',}}
	--TelchineFeet_EMD_CP	= { name="Telchine Pigaches", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +9',}}

--Capes
	AMBUIDLE_BACK = {name="Alaunus's Cape", augments={'MND+20','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Phys. dmg. taken-10%',}}
	AMBUCURE_BACK = {name="Alaunus's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','MND+10','Enmity-10','Spell interruption rate down-10%',}}

--Oseem
	GADA_FC = {name="Gada", augments={'"Fast Cast"+5','Potency of "Cure" effect received+2%','INT+9 MND+9 CHR+9',}}
	GADA_ENHANCE = {name="Gada"}

--Rings
	StikiniRing_Ring1	= {name = "Gurebu's Ring"}
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
	sets.weapons.Maxentius 		= {main="Maxentius",sub="Genmei Shield"}
	sets.weapons.DualWeapons 	= {main="Maxentius",sub="Daybreak"}

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
		--80 FC
		main="Hvergelmir",		--50 FC
		sub="Clerisy Strap +1",		--03 FC	
		ammo="Impatiens",		--	02 QM	10 SIRD		
		head=MBOZE_HEAD,		--10 FC			07 DT		
		neck=JSE_NECK,			--10 FC
		--ear1="Loquac. Earring",		--02 FC
		ear1="Malignance Earring",	--04 FC
		ear2=EMPY_EAR,			--			~05 DT
		body=EMPY_BODY,
		hands="Chironic Gloves",	--		20 SIRD
		ring1="Lebeche Ring",		--	02 QM
		ring2=StikiniRing_Ring2,
		back="Perimede Cape",		--	04 QM	
		waist="Witful Belt",		--03 FC	03 QM
		legs="Chironic Hose",
		feet=BUMBA_FEET			--			07 DT
	}
		
	sets.precast.FC.DT = 
	{
		--80 FC
		main="Hvergelmir",		--50 FC
		sub="Clerisy Strap +1",		--03 FC	
		ammo="Impatiens",		--	02 QM	10 SIRD		
		head=MBOZE_HEAD,		--10 FC			07 DT		
		neck=JSE_NECK,			--10 FC
		--ear1="Loquac. Earring",		--02 FC
		ear1="Malignance Earring",	--04 FC
		ear2=EMPY_EAR,			--			~05 DT
		body=EMPY_BODY,
		hands="Chironic Gloves",	--		20 SIRD
		ring1="Lebeche Ring",		--	02 QM
		ring2=StikiniRing_Ring2,
		back="Perimede Cape",		--	04 QM	
		waist="Witful Belt",		--03 FC	03 QM
		legs="Chironic Hose",
		feet=BUMBA_FEET			--			07 DT
	}
	
	sets.precast.FC['Healing Magic'] = set_combine(sets.precast.FC, 
		{
			legs=EMPY_LEGS
		})
	
	sets.precast.FC.StatusRemoval = sets.precast.FC['Healing Magic']
	
	sets.precast.FC.Cure = set_combine(sets.precast.FC['Healing Magic'], 
		{
			--feet="Hygieia Clogs +1"
		})
	
	sets.precast.FC.Curaga = sets.precast.FC.Cure
	
	sets.precast.FC.CureSolace = sets.precast.FC.Cure
	
	sets.precast.FC.Impact =  set_combine(sets.precast.FC, 
		{
			head=empty,
			body="Crepuscular Cloak"
		})
	
	sets.precast.FC.Dispelga = set_combine(sets.precast.FC, 
		{
			main="Daybreak",
			sub="Genmei Shield"
		})

    -- Weaponskill sets

    -- Default set for any weaponskill that isn't any more specifically defined
	sets.precast.WS = 
	{
		ammo="Oshasha's Treatise",
		head=BUMBA_HEAD,
		neck="Fotia Gorget",
		ear1="Brutal Earring",
		ear2="Moonshade Earring",
		body=BUMBA_BODY,
		hands=BUMBA_HANDS,
		--ring1="Epaminondas's Ring",
		--ring2="Cornelia's Ring",
		back="Null Shawl",
		waist="Fotia Belt",
		legs=BUMBA_LEGS,
		feet=BUMBA_FEET
	}

	sets.precast.WS['Flash Nova'] = 
	{
		ammo="Oshasha's Treatise",
		head=BUMBA_HEAD,
		neck="Null Loop",
		ear1="Brutal Earring",
		ear2="Moonshade Earring",
		body=BUMBA_BODY,
		hands=BUMBA_HANDS,
		--ring1="Epaminondas's Ring",
		--ring2="Cornelia's Ring",
		back="Null Shawl",
		waist="Orpheus's Sash",
		legs=BUMBA_LEGS,
		feet=BUMBA_FEET
	}
	
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
		back=AMBUCURE_BACK,
		waist="Cornelia's Belt",
		legs=AYANMO_LEGS,
		feet="Regal Pumps +1"
	}

-- Cure sets

	sets.midcast['Full Cure'] = sets.midcast.FastRecast
	
	sets.midcast.Cure = 
	{
		main="Raetic Rod +1",
		sub="Thuellaic Ecu +1",
		ammo="Pemphredo Tathlum",
		head="Kaykaus mitra +1",
		neck=JSE_NECK,
		ear1="Glorious Earring",
		ear2="Magnetic Earring",
		body=EMPY_BODY,
		hands=AF_HANDS,
		ring1="Mephitas's Ring +1",
		ring2="Lebeche Ring",
		back=AMBUCURE_BACK,
		waist="Hachirin-no-obi",
		legs=EMPY_LEGS,
		feet="Kaykaus boots +1"
	}
		
	sets.midcast.CureSolace = 
	{
		main="Raetic Rod +1",
		sub="Thuellaic Ecu +1",
		ammo="Pemphredo Tathlum",
		head="Kaykaus mitra +1",
		neck=JSE_NECK,
		ear1="Glorious Earring",
		ear2="Magnetic Earring",
		body=EMPY_BODY,
		hands=AF_HANDS,
		ring1="Mephitas's Ring +1",
		ring2="Lebeche Ring",
		back=AMBUCURE_BACK,
		waist="Hachirin-no-obi",
		legs=EMPY_LEGS,
		feet="Kaykaus boots +1"
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
		back=AMBUCURE_BACK,
		waist="Hachirin-no-Obi",
		legs=EMPY_LEGS,
		feet=RELIC_FEET
	}
		
	sets.midcast.LightDayCureSolace = 
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
		back=AMBUCURE_BACK,
		waist="Hachirin-no-Obi",
		legs=EMPY_LEGS,
		feet=RELIC_FEET
	}
	
	sets.midcast.LightDayCure = 
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
	
	sets.midcast.Curaga = 
	{
		main="Raetic Rod +1",
		sub="Thuellaic Ecu +1",
		ammo="Pemphredo Tathlum",
		head="Kaykaus mitra +1",
		neck=JSE_NECK,
		ear1="Glorious Earring",
		ear2="Magnetic Earring",
		body=EMPY_BODY,
		hands=AF_HANDS,
		ring1="Mephitas's Ring +1",
		ring2="Lebeche Ring",
		back=AMBUCURE_BACK,
		waist="Hachirin-no-obi",
		legs=EMPY_LEGS,
		feet="Kaykaus boots +1"
	}
		
	sets.midcast.LightWeatherCuraga = 
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
		
	sets.midcast.LightDayCuraga = 
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
	
	sets.midcast.Cure.DT = 
	{
		main="Daybreak",
		sub="Culminus",
		range=empty,
		ammo="Staunch Tathlum +1",
		head=MBOZE_HEAD,
		neck="Loricate Torque +1",
		ear1="Mendi. Earring",
		ear2="Glorious Earring",
		body=MBOZE_BODY,
		hands=gear.chironic_aspir_gloves,
		ring1="Defending Ring",
		ring2="Freke Ring",
		back="Alaunus's Cape",
		waist="Emphatikos Rope",
		legs=EMPY_LEGS,feet=AF_FEET
	}
		
	--Melee Curesets are used whenever your Weapons state is set to anything but None.
	sets.midcast.MeleeCure = 
	{
		main="Queller Rod",
		sub="Ammurapi Shield",
		ammo="Pemphredo Tathlum",
		head=EMPY_HEAD,
		neck=JSE_NECK,
		ear1="Mendi. Earring",
		ear2="Glorious Earring",
		body=gear.chironic_nuke_body,
		hands="Bokwus Gloves",
		ring1="Sirona's Ring",
		ring2="Lebeche Ring",
		back="Mending Cape",
		waist="Luminary Sash",
		legs=gear.chironic_macc_legs,
		feet=RELIC_FEET
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
		main="Yagrush",
		--sub="Clemency Grip",
		sub="Ammurapi Shield",
		ammo="Pemphredo Tathlum",
		--head="Vanya Hood", --Healing magic skill +20
		head=EMPY_HEAD,
		neck="Debilis Medallion",
		ear1="Meili Earring",
		ear2=EMPY_EAR,
		body=EMPY_BODY,
		--hands="Fanatic Gloves", --Healing magic skill +20
		ring1="Haoma's Ring",
		ring2="Menelaus's Ring",
		back=AMBUCURE_BACK,
		waist="Witful Belt",
		legs=AF_LEGS,
		--feet="Vanya Clogs" --Healing magic skill +20
	}
	
	sets.midcast.StatusRemoval = 
	{
		main="Yagrush",
		sub="Ammurapi Shield",
		ammo="Pemphredo Tathlum",
		head=EMPY_HEAD,
		neck="Voltsurge Torque",
		ear1="Enchntr. Earring +1",
		ear2="Malignance Earring",
		body=INYANGA_BODY,
		--hands="Fanatic Gloves",
		ring1="Kishar Ring",
		ring2="Prolix Ring",
		--back="Swith Cape +1",
		waist="Witful Belt",
		legs=EMPY_LEGS,
		feet="Regal Pumps +1"
	}
		
	sets.midcast.Erase = set_combine(sets.midcast.StatusRemoval, {neck=JSE_NECK})

-- 110 total Enhancing Magic Skill; caps even without Light Arts
	sets.midcast['Enhancing Magic'] = 
	{
		main=GADA_ENHANCE, 		--need to be Enhancing Magic Effect Duration+6%
		sub="Ammurapi Shield",
		ammo="Pemphredo Tathlum",
		head=TELCHINE_ENH_HEAD,
		--neck="Incanter's Torque", 	--make this
		ear1="Andoaa Earring",
		ear2="Mimir Earring",
		body=TELCHINE_ENH_BODY,
		hands=TELCHINE_ENH_HANDS,
		ring1=StikiniRing_Ring1,
		ring2=StikiniRing_Ring2,
		back="Solemnity Cape",
		waist="Embla Sash",
		legs=TELCHINE_ENH_LEGS,
		feet=AF_FEET
	}
	
	sets.midcast.Stoneskin = set_combine(sets.midcast['Enhancing Magic'], 
		{
			neck="Nodens Gorget",
			ear1="Earthcry Earring",
			waist="Siegel Sash",
			--legs="Shedir Seraweels"
		})
	
	sets.midcast.Auspice = set_combine(sets.midcast['Enhancing Magic'], 
		{
			feet=EMPY_FEET
		})
	
	sets.midcast.Aquaveil = set_combine(sets.midcast['Enhancing Magic'], 
		{
			main="Vadose Rod",
			--head="Chironic Hat",
			ear1="Gifted Earring",
			--hands="Regal Cuffs",
			ring1="Mephitas's Ring +1",
			waist="Emphatikos Rope",
			--legs="Shedir Seraweels"
		})
	
	sets.midcast.Regen = set_combine(sets.midcast['Enhancing Magic'], 
		{
			main="Bolelabunga",
			head=INYANGA_HEAD,
			ear1="Gifted Earring",
			ear2="Magnetic Earring",
			body=RELIC_BODY,
			hands=EMPY_HANDS,
			ring1="Mephitas's Ring +1",
			legs=AF_LEGS,
			feet=MBOZE_FEET
		})
	
	sets.midcast.Protect = set_combine(sets.midcast['Enhancing Magic'], 
		{
			ring2="Sheltered Ring",
			ear1="Gifted Earring",
			--waist="Sekhmet Corset",
			feet=RELIC_FEET,
		})
	
	sets.midcast.Protectra = set_combine(sets.midcast['Enhancing Magic'], 
		{
			ring2="Sheltered Ring",
			ear1="Gifted Earring",
			--waist="Sekhmet Corset",
			feet=RELIC_FEET,
		})
	
	sets.midcast.Shell = set_combine(sets.midcast['Enhancing Magic'], 
		{
			ring2="Sheltered Ring",
			ear1="Gifted Earring",
			--waist="Sekhmet Corset",
			legs=RELIC_LEGS,
		})
	
	sets.midcast.Shellra = set_combine(sets.midcast['Enhancing Magic'], 
		{
			ring2="Sheltered Ring",
			ear1="Gifted Earring",
			--waist="Sekhmet Corset",
			legs=RELIC_LEGS,
		})
	
	sets.midcast.BarElement = 
	{
		main="Beneficus",
		sub="Ammurapi Shield",
		ammo="Pemphredo Tathlum",
		head=EMPY_HEAD,
		--neck="Incanter's Torque",
		ear1="Andoaa Earring",
		ear2="Mimir Earring",
		body=EMPY_BODY,
		hands=EMPY_HANDS,
		ring1=StikiniRing_Ring1,
		ring2=StikiniRing_Ring2,
		back=AMBUCURE_BACK,
		waist="Embla Sash",
		legs=RELIC_LEGS,
		feet=EMPY_FEET
	}

	sets.midcast.BarStatus = set_combine(sets.midcast['Enhancing Magic'], 
		{
			neck="Sroda Necklace"
		})
	
	sets.Self_Refresh = {back="Grapevine Cape",waist="Gishdubar Sash",feet="Inspirited Boots"}
	sets.Refresh_Received = {back="Grapevine Cape",waist="Gishdubar Sash",feet="Inspirited Boots"}
	
	sets.midcast.Impact = 
	{
		main="Daybreak",
		sub="Ammurapi Shield",
		ammo="Pemphredo Tathlum",
		head=empty,
		neck="Erra Pendant",
		ear1="Regal Earring",
		ear2="Digni. Earring",
		body="Crepuscular Cloak",
		hands="Chironic Gloves", 	--augment for enfeebles
		ring1="Metamor. Ring +1",
		ring2=StikiniRing_Ring2,
		back="Toro Cape",
		waist="Acuity Belt +1",
		legs="Chironic Hose",
		--feet="Chironic Slippers"
	}
		
	sets.midcast['Elemental Magic'] = 
	{
		main="Bunzi's Rod",
		sub="Ammurapi Shield",
		ammo="Ghastly Tathlum +1",
		head=MBOZE_HEAD,
		--neck="Baetyl Pendant",
		neck="Sibyl Scarf",
		ear1="Regal Earring",
		ear1="Malignance Earring",
		ear2="Friomisi Earring",
		body=MBOZE_BODY,
		hands=MBOZE_HANDS,
		ring1="Shiva Ring +1",
		ring2="Freke Ring",
		back="Toro Cape",
		waist="Sacro Cord",
		legs="Chironic Hose",
		feet=MBOZE_FEET
	}
	
	sets.midcast['Elemental Magic'].Resistant = 
	{
		main="Daybreak",
		sub="Ammurapi Shield",
		ammo="Ghastly Tathlum +1",
		head="C. Palug Crown",
		neck="Sanctity Necklace",
		ear1="Regal Earring",
		--ear2="Crematio Earring",
		--body="Witching Robe",
		--hands=gear.chironic_enfeeble_hands,
		ring1="Metamor. Ring +1",
		ring2="Freke Ring",
		back="Toro Cape",
		--waist="Yamabuki-no-Obi",
		legs="Chironic Hose",
		feet=MBOZE_FEET
	}
		
	sets.midcast['Divine Magic'] = 
	{
		main="Daybreak",
		sub="Ammurapi Shield",
		ammo="Pemphredo Tathlum",
		head="C. Palug Crown",
		--neck="Incanter's Torque",
		ear1="Regal Earring",
		ear2="Digni. Earring",
		body=INYANGA_BODY,
		--hands="Fanatic Gloves",
		ring1=BMSRING_1,
		ring2=BMSRING_2,
		back="Aurist's Cape +1",
		--waist="Hachirin-no-obi",
		legs="Chironic Hose",
		feet=MBOZE_FEET
	}
		
	sets.midcast.Repose = 
	{
		main="Daybreak",
		sub="Ammurapi Shield",
		ammo="Hydrocera",
		head=AF_HEAD,
		--neck="Jokushu Chain",
		neck="Null Loop",
		ear1="Regal Earring",
		ear2="Malignance Earring",
		body=AF_BODY,
		hands=RELIC_HANDS,
		ring1=StikiniRing_Ring1,
		ring2=StikiniRing_Ring2,
		back="Null Shawl",
		waist="Null Belt",
		legs=AF_LEGS,
		feet=AF_FEET
	}
		
	sets.midcast.Holy = 
	{
		main="Daybreak",
		sub="Ammurapi Shield",
		ammo="Ghastly Tathlum +1",
		head=empty,
		--neck="Jokushu Chain",
		neck="Null Loop",
		ear1="Regal Earring",
		ear2="Malignance Earring",
		--body="Cohort Cloak +1",
		hands=MBOZE_HANDS,
		ring1="Freke Ring",
		ring2=StikiniRing_Ring2,
		back="Null Shawl",
		waist="Luminary Sash",
		legs=MBOZE_LEGS,
		feet=MBOZE_FEET
	}

	sets.midcast.Banish = 
	{
		main="Daybreak",
		sub="Ammurapi Shield",
		ammo="Ghastly Tathlum +1",
		head=empty,
		--neck="Jokushu Chain",
		neck="Null Loop",
		ear1="Regal Earring",
		ear2="Malignance Earring",
		--body="Cohort Cloak +1",
		hands=MBOZE_HANDS,
		ring1="Freke Ring",
		ring2=StikiniRing_Ring2,
		back="Null Shawl",
		waist="Luminary Sash",
		legs=MBOZE_LEGS,
		feet=MBOZE_FEET
	}
		
	-- Gear for Magic Burst mode.
	sets.MagicBurst = 
	{
		neck="Mizu. Kubikazari",
		body=MBOZE_BODY,
		hands=MBOZE_HANDS,
		ring2="Mujin Band",
		legs=MBOZE_LEGS,
		feet=MBOZE_FEET
	}
	
	sets.midcast['Dark Magic'] = 
	{
		main="Bunzi's Rod",
		sub="Ammurapi Shield",
		ammo="Pemphredo Tathlum",
		head=EMPY_HEAD,
		neck="Null Loop",
		ear1="Gwati Earring",
		ear2="Malignance Earring",
		body=EMPY_BODY,
		hands=EMPY_HANDS,
		ring1=StikiniRing_Ring1,
		ring2="Metamor. Ring +1",
		back="Null Shawl",
		waist="Null Belt",
		legs=EMPY_LEGS,
		feet=EMPY_FEET
	}
	
	sets.midcast.Drain = {main="Rubicundity",sub="Ammurapi Shield",ammo="Pemphredo Tathlum",
		head="Pixie Hairpin +1",neck="Erra Pendant",ear1="Gwati Earring",ear2="Malignance Earring",
		body=EMPY_BODY,hands=gear.chironic_aspir_gloves,ring1=StikiniRing_Ring1,ring2="Metamor. Ring +1",
		back="Null Shawl",waist="Null Belt",legs=gear.chironic_aspir_legs,feet=EMPY_FEET}
	
	sets.midcast.Drain.Resistant = {main="Bunzi's Rod",sub="Ammurapi Shield",ammo="Pemphredo Tathlum",
		head=EMPY_HEAD,neck="Null Loop",ear1="Gwati Earring",ear2="Malignance Earring",
		body=EMPY_BODY,hands=EMPY_HANDS,ring1=StikiniRing_Ring1,ring2="Metamor. Ring +1",
		back="Null Shawl",waist="Null Belt",legs=EMPY_LEGS,feet=EMPY_FEET}
	
	sets.midcast.Aspir = sets.midcast.Drain
	sets.midcast.Aspir.Resistant = sets.midcast.Drain.Resistant
	
	sets.midcast.Stun = {main="Hvergelmir",sub="Clerisy Strap +1",ammo="Hasty Pinion +1",
		head=MBOZE_HEAD,neck=JSE_NECK,ear1="Gwati Earring",ear2="Malignance Earring",
		body=INYANGA_BODY,hands="Fanatic Gloves",ring1="Kishar Ring",ring2="Prolix Ring",
		back="Alaunus's Cape",waist="Embla Sash",legs=AYANMO_LEGS,feet="Regal Pumps +1"}
	
	sets.midcast.Stun.Resistant = {main="Bunzi's Rod",sub="Ammurapi Shield",ammo="Pemphredo Tathlum",
		head=EMPY_HEAD,neck="Null Loop",ear1="Gwati Earring",ear2="Malignance Earring",
		body=EMPY_BODY,hands=EMPY_HANDS,ring1=StikiniRing_Ring1,ring2="Metamor. Ring +1",
		back="Null Shawl",waist="Null Belt",legs=EMPY_LEGS,feet=EMPY_FEET}
		
	sets.midcast.Dispel = {main="Bunzi's Rod",sub="Ammurapi Shield",ammo="Pemphredo Tathlum",
		head=EMPY_HEAD,neck="Null Loop",ear1="Gwati Earring",ear2="Malignance Earring",
		body=EMPY_BODY,hands=EMPY_HANDS,ring1=StikiniRing_Ring1,ring2="Metamor. Ring +1",
		back="Null Shawl",waist="Null Belt",legs=EMPY_LEGS,feet=EMPY_FEET}
		
	sets.midcast.Dispelga = set_combine(sets.midcast.Dispel, {main="Daybreak",sub="Ammurapi Shield"})

	sets.midcast['Enfeebling Magic'] = 
	{
		main="Bunzi's Rod",
		sub="Ammurapi Shield",
		ammo="Pemphredo Tathlum",
		head=AF_HEAD,
		neck="Null Loop",
		ear1="Regal Earring",
		ear2=EMPY_EAR,
		body=AF_BODY,
		hands=EMPY_HANDS,
		ring1=StikiniRing_Ring1,
		ring2=StikiniRing_Ring2,
		back="Alaunus's Cape",
		waist="Obstinate Sash",
		legs=gear.chironic_macc_legs,
		feet=AF_FEET
	}
	
	sets.midcast['Enfeebling Magic'].Resistant = {main="Daybreak",sub="Ammurapi Shield",ammo="Pemphredo Tathlum",
		head=EMPY_HEAD,neck="Null Loop",ear1="Gwati Earring",ear2="Malignance Earring",
		body=EMPY_BODY,hands=EMPY_HANDS,ring1=StikiniRing_Ring1,ring2="Metamor. Ring +1",
		back="Null Shawl",waist="Null Belt",legs=gear.chironic_macc_legs,feet=EMPY_FEET}
		
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
	sets.resting = 
	{
		main="Mpaca's Staff",
		sub="Oneiros Grip",
		ammo="Homiliary",
		head="Null Masque",
		neck="Sibyl Scarf",
		ear1="Sanare Earring",
		ear2="Ethereal Earring",
		body=EMPY_BODY,
		hands="Chronic Gloves",
		ring1=StikiniRing_Ring1,
		ring2=StikiniRing_Ring2,
		back="Null Shawl",
		waist="Null Belt",
		legs="Assid. Pants +1",
		feet=gear.chironic_refresh_feet
	}

-- Idle sets (default idle set not needed since the other three are defined, but leaving for testing purposes)
	sets.idle = 
	{
		main="Malignance Pole",		--20 DT
		sub="Mensch Strap +1",		--	05 PDT	03 REGEN
		ammo="Homiliary",		--				01 REFRESH		
		head=BUMBA_HEAD,		--07 DT						91 EVA	123 MEVA	05 MDB				
		neck="Loricate Torque +1",	--06 DT
		ear1="Eabani Earring",		--						15 EVA	08 MEVA
		ear2=EMPY_EAR,			--										
		body=EMPY_BODY,			--		05 REGEN	04 REFRESH	91 EVA	130 MEVA	11 MDB
		hands="Chironic Gloves",	--				02 REFRESH	19 EVA	48 MEVA		03 MDB
		ring1=StikiniRing_Ring1,	--		02 REGEN	02 REFRESH		20 MEVA
		ring2=StikiniRing_Ring2,	--				01 REFRESH
		back="Null Shawl",		--						50 EVA	50 MEVA
		--back=AMBUIDLE_BACK,
		waist="Null Belt",		--		03 REGEN			30 EVA	30 MEVA		03 MDB
		--waist="Carrier's Sash",
		legs="Chironic Hose",		--				02 REFRESH	24 EVA	118 MEVA	06 MDB
		feet=BUMBA_FEET			--07 DT						119 EVA	150 MEVA	05 MDB
						--40 DT	05 PDT	13 REGEN	12 REFRESH	439 EVA	677 MEVA	33 MDB	03 MDT
	}
	
	sets.idle.PDT = 
	{
		main="Daybreak",
		sub="Genmei Shield",
		ammo="Staunch Tathlum +1",
		head=BUMBA_HEAD,
		neck="Loricate Torque +1",
		--ear1="Sanare Earring",
		--ear2="Ethereal Earring",
		body=BUMBA_BODY,
		hands=BUMBA_HANDS,
		ring1="Defending Ring",
		ring2="Shadow Ring",
		back="Shadow Mantle",
		waist="Null Belt",
		legs=BUMBA_LEGS,
		feet=BUMBA_FEET
	}
		
	sets.idle.MDT = 
	{
		main="Daybreak",
		sub="Genmei Shield",
		ammo="Staunch Tathlum +1",
		head=MBOZE_HEAD,
		neck="Warder's Charm +1",
		--ear1="Sanare Earring",
		--ear2="Ethereal Earring",
		body=MBOZE_BODY,
		hands=MBOZE_HANDS,
		ring1="Defending Ring",
		ring2="Shadow Ring",
		back="Null Shawl",
		waist="Null Belt",
		legs=EMPY_LEGS,
		feet=EMPY_FEET
	}
		
	sets.idle.MEVA = 
	{
		main="Daybreak",
		sub="Genmei Shield",
		ammo="Staunch Tathlum +1",
		head=MBOZE_HEAD,
		neck="Warder's Charm +1",
		--ear1="Sanare Earring",
		--ear2="Ethereal Earring",
		body=MBOZE_BODY
		hands=MBOZE_HANDS,
		ring1="Defending Ring",
		ring2="Shadow Ring",
		back="Null Shawl",
		waist="Null Belt",
		legs=EMPY_LEGS,
		feet=EMPY_FEET
	}
		
	-- Situational Idle sets
	sets.Kiting = {ring2="Shneddick Ring"}
	sets.latent_refresh = {waist="Fucho-no-obi"}
	sets.latent_refresh_grip = {sub="Oneiros Grip"}
	sets.DayIdle = {}
	sets.NightIdle = {}

    -- Defense sets

	sets.defense.PDT = 
	{
		main="Daybreak",
		sub="Genmei Shield",
		ammo="Staunch Tathlum +1",
		head=BUMBA_HEAD,
		neck="Loricate Torque +1",
		--ear1="Sanare Earring",
		--ear2="Ethereal Earring",
		body=BUMBA_BODY,
		hands=BUMBA_HANDS,
		ring1="Defending Ring",
		ring2="Shadow Ring",
		back="Shadow Mantle",
		waist="Null Belt",
		legs=BUMBA_LEGS,
		feet=BUMBA_FEET
	}
	
	sets.defense.MDT = 
	{
		main="Daybreak",
		sub="Genmei Shield",
		ammo="Staunch Tathlum +1",
		head=MBOZE_HEAD,
		neck="Warder's Charm +1",
		--ear1="Sanare Earring",
		--ear2="Ethereal Earring",
		body=MBOZE_BODY,
		hands=MBOZE_HANDS,
		ring1="Defending Ring",
		ring2="Shadow Ring",
		back="Null Shawl",
		waist="Null Belt",
		legs=EMPY_LEGS,
		feet=EMPY_FEET
	}
	
	sets.defense.MEVA = 
	{
		main="Daybreak",
		sub="Genmei Shield",
		ammo="Staunch Tathlum +1",
		head=MBOZE_HEAD,
		neck="Warder's Charm +1",
		--ear1="Sanare Earring",
		--ear2="Ethereal Earring",
		body=MBOZE_BODY,
		hands=MBOZE_HANDS,
		ring1="Defending Ring",
		ring2="Shadow Ring",
		back="Null Shawl",
		waist="Null Belt",
		legs=EMPY_LEGS,
		feet=EMPY_FEET
	}
		
-- Engaged sets

-- Variations for TP weapon and (optional) offense/defense modes.  Code will fall back on previous
-- sets if more refined versions aren't defined.
-- If you create a set with both offense and defense modes, the offense mode should be first.
-- EG: sets.engaged.Dagger.Accuracy.Evasion

-- Basic set for if no TP weapon is defined.
	sets.engaged = 
	{
		main="Maxentius",sub="Genmei Shield",ammo="Staunch Tathlum +1",
		head=BUMBA_HEAD,neck="Null Loop",ear1="Brutal Earring",ear2="Dedition Earring",
		body=BUMBA_BODY,hands=BUMBA_HANDS,ring1="Chirich Ring +1",ring2="Chirich Ring +1",
		back="Null Shawl",waist="Null Belt",legs=BUMBA_LEGS,feet=BUMBA_FEET
	}
		
	sets.engaged.Acc = 
	{
		main="Maxentius",sub="Genmei Shield",ammo="Staunch Tathlum +1",
		head=BUMBA_HEAD,neck="Null Loop",ear1="Crep. Earring",ear2="Telos Earring",
		body=BUMBA_BODY,hands=BUMBA_HANDS,ring1="Chirich Ring +1",ring2="Chirich Ring +1",
		back="Null Shawl",waist="Null Belt",legs=BUMBA_LEGS,feet=BUMBA_FEET
	}
	
	sets.engaged.DW = 
	{
		main="Maxentius",sub="Genmei Shield",ammo="Staunch Tathlum +1",
		head=BUMBA_HEAD,neck="Null Loop",ear1="Suppanomimi",ear2="Dedition Earring",
		body=BUMBA_BODY,hands=BUMBA_HANDS,ring1="Chirich Ring +1",ring2="Chirich Ring +1",
		back="Null Shawl",waist="Null Belt",legs=BUMBA_LEGS,feet=BUMBA_FEET
	}
	
	sets.engaged.DW.Acc = 
	{
		main="Maxentius",sub="Genmei Shield",ammo="Staunch Tathlum +1",
		head=BUMBA_HEAD,neck="Null Loop",ear1="Suppanomimi",ear2="Telos Earring",
		body=BUMBA_BODY,hands=BUMBA_HANDS,ring1="Chirich Ring +1",ring2="Chirich Ring +1",
		back="Null Shawl",waist="Null Belt",legs=BUMBA_LEGS,feet=BUMBA_FEET
	}

-- Buff sets: Gear that needs to be worn to actively enhance a current player buff.
	sets.buff['Divine Caress'] = {hands=EMPY_HANDS,back="Mending Cape"}
	sets.buff.Sublimation = {waist="Embla Sash"}
	sets.buff.DTSublimation = {waist="Embla Sash"}
	
	sets.HPDown = 
	{
		main="Queller Rod",sub="Genmei Shield",ammo="Homiliary",
		head="Pixie Hairpin +1",neck="Loricate Torque +1",ear1="Hirudinea Earring",ear2="Ethereal Earring",
		body="Councilor's Garb",hands="Hieros Mittens",ring1="Defending Ring",ring2="Persis Ring",
		back="Null Shawl",waist="Null Belt"
	}
	
	sets.HPCure = 
		{
		main="Queller Rod",sub="Ammurapi Shield",ammo="Pemphredo Tathlum",
		head=EMPY_HEAD,neck="Nodens Gorget",ear1="Etiolation Earring",ear2="Odnowa Earring +1",
		body=EMPY_BODY,hands="Bokwus Gloves",ring1="Sirona's Ring",ring2="Lebeche Ring",
		back="Twilight Cape",waist="Eschan Stone",legs="Piety Pantaln. +3",feet=EMPY_FEET
	}
	
	sets.buff.Doom = set_combine(sets.buff.Doom, {})
	sets.IdleWakeUp =
	{
		main="Lorg Mor"
	}
	
	sets.buff.Sleep = {}

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
