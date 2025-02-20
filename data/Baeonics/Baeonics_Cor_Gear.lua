-- Setup vars that are user-dependent.  Can override this function in a sidecar file.
function user_job_setup()
	state.OffenseMode:options('Normal','Acc')
	state.RangedMode:options('Normal', 'Acc')
	state.WeaponskillMode:options('Match','Normal', 'Acc','Proc')
	state.CastingMode:options('Normal', 'Resistant')
	state.IdleMode:options('Normal', 'PDT', 'Refresh')
	state.HybridMode:options('Normal','DT')
	state.ExtraMeleeMode = M{['description']='Extra Melee Mode', 'None', 'DWMax'}
	state.Weapons:options('Default','Ranged','Savage','Evisceration','LeadenSalute','Wildfire','DualWeapons','DualSavageWeapons','DualEvisceration','DualLeadenRanged','DualWFRanged','DualLeadenMelee','DualAeolian','DualLeadenMeleeAcc','DualRanged','DualProcWeapons','None')
	state.CompensatorMode:options('Always','300','1000','Never')
	state.PWUnlock = M(true, 'PWUnlock')
	
	gear.RAbullet = "Chrono Bullet"
	gear.WSbullet = "Chrono Bullet"
	gear.MAbullet = "Living Bullet" --For MAB WS, do not put single-use bullets here.
	gear.QDbullet = "Animikii Bullet"
	options.ammo_warning_limit = 15
--Ikenga_vest_bonus = 190  -- It is 190 at R20. Uncomment if you need to manually adjust because you are using below R20

