-- Suppa 30% Magic Haste
-- DWEarrings 15% Magic Haste 13% DW
-- DWMax no haste
-- fixed ambu tp capes
-- https://www.bg-wiki.com/ffxi/Dancer_Guide_By_Kaius
-- make critical ambu cape
-- [[	1-Evisceration ⇨ Shark Bite  (Fragmentation) ⇨ Rudra's Storm  (Distortion) ⇨ Evisceration (Darkness) ⇨ Rudra's Storm (Darkness [lvl.4])  	--5steps
	2-Evisceration ⇨ Dancing Edge  (Distortion) ⇨ Evisceration  (Darkness) ⇨ Rudra's Storm  (Darkness [lvl.4])					--4steps
	3-Evisceration ⇨ Rudra's Storm  (Darkness) ⇨ Rudra's Storm  (Darkness [lvl.4])]]								--3steps
-- Setup vars that are user-dependent.  Can override this function in a sidecar file.
-- Needed gear uncomment when acquired
--ring2="Eihwaz Ring"
--ear2="Trux Earring"
--legs="Zoar Subligar +1",
--feet="Ahosi Leggings"
--head="Blistering Sallet +1",
--body="Dread Jupon",

function user_job_setup()
	state.OffenseMode:options('Normal','HybridGleti','HybridCento','FullDT')
	--state.OffenseMode:options('Normal', 'SomeAcc','Acc','FullAcc','Fodder')
	state.HybridMode:options('Normal','DTLite','PDT','MDT')
	state.WeaponskillMode:options('Match','Normal','SomeAcc','Acc','FullAcc','Fodder','Proc')
	state.IdleMode:options('Normal', 'Sphere')
	state.PhysicalDefenseMode:options('PDT')
	state.MagicalDefenseMode:options('MDT')
	state.ResistDefenseMode:options('MEVA')
	state.Weapons:options('TwashGleti','Aeneas','TwashCento','LowBuff','Trial')
	--state.ExtraMeleeMode = M{['description']='Extra Melee Mode','None','Suppa','DWEarrings','DWMax'}

--Artifact Gear
	AF_HEAD = {name="Maxixi Tiara +2"}		--yes	
	AF_BODY = {name="Maxixi Casaque +1"}		--yes	
	AF_HANDS = {name="Maxixi Bangles +3"}		--mandatory
	AF_LEGS = {name="Maxixi Tights +1"}		--no
	AF_FEET = {name="Maxixi Toe Shoes +3"}		--yes

--Relic Gear
	RELIC_HEAD = {name="Horos Tiara +3"}		--yes
   	RELIC_BODY = {name="Horos Casaque +3"}		--yes		
	RELIC_HANDS = {name="Horos Bangles +3"}		--no
	RELIC_LEGS = {name="Horos Tights +3"}		--yes
	RELIC_FEET = {name="Horos Toe Shoes +3"}	--maybe

--Empyrean Gear
	EMPY_HEAD = {name="Maculele Tiara +3"}		--mandatory
	EMPY_BODY = {name="Macu. Casaque +2"}		--no
	EMPY_HANDS = {name="Macu. Bangles +2"}		--yes
	EMPY_LEGS = {name="Maculele Tights +2"}		--maybe
	EMPY_FEET = {name="Macu. Toe Shoes +2"}		--yes

--EMPY EAR
	EMPY_EAR = {name="Macu. Earring +1"}

--JSE NECK
	JSE_NECK = {name="Etoile Gorget +2"}

--ACC and SB Rings...
	CHIRING_1 = {name = "Chirich Ring +1", bag = "wardrobe2"}
	CHIRING_2 = {name = "Chirich Ring +1", bag = "wardrobe3"}
	
--Mache Earrings
	MACHEAR_1 = {name = "Mache Earring +1", bag = "wardrobe2"}
	MACHEAR_2 = {name = "Mache Earring +1", bag = "wardrobe3"}

--CHR Rings
	CARBRING_1 = {name = "Carb. Ring +1", bag = "wardrobe2"}
	CARBRING_2 = {name = "Carb. Ring +1", bag = "wardrobe3"}

--Expensive Rings...
	BMSRING_1 = {name = "Stikini Ring +1", bag = "wardrobe2"}
	BMSRING_2 = {name = "Stikini Ring +1", bag = "wardrobe3"}
	
