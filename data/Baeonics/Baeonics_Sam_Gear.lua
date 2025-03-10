-- Setup vars that are user-dependent.
function user_job_setup()
	state.OffenseMode:options('Normal','SomeAcc','Acc','FullAcc','MaxAcc','Fodder')
	state.HybridMode:options('Normal','DTLite','PDT')
	state.WeaponskillMode:options('Match','Normal','SomeAcc','Acc','FullAcc','Fodder','Proc')
	state.RangedMode:options('Normal', 'Acc')
	state.PhysicalDefenseMode:options('PDT')
	state.MagicalDefenseMode:options('MDT')
	state.ResistDefenseMode:options('MEVA')
	state.IdleMode:options('Normal')
	state.Weapons:options('Masamune','Kusanagi','ShiningOne','Norifusa','Dojikiri','GK1','Staff','ProcWeapon','Bow')

	autowstp = 1250

--Artifact Gear
	AF_HEAD 	= {name="Wakido Kabuto +3"}
	AF_BODY 	= {name="Wakido Domaru +3"}
	AF_HANDS 	= {name="Wakido Kote +3"}
	AF_LEGS 	= {name="Wakido Haidate +3"}
	AF_FEET 	= {name="Wakido Sune-Ate +3"}

--Relic Gear
	RELIC_HEAD 	= {name="Sakonji Kabuto +3"}
   	RELIC_BODY 	= {name=RELIC_BODY}
	RELIC_HANDS 	= {name="Sakonji Kote +3"}
	RELIC_LEGS 	= {name="Sakonji Haidate +3"}
	RELIC_FEET 	= {name="Sak. Sune-Ate +3"}

--Empyrean Gear
	EMPY_HEAD 	= {name="Kasuga Kabuto +3"}
	EMPY_BODY 	= {name="Kasuga Domaru +3"}
	EMPY_HANDS 	= {name="Kasuga Kote +3"}
	EMPY_LEGS 	= {name="Kasuga Haidate +3"}
	EMPY_FEET 	= {name="Kas. Sune-Ate +3"}

--EMPY EAR
	EMPY_EAR 	= {name="Kasuga Earring +1"}

--DYNA NECK
	JSE_NECK 	= {name="Sam. Nodowa +2"}

--ACC and SB Rings...
	CHIRING_1 	= {name = "Chirich Ring +1", bag = "wardrobe2"}
	CHIRING_2 	= {name = "Chirich Ring +1", bag = "wardrobe3"}

	MOONLIGHTRING_1	= {name = "Moonlight Ring", bag = "wardrobe2"}
	MOONLIGHTRING_2	= {name = "Moonlight Ring", bag = "wardrobe3"}

	RAMUHRING_1	= {name = "Ramuh Ring +1", bag = "wardrobe2"}
	RAMUHRING_2	= {name = "Ramuh Ring +1", bag = "wardrobe3"}

--NOLAN AUGMENTS
	RYUO_A = {name="Ryuo Tekko +1", augments={'STR+12','DEX+12','Accuracy+20',}}
	RYUO_B = {name="Ryuo Sune-Ate +1", augments={'HP+65','Accuracy+20','Attack+20',}}
	RYUO_C = {name="Ryuo Sune-Ate +1", augments={'HP+65','"Store TP"+5','"Subtle Blow"+8',}}

