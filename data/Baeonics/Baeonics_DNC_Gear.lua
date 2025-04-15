-- Setup vars that are user-dependent.  Can override this function in a sidecar file.
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
	CHRRING_1 = {name = "Carb. Ring +1", bag = "wardrobe2"}
	CHRRING_2 = {name = "Carb. Ring +1", bag = "wardrobe3"}

--Expensive Rings...
	BMSRING_1 = {name = "Stikini Ring +1", bag = "wardrobe2"}
	BMSRING_2 = {name = "Stikini Ring +1", bag = "wardrobe3"}
	
--DT Rings
	MOONRING_1 = {name = "Moonlight Ring", bag = "wardrobe2"}
	MOONRING_2 = {name = "Moonlight Ring", bag = "wardrobe3"}

--AMBU CAPES
	AMBUSTP_BACK = {name="Senuna's Mantle",augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}}
	AMBUWSD_BACK = {name="Senuna's Mantle",augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}}

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
		--ring1=CHRRING_1,
		--ring2="Valseur's Ring",
		-ring2=CHRRING_2,
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
		
	sets.Enmity = {ammo="Paeapua",
	head="Nyame Helm",neck="Unmoving Collar +1",ear1="Friomisi Earring",ear2="Trux Earring",
	body="Emet Harness +1",hands="Malignance Gloves",ring1="Petrov Ring",ring2="Vengeful Ring",
	back="Solemnity Cape",waist="Goading Belt",legs="Nyame Flanchard",feet="Malignance Boots"}
		
	sets.precast.JA.Provoke = sets.Enmity
	
	sets.precast.Flourish1 = {}
	sets.precast.Flourish1['Violent Flourish'] = {ammo="C. Palug Stone",
	head=AF_HEAD,neck="Combatant's Torque",ear1="Telos Earring",ear2="Digni. Earring",
	body="Mummu Jacket +2",hands=AF_HANDS,ring1="Ramuh Ring +1",ring2="Ramuh Ring +1",
	back=AMBUSTP_BACK,waist="Olseni Belt",legs="Meg. Chausses +2",feet="Malignance Boots"}
		
	sets.precast.Flourish1['Animated Flourish'] = sets.Enmity
		
	sets.precast.Flourish1['Desperate Flourish'] = {ammo="C. Palug Stone",
	head=AF_HEAD,neck="Combatant's Torque",ear1="Telos Earring",ear2="Digni. Earring",
	body="Mummu Jacket +2",hands=AF_HANDS,ring1="Ramuh Ring +1",ring2="Ramuh Ring +1",
	back=AMBUSTP_BACK,waist="Olseni Belt",legs="Meg. Chausses +2",feet="Malignance Boots"}
	
	sets.precast.Flourish2 = {}
	sets.precast.Flourish2['Reverse Flourish'] = {back="Toetapper Mantle"} --hands="Charis Bangles +2"
	
	sets.precast.Flourish3 = {}
	sets.precast.Flourish3['Striking Flourish'] = {} --body="Charis Casaque +2"
	sets.precast.Flourish3['Climactic Flourish'] = {}

-- Fast cast sets for spells
    
	sets.precast.FC = {ammo="Impatiens",
		head=gear.herculean_fc_head,neck="Voltsurge Torque",ear1="Enchntr. Earring +1",ear2="Loquac. Earring",
		body="Dread Jupon",hands="Leyline Gloves",ring1="Lebeche Ring",ring2="Prolix Ring",
		legs="Rawhide Trousers"}
	
	sets.precast.FC.Utsusemi = set_combine(sets.precast.FC, {neck="Magoraga Beads"})

       
