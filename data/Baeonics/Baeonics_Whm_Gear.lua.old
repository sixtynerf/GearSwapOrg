--main="Vadose Rod",
--back="Umbra Cape"
--back="Swith Cape +1",
--legs="Shedir Seraweels",
--back="Shadow Mantle",
--waist="Sekhmet Corset",
--main="Rubicundity",
--hands="Regal Cuffs",
--sub="Oneiros Grip"
--waist="Olseni Belt",
--waist="Obstin. Sash",
--back="Moonlight Cape",
--ring2="Meridian Ring",
--feet="Medium's Sabots"
--legs="Lengo Pants",
--"Kaykaus Set +1",
--feet="Inspirited Boots"
--feet="Hygieia Clogs +1"
--hands="Hieros Mittens",
--main=gear.grioavolr_fc_staff,
--back="Grapevine Cape",
--ear2="Evans Earring"
--ear2="Ethereal Earring",
--main=gear.grioavolr_fc_staff,
--ring2="Dark Ring",
--ear2="Crematio Earring",
--body="Cohort Cloak +1",
--neck="Chrys. Torque"
--hands=gear.chironic_enfeeble_hands,
--head="Chironic Hat",
--hands="Carapacho Cuffs"
--legs="Assid. Pants +1",
--Curatio Grip
--waist="Austerity Belt +1",
--feet="Vanya Clogs"
--ring2="Vengeful Ring",
--ear2="Telos Earring",
--neck="Phalaina Locket",
--ear1="Mendicant's Earring",
--ear1="Mache Earring +1",
--neck="Incanter's Torque",
--neck="Combatant's Torque",
--ring2="Shadow Ring",
--waist="Hachirin-no-obi",
--waist="Fotia Belt",
--hands="Fanatic Gloves",