--DT Rings
	MOONRING_1 = {name = "Moonlight Ring", bag = "wardrobe2"}
	MOONRING_2 = {name = "Moonlight Ring", bag = "wardrobe3"}

--Other Rings
	RAMUHRING_1 = {name = "Ramuh Ring +1", bag = "wardrobe2"}
	RAMUHRING_2 = {name = "Ramuh Ring +1", bag = "wardrobe3"}

--AMBU CAPES
	AMBUSTP_BACK = {name="Senuna's Mantle",augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}}
	AMBUWSD_BACK = {name="Senuna's Mantle",augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}}
	AMBUCRIT_BACK = {name="Senuna's Mantle",augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}}  --make a critical cape
	AMBUWALTZ_BACK = {name="Senuna's Mantle",augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}}  --make a waltz cape with CHR
	AMBUFC_BACK = {name="Senuna's Mantle",augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}}  --make a fastcast magic cape
	AMBUDA_BACK = {name="Senuna's Mantle",augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}} --make a DA Cape

-- Additional local binds
	send_command('bind @` gs c step')
	send_command('bind ^!@` gs c toggle usealtstep')
	send_command('bind ^@` gs c cycle mainstep')
	send_command('bind !@` gs c cycle altstep')
	send_command('bind ^` input /ja "Saber Dance" <me>')
	send_command('bind !` input /ja "Fan Dance" <me>')
	send_command('bind ^\\\\ input /ja "Chocobo Jig II" <me>')
	send_command('bind !\\\\ input /ja "Spectral Jig" <me>')
	send_command('bind !backspace input /ja "Reverse Flourish" <me>')
	send_command('bind ^backspace input /ja "No Foot Rise" <me>')
	send_command('bind %~` gs c cycle SkillchainMode')

	select_default_macro_book()
end

-- Define sets and vars used by this job file.
function init_gear_sets()
--------------------------------------
-- Start defining the sets
--------------------------------------
    
	sets.TreasureHunter = set_combine(sets.TreasureHunter, {})
	
	
-- Extra Melee sets.  Apply these on top of melee sets.
	--sets.Suppa = {ear1="Suppanomimi", ear2="Sherida Earring"}
	--sets.DWEarrings = {ear1="Dudgeon Earring",ear2="Heartseeker Earring"}
	--sets.DWMax = {ear1="Dudgeon Earring",ear2="Heartseeker Earring",body="Adhemar Jacket +1",hands="Floral Gauntlets",waist="Shetal Stone"}
	
-- Weapons sets
	sets.weapons.Aeneas = {main="Aeneas",sub="Gleti's Knife"}
	sets.weapons.TwashGleti = {main="Twashtar",sub="Gleti's Knife"}
	sets.weapons.TwashCento = {main="Twashtar",sub="Centovente"}
	sets.weapons.LowBuff = {main="Aeneas",sub="Blurred Knife +1"}
	sets.weapons.Trial = {main="Centovente",sub="Crepuscular Knife"}
	
-- Precast Sets

-- Precast sets to enhance JAs

	sets.precast.JA['No Foot Rise'] = {body=RELIC_BODY}
	sets.precast.JA['Trance'] = {head=RELIC_HEAD}
    
-- Waltz set (chr and vit)
	sets.precast.Waltz = 
	{
		--Waltz 63%
		ammo="Yamarang",
		head=AF_HEAD,
		neck=JSE_NECK,
		ear1="Enchntr. Earring +1",
		ear2="Handler's Earring +1",
		body=AF_BODY,
		hands="Regal Gloves",
		ring1="Defending Ring",
		--ring1=CARBRING_1,
		--ring2="Valseur's Ring",
		-ring2=CARBRING_2,
		back="Toetapper Mantle",
		waist="Chaac Belt",
		legs="Dashing Subligar",
		feet=AF_FEET
	}
		
	sets.Self_Waltz = 
	{
		head=MUMMU_HEAD,
		body=AF_BODY,
		ring1="Asklepian Ring"
	}
        