-- Weaponskill sets
-- Default set for any weaponskill that isn't any more specifically defined
	sets.precast.WS = {ammo="Voluspa Tathlum",
	head=AF_HEAD,neck="Asperity Necklace",ear1="Brutal Earring",ear2="Sherida Earring",
	body="Adhemar Jacket +1",hands="Meg. Gloves +2",ring1="Ilabrat Ring",ring2="Regal Ring",
	back=AMBUWSD_BACK,waist="Grunfeld Rope",legs="Samnuha Tights",feet=gear.herculean_wsd_feet}
	
	sets.precast.WS.SomeAcc = set_combine(sets.precast.WS, {neck="Combatant's Torque"})
	sets.precast.WS.Acc = set_combine(sets.precast.WS, {ammo="C. Palug Stone",neck="Combatant's Torque",ear1="Telos Earring",body="Meg. Cuirie +2",waist="Olseni Belt",legs="Meg. Chausses +2",feet="Malignance Boots"})
	sets.precast.WS.FullAcc = set_combine(sets.precast.WS, {ammo="C. Palug Stone",neck="Combatant's Torque",ear1="Telos Earring",body="Meg. Cuirie +2",waist="Olseni Belt",legs="Meg. Chausses +2",feet="Malignance Boots"})
	sets.precast.WS.Proc = {ammo="Yamarang",
	head="Wh. Rarab Cap +1",neck="Loricate Torque +1",ear1="Brutal Earring",ear2="Sanare Earring",
	body="Dread Jupon",hands="Kurys Gloves",ring1="Defending Ring",ring2="Dark Ring",
	back="Moonlight Cape",waist="Flume Belt +1",legs="Dashing Subligar",feet="Ahosi Leggings"}

-- Specific weaponskill sets.  Uses the base set if an appropriate WSMod version isn't found.
	sets.precast.WS["Rudra's Storm"] = set_combine(sets.precast.WS, {ammo="C. Palug Stone",head="Lilitu Headpiece",neck="Caro Necklace",ear1="Moonshade Earring",ear2="Ishvara Earring",body=gear.herculean_wsd_body,legs=gear.herculean_wsd_legs})
	sets.precast.WS["Rudra's Storm"].SomeAcc = set_combine(sets.precast.WS.SomeAcc, {ammo="C. Palug Stone",head="Lilitu Headpiece",neck="Caro Necklace",ear1="Moonshade Earring",body="Meg. Cuirie +2",legs=gear.herculean_wsd_legs})
	sets.precast.WS["Rudra's Storm"].Acc = set_combine(sets.precast.WS.Acc, {ear1="Moonshade Earring",body="Meg. Cuirie +2"})
	sets.precast.WS["Rudra's Storm"].FullAcc = set_combine(sets.precast.WS.FullAcc, {})
	sets.precast.WS["Rudra's Storm"].Fodder = set_combine(sets.precast.WS["Rudra's Storm"], {})
	
	sets.precast.WS["Shark Bite"] = set_combine(sets.precast.WS, {head="Lilitu Headpiece",neck="Caro Necklace",ear1="Moonshade Earring",ear2="Ishvara Earring",body=gear.herculean_wsd_body,legs=gear.herculean_wsd_legs})
	sets.precast.WS["Shark Bite"].SomeAcc = set_combine(sets.precast.WS.SomeAcc, {head="Lilitu Headpiece",neck="Caro Necklace",ear1="Moonshade Earring",body="Meg. Cuirie +2",legs=gear.herculean_wsd_legs})
	sets.precast.WS["Shark Bite"].Acc = set_combine(sets.precast.WS.Acc, {ear1="Moonshade Earring",body="Meg. Cuirie +2"})
	sets.precast.WS["Shark Bite"].FullAcc = set_combine(sets.precast.WS.FullAcc, {})
	sets.precast.WS["Shark Bite"].Fodder = set_combine(sets.precast.WS["Shark Bite"], {})
	
	sets.precast.WS['Evisceration'] = set_combine(sets.precast.WS, {ammo="Charis Feather",head="Adhemar Bonnet +1",neck="Fotia Gorget",body="Abnoba Kaftan",hands="Mummu Wrists +2",ring1="Begrudging Ring",waist="Fotia Belt",feet="Mummu Gamash. +2"})
	sets.precast.WS['Evisceration'].SomeAcc = set_combine(sets.precast.WS.SomeAcc, {head="Adhemar Bonnet +1",neck="Fotia Gorget",body="Abnoba Kaftan",hands="Mummu Wrists +2",ring1="Begrudging Ring",waist="Fotia Belt",legs="Mummu Kecks +2",feet="Mummu Gamash. +2"})
	sets.precast.WS['Evisceration'].Acc = set_combine(sets.precast.WS.Acc, {head=MUMMU_HEAD,ring1="Begrudging Ring",neck="Fotia Gorget",body="Sayadio's Kaftan",hands="Mummu Wrists +2",waist="Fotia Belt",legs="Mummu Kecks +2",feet="Mummu Gamash. +2"})
	sets.precast.WS['Evisceration'].FullAcc = set_combine(sets.precast.WS.FullAcc, {head=MUMMU_HEAD,body="Mummu Jacket +2",hands="Mummu Wrists +2",legs="Mummu Kecks +2",feet="Mummu Gamash. +2"})
	sets.precast.WS['Evisceration'].Fodder = set_combine(sets.precast.WS['Evisceration'], {})
	
	sets.precast.WS['Pyrrhic Kleos'] = set_combine(sets.precast.WS, {head="Adhemar Bonnet +1",hands=AF_HANDS,feet=gear.herculean_ta_feet})
	sets.precast.WS['Pyrrhic Kleos'].SomeAcc = set_combine(sets.precast.WS.SomeAcc, {head="Adhemar Bonnet +1",hands=AF_HANDS,})
	sets.precast.WS['Pyrrhic Kleos'].Acc = set_combine(sets.precast.WS.Acc, {})
	sets.precast.WS['Pyrrhic Kleos'].FullAcc = set_combine(sets.precast.WS.FullAcc, {})
	sets.precast.WS['Pyrrhic Kleos'].Fodder = set_combine(sets.precast.WS['Pyrrhic Kleos'], {})
	
	sets.precast.WS['Aeolian Edge'] = {ammo="Seeth. Bomblet +1",
	head=gear.herculean_nuke_head,neck="Baetyl Pendant",ear1="Friomisi Earring",ear2="Crematio Earring",
	body="Samnuha Coat",hands="Leyline Gloves",ring1="Metamor. Ring +1",ring2="Shiva Ring +1",
	back=AMBUWSD_BACK,waist="Chaac Belt",legs=gear.herculean_wsd_legs,feet=gear.herculean_nuke_feet}

	sets.precast.WS['Aeolian Edge'].TH = set_combine(sets.precast.WS['Aeolian Edge'], sets.TreasureHunter)