function user_job_setup()
	state.OffenseMode:options('Normal','Acc')
	state.CastingMode:options('Normal','Resistant','SIRD','DT')
	state.IdleMode:options('Normal','PDT','MDT')
	state.PhysicalDefenseMode:options('PDT')
	state.MagicalDefenseMode:options('MDT')
	state.ResistDefenseMode:options('MEVA')
	--state.Weapons:options('None','Trial','DualWeapons','MeleeWeapons')
	state.Weapons:options('None','DualWeapons','MeleeWeapons')
	state.WeaponskillMode:options('Normal','Fodder')
	
	state.PWUnlock = M(true, 'PWUnlock')
	
	--Artifact Gear
	AF_HEAD = {name="Theophany Cap +3"}			--low 
	AF_BODY = {name="Theo. Bliaut +3"}		--Upgrade
	AF_HANDS = {name="Theophany Mitts +3"}		--Upgrade
	AF_LEGS = {name="Th. Pant. +3"}			--Upgrade
	AF_FEET = {name="Theo. Duckbills +3"}		--Upgrade

	--Relic Gear
	RELIC_HEAD = {name="Piety Cap +1"}		--low
	RELIC_BODY = {name="Piety Bliaut +3"}		--low	
	RELIC_HANDS = {name="Piety Mitts +1"}		--low
	RELIC_LEGS = {name="Piety Pantaln. +3"}		--Upgrade
	RELIC_FEET = {name="Piety Duckbills +1"}	--Upgrade

	--Empyrean Gear
	EMPY_HEAD = {name="Ebers Cap +3"}		
	EMPY_BODY = {name="Ebers Bliaut +3"}		
	EMPY_HANDS = {name="Ebers Mitts +3"}		
	EMPY_LEGS = {name="Ebers Pant. +3"}		
	EMPY_FEET = {name="Ebers Duckbills +3"}

	--Empyrean Ear
	EMPY_EAR = {name="Ebers Earring +1"}

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

	AMBUIDLE_BACK = {name="Alaunus's Cape", augments={'MND+20','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Phys. dmg. taken-10%',}}
	AMBUCURE_BACK = {name="Alaunus's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','MND+10','Enmity-10','Spell interruption rate down-10%',}}
	GADA_FC = {name="Gada", augments={'"Fast Cast"+5','Potency of "Cure" effect received+2%','INT+9 MND+9 CHR+9',}}
	GADA_ENHANCE = {name="Gada"}
	
	BMSRING_1 = {name = "Gurebu's Ring", bag = "wardrobe2"}
	BMSRING_2 = {name = "Stikini Ring +1", bag = "wardrobe3"}
	
	-- Additional local binds
	send_command('bind ^` input /ma "Arise" <t>')
	send_command('bind !` input /ja "Penury" <me>')
	send_command('bind @` gs c cycle MagicBurstMode')
	send_command('bind ^@!` gs c toggle AutoCaress')
	send_command('bind ^backspace input /ja "Sacrosanctity" <me>')
	send_command('bind @backspace input /ma "Aurora Storm" <me>')
	send_command('bind !pause gs c toggle AutoSubMode') --Automatically uses sublimation.
	send_command('bind !backspace input /ja "Accession" <me>')
	send_command('bind != input /ja "Sublimation" <me>')
	send_command('bind ^delete input /ja "Dark Arts" <me>')
	send_command('bind !delete input /ja "Addendum: Black" <me>')
	send_command('bind @delete input /ja "Manifestation" <me>')
	send_command('bind ^\\\\ input /ma "Protectra V" <me>')
	send_command('bind @\\\\ input /ma "Shellra V" <me>')
	send_command('bind !\\\\ input /ma "Reraise IV" <me>')

    select_default_macro_book()
end

-- Define sets and vars used by this job file.
function init_gear_sets()
    --------------------------------------
    -- Start defining the sets
    --------------------------------------

	-- Weapons sets
	sets.weapons.MeleeWeapons = {main="Maxentius",sub="Ammurapi Shield"}
	--sets.weapons.DualWeapons = {main="Maxentius",sub="Nehushtan"}
	sets.weapons.DualWeapons = {main="Maxentius",sub="Yagrush"}
	--sets.weapons.Trial = {main="Werebuster",sub="Maxentius"}

	
	sets.buff.Sublimation = {waist="Embla Sash"}
	sets.buff.DTSublimation = {waist="Embla Sash"}
	
    -- Precast Sets

    -- Fast cast sets for spells
	sets.precast.FC = 
	{
		main="C. Palug Hammer", --+7 FC
		sub="Chanter's Shield", -- +3 FC
		ammo="Impatiens", -- +10 SIRD +2 QM
		head=EMPY_HEAD, -- +13 FC
		neck="Voltsurge Torque", --+4 FC
		ear1="Loquac. Earring", -- +2 FC
		ear2="Malignance Earring", -- +4 FC
		body=INYANGA_BODY, -- +14 FC
		hands="Fanatic Gloves",
		ring1="Lebeche Ring", -- +2 QM
		ring2="Kishar Ring", -- +4 FC
		back="Perimede Cape", -- +4 QM
		waist="Witful Belt", -- +3FC +3 QM
		legs=AYANMO_LEGS, -- +6 FC
		feet="Regal Pumps +1" -- +4
	}
	
	sets.precast.FC.DT = 
	{
		--main=gear.grioavolr_fc_staff,
		sub="Clerisy Strap +1",
		ammo="Impatiens",
		head=MBOZE_HEAD,
		neck="Voltsurge Torque",
		ear1="Enchntr. Earring +1",
		ear2="Malignance Earring",
		body=INYANGA_BODY,
		--hands="Gende. Gages +1",
		ring1="Kishar Ring",
		ring2="Lebeche Ring",
		back="Perimede Cape",
		waist="Witful Belt",
		legs=AYANMO_LEGS,
		feet="Regal Pumps +1"
	}
	
	sets.precast.FC['Enhancing Magic'] = set_combine(sets.precast.FC, 
		{
			waist="Siegel Sash"
		})
	
	sets.precast.FC.Stoneskin = set_combine(sets.precast.FC['Enhancing Magic'], 
		{
			--hands="Carapacho Cuffs"
		})
	
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

    -- Precast sets to enhance JAs
	
	sets.precast.JA.Benediction = {body=RELIC_BODY}

    -- Waltz set (chr and vit)
	
	sets.precast.Waltz = 
	{
		head=MBOZE_HEAD,
		--ear1="Roundel Earring",
		body=RELIC_BODY,
		hands=TELCHINE_ENH_HANDS,
		waist="Chaac Belt",
		back="Aurist's Cape +1"
	}

    -- Weaponskill sets

    -- Default set for any weaponskill that isn't any more specifically defined
	
	sets.precast.WS = 
	{
		ammo="Pemphredo Tathlum",
		--head=AYANMO_HEAD,
		--neck="Combatant's Torque",
		--ear1="Mache Earring +1",
		--ear2="Telos Earring",
		--body=AYANMO_BODY,
		--hands=AYANMO_HANDS,
		ring1="Petrov Ring",
		Ring2="Ilabrat Ring",
		--back="Moonlight Cape",
		--waist="Olseni Belt",
		legs=AYANMO_LEGS,
		--feet=AYANMO_FEET
	}
	
	sets.precast.WS.Fodder = 
	{
		ammo="Pemphredo Tathlum",
		--head=AYANMO_HEAD,
		--neck="Asperity Necklace",
		--ear1="Cessance Earring",
		--ear2="Brutal Earring",
		--body=AYANMO_BODY,
		--hands=AYANMO_HANDS,
		ring1="Petrov Ring",
		Ring2="Ilabrat Ring",
		--back="Moonlight Cape",
		--waist="Windbuffet Belt +1",
		legs=AYANMO_LEGS,
		--feet=AYANMO_FEET
	}
	
	sets.precast.WS.Dagan = 
	{
		ammo="Ghastly Tathlum +1",
		head="Pixie Hairpin +1",
		neck="Sanctity Necklace",
		ear1="Etiolation Earring",
		ear2="Moonshade Earring",
		--body="Kaykaus Bliaut",
		--hands="Regal Cuffs",
		ring1="Mephitas's Ring +1",
		--ring2="Mephitas's Ring",
		back="Aurist's Cape +1",
		--waist="Fotia Belt",
		legs="Nyame Flanchard",
		feet=AF_FEET
	}
	
	sets.MaxTP = 
	{
		--ear1="Cessance Earring",
		--ear2="Brutal Earring"
	}
	
	sets.MaxTP.Dagan = 
	{
		ear1="Etiolation Earring",
		--ear2="Evans Earring"
	}

    --sets.precast.WS['Flash Nova'] = {}

    --sets.precast.WS['Mystic Boon'] = {}

    -- Midcast Sets
	
	sets.Kiting = 
	{
		ring2="Shneddick Ring"
	}
	sets.latent_refresh = 
	{
		waist="Fucho-no-obi"
	}
	sets.latent_refresh_grip = 
	{
		--sub="Oneiros Grip"
	}
	sets.TPEat = 
	{
		--neck="Chrys. Torque"
	}
	sets.DayIdle = {}
	sets.NightIdle = 
	{
		--back="Umbra Cape"
	}
	sets.TreasureHunter = set_combine(sets.TreasureHunter,{})
	
	--Situational sets: Gear that is equipped on certain targets
	
	sets.Self_Healing = 
	{
		--neck="Phalaina Locket",
		ring1="Kunaji Ring",
		ring2="Asklepian Ring",
		waist="Gishdubar Sash"
	}
	sets.Cure_Received = 
	{
		--neck="Phalaina Locket",
		ring1="Kunaji Ring",
		ring2="Asklepian Ring",
		waist="Gishdubar Sash"
	}
	sets.Self_Refresh = 
	{
		--back="Grapevine Cape",
		waist="Gishdubar Sash",
		--feet="Inspirited Boots"
	}

	-- Conserve Mp set for spells that don't need anything else, for set_combine.
	
	sets.ConserveMP = 
	{
		--main=gear.grioavolr_fc_staff,
		sub="Umbra Strap",
		ammo="Pemphredo Tathlum",
		head="Kaykaus mitra +1",
		--neck="Incanter's Torque",
		ear1="Gifted Earring",
		ear2="Gwati Earring",
		--body="Vedic Coat",
		--hands="Fanatic Gloves",
		ring1="Kishar Ring",
		ring2="Prolix Ring",
		back="Solemnity Cape",
		--waist="Austerity Belt +1",
		--legs="Vanya Slops",
		--feet="Medium's Sabots"
	}
		
	sets.midcast.Teleport = sets.ConserveMP
	
	-- Gear for Magic Burst mode.
	
	sets.MagicBurst = 
	{
		main="Marin Staff +1",
		sub="Enki Strap",
		neck="Mizu. Kubikazari",
		ring1="Mujin Band",
		ring2="Locus Ring"
	}
	
	sets.midcast.FastRecast = 
	{
		--main=gear.grioavolr_fc_staff,
		sub="Clerisy Strap +1",
		ammo="Pemphredo Tathlum",
		head=MBOZE_HEAD,
		neck="Voltsurge Torque",
		ear1="Enchntr. Earring +1",
		ear2="Malignance Earring",
		body=INYANGA_BODY,
		--hands="Gende. Gages +1",
		ring1="Kishar Ring",
		ring2="Prolix Ring",
		--back="Swith Cape +1",
		waist="Witful Belt",
		--legs="Lengo Pants",
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
		neck="Cleric's Torque +2",
		ear1="Glorious Earring",
		ear2="Magnetic Earring",
		body=EMPY_BODY,
		hands=AF_HANDS,
		ring1="Mephitas's Ring +1",
		ring2="Lebeche Ring",
		back=AMBUCURE_BACK,
		--waist="Hachirin-no-obi",
		legs=EMPY_LEGS,
		feet="Kaykaus boots +1"
	}
		
	sets.midcast.CureSolace = 
	{
		main="Raetic Rod +1",
		sub="Thuellaic Ecu +1",
		ammo="Pemphredo Tathlum",
		head="Kaykaus mitra +1",
		neck="Cleric's Torque +2",
		ear1="Glorious Earring",
		ear2="Magnetic Earring",
		body=RELIC_BODY,
		hands=AF_HANDS,
		ring1="Mephitas's Ring +1",
		ring2="Lebeche Ring",
		back=AMBUCURE_BACK,
		--waist="Hachirin-no-obi",
		legs=EMPY_LEGS,
		feet="Kaykaus boots +1"
	}

	sets.midcast.LightWeatherCure = 
	{
		main="Chatoyant Staff",
		--sub="Curatio Grip",
		ammo="Esper Stone +1",
		head="Kaykaus mitra +1",
		neck="Cleric's Torque +2",
		ear1="Glorious Earring",
		ear2="Magnetic Earring",
		--body="Kaykaus Bliaut",
		hands=AF_HANDS,
		ring1="Mephitas's Ring +1",
		ring2="Lebeche Ring",
		back="Twilight Cape",
		--waist="Hachirin-no-obi",
		legs=EMPY_LEGS,
		feet="Kaykaus boots +1"
	}

	sets.midcast.LightWeatherCureSolace = 
	{
		main="Chatoyant Staff",
		--sub="Curatio Grip",
		ammo="Esper Stone +1",
		head="Kaykaus mitra +1",
		neck="Cleric's Torque +2",
		ear1="Glorious Earring",
		ear2="Magnetic Earring",
		body=RELIC_BODY,
		hands=AF_HANDS,
		ring1="Mephitas's Ring +1",
		ring2="Lebeche Ring",
		back=AMBUCURE_BACK,
		--waist="Hachirin-no-obi",
		legs=EMPY_LEGS,
		feet="Kaykaus boots +1"
	}
		
	sets.midcast.LightDayCureSolace = 
	{
		main="Raetic Rod +1",
		sub="Thuellaic Ecu +1",
		ammo="Pemphredo Tathlum",
		head="Kaykaus mitra +1",
		neck="Cleric's Torque +2",
		ear1="Glorious Earring",
		ear2="Magnetic Earring",
		body=RELIC_BODY,
		hands=AF_HANDS,
		ring1="Mephitas's Ring +1",
		ring2="Lebeche Ring",
		back=AMBUCURE_BACK,
		--waist="Hachirin-no-obi",
		legs=EMPY_LEGS,
		feet="Kaykaus boots +1"
	}

	sets.midcast.LightDayCure = 
	{
		main="Raetic Rod +1",
		sub="Thuellaic Ecu +1",
		ammo="Pemphredo Tathlum",
		head="Kaykaus mitra +1",
		neck="Cleric's Torque +2",
		ear1="Glorious Earring",
		ear2="Magnetic Earring",
		body=EMPY_BODY,
		hands=AF_HANDS,
		ring1="Mephitas's Ring +1",
		ring2="Lebeche Ring",
		back="Twilight Cape",
		--waist="Hachirin-no-obi",
		legs=EMPY_LEGS,
		feet="Kaykaus boots +1"
	}

	sets.midcast.Curaga = 
	{
		main="Raetic Rod +1",
		sub="Thuellaic Ecu +1",
		ammo="Pemphredo Tathlum",
		head="Kaykaus mitra +1",
		neck="Cleric's Torque +2",
		ear1="Glorious Earring",
		ear2="Magnetic Earring",
		body=AF_BODY,
		hands=AF_HANDS,
		ring1="Mephitas's Ring +1",
		ring2="Lebeche Ring",
		back=AMBUCURE_BACK,
		--waist="Hachirin-no-obi",
		legs=EMPY_LEGS,
		feet="Kaykaus boots +1"
	}
		
	sets.midcast.LightWeatherCuraga = 
	{
		main="Chatoyant Staff",
		--sub="Curatio Grip",
		ammo="Esper Stone +1",
		head="Kaykaus mitra +1",
		neck="Cleric's Torque +2",
		ear1="Glorious Earring",
		ear2="Magnetic Earring",
		body=AF_BODY,
		hands=AF_HANDS,
		ring1="Mephitas's Ring +1",
		ring2="Lebeche Ring",
		back="Twilight Cape",
		--waist="Hachirin-no-obi",
		legs=EMPY_LEGS,
		feet="Kaykaus boots +1"
		}
		
	sets.midcast.LightDayCuraga = 
	{
		main="Raetic Rod +1",
		sub="Thuellaic Ecu +1",
		ammo="Pemphredo Tathlum",
		head="Kaykaus mitra +1",
		neck="Cleric's Torque +2",
		ear1="Glorious Earring",
		ear2="Magnetic Earring",
		body=AF_BODY,
		hands=AF_HANDS,
		ring1="Mephitas's Ring +1",
		ring2="Lebeche Ring",
		back="Twilight Cape",
		--waist="Hachirin-no-obi",
		legs=EMPY_LEGS,
		feet="Kaykaus boots +1"
	}

	sets.midcast.Cure.DT = 
	{
		main="Raetic Rod +1",
		sub="Genmei Shield",
		ammo="Staunch Tathlum +1",
		head="Kaykaus mitra +1",
		neck="Loricate Torque +1",
		ear1="Glorious Earring",
		ear2="Magnetic Earring",
		body=BUMBA_BODY,
		hands=AF_HANDS,
		ring1="Defending Ring",
		ring2="Mephitas's Ring +1",
		back=AMBUCURE_BACK,
		--waist="Hachirin-no-obi",
		legs=EMPY_LEGS,
		feet=BUMBA_FEET
	}
		
	--Melee Curesets are used whenever your Weapons state is set to anything but None.
	
	sets.midcast.MeleeCure = 
	{
		ammo="Pemphredo Tathlum",
		head="Kaykaus mitra +1",
		--neck="Incanter's Torque",
		ear1="Glorious Earring",
		ear2="Magnetic Earring",
		body=AF_BODY,
		--hands="Kaykaus Cuffs",
		ring1="Mephitas's Ring +1",
		ring2="Lebeche Ring",
		back=AMBUCURE_BACK,
		--waist="Hachirin-no-obi",
		legs=EMPY_LEGS,
		feet="Kaykaus boots +1"
	}
		
	sets.midcast.MeleeCureSolace = set_combine(sets.midcast.MeleeCure, {body=RELIC_BODY})
	sets.midcast.MeleeLightWeatherCure = set_combine(sets.midcast.MeleeCure, 
	{
	--waist="Hachirin-no-Obi"
	})
	sets.midcast.MeleeLightWeatherCureSolace = set_combine(sets.midcast.MeleeCure, 
	{
	body=RELIC_BODY,
	--waist="Hachirin-no-Obi"
	})
	sets.midcast.MeleeLightDayCureSolace = set_combine(sets.midcast.MeleeCure, 
	{
	body=RELIC_BODY,
	--waist="Hachirin-no-Obi"
	})
	sets.midcast.MeleeLightDayCure = set_combine(sets.midcast.MeleeCure, 
	{
	--waist="Hachirin-no-Obi"
	})
	sets.midcast.MeleeCuraga = set_combine(sets.midcast.MeleeCure, {})
	sets.midcast.MeleeLightWeatherCuraga = set_combine(sets.midcast.MeleeCure, 
	{
	--waist="Hachirin-no-Obi"
	})
	sets.midcast.MeleeLightDayCuraga = set_combine(sets.midcast.MeleeCure, 
	{
	--waist="Hachirin-no-Obi"
	})

	sets.midcast.CureSolace.DT = set_combine(sets.midcast.Cure.DT, {body=RELIC_BODY})
	sets.midcast.LightWeatherCure.DT = set_combine(sets.midcast.Cure.DT, 
	{
	--waist="Hachirin-no-Obi"
	})
	sets.midcast.LightWeatherCureSolace.DT = set_combine(sets.midcast.Cure.DT, 
	{
	body=RELIC_BODY,
	--waist="Hachirin-no-Obi"
	})
	sets.midcast.LightDayCureSolace.DT = set_combine(sets.midcast.Cure.DT, 
	{
	body=RELIC_BODY,
	--waist="Hachirin-no-Obi"
	})
	sets.midcast.LightDayCure.DT = set_combine(sets.midcast.Cure.DT, 
	{
	--waist="Hachirin-no-Obi"
	})
	sets.midcast.Curaga.DT = set_combine(sets.midcast.Cure.DT, {})
	sets.midcast.LightWeatherCuraga.DT = set_combine(sets.midcast.Cure.DT, 
	{
	--waist="Hachirin-no-Obi"
	})
	sets.midcast.LightDayCuraga.DT = set_combine(sets.midcast.Cure.DT, 
	{
	--waist="Hachirin-no-Obi"
	})
	sets.midcast.MeleeCure.DT = set_combine(sets.midcast.Cure.DT, {})
	
	sets.midcast.MeleeCureSolace.DT = set_combine(sets.midcast.Cure.DT, {body=RELIC_BODY})
	sets.midcast.MeleeLightWeatherCure.DT = set_combine(sets.midcast.Cure.DT, 
	{
	--waist="Hachirin-no-Obi"
	})
	sets.midcast.MeleeLightWeatherCureSolace.DT = set_combine(sets.midcast.Cure.DT, 
	{
	body=RELIC_BODY,
	--waist="Hachirin-no-Obi"
	})
	sets.midcast.MeleeLightDayCureSolace.DT = set_combine(sets.midcast.Cure.DT, 
	{
	body=RELIC_BODY,
	--waist="Hachirin-no-Obi"
	})
	sets.midcast.MeleeLightDayCure.DT = set_combine(sets.midcast.Cure.DT, 
	{
	--waist="Hachirin-no-Obi"
	})
	sets.midcast.MeleeCuraga.DT = set_combine(sets.midcast.Cure.DT, {})
	sets.midcast.MeleeLightWeatherCuraga.DT = set_combine(sets.midcast.Cure.DT, 
	{
	--waist="Hachirin-no-Obi"
	})
	sets.midcast.MeleeLightDayCuraga.DT = set_combine(sets.midcast.Cure.DT, 
	{
	--waist="Hachirin-no-Obi"
	})

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
		
	sets.midcast.Erase = set_combine(sets.midcast.StatusRemoval, {neck="Cleric's Torque +2"})

    -- 110 total Enhancing Magic Skill; caps even without Light Arts
	sets.midcast['Enhancing Magic'] = 
	{
		main=GADA_ENHANCE, --need to be Enhancing Magic Effect Duration+6%
		sub="Ammurapi Shield",
		ammo="Pemphredo Tathlum",
		head=TELCHINE_ENH_HEAD,
		--neck="Incanter's Torque", --make this
		ear1="Andoaa Earring",
		ear2="Mimir Earring",
		body=TELCHINE_ENH_BODY,
		hands=TELCHINE_ENH_HANDS,
		ring1=BMSRING_1,
		ring2=BMSRING_2,
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
	
	sets.midcast.Shell = set_combine(sets.midcast['Enhancing Magic'], {
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
		ring1=BMSRING_1,
		ring2=BMSRING_2,
		back=AMBUCURE_BACK,
		waist="Embla Sash",
		legs=RELIC_LEGS,
		feet=EMPY_FEET
	}

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
		hands="Chironic Gloves", --augment for enfeebles
		ring1="Metamor. Ring +1",
		ring2=BMSRING_2,
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
		
	sets.midcast.Holy = 
	{
		main="Daybreak",
		sub="Ammurapi Shield",
		ammo="Pemphredo Tathlum",
		head=empty,
		neck="Sibyl Scarf",
		ear1="Malignance Earring",
		ear2="Friomisi Earring",
		--body="Cohort Cloak +1",
		hands=MBOZE_HANDS,
		ring1="Metamor. Ring +1",
		ring2="Freke Ring",
		back="Toro Cape",
		waist="Luminary Sash",
		legs=MBOZE_LEGS,
		feet=MBOZE_FEET
	}

	sets.midcast['Dark Magic'] = 
	{
		main="Daybreak",
		sub="Ammurapi Shield",
		ammo="Pemphredo Tathlum",
		head=MBOZE_HEAD,
		neck="Erra Pendant",
		ear1="Regal Earring",
		ear2="Digni. Earring",
		body=INYANGA_BODY,
		--hands=gear.chironic_enfeeble_hands,
		ring1=BMSRING_1,
		ring2=BMSRING_2,
		back="Aurist's Cape +1",
		waist="Acuity Belt +1",
		legs="Chironic Hose",
		feet=MBOZE_FEET
	}

    sets.midcast.Drain = 
	{
		--main="Rubicundity",
		--sub="Ammurapi Shield",
		ammo="Pemphredo Tathlum",
		head="Pixie Hairpin +1",
		neck="Erra Pendant",
		ear1="Regal Earring",
		ear2="Digni. Earring",
		body=INYANGA_BODY,
		--hands=gear.chironic_enfeeble_hands,
		--ring1="Evanescence Ring",
		ring2="Archon Ring",
		back="Aurist's Cape +1",
		waist="Fucho-no-obi",
		legs="Chironic Hose",
		feet=MBOZE_FEET
	}
	
	sets.midcast.Drain.Resistant = 
	{
		--main="Rubicundity",
		--sub="Ammurapi Shield",
		ammo="Pemphredo Tathlum",
		head=MBOZE_HEAD,
		neck="Erra Pendant",
		ear1="Regal Earring",
		ear2="Digni. Earring",
		--body="Chironic Doublet",
		--hands=gear.chironic_enfeeble_hands,
		ring1=BMSRING_1,
		ring2=BMSRING_2,
		back="Aurist's Cape +1",waist="Fucho-no-obi",
		legs="Chironic Hose",
		feet=MBOZE_FEET
		}
	
	sets.midcast.Aspir = sets.midcast.Drain
	
	sets.midcast.Aspir.Resistant = sets.midcast.Drain.Resistant
	
	sets.midcast.Stun = 
		{
		--main=gear.grioavolr_fc_staff,
		sub="Clerisy Strap +1",ammo="Pemphredo Tathlum",
		head=MBOZE_HEAD,
		neck="Voltsurge Torque",ear1="Enchntr. Earring +1",ear2="Malignance Earring",
		body=INYANGA_BODY,
		--hands="Fanatic Gloves",
		ring1="Kishar Ring",
		ring2=BMSRING_2,
		back="Aurist's Cape +1",waist="Witful Belt",
		--legs="Lengo Pants",
		feet="Regal Pumps +1"}
	
	sets.midcast.Stun.Resistant = {main="Daybreak",sub="Ammurapi Shield",ammo="Pemphredo Tathlum",
		head=MBOZE_HEAD,
		neck="Erra Pendant",
		ear1="Regal Earring",
		ear2="Digni. Earring",
		body=INYANGA_BODY,
		--hands="Fanatic Gloves",
		ring1=BMSRING_1,
		ring2=BMSRING_2,
		back="Aurist's Cape +1",waist="Acuity Belt +1",
		legs="Chironic Hose",
		feet=MBOZE_FEET
		}
	
	sets.midcast.Dispel = {main="Daybreak",sub="Ammurapi Shield",ammo="Pemphredo Tathlum",
		head=MBOZE_HEAD,
		neck="Erra Pendant",
		ear1="Regal Earring",
		ear2="Digni. Earring",
		body=INYANGA_BODY,
		--hands="Fanatic Gloves",
		ring1=BMSRING_1,
		ring2=BMSRING_2,
		back="Aurist's Cape +1",waist="Acuity Belt +1",
		legs="Chironic Hose",
		feet=MBOZE_FEET
		}
	
	sets.midcast.Dispelga = set_combine(sets.midcast.Dispel, {main="Daybreak",sub="Ammurapi Shield"})
	
	sets.midcast['Enfeebling Magic'] = 
	{
		main="Bunzi's Rod",
		sub="Ammurapi Shield",
		ammo="Pemphredo Tathlum",
		head=AF_HEAD,
		neck="Erra Pendant",
		ear1="Regal Earring",
		ear2=EMPY_EAR,
		body=AF_BODY,
		--hands="Regal Cuffs",
		ring1="Kishar Ring",
		ring2=BMSRING_2,
		back="Aurist's Cape +1",
		--waist="Obstin. Sash",
		legs="Chironic Hose",
		feet=AF_FEET
	}
	
	sets.midcast['Enfeebling Magic'].Resistant = {main="Daybreak",sub="Ammurapi Shield",ammo="Pemphredo Tathlum",
		head="Befouled Crown",neck="Erra Pendant",
		ear1="Regal Earring",
		ear2="Digni. Earring",
		body=AF_BODY,hands=AF_HANDS,ring1="Metamor. Ring +1",ring2=BMSRING_2,
		back="Aurist's Cape +1",--waist="Hachirin-no-obi",
		legs="Chironic Hose",
		feet=AF_FEET}
	
	sets.midcast.Dia = set_combine(sets.midcast['Enfeebling Magic'], sets.TreasureHunter)
	sets.midcast.Diaga = set_combine(sets.midcast['Enfeebling Magic'], sets.TreasureHunter)
	sets.midcast['Dia II'] = sets.midcast['Enfeebling Magic']
	sets.midcast.Bio = set_combine(sets.midcast['Enfeebling Magic'], sets.TreasureHunter)
	sets.midcast['Bio II'] = sets.midcast['Enfeebling Magic']
	sets.midcast.ElementalEnfeeble = set_combine(sets.midcast['Enfeebling Magic'], {})
	sets.midcast.ElementalEnfeeble.Resistant = set_combine(sets.midcast['Enfeebling Magic'].Resistant, {})
	sets.midcast.IntEnfeebles = set_combine(sets.midcast['Enfeebling Magic'], {waist="Acuity Belt +1"})
	sets.midcast.IntEnfeebles.Resistant = set_combine(sets.midcast['Enfeebling Magic'].Resistant, {waist="Acuity Belt +1"})
	sets.midcast.MndEnfeebles = set_combine(sets.midcast['Enfeebling Magic'], {back=AMBUCURE_BACK})
	sets.midcast.MndEnfeebles.Resistant = set_combine(sets.midcast['Enfeebling Magic'].Resistant, {back=AMBUCURE_BACK})

    -- Sets to return to when not performing an action.

    -- Resting sets
	sets.resting = 
		{
			main="Chatoyant Staff",
			--sub="Oneiros Grip",
			ammo="Staunch Tathlum +1",
			head="Befouled Crown",
			--neck="Chrys. Torque",
			ear1="Eabani Earring",
			--ear2="Ethereal Earring",
			body=RELIC_BODY,
			hands="Chironic Gloves",
			ring1="Defending Ring",
			--ring2="Dark Ring",
			--back="Umbra Cape",
			waist="Fucho-no-obi",
			--legs="Assid. Pants +1",
			--feet=gear.chironic_refresh_feet
			}

    -- Idle sets (default idle set not needed since the other three are defined, but leaving for testing purposes)
	sets.idle = 
	{
		main="Malignance Pole",
		sub="Mensch strap +1",
		ammo="Homiliary",
		head=BUMBA_HEAD,
		neck="Loricate Torque +1",
		ear1="Eabani Earring",
		ear2=EMPY_EAR,
		body=EMPY_BODY,
		hands="Chironic Gloves",
		ring1=BMSRING_1,
		ring2=BMSRING_2,
		back=AMBUIDLE_BACK,
		waist="Carrier's Sash",
		legs="Chironic Hose",
		feet=BUMBA_FEET
	}

	sets.idle.PDT = {main="Malignance Pole",sub="Mensch strap +1",ammo="Staunch Tathlum +1",
		head=BUMBA_HEAD,neck="Loricate Torque +1",ear1="Eabani Earring",ear2=EMPY_EAR,
		body=EMPY_BODY,
		hands="Chironic Gloves",
		ring1="Defending Ring",
		--ring2="Gurebu's Ring",
		back=AMBUIDLE_BACK,
		waist="Carrier's Sash",
		--legs="Assid. Pants +1",
		feet=BUMBA_FEET}
		
	sets.idle.MDT = {main="Daybreak",sub="Ammurapi Shield",ammo="Staunch Tathlum +1",
		head=BUMBA_HEAD,neck="Warder's Charm +1",ear1="Eabani Earring",ear2=EMPY_EAR,
		body=BUMBA_BODY,hands="Nyame Gauntlets",ring1="Defending Ring",
		--ring2="Shadow Ring",
		--back="Moonlight Cape",
		waist="Carrier's Sash",legs="Nyame Flanchard",feet=BUMBA_FEET}

    -- Defense sets

	sets.defense.PDT = 
	{
		main="Mafic Cudgel",
		sub="Genmei Shield",ammo="Staunch Tathlum +1",
		head=BUMBA_HEAD,neck="Loricate Torque +1",ear1="Eabani Earring",ear2=EMPY_EAR,
		body=BUMBA_BODY,hands="Nyame Gauntlets",ring1="Defending Ring",ring2="Gelatinous Ring +1",
		--back="Shadow Mantle",
		waist="Carrier's Sash",legs="Nyame Flanchard",feet=BUMBA_FEET}

	sets.defense.MDT = {main="Daybreak",sub="Ammurapi Shield",ammo="Staunch Tathlum +1",
		head=BUMBA_HEAD,neck="Warder's Charm +1",ear1="Eabani Earring",ear2=EMPY_EAR,
		body=BUMBA_BODY,hands="Nyame Gauntlets",
		--ring1="Shadow Ring",
		ring2="Archon Ring",
		--back="Moonlight Cape",
		waist="Carrier's Sash",legs="Nyame Flanchard",feet=BUMBA_FEET}
	
	sets.defense.MEVA = {main="Daybreak",sub="Ammurapi Shield",ammo="Staunch Tathlum +1",
		head=BUMBA_HEAD,neck="Warder's Charm +1",ear1="Eabani Earring",ear2=EMPY_EAR,
		body=BUMBA_BODY,hands="Nyame Gauntlets",ring1="Purity Ring",
		--ring2="Vengeful Ring",
		back="Aurist's Cape +1",waist="Carrier's Sash",legs="Nyame Flanchard",feet=BUMBA_FEET}
		
		-- Engaged sets

    -- Variations for TP weapon and (optional) offense/defense modes.  Code will fall back on previous
    -- sets if more refined versions aren't defined.
    -- If you create a set with both offense and defense modes, the offense mode should be first.
    -- EG: sets.engaged.Dagger.Accuracy.Evasion

    -- Basic set for if no TP weapon is defined.
	
	sets.engaged = 
	{
		ammo="Staunch Tathlum +1",
		--head=AYANMO_HEAD,
		--neck="Asperity Necklace",
		--ear1="Cessance Earring",
		--ear2="Brutal Earring",
		--body=AYANMO_BODY,
		--hands=AYANMO_HANDS,
		ring1="Petrov Ring",
		Ring2="Ilabrat Ring",
		--back="Moonlight Cape",
		--waist="Windbuffet Belt +1",
		legs=AYANMO_LEGS,
		--feet="Battlecast Gaiters"
	}
	
	sets.engaged.Acc = {ammo="Pemphredo Tathlum",
		--head=AYANMO_HEAD,
		--neck="Combatant's Torque",
		--ear1="Telos Earring",
		--ear2="Brutal Earring",
		--body=AYANMO_BODY,
		--hands=AYANMO_HANDS,
		ring1="Petrov Ring",Ring2="Ilabrat Ring",
		--back="Moonlight Cape",
		--waist="Olseni Belt",
		legs=AYANMO_LEGS,
		--feet=AYANMO_FEET
		}

	sets.engaged.DW = {ammo="Staunch Tathlum +1",
		--head=AYANMO_HEAD,
		--neck="Asperity Necklace",
		--ear1="Telos Earring",
		--ear2="Suppanomimi",
		--body=AYANMO_BODY,
		--hands=AYANMO_HANDS,
		ring1="Petrov Ring",Ring2="Ilabrat Ring",
		--back="Moonlight Cape",
		--waist="Shetal Stone",
		legs=AYANMO_LEGS,
		--feet="Battlecast Gaiters"
		}
	
	sets.engaged.DW.Acc = {ammo="Pemphredo Tathlum",
		--head=AYANMO_HEAD,
		--neck="Combatant's Torque",
		--ear1="Telos Earring",
		--ear2="Suppanomimi",
		--body=AYANMO_BODY,
		--hands=AYANMO_HANDS,
		ring1="Petrov Ring",Ring2="Ilabrat Ring",
		--back="Moonlight Cape",
		--waist="Shetal Stone",
		--legs=AYANMO_LEGS,
		--feet=AYANMO_FEET
		}

		-- Buff sets: Gear that needs to be worn to actively enhance a current player buff.
	
	sets.buff['Divine Caress'] = {hands=EMPY_HANDS,back="Mending Cape"}

	sets.HPDown = 
		{
			head="Pixie Hairpin +1",
			--ear1="Mendicant's Earring",
			--ear2="Evans Earring",
			--body="Zendik Robe",
			--hands="Hieros Mittens",
			ring1="Mephitas's Ring +1",
			--ring2="Mephitas's Ring",
			--back="Swith Cape +1",
			waist="Carrier's Sash",
			--legs="Shedir Seraweels",
			feet=""
		}
	
	sets.HPCure = {main="Raetic Rod +1",sub="Ammurapi Shield",ammo="Pemphredo Tathlum",
		head=BUMBA_HEAD,
		neck="Nodens Gorget",
		ear1="Etiolation Earring",
		--ear2="Ethereal Earring",
		--body="Kaykaus Bliaut",
		--hands="Kaykaus Cuffs",
		ring1="Kunaji Ring",
		--ring2="Meridian Ring",
		back=AMBUCURE_BACK,waist="Eschan Stone",legs=EMPY_LEGS,
		feet="Kaykaus boots +1"
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
	set_macro_page(1, 7)
end

function user_job_lockstyle()
	windower.chat.input('/lockstyleset 020')
end

autows_list = 
	{
		['DualWeapons']='Black Halo',
		['MeleeWeapons']='Black Halo',
		['Trial']='Hexa Strike'
	}