--Back Gear	
	AMBUWS_BACK = {name="Smertrios's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}}
	AMBUSTP_BACK = {name="Smertrios's Mantle",augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10','Damage taken-5%',}}

	JSESTP_BACK = {name="Takaha Mantle", augments={'STR+2','"Zanshin"+5','"Store TP"+3',}}
	
-- Additional local binds
	send_command('bind ^` input /ja "Hasso" <me>')
	send_command('bind !` input /ja "Seigan" <me>')
	send_command('bind !backspace input /ja "Third Eye" <me>')
	send_command('bind @` gs c cycle SkillchainMode')
	send_command('bind !@^` gs c cycle Stance')
	send_command('bind !r gs c set skipprocweapons false;gs c weapons ProcWeapon;gs c set WeaponskillMode Proc;gs c update')
	send_command('bind ^r gs c set skipprocweapons true;gs c weapons Default;gs c set WeaponskillMode Normal;gs c update')
	send_command('bind ^q gs c weapons Bow;gs c update')
	
	select_default_macro_book()
end

-- Define sets and vars used by this job file.
function init_gear_sets()
--------------------------------------
-- Start defining the sets
--------------------------------------

-- Precast Sets
-- Precast sets to enhance JAs
	sets.precast.JA.Meditate = 
	{
		head=AF_HEAD,
		hands=RELIC_HANDS,
		back=AMBUWS_BACK
	}
	sets.precast.JA['Warding Circle'] = {head=AF_HEAD}
	sets.precast.JA['Blade Bash'] = {hands=RELIC_HANDS}
	sets.precast.JA['Sekkanoki'] = {hands=EMPY_HANDS}
	sets.precast.JA['Sengikori'] = {feet=EMPY_FEET}
	
	sets.precast.Step = 
	{
		head=FLAMMA_HEAD,
		neck="Moonlight Nodowa",
		ear1="Mache Earring +1",
		ear2="Telos Earring",
	        body=RELIC_BODY,
		hands=FLAMMA_HANDS,
		ring1=RAMUHRING_1,
		ring2=RAMUHRING_2,
	        back=AMBUSTP_BACK,
		waist="Olseni Belt",
		legs=AF_LEGS,
		feet=AF_FEET
	}
	sets.precast.JA['Violent Flourish'] = 
	{
		ammo="Pemphredo Tathlum",
	        head=FLAMMA_HEAD,
		neck="Sanctity Necklace",
		ear1="Digni. Earring",
		ear2="Moonshade Earring",
	        body=FLAMMA_BODY,
		hands=FLAMMA_HANDS,
		ring1=RAMUHRING_1,
		ring2=RAMUHRING_2,
	        back=AMBUWS_BACK,
		waist="Eschan Stone",
		legs=FLAMMA_LEGS,
		feet=FLAMMA_FEET
	}

-- Waltz set (chr and vit)
	
	sets.precast.Waltz = 
	{
		head=FLAMMA_HEAD,
		neck="Unmoving Collar +1",
		ear1="Handler's Earring +1",
		ear2="Handler's Earring",
	        body="Tartarus Platemail",
		hands=FLAMMA_HANDS,
		ring1="Asklepian Ring",
		ring2="Valseur's Ring",
	        back="Moonlight Cape",
		waist="Chaac Belt",
		legs=AF_LEGS,
		feet=RELIC_FEET
	}
        
-- Don't need any special gear for Healing Waltz.
	
	sets.precast.Waltz['Healing Waltz'] = {}

-- Fast cast sets for spells
	sets.precast.FC = 
	{
		neck="Voltsurge Torque",
		ear1="Enchntr. Earring +1",
		ear2="Loquac. Earring",
		hands="Leyline Gloves",
		body="Sacro Breastplate",
		ring1="Lebeche Ring",
		ring2="Prolix Ring"
	}
	   
-- Ranged snapshot gear
	sets.precast.RA = {}
	   
-- Weaponskill sets
-- Default set for any weaponskill that isn't any more specifically defined
    
	sets.precast.WS = 
	{
		ammo="Knobkierrie",
	        head=VALOROUS_WSD_HEAD,
		neck="Fotia Gorget",
		ear1="Thrud Earring",
		ear2="Moonshade Earring",
	        body=RELIC_BODY,
		hands=EMPY_HANDS,
		ring1="Niqmaddu Ring",
		ring2="Regal Ring",
	        back=AMBUWS_BACK,
		waist="Fotia Belt",
		legs=AF_LEGS,
		feet=VALOROUS_WSD_FEET
	}
    	sets.precast.WS.SomeAcc = set_combine(sets.precast.WS, {feet=AF_FEET})
	sets.precast.WS.Acc = set_combine(sets.precast.WS, {head=AF_HEAD,body=RELIC_BODY,feet=AF_FEET})
	sets.precast.WS.FullAcc = set_combine(sets.precast.WS, {head=AF_HEAD,neck="Moonlight Nodowa",ear1="Mache Earring +1",ear2="Telos Earring",body=RELIC_BODY,hands=AF_HANDS,ring1=RAMUHRING_1,feet=AF_FEET})
	sets.precast.WS.Fodder = set_combine(sets.precast.WS, {})
	
	sets.precast.WS.Proc = 
	{
		ammo="Hasty Pinion +1",
	        head=FLAMMA_HEAD,
		neck="Moonlight Nodowa",
		ear1="Mache Earring +1",
		ear2="Telos Earring",
	        body="Tartarus Platemail",
		hands=FLAMMA_HANDS,
		ring1=RAMUHRING_1,
		ring2=RAMUHRING_2,
	        back=AMBUSTP_BACK,
		waist="Olseni Belt",
		legs=AF_LEGS,
		feet=FLAMMA_FEET
	}
	
    -- Specific weaponskill sets.  Uses the base set if an appropriate WSMod version isn't found.
	sets.precast.WS['Tachi: Fudo'] = set_combine(sets.precast.WS, {})
    	sets.precast.WS['Tachi: Fudo'].SomeAcc = set_combine(sets.precast.WS.SomeAcc, {})
    	sets.precast.WS['Tachi: Fudo'].Acc = set_combine(sets.precast.WS.Acc, {})
    	sets.precast.WS['Tachi: Fudo'].FullAcc = set_combine(sets.precast.WS.FullAcc, {})
    	sets.precast.WS['Tachi: Fudo'].Fodder = set_combine(sets.precast.WS.Fodder, {})
	
    	sets.precast.WS['Tachi: Shoha'] = set_combine(sets.precast.WS, {})
    	sets.precast.WS['Tachi: Shoha'].SomeAcc = set_combine(sets.precast.WS.SomeAcc, {})
    	sets.precast.WS['Tachi: Shoha'].Acc = set_combine(sets.precast.WS.Acc, {})
    	sets.precast.WS['Tachi: Shoha'].FullAcc = set_combine(sets.precast.WS.FullAcc, {})
    	sets.precast.WS['Tachi: Shoha'].Fodder = set_combine(sets.precast.WS.Fodder, {})

    	sets.precast.WS['Tachi: Rana'] = set_combine(sets.precast.WS, {})
    	sets.precast.WS['Tachi: Rana'].SomeAcc = set_combine(sets.precast.WS.SomeAcc, {})
    	sets.precast.WS['Tachi: Rana'].Acc = set_combine(sets.precast.WS.Acc, {})
    	sets.precast.WS['Tachi: Rana'].FullAcc = set_combine(sets.precast.WS.FullAcc, {})
    	sets.precast.WS['Tachi: Rana'].Fodder = set_combine(sets.precast.WS.Fodder, {})

    	sets.precast.WS['Tachi: Kasha'] = set_combine(sets.precast.WS, {})
    	sets.precast.WS['Tachi: Kasha'].SomeAcc = set_combine(sets.precast.WS.SomeAcc, {})
    	sets.precast.WS['Tachi: Kasha'].Acc = set_combine(sets.precast.WS.Acc, {})
    	sets.precast.WS['Tachi: Kasha'].FullAcc = set_combine(sets.precast.WS.FullAcc, {})
    	sets.precast.WS['Tachi: Kasha'].Fodder = set_combine(sets.precast.WS.Fodder, {})

    	sets.precast.WS['Tachi: Gekko'] = set_combine(sets.precast.WS, {})
    	sets.precast.WS['Tachi: Gekko'].SomeAcc = set_combine(sets.precast.WS.SomeAcc, {})
    	sets.precast.WS['Tachi: Gekko'].Acc = set_combine(sets.precast.WS.Acc, {})
    	sets.precast.WS['Tachi: Gekko'].FullAcc = set_combine(sets.precast.WS.FullAcc, {})
    	sets.precast.WS['Tachi: Gekko'].Fodder = set_combine(sets.precast.WS.Fodder, {})

    	sets.precast.WS['Tachi: Yukikaze'] = set_combine(sets.precast.WS, {})
    	sets.precast.WS['Tachi: Yukikaze'].SomeAcc = set_combine(sets.precast.WS.SomeAcc, {})
    	sets.precast.WS['Tachi: Yukikaze'].Acc = set_combine(sets.precast.WS.Acc, {})
	sets.precast.WS['Tachi: Yukikaze'].FullAcc = set_combine(sets.precast.WS.FullAcc, {})
    	sets.precast.WS['Tachi: Yukikaze'].Fodder = set_combine(sets.precast.WS.Fodder, {})

    	sets.precast.WS['Tachi: Ageha'] = 
	{
		ammo="Pemphredo Tathlum",
		head=FLAMMA_HEAD,
		neck="Sanctity Necklace",
		ear1="Digni. Earring",
		ear2="Moonshade Earring",
		body=FLAMMA_BODY,
		hands=FLAMMA_HANDS,
		ring1=RAMUHRING_1,
		ring2=RAMUHRING_2,
		back=AMBUWS_BACK,
		waist="Eschan Stone",
		legs=FLAMMA_LEGS,
		feet=FLAMMA_FEET
	}
		
    	sets.precast.WS['Tachi: Hobaku'] = 
	{
		ammo="Pemphredo Tathlum",
	        head=FLAMMA_HEAD,
		neck="Sanctity Necklace",
		ear1="Digni. Earring",
		ear2="Moonshade Earring",
	        body=FLAMMA_BODY,
		hands=FLAMMA_HANDS,
		ring1=RAMUHRING_1,
		ring2=RAMUHRING_2,
	        back=AMBUWS_BACK,
		waist="Eschan Stone",
		legs=FLAMMA_LEGS,
		feet=FLAMMA_FEET
	}
		
    	sets.precast.WS['Tachi: Jinpu'] = 
	{
		ammo="Knobkierrie",
	        head=gear.valorous_magical_wsd_head,
		neck="Fotia Gorget",
		ear1="Friomisi Earring",
		ear2="Moonshade Earring",
	        body="Sacro Breastplate",
		hands="Founder's Gauntlets",
		ring1="Niqmaddu Ring",
		ring2="Regal Ring",
	        back=AMBUWS_BACK,
		waist="Eschan Stone",
		legs=AF_LEGS,
		feet="Founder's Greaves"
	}

    	sets.precast.WS['Apex Arrow'] = 
	{
	        head="Ynglinga Sallet",
		neck="Fotia Gorget",
		ear1="Clearview Earring",
		ear2="Moonshade Earring",
	        body="Kyujutsugi",
		hands="Buremte Gloves",
		ring1="Ilabrat Ring",
		ring2="Regal Ring",
	        back=AMBUWS_BACK,
		waist="Fotia Belt",
		legs=AF_LEGS,feet=AF_FEET
	}
			
    	sets.precast.WS['Apex Arrow'].SomeAcc = set_combine(sets.precast.WS['Apex Arrow'], {})
    	sets.precast.WS['Apex Arrow'].Acc = set_combine(sets.precast.WS['Apex Arrow'], {})
    	sets.precast.WS['Apex Arrow'].FullAcc = set_combine(sets.precast.WS['Apex Arrow'], {})
    	sets.precast.WS['Apex Arrow'].Fodder = set_combine(sets.precast.WS['Apex Arrow'], {})

-- Swap to these on Moonshade using WS if at 3000 TP
	sets.MaxTP = {ear1="Thrud Earring",ear2="Lugra Earring +1",}
	sets.AccMaxTP = {ear1="Mache Earring +1",ear2="Telos Earring"}
	sets.AccDayMaxTPWSEars = {ear1="Mache Earring +1",ear2="Telos Earring"}
	sets.DayMaxTPWSEars = {ear1="Thrud Earring",ear2="Brutal Earring",}
	sets.AccDayWSEars = {ear1="Mache Earring +1",ear2="Telos Earring"}
	sets.DayWSEars = {ear1="Thrud Earring",ear2="Moonshade Earring",}
	
-- Midcast Sets
    	sets.midcast.FastRecast = 
	{
	        head="Loess Barbuta +1",
		neck="Voltsurge Torque",
		ear1="Enchntr. Earring +1",
		ear2="Loquac. Earring",
	        body="Tartarus Platemail",
		hands="Leyline Gloves",
		ring1="Defending Ring",
		ring2="Prolix Ring",
	        back="Moonlight Cape",
		waist="Tempus Fugit",
		legs=AF_LEGS,
		feet="Amm Greaves"
	}
		
-- Specific spells
    	sets.midcast.Utsusemi = set_combine(sets.midcast.FastRecast, {back="Mujin Mantle"})
	
		
-- Ranged gear
    	sets.midcast.RA = 
	{
	        head=FLAMMA_HEAD,neck="Combatant's Torque",ear1="Clearview Earring",ear2="Neritic Earring",
	        body="Kyujutsugi",hands="Buremte Gloves",ring1="Ilabrat Ring",ring2="Regal Ring",
	        back=AMBUSTP_BACK,waist="Carrier's Sash",legs=AF_LEGS,feet=AF_FEET
	}

    	sets.midcast.RA.Acc = 
	{
	        head=FLAMMA_HEAD,neck="Combatant's Torque",ear1="Clearview Earring",ear2="Neritic Earring",
	        body="Kyujutsugi",hands="Buremte Gloves",ring1="Ilabrat Ring",ring2="Regal Ring",
	        back=AMBUSTP_BACK,waist="Carrier's Sash",legs=AF_LEGS,feet=AF_FEET
	}

    
-- Sets to return to when not performing an action.
    
-- Resting sets
    	sets.resting = 
	{
		ammo="Staunch Tathlum +1",
	        head=VALOROUS_WSD_HEAD,
		neck="Loricate Torque +1",
		ear1="Etiolation Earring",
		ear2="Sanare Earring",
	        body="Sacro Breastplate",
		hands=RELIC_HANDS,
		ring1="Defending Ring",
		ring2="Dark Ring",
	        back="Moonlight Cape",
		waist="Flume Belt +1",
		legs=AF_LEGS,
		feet=FLAMMA_FEET
	}
    

-- Idle sets (default idle set not needed since the other three are defined, but leaving for testing purposes)
	
	sets.Kiting = {ring2="Shneddick Ring +1"}
	sets.Reraise = {head="Twilight Helm",body="Twilight Mail"}
	sets.TreasureHunter = set_combine(sets.TreasureHunter, {})
	sets.Skillchain = {}
	
    	sets.idle = 
	{
		ammo="Staunch Tathlum +1",
		head=AF_HEAD,
		neck="Bathy Choker +1",
		ear1="Odnowa Earring +1",
		ear2="Infused Earring",
		body="Sacro Breastplate",
		hands="Rao Kote +1",
		ring1="Chirich Ring +1",
		ring2="Warden's Ring",
		--back="Moonlight Cape",
		waist="Flume Belt +1",
		legs="Rao Haidate +1",
		feet="Rao Sune-Ate +1"
	}
		
    	sets.idle.Weak = 
	{
		ammo="Staunch Tathlum +1",
		--head="Twilight Helm",
		neck="Loricate Torque +1",
		ear1="Etiolation Earring",
		--ear2="Sanare Earring",
		--body="Twilight Mail",
		hands=RELIC_HANDS,
		ring1="Defending Ring",
		--ring2="Dark Ring",
		--back="Moonlight Cape",
		waist="Flume Belt +1",
		legs=FLAMMA_LEGS,
		feet=BUMBA_FEET
	}
		
	sets.DayIdle = {}
	sets.NightIdle = {}
    
    -- Defense sets
    	sets.defense.PDT = 
	{
		ammo="Staunch Tathlum +1",
	        head=BUMBA_HEAD,
		neck="Loricate Torque +1",
		ear1="Etiolation Earring",
		ear2="Sanare Earring",
	        body=BUMBA_BODY,
		hands=AF_HANDS,
		ring1="Defending Ring",
		ring2="Patricius Ring",
	        back="Moonlight Cape",
		waist="Ioskeha Belt",
		legs=AF_LEGS,
		feet=BUMBA_FEET
	}

    	sets.defense.MDT = 
	{
		ammo="Staunch Tathlum +1",
	        head=BUMBA_HEAD,
		neck="Warder's Charm +1",
		ear1="Etiolation Earring",
		ear2="Sanare Earring",
	        body=BUMBA_BODY,
		hands=BUMBA_HANDS,
		ring1="Defending Ring",
		ring2="Shadow Ring",
	        back="Moonlight Cape",
		waist="Carrier's Sash",
		legs=BUMBA_LEGS,
		feet=BUMBA_FEET
	}
		
    	sets.defense.MEVA = 
	{
		ammo="Staunch Tathlum +1",
	        head=BUMBA_HEAD,
		neck="Warder's Charm +1",
		ear1="Etiolation Earring",
		ear2="Sanare Earring",
	        body=BUMBA_BODY,
		hands=BUMBA_HANDS,
		ring1="Defending Ring",
		ring2="Shadow Ring",
	        back="Moonlight Cape",
		waist="Carrier's Sash",
		legs=BUMBA_LEGS,
		feet=BUMBA_FEET
	}

-- Engaged sets

-- Variations for TP weapon and (optional) offense/defense modes.  Code will fall back on previous
-- sets if more refined versions aren't defined.
-- If you create a set with both offense and defense modes, the offense mode should be first.
-- EG: sets.engaged.Dagger.Accuracy.Evasion
    
-- Normal melee group
-- Delay 450 GK, 25 Save TP => 65 Store TP for a 5-hit (25 Store TP in gear)
    	sets.engaged = 
	{
		ammo="Aurgelmir Orb +1",
	        head=EMPY_HEAD,
		neck="Moonlight Nodowa",
		ear1="Dedition Earring",
		--ear2="Brutal Earring",
		ear2=EMPY_EAR,
	        body=EMPY_BODY,
		hands="Tatena. Gote +1",
		ring1="Niqmaddu Ring",
		ring2=CHIRING_2,
	        back=JSESTP_BACK,
		waist="Sweordfaetels +1",
		legs=EMPY_LEGS,
		feet=RYUO_C
	}
	
    	sets.engaged.SomeAcc = 
	{
		ammo="Coiste Bodhar",
	        head=EMPY_HEAD,
		neck=JSE_NECK,
		ear1="Schere Earringg",
		--ear2="Brutal Earring",
		ear2=EMPY_EAR,
	        body=EMPY_BODY,
		hands="Tatena. Gote +1",
		ring1="Niqmaddu Ring",
		ring2=CHIRING_2,
	        back=AMBUSTP_BACK,
		waist="Sweordfaetels +1",
		legs=EMPY_LEGS,
		feet=RYUO_A
	}
	
    	sets.engaged.Acc = 
	{
		ammo="Coiste Bodhar",
	        head=EMPY_HEAD,
		neck=JSE_NECK,
		ear1="Schere Earringg",
		--ear2="Brutal Earring",
		ear2=EMPY_EAR,
	        body=EMPY_BODY,
		hands="Tatena. Gote +1",
		ring1="Niqmaddu Ring",
		ring2=CHIRING_2,
	        back=AMBUSTP_BACK,
		waist="Ioskeha Belt +1",
		legs=EMPY_LEGS,
		feet="Tatena. Sune. +1"
	}
	
    	sets.engaged.FullAcc = 
	{
		ammo="Coiste Bodhar",
	        head=EMPY_HEAD,
		neck=JSE_NECK,
		ear1="Schere Earringg",
		--ear2="Brutal Earring",
		ear2=EMPY_EAR,
	        body=EMPY_BODY,
		hands=AF_HANDS,
		ring1="Niqmaddu Ring",
		ring2=CHIRING_2,
	        back=AMBUSTP_BACK,
		waist="Ioskeha Belt +1",
		legs=EMPY_LEGS,
		feet="Tatena. Sune. +1"
	}

	sets.engaged.MaxAcc = 
	{
		ammo="Amar Cluster",
	        head=EMPY_HEAD,
		neck=JSE_NECK,
		ear1="Schere Earringg",
		--ear2="Brutal Earring",
		ear2=EMPY_EAR,
	        body=EMPY_BODY,
		hands=AF_HANDS,
		ring1="Niqmaddu Ring",
		ring2=CHIRING_2,
	        back=AMBUSTP_BACK,
		waist="Ioskeha Belt +1",
		legs=EMPY_LEGS,
		feet=EMPY_FEET
	}
	
    	sets.engaged.Fodder = 
	{
		ammo="Aurgelmir Orb +1",
	        head=FLAMMA_HEAD,neck="Moonlight Nodowa",ear1="Dedition Earring",ear2="Brutal Earring",
	        body=EMPY_BODY,hands="Tatena. Gote +1",ring1="Niqmaddu Ring",ring2=CHIRING_2,
	        back=AMBUSTP_BACK,waist="Ioskeha Belt",legs="Ryuo Hakama",feet=FLAMMA_FEET
	}
    	sets.engaged.PDT = 
	{
		ammo="Staunch Tathlum +1",
	        head=BUMBA_HEAD,neck="Loricate Torque +1",ear1="Etiolation Earring",ear2="Sanare Earring",
	        body=BUMBA_BODY,hands=AF_HANDS,ring1="Defending Ring",ring2="Patricius Ring",
	        back="Moonlight Cape",waist="Ioskeha Belt",legs=AF_LEGS,feet=BUMBA_FEET
	}
    	sets.engaged.SomeAcc.PDT = 
	{
		ammo="Staunch Tathlum +1",
	        head=BUMBA_HEAD,neck="Loricate Torque +1",ear1="Etiolation Earring",ear2="Sanare Earring",
	        body=BUMBA_BODY,hands=AF_HANDS,ring1="Defending Ring",ring2="Patricius Ring",
	        back="Moonlight Cape",waist="Ioskeha Belt",legs=AF_LEGS,feet=BUMBA_FEET
	}
    	sets.engaged.Acc.PDT = 
	{
		ammo="Staunch Tathlum +1",
	        head=BUMBA_HEAD,neck="Loricate Torque +1",ear1="Etiolation Earring",ear2="Sanare Earring",
	        body=BUMBA_BODY,hands=AF_HANDS,ring1="Defending Ring",ring2="Patricius Ring",
	        back="Moonlight Cape",waist="Ioskeha Belt",legs=AF_LEGS,feet=BUMBA_FEET
	}
    	sets.engaged.FullAcc.PDT = 
	{
		ammo="Staunch Tathlum +1",
	        head=BUMBA_HEAD,neck="Loricate Torque +1",ear1="Etiolation Earring",ear2="Sanare Earring",
	        body=BUMBA_BODY,hands=AF_HANDS,ring1="Defending Ring",ring2="Patricius Ring",
	        back="Moonlight Cape",waist="Ioskeha Belt",legs=AF_LEGS,feet=BUMBA_FEET
	}
    	sets.engaged.Fodder.PDT = 
	{
		ammo="Staunch Tathlum +1",
	        head=BUMBA_HEAD,neck="Loricate Torque +1",ear1="Etiolation Earring",ear2="Sanare Earring",
	        body=BUMBA_BODY,hands=AF_HANDS,ring1="Defending Ring",ring2="Patricius Ring",
	        back="Moonlight Cape",waist="Ioskeha Belt",legs=AF_LEGS,feet=BUMBA_FEET
	}
	sets.engaged.DTLite = 
	{
		ammo="Staunch Tathlum +1",
	        head=BUMBA_HEAD,neck="Loricate Torque +1",ear1="Etiolation Earring",ear2="Sanare Earring",
	        body=BUMBA_BODY,hands=AF_HANDS,ring1="Defending Ring",ring2="Patricius Ring",
	        back="Moonlight Cape",waist="Ioskeha Belt",legs=AF_LEGS,feet=BUMBA_FEET
	}
    	sets.engaged.SomeAcc.DTLite = 
	{
		ammo="Staunch Tathlum +1",
	        head=BUMBA_HEAD,neck="Loricate Torque +1",ear1="Etiolation Earring",ear2="Sanare Earring",
	        body=BUMBA_BODY,hands=AF_HANDS,ring1="Defending Ring",ring2="Patricius Ring",
	        back="Moonlight Cape",waist="Ioskeha Belt",legs=AF_LEGS,feet=BUMBA_FEET
	}
    	sets.engaged.Acc.DTLite = 
	{
		ammo="Staunch Tathlum +1",
	        head=BUMBA_HEAD,neck="Loricate Torque +1",ear1="Etiolation Earring",ear2="Sanare Earring",
	        body=BUMBA_BODY,hands=AF_HANDS,ring1="Defending Ring",ring2="Patricius Ring",
	        back="Moonlight Cape",waist="Ioskeha Belt",legs=AF_LEGS,feet=BUMBA_FEET
	}
    	sets.engaged.FullAcc.DTLite = 
	{
		ammo="Staunch Tathlum +1",
	        head=BUMBA_HEAD,neck="Loricate Torque +1",ear1="Etiolation Earring",ear2="Sanare Earring",
	        body=BUMBA_BODY,hands=AF_HANDS,ring1="Defending Ring",ring2="Patricius Ring",
	        back="Moonlight Cape",waist="Ioskeha Belt",legs=AF_LEGS,feet=BUMBA_FEET
	}
    	sets.engaged.Fodder.DTLite = 
	{
		ammo="Staunch Tathlum +1",
	        head=BUMBA_HEAD,neck="Loricate Torque +1",ear1="Etiolation Earring",ear2="Sanare Earring",
	        body=BUMBA_BODY,hands=AF_HANDS,ring1="Defending Ring",ring2="Patricius Ring",
	        back="Moonlight Cape",waist="Ioskeha Belt",legs=AF_LEGS,feet=BUMBA_FEET
	}
        
    -- Melee sets for in Adoulin, which has an extra 10 Save TP for weaponskills.
    -- Delay 450 GK, 35 Save TP => 89 Store TP for a 4-hit (49 Store TP in gear), 2 Store TP for a 5-hit
--[[Right now Adoulin sets are the same as non-Adoulin.
	sets.engaged.Adoulin = {ammo="Aurgelmir Orb +1",
        head=FLAMMA_HEAD,neck="Moonlight Nodowa",ear1="Cessance Earring",ear2="Brutal Earring",
        body=EMPY_BODY,hands=EMPY_HANDS,ring1="Niqmaddu Ring",ring2="Ilabrat Ring",
        back=AMBUSTP_BACK,waist="Ioskeha Belt",legs=AF_LEGS,feet=FLAMMA_FEET}
    	sets.engaged.Adoulin.SomeAcc = {ammo="Aurgelmir Orb +1",
        head=FLAMMA_HEAD,neck="Combatant's Torque",ear1="Cessance Earring",ear2="Brutal Earring",
        body=EMPY_BODY,hands=FLAMMA_HANDS,ring1="Niqmaddu Ring",ring2="Ilabrat Ring",
        back=AMBUSTP_BACK,waist="Windbuffet Belt +1",legs=AF_LEGS,feet="Amm Greaves"}
	sets.engaged.Adoulin.Acc = {ammo="Aurgelmir Orb +1",
        head=FLAMMA_HEAD,neck="Combatant's Torque",ear1="Mache Earring +1",ear2="Telos Earring",
        body=EMPY_BODY,hands=FLAMMA_HANDS,ring1="Niqmaddu Ring",ring2="Ilabrat Ring",
        back=AMBUSTP_BACK,waist="Olseni Belt",legs=AF_LEGS,feet="Amm Greaves"}
    	sets.engaged.Adoulin.FullAcc = {ammo="Aurgelmir Orb +1",
        head=FLAMMA_HEAD,neck="Combatant's Torque",ear1="Mache Earring +1",ear2="Telos Earring",
        body=EMPY_BODY,hands=FLAMMA_HANDS,ring1=RAMUHRING_1,ring2=RAMUHRING_2,
        back=AMBUSTP_BACK,waist="Olseni Belt",legs=AF_LEGS,feet=FLAMMA_FEET}
    	sets.engaged.Adoulin.Fodder = {ammo="Aurgelmir Orb +1",
        head=FLAMMA_HEAD,neck="Asperity Necklace",ear1="Cessance Earring",ear2="Brutal Earring",
        body=EMPY_BODY,hands=FLAMMA_HANDS,ring1="Niqmaddu Ring",ring2="Ilabrat Ring",
        back=AMBUSTP_BACK,waist="Windbuffet Belt +1",legs=AF_LEGS,feet=FLAMMA_FEET}
    	sets.engaged.Adoulin.PDT = {ammo="Staunch Tathlum +1",
        head=FLAMMA_HEAD,neck="Loricate Torque +1",ear1="Cessance Earring",ear2="Brutal Earring",
        body="Tartarus Platemail",hands=EMPY_HANDS,ring1="Defending Ring",ring2="Dark Ring",
        back="Moonlight Cape",waist="Flume Belt +1",legs=AF_LEGS,feet="Amm Greaves"}
    	sets.engaged.Adoulin.SomeAcc.PDT = {ammo="Staunch Tathlum +1",
        head=FLAMMA_HEAD,neck="Loricate Torque +1",ear1="Cessance Earring",ear2="Brutal Earring",
        body="Tartarus Platemail",hands=EMPY_HANDS,ring1="Defending Ring",ring2="Patricius Ring",
        back="Moonlight Cape",waist="Flume Belt +1",legs=AF_LEGS,feet="Amm Greaves"}	
		sets.engaged.Adoulin.Acc.PDT = {ammo="Staunch Tathlum +1",
        head=FLAMMA_HEAD,neck="Loricate Torque +1",ear1="Cessance Earring",ear2="Brutal Earring",
        body="Tartarus Platemail",hands=EMPY_HANDS,ring1="Defending Ring",ring2="Patricius Ring",
        back="Moonlight Cape",waist="Olseni Belt",legs=AF_LEGS,feet="Amm Greaves"}
    	sets.engaged.Adoulin.FullAcc.PDT = {ammo="Staunch Tathlum +1",
        head=FLAMMA_HEAD,neck="Loricate Torque +1",ear1="Mache Earring +1",ear2="Telos Earring",
        body="Tartarus Platemail",hands=EMPY_HANDS,ring1="Defending Ring",ring2="Patricius Ring",
        back="Letalis Mantle",waist="Olseni Belt",legs=AF_LEGS,feet="Amm Greaves"}
    	sets.engaged.Adoulin.Fodder.PDT = {ammo="Staunch Tathlum +1",
        head=FLAMMA_HEAD,neck="Loricate Torque +1",ear1="Cessance Earring",ear2="Brutal Earring",
        body="Tartarus Platemail",hands=EMPY_HANDS,ring1="Defending Ring",ring2="Dark Ring",
        back="Moonlight Cape",waist="Flume Belt +1",legs=AF_LEGS,feet="Amm Greaves"}
		
	sets.engaged.Adoulin.DTLite = sets.engaged.DTLite
    	sets.engaged.Adoulin.SomeAcc.DTLite = sets.engaged.SomeAcc.DTLite
    	sets.engaged.Adoulin.Acc.DTLite = sets.engaged.Acc.DTLite
    	sets.engaged.Adoulin.FullAcc.DTLite = sets.engaged.FullAcc.DTLite
    	sets.engaged.Adoulin.Fodder.DTLite = sets.engaged.Fodder.DTLite
    	sets.engaged.Adoulin.Reraise = set_combine(sets.engaged.Adoulin, sets.Reraise)		
    	sets.engaged.Adoulin.SomeAcc.Reraise = set_combine(sets.engaged.Adoulin.SomeAcc, sets.Reraise)		
    	sets.engaged.Adoulin.Acc.Reraise = set_combine(sets.engaged.Adoulin.Acc, sets.Reraise)		
    	sets.engaged.Adoulin.FullAcc.Reraise = set_combine(sets.engaged.Adoulin.FullAcc, sets.Reraise)		
    	sets.engaged.Adoulin.Fodder.Reraise = set_combine(sets.engaged.Adoulin.Fodder, sets.Reraise)
]]--Right now Adoulin sets are the same as non-Adoulin.

	-- Weapons sets
	sets.weapons.Masamune = {main="Masamune",sub="Utu Grip"}
	sets.weapons.ShiningOne = {main="Shining One",sub="Utu Grip"}
	sets.weapons.GK1 = {main="Zanmato +1",sub="Utu Grip"}
	sets.weapons.Kusanagi = {main="Kusanagi",sub="Utu Grip"}
	sets.weapons.Dojikiri = {main="Dojikiri Yasutsuna",sub="Utu Grip"}
	sets.weapons.Norifusa = {main="Norifusa +1",sub="Utu Grip"}
	sets.weapons.Staff = {main="Gozuki Mezuki",sub="Niobid Strap"}
	sets.weapons.ProcWeapon = {main="Norifusa +1",sub="Bloodrain Strap"}
	sets.weapons.Bow = {main="Norifusa +1",sub="Utu Grip",range="Cibitshavore",ammo="Eminent Arrow"}
	
	-- Buff sets
	sets.Cure_Received = {hands="Buremte Gloves",waist="Gishdubar Sash",legs=FLAMMA_LEGS}
	sets.buff.Doom = set_combine(sets.buff.Doom, {})
	sets.buff.Sleep = {neck="Vim Torque +1"}
	sets.buff.Hasso = {hands=AF_HANDS}
	sets.buff['Third Eye'] = {legs=RELIC_LEGS} --legs="Sakonji Haidate +3"
    	sets.buff.Sekkanoki = {hands=EMPY_HANDS}
    	sets.buff.Sengikori = {feet=EMPY_FEET}
    	sets.buff['Meikyo Shisui'] = {feet=RELIC_FEET}
end

-- Select default macro book on initial load or subjob change.
function select_default_macro_book()
    -- Default macro set/book
    if player.sub_job == 'DNC' then
        set_macro_page(5, 3)
    elseif player.sub_job == 'WAR' then
        set_macro_page(1, 3)
    elseif player.sub_job == 'NIN' then
        set_macro_page(9, 3)
    elseif player.sub_job == 'THF' then
        set_macro_page(7, 3)
    elseif player.sub_job == 'DRG' then
        set_macro_page(3, 3)
    else
        set_macro_page(10, 3)
    end
end

--Lockstyle
function user_job_lockstyle()
	windower.chat.input('/lockstyleset 020')
end

autows_list = 
{
	['Masamune']="Tachi: Fudo",
	['Kusanagi']="Tachi: Mumei",
	['Norifusa']="Tachi: Jinpu",
	['GK1']='Tachi: Jinpu',
	['ShiningOne']='Impulse Drive',
	['Bow']='Empyreal Arrow',
	['Trial']='Tachi: Fudo'
}
