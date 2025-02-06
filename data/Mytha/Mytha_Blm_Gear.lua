function user_job_setup()
-- Options: Override default values
	state.CastingMode:options('Normal','Proc','OccultAcumen')
	--state.CastingMode:options('Normal','Resistant','Proc','OccultAcumen')
	state.OffenseMode:options('Normal')
	state.HybridMode:options('Normal')
	state.IdleMode:options('Normal','PDT','MDT','MEVA')
	state.Weapons:options('None','Bunzi','Lathi','Hvergelmir')

--Artifact Gear
	AF_HEAD 		= {name="Spae. Petasos +2"}
	AF_BODY 		= {name="Spaekona's Coat +3"}
	AF_HANDS 		= {name="Spae. Gloves +2"}
	AF_LEGS 		= {name="Spae. Tonban +1"}
	AF_FEET 		= {name="Spae. Sabots +1"}

--Relic Gear
	RELIC_HEAD 		= {name="Arch. Petasos +1"}
   	RELIC_BODY 		= {name="Arch. Coat +1"}
	RELIC_HANDS 		= {name="Arch. Gloves +1"}
	RELIC_LEGS 		= {name="Arch. Tonban +1"}
	RELIC_FEET 		= {name="Arch. Sabots +1"}

--Empyrean Gear
	EMPY_HEAD 		= {name="Wicce Petasos +3"}
	EMPY_BODY 		= {name="Wicce Coat +3"}
	EMPY_HANDS 		= {name="Wicce Gloves +3"}
	EMPY_LEGS 		= {name="Wicce Chausses +3"}
	EMPY_FEET 		= {name="Wicce Sabots +3"}

--EMPY EAR
	EMPY_EAR 		= {name="Wicce Earring +1"}

--RINGS
	StikiniRing_Ring1	= { name = "Stikini Ring +1", bag = "wardrobe2" }
	StikiniRing_Ring2	= { name = "Stikini Ring +1", bag = "wardrobe3" }

	ChirichRing_Ring1	= { name = "Chirich Ring +1", bag = "wardrobe2" }
	ChirichRing_Ring2	= { name = "Chirich Ring +1", bag = "wardrobe3" }