-- Swap to these on Moonshade using WS if at 3000 TP
	sets.MaxTP = {ear1="Ishvara Earring",ear2="Sherida Earring"}
	sets.AccMaxTP = {ear1="Mache Earring +1",ear2="Sherida Earring"}
	
	sets.Skillchain = {} --hands="Charis Bangles +2"
    
    
-- Midcast Sets
    
	sets.midcast.FastRecast = {
	head=gear.herculean_fc_head,neck="Voltsurge Torque",ear1="Enchntr. Earring +1",ear2="Loquac. Earring",
	body="Dread Jupon",hands="Leyline Gloves",ring1="Defending Ring",ring2="Prolix Ring",
	back="Moonlight Cape",waist="Flume Belt +1",legs="Rawhide Trousers",feet="Malignance Boots"}
        
-- Specific spells
	sets.midcast.Utsusemi = set_combine(sets.midcast.FastRecast, {back="Mujin Mantle"})

    
-- Sets to return to when not performing an action.
    
-- Resting sets
	sets.resting = {}
	sets.ExtraRegen = {}
    

-- Idle sets

	sets.idle = {ammo="Staunch Tathlum +1",
	head="Nyame Helm",neck="Loricate Torque +1",ear1="Etiolation Earring",ear2="Sanare Earring",
	body="Nyame Mail",hands="Nyame Gauntlets",ring1="Defending Ring",ring2="Sheltered Ring",
	back="Shadow Mantle",waist="Flume Belt +1",legs="Nyame Flanchard",feet="Malignance Boots"}
		
	sets.idle.Sphere = set_combine(sets.idle, {body="Mekosu. Harness"})
    