-- Don't need any special gear for Healing Waltz.
	sets.precast.Waltz['Healing Waltz'] = {}
	
	sets.precast.Samba = 
	{
		head=AF_HEAD,
		back=AMBUSTP_BACK
	}
	
	sets.precast.Jig = 
	{
		legs=RELIC_LEGS,
		feet=AF_FEET
	}
	
	sets.precast.Step = 
	{
		ammo="Yamarang",
		head=AF_HEAD,
		neck="Combatant's Torque",
		--neck=JSE_NECK,
		ear1=MACHEAR_1,
		ear2=MACHEAR_2,
		--body=MUMMU_BODY,
		body=AF_BODY
		hands=AF_HANDS,
		ring1="Regal Ring",
		ring2=CHIRING_2,
		back=AMBUSTP_BACK, --chr and acc
		waist="Olseni Belt",
		legs=AF_LEGS,
		--feet="Malignance Boots"
		feet=AF_FEET
	}
		
	sets.Enmity = 
	{
		ammo="Sapience Orb",
		head=BUMBA_HEAD,
		--head="Halitus Helm",
		neck="Unmoving Collar +1",
		ear1="Cryptic Earring",
		--ear2="Trux Earring",
		body="Emet Harness +1",
		hands=RELIC_HANDS,
		ring1="Pernicious Ring",
		--ring2="Eihwaz Ring",
		back="Solemnity Cape",
		waist="Goading Belt",
		--legs="Zoar Subligar +1",
		--feet="Ahosi Leggings"
	}
		
	sets.precast.JA.Provoke = sets.Enmity
	
	sets.precast.Flourish1 = {}
	
	sets.precast.Flourish1['Violent Flourish'] = 
	{
		ammo="C. Palug Stone",
		head=AF_HEAD,
		neck="Combatant's Torque",
		ear1="Telos Earring",
		ear2="Digni. Earring",
		body=RELIC_BODY,
		hands=AF_HANDS,
		ring1=RAMUHRING_1,
		ring2=RAMUHRING_2,
		back=AMBUSTP_BACK,
		waist="Olseni Belt",
		legs=MEGHANADA_LEGS,
		feet="Malignance Boots"
	}
		
	sets.precast.Flourish1['Animated Flourish'] = sets.Enmity
		
	sets.precast.Flourish1['Desperate Flourish'] = 
		{
			ammo="C. Palug Stone",
			head=AF_HEAD,
			neck="Combatant's Torque",
			ear1="Telos Earring",
			ear2="Digni. Earring",
			body="Mummu Jacket +2",
			hands=AF_HANDS,
			ring1=RAMUHRING_1,
			ring2=RAMUHRING_2,
			back=AMBUSTP_BACK,
			waist="Olseni Belt",
			legs=MEGHANADA_LEGS,
			feet="Malignance Boots"
		}
	
	sets.precast.Flourish2 = {}
	
	sets.precast.Flourish2['Reverse Flourish'] = 
	{
		hands=EMPY_HANDS,
		back="Toetapper Mantle"
	}
	
	sets.precast.Flourish3 = {}
	
	sets.precast.Flourish3['Striking Flourish'] = 
	{
		body=RELIC_BODY
	}
	
	sets.precast.Flourish3['Climactic Flourish'] = {}

-- Fast cast sets for spells
    
	sets.precast.FC = 
	{
		--Fix this set
		ammo="Sapience Orb",			--2 FC
		head="Herculean Helm",			--7 FC ~
		neck="Orunmila's Torque",		--5 FC
		ear1="Enchntr. Earring +1",		--2 FC
		ear2="Loquac. Earring",			--2 FC
		--body="Dread Jupon",
		hands="Leyline Gloves",			--5 FC ~
		ring1="Rahab Ring",			--2 FC
		ring2="Prolix Ring",			--2 FC
		--back="Moonlight Cape",
		back=AMBUFC_BACK,			--10 FC
		waist="Plat. Mog. Belt",
		legs="Herculean Trousers",
		feet="Herculean Boots"
	}
	
	sets.precast.FC.Utsusemi = set_combine(sets.precast.FC, 
		{
			neck="Magoraga Beads",
			body="Passion Jacket"
		})

       