--CAPES
	AMBUNUKE_BACK 		= {name="Taranus's Cape",augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10',}}
	AMBUFC_BACK 		= {name="Taranus's Cape", augments={'MP+60','Mag. Acc+20 /Mag. Dmg.+20','MP+20','"Fast Cast"+10',}}
	AMBUSTP_BACK 		= {name="Taranus's Cape",augments={'DEX+20','Accuracy+20 Attack+20','"Store TP"+10',}}
--NECKS
	JSE_NECK 		= {name="Src. Stole +2"}

----ESCHA and REISENJIMA
	
	PsyclothLegs_FC		= { name="Psycloth Lappas", augments={'MP+80','Mag. Acc.+15','"Fast Cast"+7',}}

-- Additional local binds
	send_command('bind ^` gs c cycle ElementalMode') 
	send_command('bind ~^` gs c cycleback ElementalMode') --Robbiewobbie's idea
	send_command('bind !q gs c weapons Default;gs c reset CastingMode;gs c reset DeathMode;gs c reset MagicBurstMode')
	send_command('bind !r gs c set DeathMode Single;gs c set MagicBurstMode Single')
	send_command('bind !\\\\ input /ja "Manawell" <me>')
	send_command('bind !` input /ma "Aspir III" <t>')
	send_command('bind @` gs c cycle MagicBurstMode')
	send_command('bind @f10 gs c cycle RecoverMode')
	send_command('bind @f9 gs c cycle DeathMode')
	send_command('bind @^` input /ja "Parsimony" <me>')
	send_command('bind !pause gs c toggle AutoSubMode') --Automatically uses sublimation and Myrkr.
	send_command('bind ^backspace input /ma "Stun" <t>')
	send_command('bind !backspace input /ja "Enmity Douse" <t>')
	send_command('bind @backspace input /ja "Alacrity" <me>')
	send_command('bind != input /ja "Light Arts" <me>')
	send_command('bind @= input /ja "Addendum: White" <me>')
	send_command('bind ^delete input /ja "Dark Arts" <me>')
	send_command('bind !delete input /ja "Addendum: Black" <me>')
	send_command('bind @delete input /ja "Manifestation" <me>')
    
	select_default_macro_book()
end

function init_gear_sets()

    --------------------------------------
    -- Start defining the sets
    --------------------------------------
	
-- Weapons sets
	sets.weapons.Lathi = {main="Lathi",sub="Enki Strap"}
	sets.weapons.Bunzi = {main="Bunzi's Rod",sub="Ammurapi Shield"}
	sets.weapons.Hvergelmir = {main="Hvergelmir",sub="Enki Strap"}

	sets.buff.Sublimation = {waist="Embla Sash"}
	sets.buff.DTSublimation = {waist="Embla Sash"}	
	
-- Treasure Hunter
	
	sets.TreasureHunter = set_combine(sets.TreasureHunter)

---- Precast Sets ----
    
-- Precast sets to enhance JAs
	
	sets.precast.JA['Mana Wall'] = {back=AMBUNUKE_BACK,feet=EMPY_FEET}
	
	sets.precast.JA.Manafont = {body=RELIC_BODY}
    
-- equip to maximize HP (for Tarus) and minimize MP loss before using convert
	
	sets.precast.JA.Convert = {}

-- Fast cast sets for spells
	
	sets.precast.FC = 
	{
		--103FC + 7QM + 20SIRD + 16DT
		main="Hvergelmir",		--50FC
		sub="Khonsu",			--			6DT	
		ammo="Impatiens",		--	2QM	10SIRD
		--head="Amalric Coif +1",
		head=ONGO_HEAD,			--5FC		10SIRD
		neck="Null Loop",		--			5DT		
		--neck="Voltsurge Torque",	--4FC		
		ear1="Malignance Earring",	--4FC
		ear2="Loquac. Earring",		--2FC
		--body="Zendik Robe",
		body=ONGO_BODY,			--8FC
		--hands="Volte Gloves",
		hands=ONGO_HANDS,		--6FC			
		ring1="Kishar Ring",		--4FC
		ring2="Lebeche Ring",		--	2QM
		back=AMBUFC_BACK,		--10FC
		waist="Witful Belt",		--3FC	3QM
		--waist="Shinjutsu-no-obi +1",	--5FC
		--legs=PsyclothLegs_FC,
		legs=ONGO_LEGS,			--7FC			5DT
		feet=ONGO_FEET			--4FC
	}
	
	sets.precast.FC['Enhancing Magic'] = set_combine(sets.precast.FC, {waist="Siegel Sash"})
	
	sets.precast.FC.Stoneskin = set_combine(sets.precast.FC['Enhancing Magic'], {})
	
	sets.precast.FC['Elemental Magic'] = set_combine(sets.precast.FC, 
		{
			ammo="Staunch Tathlum +1",	--	11SIRD	3DT
			ring1="Prolix Ring",		--2FC
			--back="Swith Cape +1",
		})
	
	--sets.precast.FC.Cure = set_combine(sets.precast.FC, {main="Serenity",sub="Clerisy Strap +1",body="Heka's Kalasiris"})
	
	--sets.precast.FC.Curaga = sets.precast.FC.Cure
	
	sets.precast.FC.Impact = set_combine(sets.precast.FC, {head=empty,body="Twilight Cloak"})
	
	sets.precast.FC.Dispelga = set_combine(sets.precast.FC, {main="Daybreak",sub="Genmei Shield"})

	sets.precast.FC.Death = 
	{
		main="Hvergelmir",
		sub="Enki Strap",				
		ammo="Sapience Orb",
		--head="Amalric Coif +1",
		head=ONGO_HEAD,
		neck="Voltsurge Torque",
		ear1="Malignance Earring",
		ear2="Loquac. Earring",
		body="Ros. Jaseran +1",
		--hands="Volte Gloves",
		hands=ONGO_HANDS,
		ring1="Mephitas's Ring +1",
		ring2="Lebeche Ring",
		back=AMBUFC_BACK,
		waist="Shinjutsu-no-obi +1",
		--legs=PsyclothLegs_FC,
		legs=ONGO_LEGS,
		--feet="Amalric Nails +1",
		feet=ONGO_FEET
	}

-- Weaponskill sets
-- Default set for any weaponskill that isn't any more specifically defined
	
	sets.precast.WS = 
	{
		ammo="Ghastly Tathlum +1",
		head=BUMBA_HEAD,
		neck="Saevus Pendant +1",
		ear1="Friomisi Earring",
		ear2="Crematio Earring",
		body=JHAKRI_BODY,
		hands=JHAKRI_HANDS,
		ring1="Freke Ring",
		ring2="Shiva Ring +1",
		back=AMBUNUKE_BACK,
		waist="Fotia Belt",
		legs=JHAKRI_LEGS,
		feet=JHAKRI_FEET
	}

-- Specific weaponskill sets.  Uses the base set if an appropriate WSMod version isn't found.
	
	sets.precast.WS['Vidohunir'] = 
	{
		ammo="Ghastly Tathlum +1",
		head=BUMBA_HEAD,
		neck="Saevus Pendant +1",
		ear1="Friomisi Earring",
		ear2="Crematio Earring",
		body="Zendik Robe",
		hands=BUMBA_HANDS,
		ring1="Freke Ring",
		ring2="Shiva Ring +1",
		back=AMBUNUKE_BACK,
		waist="Fotia Belt",
		legs=BUMBA_LEGS,
		feet=BUMBA_FEET
	}
	
	sets.precast.WS['Myrkr'] = 
	{
		ammo="Strobilus",
		head="Amalric Coif +1",
		neck="Dualism Collar +1",
		ear1="Moonshade Earring",
		ear2="Nehalennia Earring",
		body="Amalric Doublet +1",
		hands=AF_HANDS,
		ring1="Mephitas's Ring +1",
		ring2="Mephitas's Ring",
		back=AMBUFC_BACK,
		waist="Shinjutsu-no-Obi +1",
		legs="Amalric Slops +1",
		feet="Psycloth Boots"
	}
		
	sets.MaxTPMyrkr = {ear1="Evans Earring",ear2="Etiolation Earring"}
    
    
--- Midcast Sets ----
	
	sets.midcast.FastRecast = 
	{
		--103FC + 7QM + 20SIRD + 16DT
		main="Hvergelmir",		--50FC
		sub="Khonsu",			--			6DT	
		ammo="Impatiens",		--	2QM	10SIRD
		--head="Amalric Coif +1",
		head=ONGO_HEAD,			--5FC		10SIRD
		neck="Null Loop",		--			5DT		
		--neck="Voltsurge Torque",	--4FC		
		ear1="Malignance Earring",	--4FC
		ear2="Loquac. Earring",		--2FC
		--body="Zendik Robe",
		body=ONGO_BODY,			--8FC
		--hands="Volte Gloves",
		hands=ONGO_HANDS,		--6FC			
		ring1="Kishar Ring",		--4FC
		ring2="Lebeche Ring",		--	2QM
		back=AMBUFC_BACK,		--10FC
		waist="Witful Belt",		--3FC	3QM
		--waist="Shinjutsu-no-obi +1",	--5FC
		--legs=PsyclothLegs_FC,
		legs=ONGO_LEGS,			--7FC			5DT
		feet=ONGO_FEET			--4FC
	}

--- Uncomment this section if BLM will be use outisde Odyssey---
--[[
	sets.midcast.Cure = 
	{
		main=gear.gada_healing_club,
		sub="Ammurapi Shield",
		ammo="Hasty Pinion +1",
		head="Vanya Hood",
		neck="Incanter's Torque",
		ear1="Gifted Earring",
		ear2="Etiolation Earring",
		body="Zendik Robe",
		hands="Telchine Gloves",
		ring1="Janniston Ring",
		ring2="Menelaus's Ring",
		back="Tempered Cape +1",
		waist="Witful Belt",
		legs="Psycloth Lappas",
		feet="Vanya Clogs"
	}
		
    	sets.midcast.LightWeatherCure = 
	{
		main="Chatoyant Staff",
		sub="Curatio Grip",
		ammo="Hasty Pinion +1",
		head="Vanya Hood",
		neck="Phalaina Locket",
		ear1="Gifted Earring",
		ear2="Etiolation Earring",
		body="Heka's Kalasiris",
		hands="Telchine Gloves",
		ring1="Janniston Ring",
		ring2="Menelaus's Ring",
		back="Twilight Cape",
		waist="Hachirin-no-Obi",
		legs="Psycloth Lappas",
		feet="Vanya Clogs"
	}
		
	--Cureset for if it's not light weather but is light day.
	
	sets.midcast.LightDayCure = 
	{
		main="Serenity",
		sub="Curatio Grip",
		ammo="Hasty Pinion +1",
		head="Vanya Hood",
		neck="Phalaina Locket",
		ear1="Gifted Earring",
		ear2="Etiolation Earring",
		body="Zendik Robe",
		hands="Telchine Gloves",
		ring1="Janniston Ring",
		ring2="Menelaus's Ring",
		back="Twilight Cape",
		waist="Hachirin-no-Obi",
		legs="Psycloth Lappas",
		feet="Vanya Clogs"
	}
	
	sets.midcast.Curaga = sets.midcast.Cure
	
	sets.midcast.Cursna =  set_combine(sets.midcast.Cure, {neck="Debilis Medallion",hands="Hieros Mittens",ring1="Haoma's Ring",ring2="Menelaus's Ring",back="Oretan. Cape +1"})
	
	sets.midcast.StatusRemoval = set_combine(sets.midcast.FastRecast, {main=gear.grioavolr_fc_staff,sub="Clemency Grip"})

	sets.midcast['Enhancing Magic'] = 
	{
		main=gear.gada_enhancing_club,
		sub="Ammurapi Shield",
		ammo="Hasty Pinion +1",
		head="Telchine Cap",
		neck="Incanter's Torque",
		ear1="Andoaa Earring",
		ear2="Gifted Earring",
		body="Telchine Chas.",
		hands="Telchine Gloves",
		ring1=StikiniRing_Ring1,
		ring2=StikiniRing_Ring2,
		back="Perimede Cape",
		waist="Embla Sash",
		legs="Telchine Braconi",
		feet="Telchine Pigaches"
	}
	
	sets.midcast.Stoneskin = set_combine(sets.midcast['Enhancing Magic'], 
		{
			neck="Nodens Gorget",
			ear2="Earthcry Earring",
			waist="Siegel Sash",
			legs="Shedir Seraweels"
		})
	
	sets.midcast.Refresh = set_combine(sets.midcast['Enhancing Magic'], {head="Amalric Coif +1"})
	
	sets.midcast.Aquaveil = set_combine(sets.midcast['Enhancing Magic'], 
		{
			main="Vadose Rod",
			sub="Genmei Shield",
			head="Amalric Coif +1",
			hands="Regal Cuffs",
			waist="Emphatikos Rope",
			legs="Shedir Seraweels"
		})
	
	sets.midcast.BarElement = set_combine(sets.precast.FC['Enhancing Magic'], {legs="Shedir Seraweels"})
]]
	
	sets.midcast['Enfeebling Magic'] = 
	{
		main="Bunzi's Rod",
		sub="Ammurapi Shield",
		ammo="Pemphredo Tathlum",
		head="Mall. Chapeau +2",
		neck="Erra Pendant",
		ear1="Malignance Earring",
		ear2="Regal Earring",
		body="Spaekona's Coat +3",
		hands="Regal Cuffs",
		ring1="Kishar Ring",
		ring2="Metamor. Ring +1",
		back=AMBUNUKE_BACK,
		waist="Luminary Sash",
		legs="Psycloth Lappas",
		feet="Uk'uxkaj Boots"
	}
	
	sets.midcast.ElementalEnfeeble = 
	{
		main="Bunzi's Rod",
		sub="Ammurapi Shield",
		ammo="Pemphredo Tathlum",
		head="Mall. Chapeau +2",
		neck="Erra Pendant",
		ear1="Malignance Earring",
		ear2="Regal Earring",
		body="Spaekona's Coat +3",
		hands="Regal Cuffs",
		ring1=StikiniRing_Ring1,
		ring2="Metamor. Ring +1",
		back=AMBUNUKE_BACK,
		waist="Acuity Belt +1",
		legs="Mallquis Trews +2",
		feet="Mallquis Clogs +2"
	}
		
	sets.midcast.Dia = set_combine(sets.midcast['Enfeebling Magic'], sets.TreasureHunter)
	sets.midcast['Dia II'] = set_combine(sets.midcast['Enfeebling Magic'], sets.TreasureHunter)
	
	sets.midcast.Bio = set_combine(sets.midcast['Enfeebling Magic'], sets.TreasureHunter)
	sets.midcast['Bio II'] = set_combine(sets.midcast['Enfeebling Magic'], sets.TreasureHunter)
	
	sets.midcast['Divine Magic'] = set_combine(sets.midcast['Enfeebling Magic'], {})
	
	sets.midcast['Dark Magic'] = 
	{
		main="Rubicundity",
		sub="Ammurapi Shield",
		ammo="Pemphredo Tathlum",
		head="Amalric Coif +1",
		neck="Erra Pendant",
		ear1="Malignance Earring",
		ear2="Regal Earring",
		body="Spaekona's Coat +3",
		hands="Regal Cuffs",
		ring1=StikiniRing_Ring1,
		ring2="Metamor. Ring +1",
		back=AMBUNUKE_BACK,
		waist="Acuity Belt +1",
		legs="Merlinic Shalwar",
		feet=gear.merlinic_aspir_feet
	}
	
	sets.midcast.Drain = 
	{
		main="Rubicundity",
		sub="Ammurapi Shield",
		ammo="Pemphredo Tathlum",
		head="Pixie Hairpin +1",
		neck="Erra Pendant",
		ear1="Malignance Earring",
		ear2="Regal Earring",
		body="Spaekona's Coat +3",
		hands="Regal Cuffs",
		ring1="Evanescence Ring",
		ring2="Archon Ring",
		back=AMBUNUKE_BACK,
		waist="Fucho-no-obi",
		legs="Merlinic Shalwar",
		feet="Agwu's Pigaches"
	}
	
	sets.midcast.Aspir = sets.midcast.Drain
	
	sets.midcast.Aspir.Death = 
	{
		main=gear.grioavolr_nuke_staff,
		sub="Enki Strap",
		ammo="Pemphredo Tathlum",
		head="Pixie Hairpin +1",
		neck="Erra Pendant",
		ear1="Malignance Earring",
		ear2="Regal Earring",
		body="Amalric Doublet +1",
		hands="Amalric Gages +1",
		ring1="Evanescence Ring",
		ring2="Archon Ring",
		back=AMBUNUKE_BACK,
		waist="Fucho-no-obi",
		legs="Merlinic Shalwar",
		feet=gear.merlinic_aspir_feet
	}
	
	sets.midcast.Death = 
	{
		main=gear.grioavolr_nuke_staff,
		sub="Enki Strap",
		ammo="Pemphredo Tathlum",
		head="Pixie Hairpin +1",
		neck="Mizu. Kubikazari",
		ear1="Malignance Earring",
		ear2="Etiolation Earring",
		body="Amalric Doublet +1",
		hands="Amalric Gages +1",
		ring1="Mujin Band",ring2="Archon Ring",
		back=AMBUNUKE_BACK,
		waist="Yamabuki-no-Obi",
		legs="Merlinic Shalwar",
		feet="Amalric Nails +1"
	}

	sets.midcast.Comet = 
	{
		main="Lathi",
		sub="Enki Strap",
		ammo="Ghastly Tathlum +1",
		head="Pixie Hairpin +1",
		neck="Saevus Pendant +1",
		ear1="Malignance Earring",
		ear2="Regal Earring",
		body=gear.merlinic_nuke_body,
		hands="Amalric Gages +1",
		ring1="Freke Ring",
		ring2="Archon Ring",
		back=AMBUNUKE_BACK,
		waist="Yamabuki-no-Obi",
		legs="Merlinic Shalwar",
		feet="Amalric Nails +1"
	}
	
	sets.midcast.Stun = 
	{
		main=gear.grioavolr_fc_staff,
		sub="Clerisy Strap +1",
		ammo="Hasty Pinion +1",
		head="Amalric Coif +1",
		neck="Voltsurge Torque",
		ear1="Enchntr. Earring +1",
		ear2="Malignance Earring",
		body="Zendik Robe",
		hands="Volte Gloves",
		ring1=StikiniRing_Ring1,
		ring2="Metamor. Ring +1",
		back=AMBUNUKE_BACK,
		waist="Witful Belt",
		legs="Psycloth Lappas",
		feet="Regal Pumps +1"
	}
	
	sets.midcast.BardSong = 
	{
		main="Daybreak",
		sub="Ammurapi Shield",
		ammo="Ghastly Tathlum +1",
		head="Amalric Coif +1",
		neck="Sanctity Necklace",
		ear1="Digni. Earring",
		ear2="Regal Earring",
		body="Zendik Robe",
		hands="Regal Cuffs",
		ring1=StikiniRing_Ring1,
		ring2="Metamor. Ring +1",
		back=AMBUNUKE_BACK,
		waist="Luminary Sash",
		legs="Merlinic Shalwar",
		feet="Medium's Sabots"
	}
		
	sets.midcast.Impact = 
	{
		main="Bunzi's Rod",
		sub="Ammurapi Shield",
		ammo="Pemphredo Tathlum",
		head=empty,
		neck="Erra Pendant",
		ear1="Malignance Earring",
		ear2="Regal Earring",
		body="Twilight Cloak",
		hands="Regal Cuffs",
		ring1=StikiniRing_Ring1,
		ring2="Metamor. Ring +1",
		back=AMBUNUKE_BACK,
		waist="Acuity Belt +1",
		legs="Mallquis Trews +2",
		feet="Mallquis Clogs +2"
	}
		
-- Elemental Magic sets
	
	sets.midcast['Elemental Magic'] = 
	{
		main="Bunzi's Rod",
		sub="Ammurapi Shield",
		ammo="Ghastly Tathlum +1",
		head=ONGO_HEAD,
		neck="Saevus Pendant +1",
		ear1="Crematio Earring",
		ear2="Friomisi Earring",
		body="Amalric Doublet +1",
		hands="Amalric Gages +1",
		ring1="Freke Ring",
		ring2="Shiva Ring +1",
		back=AMBUNUKE_BACK,
		waist="Sekhmet Corset",
		legs="Merlinic Shalwar",
		feet="Amalric Nails +1"
	}
		
   	sets.midcast['Elemental Magic'].HighTierNuke = 
	{
		main="Bunzi's Rod",
		sub="Ammurapi Shield",
		ammo="Ghastly Tathlum +1",
		head="Merlinic Hood",
		neck="Saevus Pendant +1",
		ear1="Malignance Earring",
		ear2="Regal Earring",
		body="Amalric Doublet +1",
		hands="Amalric Gages +1",
		ring1="Freke Ring",
		ring2="Metamorph Ring +1",
		back=AMBUNUKE_BACK,
		waist="Acuity Belt +1",
		legs="Merlinic Shalwar",
		feet="Amalric Nails +1"
	}
	
	sets.midcast.Helix = sets.midcast['Elemental Magic']

-- Minimal damage gear, maximum recast gear for procs.
	
	sets.midcast['Elemental Magic'].Proc = 
	{
		main=empty,
		sub=empty,ammo="Impatiens",
		head="Vanya Hood",
		neck="Loricate Torque +1",
		ear1="Gifted Earring",
		ear2="Loquac. Earring",
		body="Spaekona's Coat +3",
		hands="Regal Cuffs",
		ring1="Kishar Ring",
		ring2="Prolix Ring",
		back="Swith Cape +1",
		waist="Witful Belt",
		legs="Assid. Pants +1",
		feet="Regal Pumps +1"
	}
	
	sets.midcast['Elemental Magic'].OccultAcumen = 
	{
		main="Khatvanga",
		sub="Bloodrain Strap",
		ammo="Seraphic Ampulla",
	        head="Mall. Chapeau +2",
		neck="Combatant's Torque",
		ear1="Dedition Earring",
		ear2="Telos Earring",
	        body=gear.merlinic_occult_body,
		hands=gear.merlinic_occult_hands,
		ring1="Rajas Ring",
		ring2="Petrov Ring",
	        back=gear.stp_jse_back,
		waist="Oneiros Rope",
		legs="Perdition Slops",
		feet=gear.merlinic_occult_feet
	}
	
	sets.midcast.Impact.OccultAcumen = set_combine(sets.midcast['Elemental Magic'].OccultAcumen, {head=empty,body="Twilight Cloak"})
	
-- Gear that converts elemental damage done to recover MP.	
	sets.RecoverMP = {body="Spaekona's Coat +3"}

	-- Gear for Magic Burst mode.
	
	sets.MagicBurst = 
	{
		main="Bunzi's Rod",
		sub="Ammurapi Shield",
		ammo="Ghastly Tathlum +1",
		head="Ea Hat +1",
		neck="Mizukage-no-Kubikazari",
		ear1="Malignance Earring",
		ear2="Regal Earring",
		body="Ea Houppe. +1",
		hands="Amalric Gages +1",
		ring1="Freke Ring",
		ring2="Mujin Band",
		back=AMBUNUKE_BACK,
		waist="Acuity Belt +1",
		legs="Ea Slops +1",
		feet="Amalric Nails +1"
	}

-- Sets to return to when not performing an action.
	
-- Resting sets
	
	sets.resting = 
	{
		main="Mpaca's Staff",
		sub="Oneiros Grip",
		ammo="Staunch Tathlum +1",
		head="Befouled Crown",
		neck="Loricate Torque +1",
		ear1="Ethereal Earring",
		ear2="Etiolation Earring",
		body=JHAKRI_BODY,
		hands=gear.merlinic_refresh_hands,
		ring1=StikiniRing_Ring1,
		ring2=StikiniRing_Ring2,
		back="Umbra Cape",
		waist="Carrier's Sash",
		legs="Assid. Pants +1",
		feet=gear.merlinic_refresh_feet
	}

-- Idle sets
    
-- Normal refresh idle set
	
	sets.idle = 
	{
		main="Mpaca's Staff",sub="Umbra Strap",ammo="Staunch Tathlum +1",
		head="Befouled Crown",neck="Loricate Torque +1",ear1="Ethereal Earring",ear2="Etiolation Earring",
		body=JHAKRI_BODY,hands=gear.merlinic_refresh_hands,ring1=StikiniRing_Ring1,ring2="Petrov Ring",
		back="Umbra Cape",waist="Carrier's Sash",legs="Assid. Pants +1",feet=gear.merlinic_refresh_feet
	}

	-- Idle mode that keeps PDT gear on, but doesn't prevent normal gear swaps for precast/etc.
	
	sets.idle.PDT = 
	{
		main="Malignance Pole",sub="Umbra Strap",ammo="Staunch Tathlum +1",
	        head=BUMBA_HEAD,neck="Loricate Torque +1",ear1="Ethereal Earring",ear2="Etiolation Earring",
	        body=JHAKRI_BODY,hands=gear.merlinic_refresh_hands,ring1="Defending Ring",ring2="Petrov Ring",
	        back="Shadow Mantle",waist="Carrier's Sash",legs="Assid. Pants +1",feet="Mallquis Clogs +2"
	}
	
	sets.idle.MDT = 
	{
		main="Daybreak",sub="Ammurapi Shield",ammo="Staunch Tathlum +1",
		head=BUMBA_HEAD,neck="Warder's Charm +1",ear1="Etiolation Earring",ear2="Ethereal Earring",
		body="Nyame Mail",hands=BUMBA_HANDS,ring1="Defending Ring",ring2="Shadow Ring",
		back="Moonlight Cape",waist="Carrier's Sash",legs=BUMBA_LEGS,feet=BUMBA_FEET
	}
		
	sets.idle.DTHippo = set_combine(sets.idle.PDT, {feet="Hippo. Socks +1"})

	sets.idle.Death = 
	{
		main=gear.grioavolr_nuke_staff,sub="Umbra Strap",ammo="Staunch Tathlum +1",
		head="Befouled Crown",neck="Loricate Torque +1",ear1="Gifted Earring",ear2="Etiolation Earring",
		body=JHAKRI_BODY,hands=gear.merlinic_refresh_hands,ring1="Mephitas's Ring +1",ring2="Mephitas's Ring",
		back="Umbra Cape",waist="Fucho-no-obi",legs="Assid. Pants +1",feet=gear.merlinic_refresh_feet
	}
	
	sets.idle.Weak = 
	{
		main="Bolelabunga",sub="Genmei Shield",ammo="Staunch Tathlum +1",
		head="Befouled Crown",neck="Loricate Torque +1",ear1="Ethereal Earring",ear2="Etiolation Earring",
		body=JHAKRI_BODY,hands=gear.merlinic_refresh_hands,ring1="Defending Ring",ring2="Dark Ring",
		back="Umbra Cape",waist="Carrier's Sash",legs="Assid. Pants +1",feet=gear.merlinic_refresh_feet
	}

-- Defense sets
	
	sets.defense.PDT = 
	{
		main="Malignance Pole",sub="Umbra Strap",ammo="Staunch Tathlum +1",
	        head=BUMBA_HEAD,neck="Loricate Torque +1",ear1="Genmei Earring",ear2="Etiolation Earring",
	        body="Mallquis Saio +2",hands=BUMBA_HANDS,ring1="Defending Ring",ring2="Dark Ring",
	        back="Shadow Mantle",waist="Carrier's Sash",legs=BUMBA_LEGS,feet="Mallquis Clogs +2"
	}

	sets.defense.MDT = 
	{
		main="Daybreak",sub="Ammurapi Shield",ammo="Staunch Tathlum +1",
		head=BUMBA_HEAD,neck="Warder's Charm +1",ear1="Etiolation Earring",ear2="Ethereal Earring",
		body="Nyame Mail",hands=BUMBA_HANDS,ring1="Defending Ring",ring2="Shadow Ring",
		back="Moonlight Cape",waist="Carrier's Sash",legs=BUMBA_LEGS,feet=BUMBA_FEET
	}
	
	sets.defense.MEVA = 
	{
		main="Daybreak",sub="Ammurapi Shield",ammo="Staunch Tathlum +1",
		head=BUMBA_HEAD,neck="Warder's Charm +1",ear1="Etiolation Earring",ear2="Ethereal Earring",
		body="Nyame Mail",hands=BUMBA_HANDS,ring1="Defending Ring",ring2="Shadow Ring",
		back="Moonlight Cape",waist="Carrier's Sash",legs=BUMBA_LEGS,feet=BUMBA_FEET
	}

	sets.Kiting = {ring2="Shneddick Ring +1"}
	sets.latent_refresh = {waist="Fucho-no-obi"}
	sets.latent_refresh_grip = {sub="Oneiros Grip"}
	sets.TPEat = {neck="Chrys. Torque"}
	sets.DayIdle = {feet=gear.merlinic_refresh_feet}
	sets.NightIdle = {}
	
-- Buff sets: Gear that needs to be worn to actively enhance a current player buff.
	
	sets.HPDown = 
	{
		head="Pixie Hairpin +1",ear1="Genmei Earring",ear2="Evans Earring",
		body=JHAKRI_BODY,hands=JHAKRI_HANDS,ring1="Mephitas's Ring +1",ring2="Mephitas's Ring",
		back="Swith Cape +1",legs="Shedir Seraweels",feet=JHAKRI_FEET
	}
		
	sets.HPCure = 
	{
		main=gear.gada_healing_club,sub="Ammurapi Shield",ammo="Hasty Pinion +1",
		head=BUMBA_HEAD,neck="Nodens Gorget",ear1="Etiolation Earring",ear2="Ethereal Earring",
		body="Vrikodara Jupon",hands="Telchine Gloves",ring1="Kunaji Ring",ring2="Meridian Ring",
		back="Tempered Cape +1",waist="Witful Belt",legs="Psycloth Lappas",feet="Vanya Clogs"
	}
	
	sets.buff.Doom = set_combine(sets.buff.Doom, {})
	
	sets.buff['Mana Wall'] = {back=AMBUNUKE_BACK,feet=EMPY_FEET}
	
    -- Engaged sets

    -- Variations for TP weapon and (optional) offense/defense modes.  Code will fall back on previous
    -- sets if more refined versions aren't defined.
    -- If you create a set with both offense and defense modes, the offense mode should be first.
    -- EG: sets.engaged.Dagger.Accuracy.Evasion
    
    -- Normal melee group
	
	sets.engaged = 
	{
		ammo="Amar Cluster",
		head=BUMBA_HEAD,
		--neck="Combatant's Torque",
		neck="Null Loop",
		ear1="Telos Earring",
		ear2="Crep. Earring",
		body=BUMBA_BODY,
		hands=BUMBA_HANDS,
		ring1=ChirichRing_Ring1,
		ring2=ChirichRing_Ring2,
		back=AMBUSTP_BACK,
		waist="Olseni Belt",
		legs=BUMBA_LEGS,
		feet=BUMBA_FEET
	}
	
	sets.engaged.DT = 
	{
		ammo="Amar Cluster",
		head=BUMBA_HEAD,
		--neck="Combatant's Torque",
		neck="Null Loop",
		ear1="Telos Earring",
		ear2="Crep. Earring",
		body=BUMBA_BODY,
		hands=BUMBA_HANDS,
		ring1=ChirichRing_Ring1,
		ring2=ChirichRing_Ring2,
		back=AMBUSTP_BACK,
		waist="Olseni Belt",
		legs=BUMBA_LEGS,
		feet=BUMBA_FEET
	}

	--Situational sets: Gear that is equipped on certain targets
	
	sets.Self_Healing = {neck="Phalaina Locket",ring1="Kunaji Ring",ring2="Asklepian Ring",waist="Gishdubar Sash"}
	sets.Cure_Received = set_combine(sets.Cure_Received, {})
	sets.Self_Refresh = {back="Grapevine Cape",waist="Gishdubar Sash",feet="Inspirited Boots"}
		
end

--Lockstyle of Aern Daggers
function user_job_lockstyle()
	windower.chat.input('/lockstyleset 022')
end

-- Select default macro book on initial load or subjob change.
function select_default_macro_book()
    set_macro_page(1, 21)
end