-- Defense sets

	sets.defense.PDT = {ammo="Staunch Tathlum +1",
	head=AF_HEAD,neck="Loricate Torque +1",ear1="Etiolation Earring",ear2="Sanare Earring",
	body="Meg. Cuirie +2",hands="Nyame Gauntlets",ring1="Defending Ring",ring2="Dark Ring",
	back="Shadow Mantle",waist="Flume Belt +1",legs="Nyame Flanchard",feet="Malignance Boots"}
	
	sets.defense.MDT = {ammo="Staunch Tathlum +1",
	head=AF_HEAD,neck="Loricate Torque +1",ear1="Etiolation Earring",ear2="Sanare Earring",
	body="Meg. Cuirie +2",hands="Floral Gauntlets",ring1="Defending Ring",ring2="Dark Ring",
	back="Engulfer Cape +1",waist="Engraved Belt",legs="Nyame Flanchard",feet="Ahosi Leggings"}
		
	sets.defense.MEVA = {ammo="Staunch Tathlum +1",
	head=gear.herculean_fc_head,neck="Warder's Charm +1",ear1="Etiolation Earring",ear2="Sanare Earring",
	body="Adhemar Jacket +1",hands="Leyline Gloves",ring1="Vengeful Ring",ring2="Purity Ring",
	back="Mujin Mantle",waist="Engraved Belt",legs="Meg. Chausses +2",feet="Ahosi Leggings"}

	sets.Kiting = {feet="Skd. Jambeaux +1"}

-- Engaged sets

-- Variations for TP weapon and (optional) offense/defense modes.  Code will fall back on previous
-- sets if more refined versions aren't defined.
-- If you create a set with both offense and defense modes, the offense mode should be first.
-- EG: sets.engaged.Dagger.Accuracy.Evasion
    