-- Weaponskill sets
-- Default set for any weaponskill that isn't any more specifically defined
	sets.precast.WS = 
	{
		ammo="Coiste Bodhar",
		--ammmo="Crepuscular Pebble",	--high buff
		head=EMPY_HEAD,
		neck=JSE_NECK,
		ear1="Moonshade Earring",
		ear2="Sherida Earring",
		--ear2=EMPY_EAR,		--high buff
		body=BUMBA_BODY,
		--body=NGAI_BODY,		--high buff
		--hands=BUMBA_HANDS,
		hands=AF_HANDS,			--high buff
		ring1="Epaminondas's Ring",
		ring2="Regal Ring",
		back=AMBUWSD_BACK,
		waist="Kentarch Belt +1",
		legs=RELIC_LEGS,
		feet=BUMBA_FEET
	}
	
	--[[sets.precast.WS.SomeAcc = set_combine(sets.precast.WS, {neck="Combatant's Torque"})
	sets.precast.WS.Acc = set_combine(sets.precast.WS, {ammo="C. Palug Stone",neck="Combatant's Torque",ear1="Telos Earring",body=MEGHANADA_BODY,waist="Olseni Belt",legs=MEGHANADA_LEGS,feet="Malignance Boots"})
	sets.precast.WS.FullAcc = set_combine(sets.precast.WS, {ammo="C. Palug Stone",neck="Combatant's Torque",ear1="Telos Earring",body=MEGHANADA_BODY,waist="Olseni Belt",legs=MEGHANADA_LEGS,feet="Malignance Boots"})
	sets.precast.WS.Proc = {ammo="Yamarang",
	head="Wh. Rarab Cap +1",neck="Loricate Torque +1",ear1="Brutal Earring",ear2="Sanare Earring",
	body="Dread Jupon",hands="Kurys Gloves",ring1="Defending Ring",ring2="Dark Ring",
	back="Moonlight Cape",waist="Flume Belt +1",legs="Dashing Subligar",feet="Ahosi Leggings"}]]