--Capes
	AMBUTPRA_BACK = {name="Camulus's Mantle",augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','Rng.Acc.+10','"Store TP"+10',}}				--make this
	AMBUSNAPSHOT_BACK = {name="Camulus's Mantle",augments={'"Snapshot"+10',}}									--make this
	AMBUTP_BACK = {name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10','Phys. dmg. taken-10%',}}	
	AMBUWSDRA_BACK = {name="Camulus's Mantle",augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','AGI+10','Weapon skill damage +10%',}}
	AMBUWSMB_BACK = {name="Camulus's Mantle",augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','AGI+10','Weapon skill damage +10%',}}
	AMBUWSDSTR_BACK = {name="Camulus's Mantle",augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}}
		
--Artifact Gear
	AF_HEAD = {name="Laksa. Tricorne +2"}
	AF_BODY = {name="Laksa. Frac +3"}
	AF_HANDS = {name="Laksa. Gants +2"}	
	AF_LEGS = {name="Laksa. Trews +2"}
	AF_FEET = {name="Laksa. Bottes +2"}

--Relic Gear
	RELIC_HEAD = {name="Lanun Tricorne +1"}
	RELIC_BODY = {name="Lanun Frac +3"}
	RELIC_HANDS = {name="Lanun Gants +1"}
	RELIC_LEGS = {name="Lanun Trews +1"}
	RELIC_FEET = {name="Lanun Bottes +3"}

--Empyrean Gear
	EMPY_HEAD = {name="Chass. Tricorne +3"}
	EMPY_BODY = {name="Chasseur's Frac +3"}
	EMPY_HANDS = {name="Chasseur's Gants +3"}
	EMPY_LEGS = {name="Chas. Culottes +3"}
	EMPY_FEET = {name="Chass. Bottes +3"}

--Empy Ear
	EMPY_EAR = {name="Chas. Earring +1"}

--Dynamis Neck
	JSE_NECK = {name="Comm. Charm +2"}

--Rings
	StikiniRing_Ring1	= {name = "Stikini Ring +1", bag = "wardrobe2"}
	StikiniRing_Ring2	= {name = "Stikini Ring +1", bag = "wardrobe3"}

	ChirichRing_Ring1	= {name = "Chirich Ring +1", bag = "wardrobe2"}
	ChirichRing_Ring2	= {name = "Chirich Ring +1", bag = "wardrobe3"}

	MOONLIGHTRING_1 	= {name = "Moonlight Ring", bag = "wardrobe2"}
	MOONLIGHTRING_2 	= {name = "Moonlight Ring", bag = "wardrobe3"}

-- Additional local binds
	send_command('bind ^` gs c cycle ElementalMode')
	send_command('bind !` gs c elemental quickdraw')
	
	send_command('bind ^backspace input /ja "Double-up" <me>')
	send_command('bind @backspace input /ja "Snake Eye" <me>')
	send_command('bind !backspace input /ja "Fold" <me>')
	send_command('bind ^@!backspace input /ja "Crooked Cards" <me>')
	
	send_command('bind ^\\\\ input /ja "Random Deal" <me>')
	send_command('bind !\\\\ input /ja "Bolter\'s Roll" <me>')
	send_command('bind ^@!\\\\ gs c toggle LuzafRing')
	send_command('bind @f7 gs c toggle RngHelper')

	send_command('bind !r gs c weapons DualSavageWeapons;gs c update')
	send_command('bind ^q gs c weapons DualAeolian;gs c update')
	send_command('bind !q gs c weapons DualLeadenRanged;gs c update')
	send_command('bind @pause roller roll')
	
	select_default_macro_book()
end

-- Define sets and vars used by this job file.
function init_gear_sets()
    --------------------------------------
    -- Start defining the sets
    --------------------------------------

    -- Precast Sets

    -- Precast sets to enhance JAs
	
	sets.precast.JA['Triple Shot'] = {body=EMPY_BODY}
	sets.precast.JA['Snake Eye'] = {legs=RELIC_LEGS}
	sets.precast.JA['Wild Card'] = {feet=RELIC_FEET}
	sets.precast.JA['Random Deal'] = {body=RELIC_BODY}
	sets.precast.FoldDoubleBust = {hands=RELIC_HANDS}
	
	sets.precast.CorsairRoll = 
	{
		main="Rostam",
		range="Compensator",
	        head=RELIC_HEAD,
		neck="Regal Necklace",
		ear1="Etiolation Earring",
		ear2="Sanare Earring",
	        body=RELIC_BODY,
		hands=EMPY_HANDS,
		ring1="Defending Ring",
		ring2="Dark Ring",
	        back=AMBUTP_BACK,
		waist="Flume Belt +1",
		--legs="Desultor Tassets",		--acquire this from Shantotto Mission 15
		feet="Malignance Boots"
	}
	
	sets.precast.LuzafRing = {ring2="Luzaf's Ring"}
    
	sets.precast.CorsairRoll["Caster's Roll"] = set_combine(sets.precast.CorsairRoll, {legs=EMPY_LEGS})
	sets.precast.CorsairRoll["Courser's Roll"] = set_combine(sets.precast.CorsairRoll, {feet=EMPY_FEET})
	sets.precast.CorsairRoll["Blitzer's Roll"] = set_combine(sets.precast.CorsairRoll, {head=EMPY_HEAD})
	sets.precast.CorsairRoll["Tactician's Roll"] = set_combine(sets.precast.CorsairRoll, {body=EMPY_BODY})
	sets.precast.CorsairRoll["Allies' Roll"] = set_combine(sets.precast.CorsairRoll, {hands=EMPY_HANDS})
    
	sets.precast.CorsairShot = 
	{
		ammo=gear.QDbullet,
		head=gear.herculean_nuke_head,
		neck="Iskur Gorget",
		ear1="Dedition Earring",
		ear2="Telos Earring",
		body=MUMMU_BODY,
		hands="Adhemar Wristbands +1",
		ring1="Crepuscular Ring",
		ring2="Dingir Ring",
		back=AMBUTPRA_BACK,
		waist="Goading Belt",
		legs=EMPY_LEGS,
		feet="Carmine Greaves +1"
	}
		
	sets.precast.CorsairShot.Damage = 
	{
		ammo=gear.QDbullet,
	        head=gear.herculean_nuke_head,
		neck="Sanctity Necklace",
		ear1="Friomisi Earring",
		ear2="Crematio Earring",
	        body="Samnuha Coat",
		hands="Leyline Gloves",
		ring1="Shiva Ring +1",
		ring2="Dingir Ring",
	        back=AMBUWSDRA_BACK,
		waist="Eschan Stone",
		legs="Malignance Tights",
		feet=EMPY_FEET
	}
	
	sets.precast.CorsairShot.Proc = 
	{
		ammo=gear.RAbullet,
		head="Wh. Rarab Cap +1",
		neck="Loricate Torque +1",
		ear1="Genmei Earring",
		ear2="Sanare Earring",
		body="Emet Harness +1",
		hands="Malignance Gloves",
		ring1="Defending Ring",
		ring2="Dark Ring",
		back="Moonlight Cape",
		waist="Flume Belt +1",
		legs="Carmine Cuisses +1",
		feet=EMPY_FEET
	}
	
	sets.precast.CorsairShot['Light Shot'] = 
	{
		ammo=gear.QDbullet,
		head="Carmine Mask +1",
		neck="Sanctity Necklace",
		ear1="Digni. Earring",
		ear2="Telos Earring",
		body=MUMMU_BODY,
		hands="Leyline Gloves",
		ring1="Metamor. Ring +1",
		ring2=StikiniRing_Ring2,
		back=AMBUWSDRA_BACK,
		waist="Eschan Stone",
		legs="Malignance Tights",
		feet=MUMMU_FEET
	}

	sets.precast.CorsairShot['Dark Shot'] = set_combine(sets.precast.CorsairShot['Light Shot'], 
		{
			feet=EMPY_FEET
		})

-- Waltz set (chr and vit)
	sets.precast.Waltz = 
	{
		head="Carmine Mask +1",
		neck="Loricate Torque +1",
		ear1="Etiolation Earring",
		ear2="Sanare Earring",
		body=gear.herculean_waltz_body,
		hands=gear.herculean_waltz_hands,
		ring1="Defending Ring",
		ring2="Valseur's Ring",
		back="Moonlight Cape",
		waist="Flume Belt +1",
		legs="Dashing Subligar",
		feet=gear.herculean_waltz_feet
	}
		
	sets.Self_Waltz = 
	{
		head=MUMMU_HEAD,
		body="Passion Jacket",
		ring1="Asklepian Ring"
	}
        
    -- Don't need any special gear for Healing Waltz.
	sets.precast.Waltz['Healing Waltz'] = {}

    -- Fast cast sets for spells
    
	sets.precast.FC = 
	{
		head="Carmine Mask +1",
		neck="Baetyl Pendant",
		ear1="Enchntr. Earring +1",
		ear2="Loquac. Earring",
		body="Dread Jupon",
		hands="Leyline Gloves",
		ring1="Kishar Ring",
		ring2="Lebeche Ring",
		back="Moonlight Cape",
		waist="Flume Belt +1",
		legs="Rawhide Trousers",
		feet="Carmine Greaves +1"
	}

	sets.precast.FC.Utsusemi = set_combine(sets.precast.FC, 
		{
			neck="Magoraga Beads",
			body="Passion Jacket"
		})
	
	sets.precast.FC.Cure = set_combine(sets.precast.FC, 
		{
			ear2="Mendi. Earring"
		})
	
	sets.precast.RA = 
	{
		ammo=gear.RAbullet,
		head=EMPY_HEAD,
		neck=JSE_NECK,
		body=AF_BODY,
		hands="Carmine Fin. Ga. +1",
		ring1="Crepuscular Ring",
		back=AMBUSNAPSHOT_BACK,
		waist="Impulse Belt",
		legs=AF_LEGS,
		feet=MEGHANADA_FEET
	}
		
	sets.precast.RA.Flurry = set_combine(sets.precast.RA, 
		{
			waist="Yemaya Belt",
			legs="Adhemar Kecks +1"
		})
	
	sets.precast.RA.Flurry2 = set_combine(sets.precast.RA, 
		{
			waist="Yemaya Belt",
			legs="Adhemar Kecks +1"
		})

       
    -- Weaponskill sets
    -- Default set for any weaponskill that isn't any more specifically defined
	sets.precast.WS = 
	{
		head=MEGHANADA_HEAD",
		neck="Fotia Gorget",
		ear1="Moonshade Earring",
		ear2="Telos Earring",
		body=AF_BODY,
		hands=MEGHANADA_HANDS,
		ring1="Regal Ring",
		ring2="Ifrit Ring +1",
		back=AMBUWSDSTR_BACK,
		waist="Fotia Belt",
		legs=MEGHANADA_LEGS,
		feet=RELIC_FEET
	}
		
	sets.precast.WS.Acc = 
	{
		head="Carmine Mask +1",
		neck="Combatant's Torque",
		ear1="Digni. Earring",
		ear2="Telos Earring",
		body=MEGHANADA_BODY,
		hands=MEGHANADA_HANDS,
		ring1="Regal Ring",
		ring2="Ilabrat Ring",
		back=AMBUWSDSTR_BACK,
		waist="Grunfeld Rope",
		legs="Carmine Cuisses +1",
		feet=RELIC_FEET
	}		
		
	sets.precast.WS.Proc = 
	{
		head="Carmine Mask +1",
		neck="Combatant's Torque",
		ear1="Digni. Earring",
		ear2="Mache Earring +1",
		body=MUMMU_BODY,
		hands="Floral Gauntlets",
		ring1="Ramuh Ring +1",
		ring2="Ramuh Ring +1",
		back=AMBUTP_BACK,
		waist="Olseni Belt",
		legs="Carmine Cuisses +1",
		feet="Malignance Boots"
	}
		
	-- Specific weaponskill sets.  Uses the base set if an appropriate WSMod version isn't found.
	
	sets.precast.WS['Requiescat'] = set_combine(sets.precast.WS, 
		{
			head="Carmine Mask +1",
			ring2="Rufescent Ring",
			legs="Carmine Cuisses +1",
			feet="Carmine Greaves +1"
		})

	sets.precast.WS['Evisceration'] = 
	{
		ammo=gear.WSbullet,
	        head=MUMMU_HEAD,
		neck="Fotia Gorget",
		ear1="Odr Earring",
		ear2="Moonshade Earring",
	        body=MUMMU_BODY,
		hands=MUMMU_HANDS,
		ring1="Mummu Ring",
		ring2="Begrudging Ring",
	        back=AMBUTP_BACK,
		waist="Fotia Belt",
		legs=MUMMU_LEGS,
		feet=MUMMU_FEET
	}
		
	sets.precast.WS['Evisceration'].Acc = 
	{
		ammo=gear.WSbullet,
	        head=MUMMU_HEAD,
		neck="Fotia Gorget",
		ear1="Odr Earring",
		ear2="Moonshade Earring",
	        body=MUMMU_BODY,
		hands=MUMMU_HANDS,
		ring1="Regal Ring",
		ring2="Begrudging Ring",
	        back=AMBUTP_BACK,
		waist="Fotia Belt",
		legs=MUMMU_LEGS,
		feet=MUMMU_FEET
	}

	sets.precast.WS['Savage Blade'] = 
	{
		ammo=gear.WSbullet,
	      	head=BUMBA_HEAD,
		--neck="Comm. Charm +2",
		neck="Rep. Plat. Medal",
		ear1="Moonshade Earring",
		ear2="Ishvara Earring",
		body=AF_BODY,
		hands=EMPY_HANDS,
		ring1="Ephramad's Ring",
		ring2="Epaminondas's Ring",
		back=AMBUWSDSTR_BACK,
		waist="Sailfi Belt +1",
		legs=BUMBA_LEGS,
		feet=RELIC_FEET
	}

	sets.precast.WS['Savage Blade'].Acc = 
	{
		ammo=gear.WSbullet,
		head="Carmine Mask +1",
		neck="Combatant's Torque",
		ear1="Moonshade Earring",
		ear2="Telos Earring",
		body=MEGHANADA_BODY,
		hands=MEGHANADA_HANDS,
		ring1="Regal Ring",
		ring2="Rufescent Ring",
		back=AMBUWSDSTR_BACK,
		waist="Grunfeld Rope",
		legs="Carmine Cuisses +1",
		feet=RELIC_FEET
	}
	
	sets.precast.WS['Last Stand'] = 
	{
		ammo=gear.WSbullet,
		head=RELIC_HEAD,
		neck="Fotia Gorget",
		ear1="Moonshade Earring",
		ear2="Ishvara Earring",
		body=XEVIOSO_BODY,
		hands=EMPY_HANDS,
		ring1="Epaminondas's Ring",
		ring2="Dingir Ring",
		back=AMBUWSDRA_BACK,
		waist="Fotia Belt",
		legs=BUMBA_LEGS,
		feet=RELIC_FEET
	}
	
	sets.precast.WS['Last Stand'].Acc = 
	{
		ammo=gear.WSbullet,
		head=RELIC_HEAD",
		neck="Iskur Gorget",
		ear1="Moonshade Earring",
		ear2="Telos Earring",
		body=AF_BODY,
		hands=MEGHANADA_HANDS,
		ring1="Regal Ring",
		ring2="Dingir Ring",
		back=AMBUWSDRA_BACK,
		waist="Fotia Belt",
		legs=MEGHANADA_LEGS,
		feet=RELIC_FEET
	}
		
	sets.precast.WS['Detonator'] = sets.precast.WS['Last Stand']
	sets.precast.WS['Detonator'].Acc = sets.precast.WS['Last Stand'].Acc
	sets.precast.WS['Slug Shot'] = sets.precast.WS['Last Stand']
	sets.precast.WS['Slug Shot'].Acc = sets.precast.WS['Last Stand'].Acc
	sets.precast.WS['Numbing Shot'] = sets.precast.WS['Last Stand']
	sets.precast.WS['Numbing Shot'].Acc = sets.precast.WS['Last Stand'].Acc
	sets.precast.WS['Sniper Shot'] = sets.precast.WS['Last Stand']
	sets.precast.WS['Sniper Shot'].Acc = sets.precast.WS['Last Stand'].Acc
	sets.precast.WS['Split Shot'] = sets.precast.WS['Last Stand']
	sets.precast.WS['Split Shot'].Acc = sets.precast.WS['Last Stand'].Acc
	
	sets.precast.WS['Leaden Salute'] = 
	{
		ammo=gear.MAbullet,
		head="Pixie Hairpin +1",
		neck=JSE_NECK,
		ear1="Moonshade Earring",
		ear2="Friomisi Earring",
		body=RELIC_BODY,
		hands=EMPY_HANDS,
		ring1="Archon Ring",
		ring2="Dingir Ring",
		back=AMBUWSMB_BACK,
		--waist="Eschan Stone",
		--waist="Orpheus's Sash",
		waist="Svelt. Gouriz +1",
		legs=BUMBA_LEGS,
		feet=RELIC_FEET
	}
		
	sets.precast.WS['Leaden Salute'].Acc = 
	{
		ammo=gear.MAbullet,
		head="Pixie Hairpin +1",
		neck=JSE_NECK,
		ear1="Moonshade Earring",
		ear2="Friomisi Earring",
		body=RELIC_BODY,
		hands=EMPY_HANDS,
		ring1="Archon Ring",
		ring2="Dingir Ring",
		back=AMBUWSMB_BACK,
		--waist="Eschan Stone",
		--waist="Orpheus's Sash",
		waist="Svelt. Gouriz +1",
		legs=BUMBA_LEGS,
		feet=RELIC_FEET
	}
	
	sets.precast.WS['Aeolian Edge'] = 
	{
		ammo="Animikii Bullet",
		head=gear.herculean_nuke_head,
		neck="Baetyl Pendant",
		ear1="Moonshade Earring",
		ear2="Friomisi Earring",
		body=AF_BODY,
		hands="Carmine Fin. Ga. +1",
		ring1="Metamor. Ring +1",
		ring2="Dingir Ring",
		back=AMBUWSMB_BACK,
		waist="Eschan Stone",
		legs=BUMBA_LEGS,
		feet=RELIC_FEET
	}
	
	sets.precast.WS['Wildfire'] = 
	{
		ammo=gear.MAbullet,
		head=BUMBA_HEAD,
		neck=JSE_NECK,
		ear1="Crematio Earring",
		ear2="Friomisi Earring",
		body=RELIC_BODY,
		hands=BUMBA_HANDS,
		ring1="Epaminondas's Ring",
		ring2="Dingir Ring",
		back=AMBUWSMB_BACK,
		waist="Eschan Stone",
		--waist="Skrymir Cord +1",
		legs=BUMBA_LEGS,
		feet=RELIC_FEET
	}
	
	sets.precast.WS['Wildfire'].Acc = 
	{
		ammo=gear.MAbullet,
		head=gear.herculean_nuke_head,
		neck=JSE_NECK,
		ear1="Crematio Earring",
		ear2="Friomisi Earring",
		body=AF_BODY,
		hands="Leyline Gloves",
		ring1="Regal Ring",
		ring2="Dingir Ring",
		back=AMBUWSMB_BACK,
		waist="Eschan Stone",
		legs=BUMBA_LEGS,
		feet=RELIC_FEET
	}
		
	sets.precast.WS['Hot Shot'] = 
	{
		ammo=gear.MAbullet,
		head=BUMBA_HEAD,
		neck="Fotia Gorget",
		ear1="Moonshade Earring",
		ear2="Friomisi Earring",
		body=RELIC_BODY,
		hands=EMPY_HANDS,
		ring1="Epaminondas's Ring",
		ring2="Dingir Ring",
		back=AMBUWSMB_BACK,
		waist="Fotia Belt",
		legs=BUMBA_LEGS,
		feet=RELIC_FEET
	}
	
	sets.precast.WS['Hot Shot'].Acc = 

	{
		ammo=gear.MAbullet,
		head=BUMBA_HEAD,
		neck="Fotia Gorget",
		ear1="Moonshade Earring",
		ear2="Friomisi Earring",
		body=RELIC_BODY,
		hands=EMPY_HANDS,
		ring1="Epaminondas's Ring",
		ring2="Dingir Ring",
		back=AMBUWSMB_BACK,
		waist="Fotia Belt",
		legs=BUMBA_LEGS,
		feet=RELIC_FEET
	}
		
		--Because omen skillchains.
	sets.precast.WS['Burning Blade'] = 
	{
		ammo=gear.RAbullet,
		head=MEGHANADA_HEAD",
		neck="Loricate Torque +1",
		ear1="Genmei Earring",
		ear2="Sanare Earring",
		body=MEGHANADA_BODY,
		hands="Malignance Gloves",
		ring1="Defending Ring",
		ring2="Dark Ring",
		back="Moonlight Cape"
		waist="Flume Belt +1",
		legs=MEGHANADA_LEGS,
		feet=MEGHANADA_FEET
	}
	
	-- Swap to these on Moonshade using WS if at 3000 TP
	sets.MaxTP = {}
	sets.AccMaxTP = {}
        
    -- Midcast Sets
	sets.midcast.FastRecast = 
	{
		head="Carmine Mask +1",
		neck="Baetyl Pendant",
		ear1="Enchntr. Earring +1",
		ear2="Loquac. Earring",
		body="Dread Jupon",
		hands="Leyline Gloves",
		ring1="Kishar Ring",
		ring2="Lebeche Ring",
		back="Moonlight Cape",
		waist="Flume Belt +1",
		legs="Rawhide Trousers",
		feet="Carmine Greaves +1"
	}
        
    -- Specific spells

	sets.midcast.Cure = 
	{
		head="Carmine Mask +1",
		neck="Phalaina Locket",
		ear1="Enchntr. Earring +1",
		ear2="Mendi. Earring",
	        body="Dread Jupon",
		hands="Leyline Gloves",
		ring1="Janniston Ring",
		ring2="Lebeche Ring",
	        back="Solemnity Cape",
		waist="Flume Belt +1",
		legs="Carmine Cuisses +1",
		feet="Carmine Greaves +1"
	}
	
	sets.Self_Healing = {neck="Phalaina Locket",hands="Buremte Gloves",ring2="Kunaji Ring",waist="Gishdubar Sash"}
	sets.Cure_Received = {neck="Phalaina Locket",hands="Buremte Gloves",ring2="Kunaji Ring",waist="Gishdubar Sash"}
	sets.Self_Refresh = {waist="Gishdubar Sash"}
	
	sets.midcast.Utsusemi = sets.midcast.FastRecast

    -- Ranged gear
	sets.midcast.RA = 
	{
		ammo=gear.RAbullet,
		head="Malignance Chapeau",
		neck="Iskur Gorget",
		ear1="Enervating Earring",
		ear2="Telos Earring",
		body="Malignance Tabard",
		hands="Malignance Gloves",
		ring1="Crepuscular Ring",
		ring2="Ilabrat Ring",
		back=AMBUTPRA_BACK,
		waist="Yemaya Belt",
		legs="Malignance Tights",
		feet="Malignance Boots"
	}
	
	sets.midcast.RA.Acc = 
	{
		ammo=gear.RAbullet,
		head="Malignance Chapeau"
		,neck="Iskur Gorget",
		ear1="Enervating Earring",
		ear2="Telos Earring",
		body=AF_BODY,
		hands="Malignance Gloves",
		ring1="Regal Ring",
		ring2="Ilabrat Ring",
		back=AMBUTPRA_BACK,
		waist="Yemaya Belt",
		legs=AF_LEGS,
		feet="Malignance Boots"
	}
		
	sets.buff['Triple Shot'] = {body=EMPY_BODY}
    
    -- Sets to return to when not performing an action.
	
	sets.DayIdle = {}
	sets.NightIdle = {}
	
	sets.buff.Doom = set_combine(sets.buff.Doom, {})
	sets.IdleWakeUp = {range="Earp"}
	sets.buff.Sleep = {range="Earp"}
    
    -- Resting sets
	sets.resting = {}
	
	-- Idle sets
	sets.idle = 
	{
		ammo=gear.RAbullet,
		head=BUMBA_HEAD,
		neck="Loricate Torque +1",
		ear1="Genmei Earring",
		ear2="Sanare Earring",
		body=BUMBA_BODY",
		hands=BUMBA_HANDS,
		ring1="Defending Ring",
		ring2="Shadow Ring",
		back="Moonlight Cape",
		waist="Carrier's Sash",
		legs="Carmine Cuisses +1",
		feet=BUMBA_FEET
	}
		
	sets.idle.PDT = 
	{
		ammo=gear.RAbullet,
		head=BUMBA_HEAD,
		neck="Loricate Torque +1",
		ear1="Etiolation Earring",
		ear2="Sanare Earring",
		body=BUMBA_BODY",
		hands=BUMBA_HANDS,
		ring1="Defending Ring",
		ring2="Dark Ring",
		back="Shadow Mantle",
		waist="Flume Belt +1",
		legs=BUMBA_LEGS,
		feet="Malignance Boots"
	}
		
	sets.idle.Refresh = 
	{ammo=gear.RAbullet,
		head="Rawhide Mask",
		neck="Loricate Torque +1",
		ear1="Genmei Earring",
		ear2="Ethereal Earring",
		body="Mekosu. Harness",
		hands=gear.herculean_refresh_hands,
		ring1="Defending Ring",
		ring2="Dark Ring",
		back="Moonlight Cape",
		waist="Flume Belt +1",
		legs="Rawhide Trousers",
		feet="Malignance Boots"
	}
	
	-- Defense sets
	sets.defense.PDT = 
	{
		ammo=gear.RAbullet,
		head=BUMBA_HEAD,
		neck="Loricate Torque +1",
		ear1="Genmei Earring",
		ear2="Tuisto Earring",
		body=BUMBA_BODY",
		hands=BUMBA_HANDS,
		ring1="Defending Ring",
		ring2="Warden's Ring",
		back="Shadow Mantle",
		waist="Flume Belt +1",
		legs=BUMBA_LEGS,
		feet=BUMBA_FEET
	}
	
	sets.defense.MDT = 
	{
		ammo=gear.RAbullet,
		head=BUMBA_HEAD,
		neck="Warder's Charm +1",
		ear1="Etiolation Earring",
		ear2="Sanare Earring",
		body=BUMBA_BODY",
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
		ammo=gear.RAbullet,
		head=BUMBA_HEAD,
		neck="Warder's Charm +1",
		ear1="Etiolation Earring",
		ear2="Sanare Earring",
		body=BUMBA_BODY",
		hands=BUMBA_HANDS,
		ring1="Defending Ring",
		ring2="Shadow Ring",
		back="Moonlight Cape",
		waist="Carrier's Sash",
		legs=BUMBA_LEGS,
		feet=BUMBA_FEET
	}
	
	sets.Kiting = 
	{
		ring2="Shneddick Ring",
		--legs="Carmine Cuisses +1"
	}
	
	sets.TreasureHunter = set_combine(sets.TreasureHunter, {})
	
	sets.DWMax = 
	{
		ear1="Dudgeon Earring",
		ear2="Heartseeker Earring",
		body="Adhemar Jacket +1",
		hands="Floral Gauntlets",
		waist="Reiki Yotai"
	}

	-- Weapons sets
	sets.weapons.Default = {main="Naegling",sub="Nusku Shield",range="Fomalhaut"}
	sets.weapons.Ranged = {main="Rostam",sub="Nusku Shield",range="Fomalhaut"}
	sets.weapons.LeadenSalute = {main="Rostam",sub="Nusku Shield",range="Death Penalty"}
	sets.weapons.Wildfire = {main="Rostam",sub="Nusku Shield",range="Armageddon"}
	sets.weapons.Evisceration = {main="Tauret",sub="Nusku Shield",range="Ataktos"}
	sets.weapons.Savage = {main="Naegling",sub="Nusku Shield",range="Ataktos"}
	sets.weapons.DualWeapons = {main="Naegling",sub="Blurred Knife +1",range="Fomalhaut"}
	sets.weapons.DualSavageWeapons = {main="Naegling",sub="Blurred Knife +1",range="Ataktos"}
	sets.weapons.DualEvisceration = {main="Tauret",sub="Blurred Knife +1",range="Ataktos"}
	sets.weapons.DualLeadenRanged = {main="Rostam",sub="Tauret",range="Death Penalty"}
	sets.weapons.DualWFRanged = {main="Naegling",sub="Tauret",range="Armageddon"}
	sets.weapons.DualLeadenMelee = {main="Naegling",sub="Atoyac",range="Fomalhaut"}
	sets.weapons.DualAeolian = {main="Rostam",sub="Tauret",range="Ataktos"}
	sets.weapons.DualLeadenMeleeAcc = {main="Naegling",sub="Blurred Knife +1",range="Fomalhaut"}
	sets.weapons.DualRanged = {main="Rostam",sub="Kustawi +1",range="Fomalhaut"}
	
    -- Engaged sets

    -- Variations for TP weapon and (optional) offense/defense modes.  Code will fall back on previous
    -- sets if more refined versions aren't defined.
    -- If you create a set with both offense and defense modes, the offense mode should be first.
    -- EG: sets.engaged.Dagger.Accuracy.Evasion
    
    -- Normal melee group
	sets.engaged = 
	{
		head="Dampening Tam",
		neck="Iskur Gorget",
		ear1="Cessance Earring",
		ear2="Brutal Earring",
		body=MEGHANADA_BODY,
		hands="Adhemar Wrist. +1",
		ring1="Petrov Ring",
		ring2="Epona's Ring",
		back=AMBUTP_BACK,
		waist="Windbuffet Belt +1",
		legs="Samnuha Tights",
		feet=gear.herculean_ta_feet
	}
	
	sets.engaged.Acc = 
	{
		head="Carmine Mask +1",
		neck="Combatant's Torque",
		ear1="Cessance Earring",
		ear2="Telos Earring",
		body=MEGHANADA_BODY,
		hands="Adhemar Wrist. +1",
		ring1="Ramuh Ring +1",
		ring2="Epona's Ring",
		back=AMBUTP_BACK,
		waist="Olseni Belt",
		legs="Carmine Cuisses +1",
		feet="Malignance Boots"
	}
		
	sets.engaged.DT = 
	{
		head="Malignance Chapeau",
		neck="Loricate Torque +1",
		ear1="Cessance Earring",
		ear2="Brutal Earring",
		body="Malignance Tabard",
		hands="Malignance Gloves",
		ring1="Defending Ring",
		ring2="Petrov Ring",
		back=AMBUTP_BACK,
		waist="Windbuffet Belt +1",
		legs="Malignance Tights",
		feet="Malignance Boots"
	}
	
	sets.engaged.Acc.DT = 
	{
		head="Malignance Chapeau",
		neck="Loricate Torque +1",
		ear1="Cessance Earring",
		ear2="Telos Earring",
		body="Malignance Tabard",
		hands="Malignance Gloves",
		ring1="Defending Ring",
		ring2="Ramuh Ring +1",
		back=AMBUTP_BACK,
		waist="Olseni Belt",
		legs="Malignance Tights",
		feet="Malignance Boots"
	}
	
	sets.engaged.DW = 
	{
		head="Dampening Tam",
		neck="Iskur Gorget",
		ear1="Suppanomimi",
		ear2="Brutal Earring",
		body="Adhemar Jacket +1",
		hands="Adhemar Wrist. +1",
		ring1="Petrov Ring",
		ring2="Epona's Ring",
		back=AMBUTP_BACK,
		waist="Windbuffet Belt +1",
		legs="Samnuha Tights",
		feet=gear.herculean_ta_feet
	}
	
	sets.engaged.DW.Acc = 
	{
		head="Carmine Mask +1",
		neck="Combatant's Torque",
		ear1="Odr Earring",
		ear2="Telos Earring",
		body="Malignance Tabard",
		hands="Floral Gauntlets",
		ring1="Ramuh Ring +1",
		ring2="Ramuh Ring +1",
		back=AMBUTP_BACK,
		waist="Olseni Belt",
		legs="Carmine Cuisses +1",
		feet="Malignance Boots"
	}
		
	sets.engaged.DW.DT = 
	{
		head="Malignance Chapeau",
		neck="Loricate Torque +1",
		ear1="Suppanomimi",
		ear2="Brutal Earring",
		body="Malignance Tabard",
		hands="Malignance Gloves",
		ring1="Defending Ring",
		ring2="Epona's Ring",
		back=AMBUTP_BACK,
		waist="Reiki Yotai",
		legs="Malignance Tights",
		feet="Malignance Boots"
	}
	
	sets.engaged.DW.Acc.DT = 
	{
		head="Malignance Chapeau",
		neck="Loricate Torque +1",
		ear1="Suppanomimi",
		ear2="Telos Earring",
		body="Malignance Tabard",
		hands="Malignance Gloves",
		ring1="Defending Ring",
		ring2="Ramuh Ring +1",
		back=AMBUTP_BACK,
		waist="Reiki Yotai",
		legs="Malignance Tights",
		feet="Malignance Boots"
	}
end

-- Select default macro book on initial load or subjob change.
function select_default_macro_book()
    if player.sub_job == 'NIN' then
        set_macro_page(1, 8)
    elseif player.sub_job == 'DNC' then
		set_macro_page(3, 8)
    elseif player.sub_job == 'RNG' then
        set_macro_page(5, 8)
    elseif player.sub_job == 'DRG' then
        set_macro_page(9, 8)
    else
        set_macro_page(1, 8)
    end
end

autows_list = 
{
	['Default']='Savage Blade',
	['Evisceration']='Evisceration',
	['Wildfire']='Wildfire',
	['LeadenSalute']='Leaden Salute',
	['Savage']='Savage Blade',
	['Ranged']='Last Stand',
	['DualWeapons']='Savage Blade',
	['DualSavageWeapons']='Savage Blade',
	['DualEvisceration']='Evisceration',
	['DualLeadenRanged']='Leaden Salute',
	['DualWFRanged']='Wildfire',
	['DualLeadenMelee']='Leaden Salute',
	['DualAeolian']='Aeolian Edge',
	['DualRanged']='Last Stand'
}
