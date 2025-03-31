function user_job_setup()

-- Options: Override default values
	state.OffenseMode:options('Normal')
	state.CastingMode:options('Normal', 'Resistant', 'Fodder', 'Proc')
	state.IdleMode:options('Normal','PDT')
	state.PhysicalDefenseMode:options('PDT', 'NukeLock', 'GeoLock', 'PetPDT')
	state.MagicalDefenseMode:options('MDT', 'NukeLock')
	state.ResistDefenseMode:options('MEVA')
	state.Weapons:options('None','Maxentius','DualWeapons')

	autoindi = "Haste"
	autogeo = "Frailty"
	
--AMBU CAPES
	AMBUNUKE_BACK = {name="Nantosuelta's Cape",augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Mag.Atk.Bns."+10'}}
	AMBUIDLE_BACK = {name="Nantosuelta's Cape",augments={'HP+60','Eva.+20 /Mag. Eva.+20','Pet: "Regen"+10','Pet: "Regen"+5'}}
	JSEINDI_BACK = { name=JSEINDI_BACK, augments={'Geomancy Skill +10','Indi. eff. dur. +20','Pet: Damage taken -2%',}}

--Others
	GADA_INDI = {name="Gada", augments={'Indi. eff. dur. +9','VIT+13','DMG:+12',}}
	--GADA_FC = {name="Gada"}

--DYNA NECK
	JSE_NECK = {name="Bagua Charm", augments={'Path: A',}}

--OSEEM
	MERLINIC_HEAD_FC = {name="Merlinic Hood"}
	MERLINIC_BODY_FC = {name="Merlinic Jubbah"}
	MERLINIC_HANDS_FC = {name="Merlinic Dastanas"}
	VANYA_HEAD = {name="Vanya Hood"}
	VANYA_HANDS = {name="Vanya Cuffs"}
	VANYA_HANDS_B = {name="Vanya Cuffs"}
	VANYA_BODY = {name="Vanya Robe"}

--EMPY EAR
	EMPY_EAR = {name="Azimuth Earring +1"}
	
--Artifact Gear
	AF_HEAD = {name="Geomancy Galero +1"}
	AF_BODY = {name="Geomancy Tunic +1"}
	AF_HANDS = {name="Geo. Mitaines +1"}
	AF_LEGS = {name="Geomancy Pants +1"}
	AF_FEET = {name="Geomancy Sandals +1"}

--Relic Gear
	RELIC_HEAD = {name="Bagua Galero +1"}
   	RELIC_BODY = {name="Bagua Tunic +1"}
	RELIC_HANDS = {name="Bagua Mitaines +1"}
	RELIC_LEGS = {name="Bagua Pants +1"}
	RELIC_FEET = {name="Bagua Sandals +1"}

--Empyrean Gear
	EMPY_HEAD = {name="Azimuth Hood +1"}
	EMPY_BODY = {name="Azimuth Coat +1"}
	EMPY_HANDS = {name="Azimuth Gloves +1"}
	EMPY_LEGS = {name="Azimuth Tights +1"}
	EMPY_FEET = {name="Azimuth Gaiters +1"}

--Odyssey
	ONGO_HEAD = {name="Agwu's Cap"}
	ONGO_BODY = {name="Agwu's Robe"}
	ONGO_HANDS = {name="Agwu's Gages"}
	ONGO_LEGS = {name="Agwu's Slops"}
	ONGO_FEET = {name="Agwu's Pigaches"}

--Rings
	StikiniRing_Ring1	= {name = "Gurebu's Ring"}
	StikiniRing_Ring2	= {name = "Stikini Ring +1", bag = "wardrobe3"}

	ChirichRing_Ring1	= {name = "Chirich Ring +1", bag = "wardrobe2"}
	ChirichRing_Ring2	= {name = "Chirich Ring +1", bag = "wardrobe3"}
	
	gear.obi_cure_back = "Tempered Cape +1"
	gear.obi_cure_waist = "Witful Belt"

	gear.obi_low_nuke_back = AMBUNUKE_BACK
	gear.obi_low_nuke_waist = "Sekhmet Corset"

	gear.obi_high_nuke_back = AMBUNUKE_BACK
	gear.obi_high_nuke_waist = "Refoccilation Stone"
	
-- Additional local binds
	send_command('bind ^` gs c cycle ElementalMode')
	send_command('bind !` input /ja "Full Circle" <me>')
	send_command('bind @f8 gs c toggle AutoNukeMode')
	send_command('bind @` gs c cycle MagicBurstMode')
	send_command('bind @f10 gs c cycle RecoverMode')
	send_command('bind ^backspace input /ja "Entrust" <me>')
	send_command('bind !backspace input /ja "Life Cycle" <me>')
	send_command('bind @backspace input /ma "Sleep II" <t>')
	send_command('bind ^delete input /ma "Aspir III" <t>')
	send_command('bind @delete input /ma "Sleep" <t>')
	
	indi_duration = 290
	
	select_default_macro_book()
end

function init_gear_sets()
	
--------------------------------------
-- Precast sets
--------------------------------------

-- Precast sets to enhance JAs
	sets.precast.JA.Bolster = {body="Bagua Tunic +1"}
	sets.precast.JA['Life Cycle'] = {body="Geo. Tunic +1",back=AMBUIDLE_BACK}
	sets.precast.JA['Radial Arcana'] = {feet=RELIC_FEET}
	sets.precast.JA['Mending Halation'] = {legs=RELIC_LEGS}
	sets.precast.JA['Full Circle'] = {head=EMPY_HEAD,hands=RELIC_HANDS}
	
-- Indi Duration in slots that would normally have skill here to make entrust more efficient.
	sets.buff.Entrust = {}
	
-- Relic hat for Blaze of Glory HP increase.
	sets.buff['Blaze of Glory'] = {}
	
-- Fast cast sets for spells

sets.precast.FC = 
	{
		main="C. Palug Hammer",		--07 FC
		sub="Chanter's Shield",		--03 FC
		ammo="Impatiens",		--	02 QM	10 SIRD	
		--head="Amalric Coif +1",
		head=ONGO_HEAD,			--05 FC		10 SIRD
		neck="Voltsurge Torque",	--04 FC
		ear1="Enchntr. Earring +1",	--02 FC
		ear2="Malignance Earring",	--04 FC
		--body="Zendik Robe",
		body=ONGO_BODY,			--08 FC
		--hands="Volte Gloves",
		hands=ONGO_HANDS,		--06 FC
		ring1="Kishar Ring",		--04 FC
		ring2="Lebeche Ring",		--	02 QM
		back="Perimede Cape",		--	04 QM
		waist="Witful Belt",		--03 FC 03 QM
		legs=AF_LEGS,			--11 FC 	20 SIRD
		feet=ONGO_FEET			--04 FC
						--61 FC	11 QM	40 SIRD
	}

	sets.precast.FC.Geomancy = set_combine(sets.precast.FC, {range="Dunna",ammo=empty})
	
	sets.precast.FC['Elemental Magic'] = set_combine(sets.precast.FC, 
		{
			ear2="Malignance Earring",
			hands=RELIC_HANDS
		})

	sets.precast.FC.Cure = set_combine(sets.precast.FC, {main="Serenity",sub="Clerisy Strap +1"})
		
	sets.precast.FC.Curaga = sets.precast.FC.Cure
	
	sets.Self_Healing = {neck="Phalaina Locket",ring1="Kunaji Ring",ring2="Asklepian Ring",waist="Gishdubar Sash"}
	sets.Cure_Received = {neck="Phalaina Locket",ring1="Kunaji Ring",ring2="Asklepian Ring",waist="Gishdubar Sash"}
	sets.Self_Refresh = {back="Grapevine Cape",waist="Gishdubar Sash",feet="Inspirited Boots"}
	
	sets.precast.FC['Enhancing Magic'] = set_combine(sets.precast.FC, {waist="Siegel Sash"})
	
	sets.precast.FC.Stoneskin = set_combine(sets.precast.FC['Enhancing Magic'], {})

	sets.precast.FC.Impact = 
	{
		ammo="Impatiens",
		head=empty,
		neck="Voltsurge Torque",
		ear1="Enchntr. Earring +1",
		ear2="Malignance Earring",
		body="Twilight Cloak",
		hands="Volte Gloves",
		ring1="Kishar Ring",
		ring2="Lebeche Ring",
		back=JSEINDI_BACK,
		waist="Witful Belt",
		legs=AF_LEGS,
		feet="Regal Pumps +1"
	}
		
	sets.precast.FC.Dispelga = set_combine(sets.precast.FC, {main="Daybreak",sub="Genmei Shield"})
	
-- Weaponskill sets
-- Default set for any weaponskill that isn't any more specifically defined
	
	sets.precast.WS = {}

--------------------------------------
-- Midcast sets
--------------------------------------

	sets.midcast.FastRecast = 
	{
		main=gear.grioavolr_fc_staff,sub="Clerisy Strap +1",
		head="Amalric Coif +1",neck="Voltsurge Torque",ear1="Enchntr. Earring +1",ear2="Malignance Earring",
		body="Zendik Robe",hands="Volte Gloves",ring1="Kishar Ring",ring2="Prolix Ring",
		back=JSEINDI_BACK,waist="Witful Belt",legs=AF_LEGS,feet="Regal Pumps +1"
	}

	sets.midcast.Geomancy = 
	{
		main="Idris",
		sub="Genmei Shield",
		range="Dunna",
		head=EMPY_HEAD,
		neck=JSE_NECK,
		ear1="Etiolation Earring",
		ear2="Odnowa Earring +1",
		body="Shamash Robe",
		hands=AF_HANDS,
		ring1="Defending Ring",
		ring2=StikiniRing_Ring2,
		back=AMBUIDLE_BACK,
		waist="Isa Belt",
		legs=ONGO_LEGS,
		feet=RELIC_FEET
	}


--Extra Indi duration as long as you can keep your 900 skill cap.
	sets.midcast.Geomancy.Indi = set_combine(sets.midcast.Geomancy, 
		{
			main=GADA_INDI,
			back=JSEINDI_BACK,
			legs=RELIC_LEGS,
			feet=EMPY_FEET
		})
		
	sets.midcast.Cure = 
	{
		main=gear.gada_healing_club,sub="Sors Shield",ammo="Hasty Pinion +1",
		head="Amalric Coif +1",neck="Incanter's Torque",ear1="Gifted Earring",ear2="Etiolation Earring",
		body="Zendik Robe",hands="Telchine Gloves",ring1="Janniston Ring",ring2="Menelaus's Ring",
		back="Tempered Cape +1",waist="Witful Belt",legs=AF_LEGS,feet="Vanya Clogs"
	}
		
	sets.midcast.LightWeatherCure = 
	{
		main="Chatoyant Staff",sub="Curatio Grip",ammo="Hasty Pinion +1",
		head="Amalric Coif +1",neck="Phalaina Locket",ear1="Gifted Earring",ear2="Etiolation Earring",
		body="Vrikodara Jupon",hands="Telchine Gloves",ring1="Janniston Ring",ring2="Menelaus's Ring",
		back="Twilight Cape",waist="Hachirin-no-Obi",legs=AF_LEGS,feet="Vanya Clogs"
	}
		
--Cureset for if it's not light weather but is light day.
	
	sets.midcast.LightDayCure = 
	{
		main=gear.gada_healing_club,sub="Sors Shield",ammo="Hasty Pinion +1",
		head="Amalric Coif +1",neck="Incanter's Torque",ear1="Gifted Earring",ear2="Etiolation Earring",
		body="Zendik Robe",hands="Telchine Gloves",ring1="Janniston Ring",ring2="Lebeche Ring",
		back="Twilight Cape",waist="Hachirin-no-Obi",legs=AF_LEGS,feet="Vanya Clogs"
	}
	
	sets.midcast.Curaga = set_combine(sets.midcast.Cure, {main="Daybreak",sub="Sors Shield"})
	
	sets.midcast.Cursna =  set_combine(sets.midcast.Cure, 
		{
			neck="Debilis Medallion",hands="Hieros Mittens",
			back="Oretan. Cape +1",ring1="Haoma's Ring",ring2="Menelaus's Ring",waist="Witful Belt",feet="Vanya Clogs"
		})
	
	sets.midcast.StatusRemoval = set_combine(sets.midcast.FastRecast, {main=gear.grioavolr_fc_staff,sub="Clemency Grip"})
	
    sets.midcast['Elemental Magic'] = 
	{
		main="Bunzi's Rod",
		sub="Ammurapi Shield",
		ammo="Ghastly Tathlum +1",
		head=EMPY_HEAD,
		neck="Mizu. Kubikazari",
		ear1="Regal Earring",
		ear2=EMPY_EAR,
		body=EMPY_BODY,
		hands=EMPY_HANDS,
		ring1="Freke Ring",
		ring2="Shiva Ring +1",
		back=AMBUNUKE_BACK,
		waist="Sacro Cord",
		legs=EMPY_LEGS
		feet=EMPY_FEET
	}

	sets.midcast['Elemental Magic'].Resistant = 
	{
		main="Daybreak",sub="Ammurapi Shield",ammo="Pemphredo Tathlum",
		head=gear.merlinic_nuke_head,neck="Sanctity Necklace",ear1="Regal Earring",ear2="Malignance Earring",
		body=gear.merlinic_nuke_body,hands="Mallquis Cuffs +2",ring1="Shiva Ring +1",ring2="Freke Ring",
		back=AMBUNUKE_BACK,waist="Yamabuki-no-Obi",legs="Merlinic Shalwar",feet="Amalric Nails +1"
	}
		
	sets.midcast['Elemental Magic'].Proc = 
	{
		main=empty,sub=empty,ammo="Impatiens",
		head="Vanya Hood",neck="Loricate Torque +1",ear1="Gifted Earring",ear2="Loquac. Earring",
		body="Seidr Cotehardie",hands="Regal Cuffs",ring1="Kishar Ring",ring2="Prolix Ring",
		back="Swith Cape +1",waist="Witful Belt",legs="Assid. Pants +1",feet="Regal Pumps +1"
	}
		
	sets.midcast['Elemental Magic'].Fodder = 
	{
		main="Daybreak",sub="Ammurapi Shield",ammo="Ghastly Tathlum +1",
		head=gear.merlinic_nuke_head,neck="Saevus Pendant +1",ear1="Crematio Earring",ear2="Friomisi Earring",
		body=gear.merlinic_nuke_body,hands="Mallquis Cuffs +2",ring1="Shiva Ring +1",ring2="Freke Ring",
		back=AMBUNUKE_BACK,waist=gear.ElementalObi,legs="Merlinic Shalwar",feet="Amalric Nails +1"
	}
		
	sets.midcast['Elemental Magic'].HighTierNuke = 
	{
		main="Bunzi's Rod",
		sub="Ammurapi Shield",
		ammo="Ghastly Tathlum +1",
		head=EMPY_HEAD,
		neck="Mizu. Kubikazari",
		ear1="Regal Earring",
		ear2=EMPY_EAR,
		body=EMPY_BODY,
		hands=EMPY_HANDS,
		ring1="Freke Ring",
		ring2="Shiva Ring +1",
		back=AMBUNUKE_BACK,
		waist="Sacro Cord",
		legs=EMPY_LEGS
		feet=EMPY_FEET
	}
		
	sets.midcast['Elemental Magic'].HighTierNuke.Resistant = 
	{
		main="Daybreak",sub="Ammurapi Shield",ammo="Pemphredo Tathlum",
		head=gear.merlinic_nuke_head,neck="Sanctity Necklace",ear1="Regal Earring",ear2="Malignance Earring",
		body=gear.merlinic_nuke_body,hands="Amalric Gages +1",ring1="Metamor. Ring +1",ring2="Freke Ring",
		back=AMBUNUKE_BACK,waist="Yamabuki-no-Obi",legs="Merlinic Shalwar",feet="Amalric Nails +1"
	}

	sets.midcast['Elemental Magic'].HighTierNuke.Fodder = 
	{
		main="Daybreak",sub="Ammurapi Shield",ammo="Pemphredo Tathlum",
		head=gear.merlinic_nuke_head,neck="Saevus Pendant +1",ear1="Regal Earring",ear2="Malignance Earring",
		body=gear.merlinic_nuke_body,hands="Amalric Gages +1",ring1="Metamor. Ring +1",ring2="Freke Ring",
		back=AMBUNUKE_BACK,waist=gear.ElementalObi,legs="Merlinic Shalwar",feet="Amalric Nails +1"
	}
		
	sets.midcast['Dark Magic'] = 
	{
		main="Rubicundity",sub="Ammurapi Shield",ammo="Pemphredo Tathlum",
		head=gear.merlinic_nuke_head,neck="Erra Pendant",ear1="Regal Earring",ear2="Malignance Earring",
		body=gear.merlinic_nuke_body,hands="Amalric Gages +1",ring1="Metamor. Ring +1",ring2="Stikini Ring +1",
		back=AMBUNUKE_BACK,waist="Yamabuki-no-Obi",legs="Merlinic Shalwar",feet=gear.merlinic_aspir_feet
	}
		
	sets.midcast.Drain = 
	{
		main="Rubicundity",sub="Ammurapi Shield",ammo="Pemphredo Tathlum",
		head="Pixie Hairpin +1",neck="Erra Pendant",ear1="Regal Earring",ear2="Malignance Earring",
		body=gear.merlinic_nuke_body,hands="Amalric Gages +1",ring1="Archon Ring",ring2="Evanescence Ring",
		back=AMBUNUKE_BACK,waist="Fucho-no-obi",legs="Merlinic Shalwar",feet=gear.merlinic_aspir_feet
	}
    
	sets.midcast.Aspir = sets.midcast.Drain
		
	sets.midcast.Stun = 
	{
		main=gear.grioavolr_fc_staff,sub="Clerisy Strap +1",ammo="Hasty Pinion +1",
		head="Amalric Coif +1",neck="Voltsurge Torque",ear1="Enchntr. Earring +1",ear2="Malignance Earring",
		body="Zendik Robe",hands="Volte Gloves",ring1="Metamor. Ring +1",ring2="Stikini Ring +1",
		back=JSEINDI_BACK,waist="Witful Belt",legs="Psycloth Lappas",feet="Regal Pumps +1"
	}
		
	sets.midcast.Stun.Resistant = {main="Daybreak",sub="Ammurapi Shield",ammo="Pemphredo Tathlum",
		head="Amalric Coif +1",neck="Erra Pendant",ear1="Regal Earring",ear2="Malignance Earring",
		body="Zendik Robe",hands="Amalric Gages +1",ring1="Metamor. Ring +1",ring2="Stikini Ring +1",
		back=AMBUNUKE_BACK,waist="Acuity Belt +1",legs="Merlinic Shalwar",feet=gear.merlinic_aspir_feet}
		
	sets.midcast.Impact = 
	{
		main="Daybreak",
		sub="Ammurapi Shield",
		ammo="Pemphredo Tathlum",
		head=empty,
		neck="Erra Pendant",
		ear1="Regal Earring",
		ear2="Malignance Earring",
		body="Twilight Cloak",
		hands="Regal Cuffs",
		ring1="Metamor. Ring +1",
		ring2="Stikini Ring +1",
		back=AMBUNUKE_BACK,
		waist="Acuity Belt +1",
		legs="Merlinic Shalwar",
		feet="Amalric Nails +1"
	}
		
	sets.midcast.Dispel = 
	{
		main="Daybreak",
		sub="Ammurapi Shield",
		ammo="Pemphredo Tathlum",
		head="Amalric Coif +1",
		neck="Erra Pendant",
		ear1="Regal Earring",
		ear2="Malignance Earring",
		body="Zendik Robe",
		hands="Amalric Gages +1",
		ring1="Metamor. Ring +1",
		ring2="Stikini Ring +1",
		back=AMBUNUKE_BACK,
		waist="Acuity Belt +1",
		legs="Merlinic Shalwar",
		feet=gear.merlinic_aspir_feet
	}

	sets.midcast.Dispelga = set_combine(sets.midcast.Dispel, {main="Daybreak",sub="Ammurapi Shield"})
		
	sets.midcast['Enfeebling Magic'] = 
	{
		main="Daybreak",
		sub="Ammurapi Shield",
		ammo="Pemphredo Tathlum",
		head="Befouled Crown",
		neck="Erra Pendant",
		ear1="Regal Earring",
		ear2="Digni. Earring",
		body=gear.merlinic_nuke_body,
		hands="Regal Cuffs",
		ring1="Kishar Ring",
		ring2="Stikini Ring +1",
		back=AMBUNUKE_BACK,
		waist="Luminary Sash",
		legs="Psycloth Lappas",
		feet="Uk'uxkaj Boots"
	}
		
	sets.midcast['Enfeebling Magic'].Resistant = 
	{
		main="Daybreak",sub="Ammurapi Shield",ammo="Pemphredo Tathlum",
		head="Befouled Crown",neck="Erra Pendant",ear1="Regal Earring",ear2="Digni. Earring",
		body=gear.merlinic_nuke_body,hands="Regal Cuffs",ring1="Metamor. Ring +1",ring2="Stikini Ring +1",
		back=AMBUNUKE_BACK,waist="Luminary Sash",legs="Psycloth Lappas",feet="Skaoi Boots"
	}
		
	sets.midcast.ElementalEnfeeble = set_combine(sets.midcast['Enfeebling Magic'], {head="Amalric Coif +1",ear2="Malignance Earring",waist="Acuity Belt +1"})
	sets.midcast.ElementalEnfeeble.Resistant = set_combine(sets.midcast['Enfeebling Magic'].Resistant, {head="Amalric Coif +1",ear2="Malignance Earring",waist="Acuity Belt +1"})

	sets.midcast.Dia = set_combine(sets.midcast['Enfeebling Magic'], sets.TreasureHunter)
	sets.midcast['Dia II'] = set_combine(sets.midcast['Enfeebling Magic'], sets.TreasureHunter)

	sets.midcast.Bio = set_combine(sets.midcast['Enfeebling Magic'], sets.TreasureHunter)
	sets.midcast['Bio II'] = set_combine(sets.midcast['Enfeebling Magic'], sets.TreasureHunter)
	
	sets.midcast['Divine Magic'] = set_combine(sets.midcast['Enfeebling Magic'], {ring1="Stikini Ring +1"})
		
	sets.midcast['Enhancing Magic'] = 
	{
		main=gear.gada_enhancing_club,
		sub="Ammurapi Shield",
		ammo="Hasty Pinion +1",
		head="Telchine Cap",
		neck="Incanter's Torque",
		ear1="Andoaa Earring",ear2="Gifted Earring",
		body="Telchine Chas.",
		hands="Telchine Gloves",
		ring1="Stikini Ring +1",
		ring2="Stikini Ring +1",
		back="Perimede Cape",
		waist="Embla Sash",
		legs="Telchine Braconi",
		feet="Telchine Pigaches"
	}
		
	sets.midcast.Stoneskin = set_combine(sets.midcast['Enhancing Magic'], {neck="Nodens Gorget",ear2="Earthcry Earring",waist="Siegel Sash",legs="Shedir Seraweels"})
	
	sets.midcast.Refresh = set_combine(sets.midcast['Enhancing Magic'], {head="Amalric Coif +1"})
	
	sets.midcast.Aquaveil = set_combine(sets.midcast['Enhancing Magic'], {main="Vadose Rod",sub="Genmei Shield",head="Amalric Coif +1",hands="Regal Cuffs",waist="Emphatikos Rope",legs="Shedir Seraweels"})
	
	sets.midcast.BarElement = set_combine(sets.precast.FC['Enhancing Magic'], {legs="Shedir Seraweels"})
	
	sets.midcast.Protect = set_combine(sets.midcast['Enhancing Magic'], {ring2="Sheltered Ring",ear1="Gifted Earring",ear2="Malignance Earring",waist="Sekhmet Corset"})
	sets.midcast.Protectra = set_combine(sets.midcast['Enhancing Magic'], {ring2="Sheltered Ring",ear1="Gifted Earring",ear2="Malignance Earring",waist="Sekhmet Corset"})
	sets.midcast.Shell = set_combine(sets.midcast['Enhancing Magic'], {ring2="Sheltered Ring",ear1="Gifted Earring",ear2="Malignance Earring",waist="Sekhmet Corset"})
	sets.midcast.Shellra = set_combine(sets.midcast['Enhancing Magic'], {ring2="Sheltered Ring",ear1="Gifted Earring",ear2="Malignance Earring",waist="Sekhmet Corset"})

	--------------------------------------
	-- Idle/resting/defense/etc sets
	--------------------------------------

	-- Resting sets
	sets.resting = 
	{
		main="Chatoyant Staff",sub="Oneiros Grip",
		head="Befouled Crown",neck="Chrys. Torque",ear1="Etiolation Earring",ear2="Ethereal Earring",
		body="Jhakri Robe +2",hands=gear.merlinic_refresh_hands,ring1="Defending Ring",ring2="Dark Ring",
		back="Umbra Cape",legs="Assid. Pants +1",feet=gear.merlinic_refresh_feet
	}

	-- Idle sets

	sets.idle = 
	{
		main="Daybreak",
		sub="Genmei Shield",
		ammo="Homiliary",
		head="Befouled Crown",
		neck="Loricate Torque +1",
		ear1="Moonshade Earring",
		ear2="Ethereal Earring",
		body="Witching Robe",
		hands=gear.chironic_refresh_hands,
		ring1="Defending Ring",
		ring2="Woltaris Ring",
		back="Solemnity Cape",
		waist="Isa Belt",
		legs="Assid. Pants +1",
		feet=gear.chironic_refresh_feet
	}
		
	sets.idle.PDT = 
	{
		main="Malignance Pole",sub="Umbra Strap",ammo="Staunch Tathlum +1",
		head=BUMBA_HEAD,neck="Loricate Torque +1",ear1="Genmei Earring",ear2="Ethereal Earring",
		body="Jhakri Robe +2",hands=BUMBA_HANDS,ring1="Defending Ring",ring2="Shadow Ring",
		back="Shadow Mantle",waist="Carrier's Sash",legs=BUMBA_LEGS,feet="Mallquis Clogs +2"
	}

-- .Pet sets are for when Luopan is present.
	sets.idle.Pet = 
	{
		main="Idris",
		sub="Genmei Shield",
		range="Dunna",
		head=EMPY_HEAD,
		neck="Loricate Torque +1",
		ear1="Handler's Earring",
		--ear1="Ran Earring",
		ear2="Handler's Earring +1",
		--ear2="Odnowa Earring +1",
		body="Shamash Robe",
		hands=AF_HANDS,
		ring1=StikiniRing_Ring1,
		ring2="Gelatinous Ring +1",
		back=AMBUIDLE_BACK,
		waist="Isa Belt",
		legs=BUMBA_LEGS,
		feet=RELIC_FEET
	}

	sets.idle.PDT.Pet = 
	{
		main="Malignance Pole",sub="Umbra Strap",range="Dunna",
		head=EMPY_HEAD,neck="Loricate Torque +1",ear1="Handler's Earring",ear2="Handler's Earring +1",
		body="Jhakri Robe +2",hands=AF_HANDS,ring1="Defending Ring",ring2="Dark Ring",
		back=AMBUIDLE_BACK,waist="Isa Belt",legs=BUMBA_LEGS,feet=RELIC_FEET
	}

	-- .Indi sets are for when an Indi-spell is active.
	sets.idle.Indi = set_combine(sets.idle, {})
	sets.idle.Pet.Indi = set_combine(sets.idle.Pet, {}) 
	sets.idle.PDT.Indi = set_combine(sets.idle.PDT, {}) 
	sets.idle.PDT.Pet.Indi = set_combine(sets.idle.PDT.Pet, {})

	sets.idle.Weak = 
	{
		main="Bolelabunga",sub="Genmei Shield",ammo="Staunch Tathlum +1",
		head="Befouled Crown",neck="Loricate Torque +1",ear1="Etiolation Earring",ear2="Ethereal Earring",
		body="Jhakri Robe +2",hands=gear.merlinic_refresh_hands,ring1="Defending Ring",ring2="Dark Ring",
		back="Umbra Cape",waist="Carrier's Sash",legs="Assid. Pants +1",feet=EMPY_FEET
	}

	-- Defense sets
	
	sets.defense.PDT = 
	{
		main="Malignance Pole",sub="Umbra Strap",ammo="Staunch Tathlum +1",
		head=BUMBA_HEAD,neck="Loricate Torque +1",ear1="Etiolation Earring",ear2="Handler's Earring +1",
		body="Mallquis Saio +2",hands=BUMBA_HANDS,ring1="Defending Ring",ring2="Dark Ring",
		back="Umbra Cape",waist="Carrier's Sash",legs=BUMBA_LEGS,feet=EMPY_FEET
	}

	sets.defense.MDT = 
	{
		main="Malignance Pole",sub="Umbra Strap",ammo="Staunch Tathlum +1",
		head=EMPY_HEAD,neck="Loricate Torque +1",ear1="Etiolation Earring",ear2="Handler's Earring +1",
		body="Mallquis Saio +2",hands=BUMBA_HANDS,ring1="Defending Ring",ring2="Dark Ring",
		back="Umbra Cape",waist="Carrier's Sash",legs=BUMBA_LEGS,feet=EMPY_FEET
	}

	sets.defense.MEVA = 
	{
		main="Malignance Pole",sub="Enki Strap",ammo="Staunch Tathlum +1",
		head=EMPY_HEAD,neck="Warder's Charm +1",ear1="Etiolation Earring",ear2="Sanare Earring",
		body=gear.merlinic_nuke_body,hands="Telchine Gloves",ring1="Vengeful Ring",Ring2="Purity Ring",
		back=AMBUIDLE_BACK,waist="Luminary Sash",legs="Telchine Braconi",feet=EMPY_FEET
	}
		
	sets.defense.PetPDT = sets.idle.PDT.Pet
		
	sets.defense.NukeLock = sets.midcast['Elemental Magic']
	
	sets.defense.GeoLock = sets.midcast.Geomancy.Indi

	sets.Kiting = {ring2="Shneddick Ring",feet="Herald's Gaiters"}
	sets.latent_refresh = {waist="Fucho-no-obi"}
	sets.latent_refresh_grip = {sub="Oneiros Grip"}
	sets.TPEat = {neck="Chrys. Torque"}
	sets.DayIdle = {}
	sets.NightIdle = {}
	sets.TreasureHunter = set_combine(sets.TreasureHunter, {feet=gear.merlinic_treasure_feet})
	
	sets.HPDown = 
	{
		head="Pixie Hairpin +1",ear1="Mendicant's Earring",ear2="Evans Earring",
		body="Jhakri Robe +2",hands="Jhakri Cuffs +2",ring1="Mephitas's Ring +1",ring2="Mephitas's Ring",
		back="Swith Cape +1",legs="Shedir Seraweels",feet="Jhakri Pigaches +2"
	}

	sets.buff.Doom = set_combine(sets.buff.Doom, {})

	--------------------------------------
	-- Engaged sets
	--------------------------------------
	
	-- Variations for TP weapon and (optional) offense/defense modes.  Code will fall back on previous
	-- sets if more refined versions aren't defined.
	-- If you create a set with both offense and defense modes, the offense mode should be first.
	-- EG: sets.engaged.Dagger.Accuracy.Evasion

	-- Normal melee group
	sets.engaged = 
	{
		ammo="Hasty Pinion +1",
		head="Befouled Crown",neck="Asperity Necklace",ear1="Cessance Earring",ear2="Brutal Earring",
		body="Jhakri Robe +2",hands="Gazu Bracelet +1",ring1="Ramuh Ring +1",ring2="Ramuh Ring +1",
		back="Moonlight Cape",waist="Witful Belt",legs="Assid. Pants +1",feet="Battlecast Gaiters"
	}
	
	sets.engaged.DW = 
	{
		ammo="Hasty Pinion +1",
		head="Befouled Crown",neck="Asperity Necklace",ear1="Dudgeon Earring",ear2="Heartseeker Earring",
		body="Jhakri Robe +2",hands="Regal Cuffs",ring1="Ramuh Ring +1",ring2="Ramuh Ring +1",
		back="Moonlight Cape",waist="Witful Belt",legs="Assid. Pants +1",feet="Battlecast Gaiters"
	}

	--------------------------------------
	-- Custom buff sets
	--------------------------------------
	
	-- Gear that converts elemental damage done to recover MP.	
	sets.RecoverMP = {body="Seidr Cotehardie"}
	
	-- Gear for Magic Burst mode.
	sets.MagicBurst = 
	{
		main="Bunzi's Rod",
		sub="Ammurapi Shield",
		ammo="Ghastly Tathlum +1",
		head=EMPY_HEAD,
		neck="Mizu. Kubikazari",
		ear1="Regal Earring",
		ear2=EMPY_EAR,
		body=EMPY_BODY,
		hands=EMPY_HANDS,
		ring1="Freke Ring",
		ring2="Mujin Band",
		back=AMBUNUKE_BACK,
		waist="Sacro Cord",
		legs=EMPY_LEGS
		feet=EMPY_FEET
	}
	
	sets.ResistantMagicBurst = 
	{
		main="Bunzi's Rod",
		sub="Ammurapi Shield",
		head=EMPY_HEAD,
		neck="Mizu. Kubikazari",
		ear1="Regal Earring",
		ear2=EMPY_EAR,
		body=EMPY_BODY,
		hands=EMPY_HANDS,
		ring1="Freke Ring",
		ring2="Mujin Band",
		back=AMBUNUKE_BACK,
		waist="Sacro Cord",
		legs=EMPY_LEGS
		feet=EMPY_FEET
	}
	
	sets.buff.Sublimation = {waist="Embla Sash"}
	sets.buff.DTSublimation = {waist="Embla Sash"}
	
	-- Weapons sets
	sets.weapons.Maxentius = {main='Maxentius',sub='Genmei Shield'}
	sets.weapons.DualWeapons = {main='Maxentius',sub='Nehushtan'}
end

-- Select default macro book on initial load or subjob change.
function select_default_macro_book()
	set_macro_page(4, 10)
end

function user_job_lockstyle()
	windower.chat.input('/lockstyleset 020')
end