-- Specific weaponskill sets.  Uses the base set if an appropriate WSMod version isn't found.
	sets.precast.WS["Rudra's Storm"] = set_combine(sets.precast.WS, 
		{
			ammo="Coiste Bodhar",
			--ammmo="Crepuscular Pebble",	--high buff
			head=EMPY_HEAD,
			neck=JSE_NECK,
			ear1="Moonshade Earring",
			ear2="Sherida Earring",
			--ear2=EMPY_EAR,		--high buff
			body=BUMBA_BODY,
			--body=NGAI_BODY,		--high buff
			--hands=BUMBA_HANDS,
			hands=AF_HANDS,			--high buff
			ring1="Epaminondas's Ring",
			ring2="Regal Ring",
			back=AMBUWSD_BACK,
			waist="Kentarch Belt +1",
			legs=RELIC_LEGS,
			feet=BUMBA_FEET
		})
	
	--[[sets.precast.WS["Rudra's Storm"].SomeAcc = set_combine(sets.precast.WS.SomeAcc, {ammo="C. Palug Stone",head="Lilitu Headpiece",neck="Caro Necklace",ear1="Moonshade Earring",body=MEGHANADA_BODY,legs=gear.herculean_wsd_legs})
	sets.precast.WS["Rudra's Storm"].Acc = set_combine(sets.precast.WS.Acc, {ear1="Moonshade Earring",body=MEGHANADA_BODY})
	sets.precast.WS["Rudra's Storm"].FullAcc = set_combine(sets.precast.WS.FullAcc, {})
	sets.precast.WS["Rudra's Storm"].Fodder = set_combine(sets.precast.WS["Rudra's Storm"], {})]]
	
	sets.precast.WS["Shark Bite"] = set_combine(sets.precast.WS, 
		{
			ammo="Coiste Bodhar",
			--ammo="Crepuscular Pebble",	--high buff
			head=EMPY_HEAD,
			neck=JSE_NECK,
			ear1="Moonshade Earring",
			ear2="Sherida Earring",
			--ear2=EMPY_EAR,		--high buff
			body=BUMBA_BODY,
			--body=NGAI_BODY,		--high buff
			hands=AF_HANDS,
			--hands="NGAI_HANDS",		--high buff
			ring1="Ilabrat Ring",
			ring2="Regal Ring",
			back=AMBUWSD_BACK,		--agi cape
			waist="Sailfi Belt +1",
			legs=BUMBA_LEGS,
			--legs="NGAI_LEGS",		--high buff
			feet=BUMBA_FEET
		})
	
	--[[sets.precast.WS["Shark Bite"].SomeAcc = set_combine(sets.precast.WS.SomeAcc, {head="Lilitu Headpiece",neck="Caro Necklace",ear1="Moonshade Earring",body=MEGHANADA_BODY,legs=gear.herculean_wsd_legs})
	sets.precast.WS["Shark Bite"].Acc = set_combine(sets.precast.WS.Acc, {ear1="Moonshade Earring",body=MEGHANADA_BODY})
	sets.precast.WS["Shark Bite"].FullAcc = set_combine(sets.precast.WS.FullAcc, {})
	sets.precast.WS["Shark Bite"].Fodder = set_combine(sets.precast.WS["Shark Bite"], {})]]
	
	sets.precast.WS['Evisceration'] = set_combine(sets.precast.WS, 
		{
			ammo="Yetshila +1",
			--head="Blistering Sallet +1",
			neck="Fotia Gorget",
			--ear1="Mache Earring +1",	-- high buff
			ear1="Moonshade Earring",
			ear2="Odr Earring",
			body=NGAI_BODY,
			hands="Adhemar Wrist. +1",	--Path B
			--hands="NGAI_HANDS",		--high buff
			ring1="Begrudging Ring",
			--ring1="Gere Ring",		--high buff
			ring2="Regal Ring",
			back=AMBUCRIT_BACK,		--critical cape
			waist="Fotia Belt",
			legs=NGAI_LEGS,
			feet="Adhe. Gamashes +1"	--Path B
			--feet="NGAI_FEET"		--high buff		
		})
	
	--[[sets.precast.WS['Evisceration'].SomeAcc = set_combine(sets.precast.WS.SomeAcc, {head="Adhemar Bonnet +1",neck="Fotia Gorget",body="Abnoba Kaftan",hands="Mummu Wrists +2",ring1="Begrudging Ring",waist="Fotia Belt",legs="Mummu Kecks +2",feet="Mummu Gamash. +2"})
	sets.precast.WS['Evisceration'].Acc = set_combine(sets.precast.WS.Acc, {head=MUMMU_HEAD,ring1="Begrudging Ring",neck="Fotia Gorget",body="Sayadio's Kaftan",hands="Mummu Wrists +2",waist="Fotia Belt",legs="Mummu Kecks +2",feet="Mummu Gamash. +2"})
	sets.precast.WS['Evisceration'].FullAcc = set_combine(sets.precast.WS.FullAcc, {head=MUMMU_HEAD,body="Mummu Jacket +2",hands="Mummu Wrists +2",legs="Mummu Kecks +2",feet="Mummu Gamash. +2"})
	sets.precast.WS['Evisceration'].Fodder = set_combine(sets.precast.WS['Evisceration'], {})]]
	
	sets.precast.WS['Pyrrhic Kleos'] = set_combine(sets.precast.WS,{})
	
	--[[sets.precast.WS['Pyrrhic Kleos'].SomeAcc = set_combine(sets.precast.WS.SomeAcc, {head="Adhemar Bonnet +1",hands=AF_HANDS,})
	sets.precast.WS['Pyrrhic Kleos'].Acc = set_combine(sets.precast.WS.Acc, {})
	sets.precast.WS['Pyrrhic Kleos'].FullAcc = set_combine(sets.precast.WS.FullAcc, {})
	sets.precast.WS['Pyrrhic Kleos'].Fodder = set_combine(sets.precast.WS['Pyrrhic Kleos'], {})]]
	
	sets.precast.WS['Aeolian Edge'] = 
	{
		ammo="Ghastly Tathlum +1",
		head=BUMBA_HEAD,
		neck="Baetyl Pendant",
		ear1="Moonshade Earring",
		ear2="Friomisi Earring",
		body=BUMBA_BODY,
		hands=BUMBA_HANDS,
		ring1="Epaminondas's Ring",
		ring2="Dingir Ring",
		back=AMBUFC_BACK,
		waist="Orpheus's Sash",
		legs=BUMBA_LEGS,
		feet=BUMBA_FEET
	}

	sets.precast.WS['Aeolian Edge'].TH = set_combine(sets.precast.WS['Aeolian Edge'], sets.TreasureHunter)

	sets.precast.WS['Exenterator'] = 
	{
		ammo="Coiste Bodhar",
		--ammmo="Crepuscular Pebble",	--high buff
		head=BUMBA_HEAD,
		neck="Fotia Gorget",
		ear1="Moonshade Earring",
		ear2="Sherida Earring",
		body=BUMBA_BODY,
		--body=NGAI_BODY,
		hands=BUMBA_HANDS,
		--hands=NGAI_HANDS,
		ring1="Gere Ring",
		ring2="Sroda Ring",
		back=AMBUDA_BACK,
		waist="Fotia Belt",
		legs=BUMBA_LEGS,
		--legs=NGAI_LEGS,
		feet=BUMBA_FEET
	}

	sets.precast.WS['Shark Bite'] = 
	{
		ammo="Coiste Bodhar",
		--ammmo="Crepuscular Pebble",	--high buff
		head=BUMBA_HEAD,
		neck=JSE_NECK,
		ear1="Moonshade Earring",
		ear2="Sherida Earring",
		body=BUMBA_BODY,
		hands=BUMBA_HANDS,
		--hands=NGAI_HANDS,		--high buff
		--ring1="Epaminondas's Ring",	--high buff
		ring1="Ilabrat Ring",
		ring2="Regal Ring",
		back=AMBUWSD_BACK,
		waist="Sailfi Belt +1",
		legs=BUMBA_LEGS,
		--legs=NGAI_LEGS,		--high buff
		feet=BUMBA_FEET
	}