-- Normal melee group
	sets.engaged = {ammo="Yamarang",
	head=AF_HEAD,neck="Anu Torque",ear1="Brutal Earring",ear2="Sherida Earring",
	body="Adhemar Jacket +1",hands=AF_HANDS,ring1="Gere Ring",ring2="Epona's Ring",
	back=AMBUSTP_BACK,waist="Windbuffet Belt +1",legs="Samnuha Tights",feet=gear.herculean_ta_feet}
	
	sets.engaged.DTLite = {ammo="Yamarang",
	head=AF_HEAD,neck="Loricate Torque +1",ear1="Brutal Earring",ear2="Sherida Earring",
	body="Adhemar Jacket +1",hands=AF_HANDS,ring1="Defending Ring",ring2="Epona's Ring",
	back=AMBUSTP_BACK,waist="Windbuffet Belt +1",legs="Samnuha Tights",feet=gear.herculean_ta_feet}
	
	sets.engaged.SomeAcc = {ammo="Yamarang",
	head=AF_HEAD,neck="Combatant's Torque",ear1="Brutal Earring",ear2="Sherida Earring",
	body="Adhemar Jacket +1",hands=AF_HANDS,ring1="Gere Ring",ring2="Epona's Ring",
	back=AMBUSTP_BACK,waist="Windbuffet Belt +1",legs="Samnuha Tights",feet=gear.herculean_ta_feet}
	
	sets.engaged.Acc = {ammo="Yamarang",
	head=AF_HEAD,neck="Combatant's Torque",ear1="Telos Earring",ear2="Sherida Earring",
	body="Mummu Jacket +2",hands="Floral Gauntlets",ring1="Ilabrat Ring",ring2="Regal Ring",
	back=AMBUSTP_BACK,waist="Reiki Yotai",legs="Meg. Chausses +2",feet="Malignance Boots"}
	
	sets.engaged.FullAcc = {ammo="C. Palug Stone",
	head=AF_HEAD,neck="Combatant's Torque",ear1="Telos Earring",ear2="Digni. Earring",
	body="Mummu Jacket +2",hands=AF_HANDS,ring1="Ramuh Ring +1",ring2="Ramuh Ring +1",
	back=AMBUSTP_BACK,waist="Olseni Belt",legs="Meg. Chausses +2",feet="Malignance Boots"}
	
	sets.engaged.Fodder = {ammo="Yamarang",
	head=AF_HEAD,neck="Ainia Collar",ear1="Brutal Earring",ear2="Sherida Earring",
	body="Adhemar Jacket +1",hands=AF_HANDS,ring1="Gere Ring",ring2="Epona's Ring",
	back=AMBUSTP_BACK,waist="Windbuffet Belt +1",legs="Samnuha Tights",feet=gear.herculean_ta_feet}
	
	sets.engaged.PDT = {ammo="Staunch Tathlum +1",
	head=AF_HEAD,neck="Loricate Torque +1",ear1="Dudgeon Earring",ear2="Heartseeker Earring",
	body="Meg. Cuirie +2",hands="Meg. Gloves +2",ring1="Defending Ring",ring2="Moonlight Ring",
	back="Moonlight Cape",waist="Flume Belt +1",legs="Meg. Chausses +2",feet="Ahosi Leggings"}
	
	sets.engaged.SomeAcc.PDT = {ammo="Staunch Tathlum +1",
	head=AF_HEAD,neck="Loricate Torque +1",ear1="Dudgeon Earring",ear2="Heartseeker Earring",
	body="Meg. Cuirie +2",hands="Meg. Gloves +2",ring1="Defending Ring",ring2="Patricius Ring",
	back="Moonlight Cape",waist="Flume Belt +1",legs="Meg. Chausses +2",feet="Ahosi Leggings"}
	
	sets.engaged.Acc.PDT = {ammo="Staunch Tathlum +1",
	head=AF_HEAD,neck="Loricate Torque +1",ear1="Dudgeon Earring",ear2="Heartseeker Earring",
	body="Meg. Cuirie +2",hands="Meg. Gloves +2",ring1="Defending Ring",ring2="Patricius Ring",
	back="Moonlight Cape",waist="Flume Belt +1",legs="Meg. Chausses +2",feet="Ahosi Leggings"}
	
	sets.engaged.FullAcc.PDT = {ammo="Staunch Tathlum +1",
	head=AF_HEAD,neck="Loricate Torque +1",ear1="Dudgeon Earring",ear2="Heartseeker Earring",
	body="Meg. Cuirie +2",hands="Meg. Gloves +2",ring1="Defending Ring",ring2="Patricius Ring",
	back="Moonlight Cape",waist="Olseni Belt",legs="Meg. Chausses +2",feet="Ahosi Leggings"}
	
	sets.engaged.Fodder.PDT = {ammo="Staunch Tathlum +1",
	head=AF_HEAD,neck="Loricate Torque +1",ear1="Dudgeon Earring",ear2="Heartseeker Earring",
	body="Meg. Cuirie +2",hands="Meg. Gloves +2",ring1="Defending Ring",ring2="Dark Ring",
	back="Moonlight Cape",waist="Flume Belt +1",legs="Meg. Chausses +2",feet="Malignance Boots"}
	
-- Buff sets: Gear that needs to be worn to actively enhance a current player buff.
	sets.buff['Saber Dance'] = {} --legs="Horos Tights"
	sets.buff['Climactic Flourish'] = {ammo="Charis Feather",head="Adhemar Bonnet +1",body="Meg. Cuirie +2"} --head="Charis Tiara +2"
	sets.buff.Doom = set_combine(sets.buff.Doom, {})
	sets.buff.Sleep = {head="Frenzy Sallet"}
end

-- Select default macro book on initial load or subjob change.
function select_default_macro_book()
-- Default macro set/book
    if player.sub_job == 'WAR' then
        set_macro_page(10, 9)
    elseif player.sub_job == 'NIN' then
        set_macro_page(1, 9)
    elseif player.sub_job == 'SAM' then
        set_macro_page(9, 9)
    elseif player.sub_job == 'THF' then
        set_macro_page(8, 9)
    else
        set_macro_page(10, 9)
    end
end

-- AutoWS List
autows_list = 
{
	['Trial']="Rudra's Storm",
}