-- Swap to these on Moonshade using WS if at 3000 TP
	
	sets.MaxTP = {ear1="Ishvara Earring",ear2="Sherida Earring"}
	
	sets.AccMaxTP = {ear1="Mache Earring +1",ear2="Sherida Earring"}
	
	sets.Skillchain = {hands=EMPY_HANDS}
    
    
-- Midcast Sets
    
	sets.midcast.FastRecast = 
	{
		--head=gear.herculean_fc_head,
		neck="Voltsurge Torque",		--4 FC
		ear1="Enchntr. Earring +1",		--2 FC
		ear2="Loquac. Earring",			--2 FC
		--body="Dread Jupon",
		hands="Leyline Gloves",			--5 FC ~
		ring1="Defending Ring",
		ring2="Prolix Ring",
		back="Moonlight Cape",
		waist="Flume Belt +1",
		legs="Rawhide Trousers",
		feet="Malignance Boots"
	}
        
-- Specific spells
	sets.midcast.Utsusemi = set_combine(sets.midcast.FastRecast, {back="Mujin Mantle"})

    
-- Sets to return to when not performing an action.
    
-- Resting sets
	sets.resting = {}
	sets.ExtraRegen = {}
    

-- Idle sets

	sets.idle = 
	{
		ammo="Staunch Tathlum +1",
		head=NGAI_HEAD,
		neck="Warder's Charm +1",
		ear1="Eabani Earring",
		ear2="Sanare Earring",
		body=NGAI_BODY,
		hands=NGAI_HANDS,
		ring1=CHIRING_1,
		ring2=CHIRING_2,
		back=AMBUFC_BACK,
		waist="Plat. Mog. Belt",
		legs=NGAI_LEGS,
		feet=NGAI_FEET
	}
		
	sets.idle.Sphere = set_combine(sets.idle, {body="Mekosu. Harness"})
    
-- Defense sets

	sets.defense.PDT = 
		{
			ammo="Staunch Tathlum +1",
			head="Dampening Tam",
			neck="Loricate Torque +1",
			ear1="Etiolation Earring",
			ear2="Sanare Earring",
			body=MEGHANADA_BODY,
			hands=BUMBA_HANDS,
			ring1="Defending Ring",
			ring2="Dark Ring",
			back="Shadow Mantle",
			waist="Flume Belt +1",
			legs=BUMBA_LEGS,
			feet="Malignance Boots"
		}
		
	sets.defense.MDT = 
		{
			ammo="Staunch Tathlum +1",
			head="Dampening Tam",
			neck="Loricate Torque +1",
			ear1="Etiolation Earring",
			ear2="Sanare Earring",
			body=MEGHANADA_BODY,
			hands="Floral Gauntlets",
			ring1="Defending Ring",
			ring2="Dark Ring",
			back="Engulfer Cape +1",
			waist="Engraved Belt",
			legs=BUMBA_LEGS,
			feet="Ahosi Leggings"
		}
		
	sets.defense.MEVA = 
		{
			ammo="Staunch Tathlum +1",
			head=gear.herculean_fc_head,
			neck="Warder's Charm +1",
			ear1="Etiolation Earring",
			ear2="Sanare Earring",
			body="Adhemar Jacket +1",
			hands="Leyline Gloves",
			ring1="Vengeful Ring",
			ring2="Purity Ring",
			back="Mujin Mantle",
			waist="Engraved Belt",
			legs=MEGHANADA_LEGS,
			feet="Ahosi Leggings"
		}
		
	sets.Kiting = {ring2="Shneddick Ring +1",}

-- Engaged sets

-- Variations for TP weapon and (optional) offense/defense modes.  Code will fall back on previous
-- sets if more refined versions aren't defined.
-- If you create a set with both offense and defense modes, the offense mode should be first.
-- EG: sets.engaged.Dagger.Accuracy.Evasion
    
-- Normal melee group
	sets.engaged =
	{
		ammo="Aurgelmir Orb +1",
		--head="Adhemar Bonnet +1",
		head=AF_HEAD,
		neck=JSE_NECK,
		ear1="Brutal Earring",		--Balder Earring +1
		ear2="Sherida Earring",
		--body="Malignance Tabard",
		body="Adhemar Jacket +1",	--Path A
		hands="Adhemar Wrist. +1",	--Path A	
		ring1="Gere Ring",
		ring2=CHIRING_2,
		back=AMBUSTP_BACK,		--Dex +20, Accuracy +20 Attack +20, Accuracy +10, Store TP +10, Phys. dmg. taken -10%
		waist="Reiki Yotai",
		legs=NGAI_LEGS,
		feet=RELIC_FEET
	}

	sets.engaged.HyrbidGleti = 
	{
		ammo="Aurgelmir Orb +1",
		--head="Adhemar Bonnet +1",
		head=AF_HEAD,
		neck=JSE_NECK,
		ear1="Brutal Earring",		--Balder Earring +1
		ear2="Sherida Earring",
		body="Malignance Tabard",
		hands="Malignance Gloves",	
		ring1="Gere Ring",
		ring2="Moonlight Ring",
		back=AMBUSTP_BACK,		--Dex +20, Accuracy +20 Attack +20, Accuracy +10, Store TP +10, Phys. dmg. taken -10%
		waist="Reiki Yotai",
		legs=NGAI_LEGS,
		feet="Malignance Boots"
	}

	sets.engaged.HyrbidCento = 
	{
		ammo="Aurgelmir Orb +1",
		--head="Adhemar Bonnet +1",
		head=AF_HEAD,
		neck=JSE_NECK,
		ear1="Brutal Earring",		--Balder Earring +1
		ear2="Sherida Earring",
		body="Malignance Tabard",
		hands="Malignance Gloves",	
		ring1="Gere Ring",
		ring2=CHIRING_2,
		back=AMBUSTP_BACK,		--Dex +20, Accuracy +20 Attack +20, Accuracy +10, Store TP +10, Phys. dmg. taken -10%
		waist="Reiki Yotai",
		legs=NGAI_LEGS,
		feet=RELIC_FEET
	}
		
	sets.engaged.FullDT = 
	{
		ammo="Aurgelmir Orb +1",
		--head="Adhemar Bonnet +1",
		head=AF_HEAD,
		neck=JSE_NECK,
		ear1="Brutal Earring",		--Balder Earring +1
		ear2="Sherida Earring",
		body="Malignance Tabard",
		hands="Malignance Gloves",	--PathA	
		ring1=MOONRING_1,
		ring2=MOONRING_2,
		back=AMBUSTP_BACK,		--Dex +20, Accuracy +20 Attack +20, Accuracy +10, Store TP +10, Phys. dmg. taken -10%
		waist="Reiki Yotai",
		legs=NGAI_LEGS,
		feet=RELIC_FEET
	}
	
-- Buff sets: Gear that needs to be worn to actively enhance a current player buff.
	
	sets.buff['Saber Dance'] = {legs=RELIC_LEGS}
	
	sets.buff['Climactic Flourish'] = {ammo="Charis Feather",head=EMPY_HEAD,body=MEGHANADA_BODY}
	
	sets.buff.Doom = set_combine(sets.buff.Doom, {})
	
	sets.buff.Sleep = {head="Frenzy Sallet"}
end

- Select default macro book on initial load or subjob change.
function select_default_macro_book()
    -- Default macro set/book
    if player.sub_job == 'WAR' then
        set_macro_page(10, 20)
    elseif player.sub_job == 'NIN' then
        set_macro_page(1, 20)
    elseif player.sub_job == 'SAM' then
        set_macro_page(9, 20)
    elseif player.sub_job == 'THF' then
        set_macro_page(8, 20)
    else
        set_macro_page(10, 20)
    end
end

-- AutoWS List
autows_list = 
{
	['Trial']="Rudra's Storm",
}
