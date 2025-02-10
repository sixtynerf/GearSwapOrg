function user_job_setup()

    -- Options: Override default values
	state.OffenseMode:options('Normal','Acc')
	state.HybridMode:options('Tank','DDTank','Normal')
	state.WeaponskillMode:options('Match','Normal', 'Acc')
	state.CastingMode:options('Normal','SIRD')
	state.Passive:options('None','AbsorbMP')
	state.PhysicalDefenseMode:options('PDT_HP','PDT','PDT_Reraise')
	state.MagicalDefenseMode:options('MDT_HP','MDT','MDT_Reraise')
	state.ResistDefenseMode:options('MEVA_HP','MEVA')
	state.IdleMode:options('Tank','Kiting','PDT','Block','MDT','Normal')
	state.Weapons:options('None','SakpataAegis','SakpataDuban','NaeglingBlurred','ClubDuban')
	
	state.ExtraDefenseMode = M{['description']='Extra Defense Mode','None','MP','Twilight'}

--Artifact Gear
	AF_HEAD 		= {name="Rev. Coronet +1"}			
	AF_BODY 		= {name="Rev. Surcoat +1"}		
	AF_HANDS 		= {name="Rev. Gauntlets +1"}		
	AF_LEGS 		= {name="Rev. Breeches +1"}			
	AF_FEET 		= {name="Rev. Leggings +1"}

--Relic Gear
	RELIC_HEAD 		= {name="Cab. Coronet +1"}		
	RELIC_BODY 		= {name="Cab. Surcoat +1"}		
	RELIC_HANDS 		= {name="Cab. Gauntlets +1"}
	RELIC_LEGS 		= {name="Cab. Breeches +1"}
	RELIC_FEET 		= {name="Cab. Leggings +1"}	

--Empyrean Gear
	EMPY_HEAD 		= {name="Chev. Armet +3"}		
	EMPY_BODY 		= {name="Chev. Cuirass +3"}		
	EMPY_HANDS 		= {name="Chev. Gauntlets +3"}		
	EMPY_LEGS 		= {name="Chev. Cuisses +3"}		
	EMPY_FEET 		= {name="Chev. Sabatons +3"}	

--EMPY EAR
	EMPY_EAR 		= {name="Chev. Earring +1"}

--RINGS
	StikiniRing_Ring1	= {name = "Stikini Ring +1", bag = "wardrobe2"}
	StikiniRing_Ring2	= {name = "Stikini Ring +1", bag = "wardrobe3"}

	ChirichRing_Ring1	= {name = "Chirich Ring +1", bag = "wardrobe2"}
	ChirichRing_Ring2	= {name = "Chirich Ring +1", bag = "wardrobe3"}

	MOONLIGHTRING_1 	= {name = "Moonlight Ring", bag = "wardrobe2"}
	MOONLIGHTRING_2 	= {name = "Moonlight Ring", bag = "wardrobe3"}

--CAPES
	AMBUFC_BACK 		= {name="Rudianos's Mantle", augments={'HP+60','Eva.+20 /Mag. Eva.+20','"Fast Cast"+10','Damage taken-5%',}}
	AMBUENMITY_BACK 	= {name="Rudianos's Mantle", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10','Damage taken-5%',}}
	AMBUBLOCK_BACK 		= {name="Rudianos's Mantle", augments={'HP+60, M.Eva./Eva.+20, Enm.+10, M.Eva+10, Block Chance+5%',}}
	AMBUPDT_BACK 		= {name="Rudianos's Mantle", augments={'HP+60, M.Eva/Eva+20, M.Eva+10, Enm.+10, PDT-10%',}}
	AMBUSTP_BACK 		= {name="Rudianos's Mantle", augments={'HP+60, Acc/Att+20, Acc+10, STP+10, Resist All+10%',}}
	AMBUWSD_BACK 		= {name="Rudianos's Mantle", augments={'HP+60, Acc/Att+20, STR+10, WSD+10%, PDT-10%',}}
	AMBUSIRD_BACK 		= {name="Rudianos's Mantle", augments={'HP+60, Acc/Att+20, STR+10, WSD+10%, PDT-10%',}}
	ADL_BACK		= {name="Weard Mantle"}
	
--NECKS
	JSE_NECK 		= {name="Kgt. Beads +2"}

----ESCHA and REISENJIMA
	
	PsyclothLegs_FC		= {name="Psycloth Lappas", augments={'MP+80','Mag. Acc.+15','"Fast Cast"+7',}}
	PsyclothFeet_WSD	= {name="Psycloth Lappas"}	
	
	-- Additional local binds
	send_command('bind !` gs c SubJobEnmity')
	send_command('bind ^backspace input /ja "Shield Bash" <t>')
	send_command('bind @backspace input /ja "Cover" <stpt>')
	send_command('bind !backspace input /ja "Sentinel" <me>')
	send_command('bind @= input /ja "Chivalry" <me>')
	send_command('bind != input /ja "Palisade" <me>')
	send_command('bind ^delete input /ja "Provoke" <stnpc>')
	send_command('bind !delete input /ma "Cure IV" <stal>')
	send_command('bind @delete input /ma "Flash" <stnpc>')
	send_command('bind !f11 gs c cycle ExtraDefenseMode')
	send_command('bind @` gs c cycle RuneElement')
	send_command('bind ^pause gs c toggle AutoRuneMode')
	send_command('bind ^q gs c set IdleMode Kiting')
	send_command('bind !q gs c set IdleMode PDT')
	send_command('bind @f8 gs c toggle AutoTankMode')
	send_command('bind @f10 gs c toggle TankAutoDefense')
	send_command('bind ^@!` gs c cycle SkillchainMode')
	
	select_default_macro_book()
	update_defense_mode()
end

function init_gear_sets()
	
	--------------------------------------
	-- Precast sets
	--------------------------------------

	sets.Enmity = 
	{
		main="Sakpata's Sword",
		sub="Duban",
		ammo="Paeapua",
	        head="Loess Barbuta +1",
		neck="Moonlight Necklace",
		ear1="Friomisi Earring",
		ear2="Trux Earring",
	        body="Souv. Cuirass +1",
		hands="Macabre Gaunt. +1",
		ring1="Apeile Ring +1",
		ring2="Apeile Ring",
	        back=AMBUENMITY_BACK,
		waist="Creed Baudrier",
		legs="Souv. Diechlings +1",
		feet="Eschite Greaves"
	}
	
	sets.Enmity.SIRD = 
	{
		main="Sakpata's Sword",
		sub="Sacro Bulwark",
		ammo="Staunch Tathlum +1",
		head="Loess Barbuta +1",
		neck="Moonlight Necklace",
		ear1="Friomisi Earring",
		ear2="Trux Earring",
		body="Souv. Cuirass +1",
		hands="Macabre Gaunt. +1",
		ring1="Apeile Ring +1",
		ring2=MOONLIGHTRING_2,
		back=AMBUENMITY_BACK,
		waist="Rumination Sash",
		legs="Founder's Hose",
		feet="Odyssean Greaves"
	}
	
	sets.Enmity.DT = 
	{
		ammo="Staunch Tathlum +1",
	        head="Souv. Schaller +1",
		neck="Unmoving Collar +1",
		ear1="Odnowa Earring +1",
		ear2="Tuisto Earring",
	        body=AF_BODY,
		hands="Souv. Handsch. +1",
		ring1="Gelatinous Ring +1",
		ring2=MOONLIGHTRING_2,
	        back="Moonlight Cape",
		waist="Creed Baudrier",
		legs="Souv. Diechlings +1",
		feet="Souveran Schuhs +1"
	}
		
    -- Precast sets to enhance JAs
	
	sets.precast.JA['Invincible'] = set_combine(sets.Enmity,{legs=RELIC_LEGS})
	sets.precast.JA['Holy Circle'] = set_combine(sets.Enmity,{feet=AF_FEET})
	sets.precast.JA['Sentinel'] = set_combine(sets.Enmity,{feet=RELIC_FEET})
	sets.precast.JA['Rampart'] = set_combine(sets.Enmity,{head=RELIC_HEAD}) --head=RELIC_HEAD (Also Vit?)
	sets.precast.JA['Fealty'] = set_combine(sets.Enmity,{body=RELIC_BODY})
	sets.precast.JA['Divine Emblem'] = set_combine(sets.Enmity,{feet=EMPY_FEET})
	sets.precast.JA['Cover'] = set_combine(sets.Enmity, {body=RELIC_BODY}) --head="Rev. Coronet +1",
	
	sets.precast.JA['Invincible'].DT = set_combine(sets.Enmity.DT,{legs=RELIC_LEGS})
	sets.precast.JA['Holy Circle'].DT = set_combine(sets.Enmity.DT,{feet=AF_FEET})
	sets.precast.JA['Sentinel'].DT = set_combine(sets.Enmity.DT,{feet=RELIC_FEET})
	sets.precast.JA['Rampart'].DT = set_combine(sets.Enmity.DT,{head=RELIC_HEAD})
	sets.precast.JA['Fealty'].DT = set_combine(sets.Enmity.DT,{body=RELIC_BODY})
	sets.precast.JA['Divine Emblem'].DT = set_combine(sets.Enmity.DT,{feet=EMPY_FEET})
	sets.precast.JA['Cover'].DT = set_combine(sets.Enmity.DT, {head=AF_HEAD,body=RELIC_BODY}) --head="Rev. Coronet +1",
	
    -- add mnd for Chivalry
	
	sets.precast.JA['Chivalry'] = 
	{
		ammo="Paeapua",
		head=BUMBA_HEAD,
		neck="Unmoving Collar +1",
		ear1="Nourish. Earring",
		ear2="Nourish. Earring +1",
		body=AF_BODY,
		hands=RELIC_HANDS,
		ring1=StikiniRing_Ring1,
		ring2="Rufescent Ring",
		back=AMBUENMITY_BACK,
		waist="Luminary Sash",
		legs=BUMBA_LEGS,
		feet="Carmine Greaves +1"
	}
	
	sets.precast.JA['Chivalry'].DT = 
	{
		ammo="Paeapua",
		head=BUMBA_HEAD,
		neck="Unmoving Collar +1",
		ear1="Odnowa Earring +1",
		ear2="Tuisto Earring",
		body=AF_BODY,
		hands=RELIC_HANDS,
		ring1="Gelatinous Ring +1",
		ring2=MOONLIGHTRING_2,
		back="Moonlight Cape",
		waist="Luminary Sash",
		legs=BUMBA_LEGS,
		feet="Carmine Greaves +1"
	}

	sets.precast.JA['Shield Bash'] = set_combine(sets.Enmity, {hands=RELIC_HANDS})
	sets.precast.JA['Provoke'] = set_combine(sets.Enmity, {})
	sets.precast.JA['Warcry'] = set_combine(sets.Enmity, {})
	sets.precast.JA['Palisade'] = set_combine(sets.Enmity, {})
	sets.precast.JA['Intervene'] = set_combine(sets.Enmity, {})
	sets.precast.JA['Defender'] = set_combine(sets.Enmity, {})
	sets.precast.JA['Berserk'] = set_combine(sets.Enmity, {})
	sets.precast.JA['Aggressor'] = set_combine(sets.Enmity, {})
	
	sets.precast.JA['Shield Bash'].DT = set_combine(sets.Enmity.DT, {hands=RELIC_HANDS})
	sets.precast.JA['Provoke'].DT = set_combine(sets.Enmity.DT, {})
	sets.precast.JA['Warcry'].DT = set_combine(sets.Enmity.DT, {})
	sets.precast.JA['Palisade'].DT = set_combine(sets.Enmity.DT, {})
	sets.precast.JA['Intervene'].DT = set_combine(sets.Enmity.DT, {})
	sets.precast.JA['Defender'].DT = set_combine(sets.Enmity.DT, {})
	sets.precast.JA['Berserk'].DT = set_combine(sets.Enmity.DT, {})
	sets.precast.JA['Aggressor'].DT = set_combine(sets.Enmity.DT, {})

    -- Waltz set (chr and vit)
	
	sets.precast.Waltz = 
	{
		ammo="Aurgelmir Orb +1",
		head=BUMBA_HEAD,
		neck="Unmoving Collar +1",
		ear1="Odnowa Earring +1",
		ear2="Tuisto Earring",
		body=AF_BODY,
		hands="Regal Gauntlets",
		ring1="Asklepian Ring",
		ring2="Valseur's Ring",
		back="Moonlight Cape",
		waist="Chaac Belt",
		legs=BUMBA_LEGS,
		feet=BUMBA_FEET
	}
        
    -- Don't need any special gear for Healing Waltz.
    sets.precast.Waltz['Healing Waltz'] = {}
	
	sets.precast.Step = 
	{
		ammo="Aurgelmir Orb +1",
	        head="Carmine Mask +1",
		neck="Combatant's Torque",
		ear1="Mache Earring +1",
		ear2="Telos Earring",
	        body=FLAMMA_BODY,
		hands="Regal Gauntlets",
		ring1="Ramuh Ring +1",
		ring2="Ramuh Ring +1",
	        back="Ground. Mantle +1",
		waist="Olseni Belt",
		legs="Carmine Cuisses +1",
		feet=FLAMMA_FEET
	}
		
	sets.precast.JA['Violent Flourish'] = 
	{
		ammo="Aurgelmir Orb +1",
		head=FLAMMA_HEAD,
		neck="Erra Pendant",
		ear1="Gwati Earring",
		ear2="Digni. Earring",
	        body=FLAMMA_BODY,
		hands=FLAMMA_HANDS,
		ring1="Defending Ring",
		ring2=StikiniRing_Ring2,
	        back="Ground. Mantle +1",
		waist="Olseni Belt",
		legs=FLAMMA_LEGS,
		feet=FLAMMA_FEET
	}
		
	sets.precast.JA['Animated Flourish'] = set_combine(sets.Enmity, {})

    -- Fast cast sets for spells
	
	sets.precast.FC = 
	{
		main="Sakpata's Sword",
		sub="Chanter's Shield",
		ammo="Impatiens",
		head="Carmine Mask +1",
		neck="Voltsurge Torque",
		ear1="Enchntr. Earring +1",
		ear2="Loquac. Earring",
		body=AF_BODY,
		hands="Leyline Gloves",
		ring1="Lebeche Ring",
		ring2="Kishar Ring",
		back=AMBUFC_BACK,
		waist="Creed Baudrier",
		legs=gear.odyssean_fc_legs,
		feet="Odyssean Greaves"
	}
	
	sets.precast.FC.DT = 
	{
		main="Sakpata's Sword",
		ammo="Impatiens",
	        head="Souv. Schaller +1",
		neck="Voltsurge Torque",
		ear1="Odnowa Earring +1",
		ear2="Tuisto Earring",
	        body=AF_BODY,
		hands="Souv. Handsch. +1",
		ring1="Gelatinous Ring +1",
		ring2=MOONLIGHTRING_2,
	        back="Moonlight Cape",
		waist="Creed Baudrier",
		legs="Souv. Diechlings +1",
		feet="Souveran Schuhs +1"
	}
		
    	sets.precast.FC['Enhancing Magic'] = set_combine(sets.precast.FC, 
		{
			waist="Siegel Sash"
		})
			
	sets.precast.FC['Enhancing Magic'].DT = set_combine(sets.precast.FC.DT, 
				{
					waist="Siegel Sash"
				})
	
	sets.precast.FC.Cure = set_combine(sets.precast.FC, 
		{
			neck="Diemer Gorget",
			ear1="Nourish. Earring",
			ear2="Nourish. Earring +1",
			body="Jumalik Mail"
		})
  
    -- Weaponskill sets
    -- Default set for any weaponskill that isn't any more specifically defined
	
	sets.precast.WS = 
	{
		ammo="Aurgelmir Orb +1",
		head=FLAMMA_HEAD,
		neck="Asperity Necklace",
		ear1="Cessance Earring",
		ear2="Brutal Earring",
		body=gear.valorous_wsd_body,
		hands=gear.odyssean_wsd_hands,
		ring1="Regal Ring",
		ring2="Rufescent Ring",
		back="Bleating Mantle",
		waist="Fotia Belt",
		legs=SULEVIA_LEGS,
		feet=SULEVIA_FEET
	}
	
	sets.precast.WS.DT = 
	{
		ammo="Staunch Tathlum +1",
	        head="Souv. Schaller +1",
		neck="Loricate Torque +1",
		ear1="Odnowa Earring +1",
		ear2="Tuisto Earring",
	        body=AF_BODY,
		hands="Souv. Handsch. +1",
		ring1="Gelatinous Ring +1",
		ring2=MOONLIGHTRING_2,
	        back="Moonlight Cape",
		waist="Creed Baudrier",
		legs="Souv. Diechlings +1",
		feet="Souveran Schuhs +1"
	}
	
	sets.precast.WS.Acc = 
	{
		ammo="Hasty Pinion +1",
	        head="Ynglinga Sallet",
		neck="Combatant's Torque",
		ear1="Mache Earring +1",
		ear2="Telos Earring",
	        body=gear.valorous_wsd_body,
		hands=KALUNGA_HANDS,
		ring1="Ramuh Ring +1",
		ring2="Ramuh Ring +1",
	        back="Ground. Mantle +1",
		waist="Olseni Belt",
		legs="Carmine Cuisses +1",
		feet=SULEVIA_FEET
	}

    -- Specific weaponskill sets.  Uses the base set if an appropriate WSMod version isn't found.
	
	sets.precast.WS['Requiescat'] = set_combine(sets.precast.WS, 
		{
			neck="Fotia Gorget",
			ear1="Brutal Earring",
			ear2="Moonshade Earring"
		})
	
	sets.precast.WS['Requiescat'].Acc = set_combine(sets.precast.WS.Acc, 
		{
			neck="Fotia Gorget",
			ear1="Mache Earring +1",
			ear2="Moonshade Earring"
		})
	
	sets.precast.WS['Chant du Cygne'] = set_combine(sets.precast.WS, 
		{
			neck="Fotia Gorget",
			ear1="Brutal Earring",
			ear2="Moonshade Earring"
		})
	
	sets.precast.WS['Chant du Cygne'].Acc = set_combine(sets.precast.WS.Acc, 
		{
			neck="Fotia Gorget",
			ear1="Mache Earring +1",
			ear2="Moonshade Earring"
		})

	sets.precast.WS['Savage Blade'] = set_combine(sets.precast.WS, 
		{
			neck="Fotia Gorget",
			ear1="Ishvara Earring",
			ear2="Moonshade Earring"
		})
	
	sets.precast.WS['Savage Blade'].Acc = set_combine(sets.precast.WS.Acc, {ear1="Mache Earring +1",ear2="Telos Earring"})
	
	sets.precast.WS['Flat Blade'] = 
	{
		ammo="Aurgelmir Orb +1",
	        head=FLAMMA_HEAD,
		neck="Erra Pendant",
		ear1="Gwati Earring",
		ear2="Digni. Earring",
	        body=FLAMMA_BODY,
		hands=FLAMMA_HANDS,
		ring1="Defending Ring",
		ring2=StikiniRing_Ring2,
	        back="Ground. Mantle +1",
		waist="Olseni Belt",
		legs=FLAMMA_LEGS,
		feet=FLAMMA_FEET
	}
	
	sets.precast.WS['Sanguine Blade'] = 
	{
		ammo="Ghastly Tathlum +1",
	        head="Pixie Hairpin +1",
		neck="Fotia Gorget",
		ear1="Friomisi Earring",
		ear2="Crematio Earring",
	        body=BUMBA_BODY,
		hands=BUMBA_HANDS,
		ring1="Archon Ring",
		ring2="Metamor. Ring +1",
	        back="Toro Cape",
		waist="Fotia Belt",
		legs=BUMBA_LEGS,
		feet=BUMBA_FEET
	}
	
	sets.precast.WS['Atonement'] = 
	{
		ammo="Paeapua",
	        head="Loess Barbuta +1",
		neck="Moonlight Necklace",
		ear1="Friomisi Earring",
		ear2="Trux Earring",
	        body="Souv. Cuirass +1",
		hands="Macabre Gaunt. +1",
		ring1="Apeile Ring +1",
		ring2="Apeile Ring",
	        back=AMBUENMITY_BACK,
		waist="Creed Baudrier",
		legs="Souv. Diechlings +1",
		feet="Eschite Greaves"
	}

	-- Swap to these on Moonshade using WS if at 3000 TP
	sets.MaxTP = {ear1="Cessance Earring",ear2="Brutal Earring",}
	sets.AccMaxTP = {ear1="Mache Earring +1",ear2="Telos Earring"}


	--------------------------------------
	-- Midcast sets
	--------------------------------------
	
	sets.midcast.FastRecast =
	{
		main="Sakpata's Sword",
		sub="Chanter's Shield",
		ammo="Hasty Pinion +1",
		head="Carmine Mask +1",
		neck="Voltsurge Torque",
		ear1="Enchntr. Earring +1",
		ear2="Loquac. Earring",
		body=AF_BODY,
		hands="Leyline Gloves",
		ring1="Gelatinous Ring +1",
		ring2="Kishar Ring",
		back=AMBUFC_BACK,
		waist="Creed Baudrier",
		legs=gear.odyssean_fc_legs,
		feet="Odyssean Greaves"
	}
		
	sets.midcast.FastRecast.DT = 
	{
		main="Sakpata's Sword",
		sub="Duban",
		ammo="Staunch Tathlum +1",
		head="Souv. Schaller +1",
		neck="Loricate Torque +1",
		ear1="Odnowa Earring +1",
		ear2="Tuisto Earring",
	        body=AF_BODY,
		hands="Souv. Handsch. +1",
		ring1="Gelatinous Ring +1",
		ring2=MOONLIGHTRING_2,
	        back="Moonlight Cape",
		waist="Creed Baudrier",
		legs="Souv. Diechlings +1",
		feet="Souveran Schuhs +1"
	}
	
	sets.midcast.Flash = set_combine(sets.Enmity, {})
	sets.midcast.Flash.SIRD = set_combine(sets.Enmity.SIRD, {})
	sets.midcast.Stun = set_combine(sets.Enmity, {})
	sets.midcast.Stun.SIRD = set_combine(sets.Enmity.SIRD, {})
	sets.midcast['Blue Magic'] = set_combine(sets.Enmity, {})
	sets.midcast['Blue Magic'].SIRD = set_combine(sets.Enmity.SIRD, {})
	sets.midcast.Cocoon = set_combine(sets.Enmity.SIRD, {})
	
	sets.midcast.Cure = 
	{
		main="Sakpata's Sword",
		sub="Sacro Bulwark",
		ammo="Staunch Tathlum +1",
		head="Loess Barbuta +1",
		neck="Sacro Gorget",
		ear1="Nourish. Earring",
		ear2="Nourish. Earring +1",
		body="Jumalik Mail",
		hands="Macabre Gaunt. +1",
		ring1="Defending Ring",
		ring2=MOONLIGHTRING_2,
		back=AMBUENMITY_BACK,
		waist="Creed Baudrier",
		legs="Carmine Cuisses +1",
		feet="Odyssean Greaves"
	}
	
	sets.midcast.Cure.SIRD = 
	{
		main="Deacon Sword",
		sub="Sacro Bulwark",
		ammo="Staunch Tathlum +1",
		head="Souveran Schaller +1",
		neck="Loricate Torque +1",
		ear1="Nourish. Earring",
		ear2="Nourish. Earring +1",
		body="Jumalik Mail",
		hands="Macabre Gaunt. +1",
		ring1="Defending Ring",
		ring2=MOONLIGHTRING_2,
		back=AMBUENMITY_BACK,
		waist="Creed Baudrier",
		legs="Founder's Hose",
		feet="Odyssean Greaves"
	}
	
	sets.midcast.Cure.DT = 
	{
		main="Deacon Sword",
		sub="Sacro Bulwark",
		ammo="Staunch Tathlum +1",
		head="Souv. Schaller +1",
		neck="Loricate Torque +1",
		ear1="Odnowa Earring +1",
		ear2="Tuisto Earring",
	        body=AF_BODY,
		hands="Souv. Handsch. +1",
		ring1="Gelatinous Ring +1",
		ring2=MOONLIGHTRING_2,
	        back="Moonlight Cape",
		waist="Creed Baudrier",
		legs="Souv. Diechlings +1",
		feet="Souveran Schuhs +1"
	}
	
	sets.midcast.Reprisal = 
	{
		main="Sakpata's Sword",
		sub="Forfend +1",
		ammo="Staunch Tathlum +1",
		head="Loess Barbuta +1",
		neck="Unmoving Collar +1",
		ear1="Odnowa Earring +1",
		ear2="Tuisto Earring",
	        body=AF_BODY,
		hands="Souv. Handsch. +1",
		ring1="Gelatinous Ring +1",
		ring2=MOONLIGHTRING_2,
	        back="Moonlight Cape",
		waist="Creed Baudrier",
		legs="Arke Cosc. +1",
		feet="Souveran Schuhs +1"
	}

	sets.Self_Healing = 
	{
		main="Deacon Sword",
		sub="Sacro Bulwark",
		ammo="Staunch Tathlum +1",
		head="Souv. Schaller +1",
		neck="Sacro Gorget",
		ear1="Nourish. Earring",
		ear2="Nourish. Earring +1",
		body="Souv. Cuirass +1",
		hands="Macabre Gaunt. +1",
		ring1="Gelatinous Ring +1",
		ring2=MOONLIGHTRING_2,
		back="Moonlight Cape",
		waist="Creed Baudrier",
		legs="Souv. Diechlings +1",
		feet="Souveran Schuhs +1"
	}
		
	sets.Self_Healing.SIRD = 
	{
		main="Deacon Sword",
		sub="Sacro Bulwark",
		ammo="Staunch Tathlum +1",
		head="Souv. Schaller +1",
		neck="Loricate Torque +1",
		ear1="Nourish. Earring",
		ear2="Nourish. Earring +1",
		body="Souv. Cuirass +1",
		hands="Macabre Gaunt. +1",
		ring1="Defending Ring",
		ring2=MOONLIGHTRING_2,
		back="Solemnity Cape",
		waist="Flume Belt +1",
		legs="Founder's Hose",
		feet="Odyssean Greaves"
	}
		
	sets.Self_Healing.DT = 
	{
		main="Deacon Sword",
		sub="Sacro Bulwark",
		ammo="Staunch Tathlum +1",
	        head="Souv. Schaller +1",
		neck="Loricate Torque +1",
		ear1="Odnowa Earring +1",
		ear2="Tuisto Earring",
	        body=AF_BODY,
		hands="Souv. Handsch. +1",
		ring1="Gelatinous Ring +1",
		ring2=MOONLIGHTRING_2,
	        back="Moonlight Cape",
		waist="Creed Baudrier",
		legs="Souv. Diechlings +1",
		feet="Souveran Schuhs +1"
	}

	sets.Cure_Received = {hands="Souv. Handsch. +1",feet="Souveran Schuhs +1"}
	sets.Self_Refresh = {waist="Gishdubar Sash"}
	
	sets.midcast['Enhancing Magic'] = 
	{
		main="Colada",
		sub="Duban",
		ammo="Staunch Tathlum +1",
		head="Carmine Mask +1",
		neck="Incanter's Torque",
		ear1="Mimir Earring",
		ear2="Andoaa Earring",
		body="Shab. Cuirass +1",
		hands="Regal Gauntlets",
		ring1="Defending Ring",
		ring2="Kishar Ring",
		back="Merciful Cape",
		waist="Olympus Sash",
		legs="Carmine Cuisses +1",
		feet="Odyssean Greaves"
	}
	
	sets.midcast['Enhancing Magic'].SIRD = 
	{
		main="Colada",
		sub="Duban",
		ammo="Staunch Tathlum +1",
		head="Souv. Schaller +1",
		neck="Incanter's Torque",
		ear1="Mimir Earring",
		ear2="Tuisto Earring",
		body="Shab. Cuirass +1",
		hands="Souv. Handsch. +1",
		ring1="Defending Ring",
		ring2=MOONLIGHTRING_2,
		back="Merciful Cape",
		waist="Olympus Sash",
		legs=AF_LEGS,
		feet="Odyssean Greaves"
	}
	
	sets.midcast.Stoneskin = set_combine(sets.midcast['Enhancing Magic'], 
		{
			waist="Siegel Sash"
		})
	
	sets.midcast.Protect = set_combine(sets.midcast['Enhancing Magic'], 
		{
			ring2="Sheltered Ring"
		})
	
	sets.midcast.Shell = set_combine(sets.midcast['Enhancing Magic'], 
		{
			ring2="Sheltered Ring"
		})
	
	sets.midcast.Phalanx = set_combine(sets.midcast['Enhancing Magic'], 
		{
			main="Sakpata's Sword",
			sub="Forfend +1",
			hands="Souv. Handsch. +1",
			back="Weard Mantle",
			legs=KALUNGA_LEGS,
			feet="Souveran Schuhs +1"
		})
	
	sets.midcast.Phalanx.SIRD = set_combine(sets.midcast['Enhancing Magic'].SIRD, 
		{
			main="Sakpata's Sword",
			sub="Duban",hands="Souv. Handsch. +1",
			back="Weard Mantle",
			feet="Souveran Schuhs +1"
		})
	
	sets.midcast.Phalanx.DT = set_combine(sets.midcast.Phalanx.SIRD, {})
	
	sets.Phalanx_Received = 
	{
		main="Sakpata's Sword",
		hands="Souv. Handsch. +1",
		back="Weard Mantle",
		legs=KALUNGA_LEGS,
		feet="Souveran Schuhs +1"
	}
	--------------------------------------
	-- Idle/resting/defense/etc sets
	--------------------------------------
	
	sets.resting = 
	{
		ammo="Homiliary",
		head="Jumalik Helm",neck="Coatl Gorget +1",ear1="Etiolation Earring",ear2="Ethereal Earring",
		body="Jumalik Mail",hands="Souv. Handsch. +1",ring1="Defending Ring",ring2="Dark Ring",
		back="Moonlight Cape",waist="Fucho-no-obi",legs=SULEVIA_LEGS,feet=RELIC_FEET
	}

    -- Idle sets
	
	sets.idle = 
	{
		main="Malignance Sword",
		sub="Duban",
		ammo="Homiliary",
		head="Jumalik Helm"
		,neck="Coatl Gorget +1",
		ear1="Etiolation Earring",
		ear2="Ethereal Earring",
		body="Jumalik Mail",
		hands="Regal Gauntlets",
		ring1=StikiniRing_Ring1,
		ring2=StikiniRing_Ring2,
		back="Moonlight Cape",
		waist="Flume Belt +1",
		legs="Carmine Cuisses +1",
		feet="Hippo. Socks +1"
	}
	
	sets.idle.PDT = 
	{
		main="Sakpata's Sword",
		sub="Sacro Bulwark",
		ammo="Eluder's Sachet",
		head=KALUNGA_HEAD,
		neck="Unmoving Collar +1",
		ear1="Odnowa Earring +1",
		ear2="Tuisto Earring",
		body=KALUNGA_BODY,
		hands=KALUNGA_HANDS,
		ring1="Gelatinous Ring +1",
		ring2="Warden's Ring",
		back="Moonlight Cape",
		waist="Flume Belt +1",
		legs=KALUNGA_LEGS,
		feet=KALUNGA_FEET
	}
	
	sets.idle.Block = 
	{
		main="Deacon Sword",
		sub="Duban",
		ammo="Staunch Tathlum +1",
		head="Chevalier's Armet +1",
		neck="Diemer Gorget",
		ear1="Creed Earring",
		ear2="Thureous Earring",
		body=KALUNGA_BODY,
		hands="Souv. Handsch. +1",
		ring1="Gelatinous Ring +1",
		ring2=MOONLIGHTRING_2,
		back="Shadow Mantle",
		waist="Flume Belt +1",
		legs=KALUNGA_LEGS,
		feet="Souveran Schuhs +1"
	}
	
	sets.idle.MDT = 
	{
		main="Sakpata's Sword",
		sub="Aegis"
		,ammo="Staunch Tathlum +1",
		head=BUMBA_HEAD,
		neck="Warder's Charm +1",
		ear1="Etiolation Earring",
		ear2="Sanare Earring",
		body=BUMBA_BODY,
		hands=BUMBA_HANDS,
		ring1="Archon Ring",
		ring2="Shadow Ring",
		back=AMBUFC_BACK,
		waist="Carrier's Sash",
		legs=BUMBA_LEGS,
		feet=BUMBA_FEET
	}
	
	sets.idle.Tank = 
	{
		main="Sakpata's Sword",
		sub="Duban",
		ammo="Staunch Tathlum +1",
		head=EMPY_HEAD,
		neck="Warder's Charm +1",
		ear1="Creed Earring",
		ear2="Thureous Earring",
		body=KALUNGA_BODY,
		hands="Souv. Handsch. +1",
		ring1="Gelatinous Ring +1",
		ring2="Shadow Ring",
		back="Shadow Mantle",
		waist="Flume Belt +1",
		legs=EMPY_LEGS,
		feet="Souveran Schuhs +1"
	}
		
	sets.idle.Kiting = 
	{
		main="Sakpata's Sword",
		sub="Sacro Bulwark",
		ammo="Eluder's Sachet",
		head=KALUNGA_HEAD,
		neck="Unmoving Collar +1",
		ear1="Odnowa Earring +1",
		ear2="Tuisto Earring",
		body=KALUNGA_BODY,
		hands=KALUNGA_HANDS,
		ring1="Gelatinous Ring +1",
		ring2="Warden's Ring",
		back="Moonlight Cape",
		waist="Flume Belt +1",
		legs="Carmine Cuisses +1",
		feet="Hippo. Socks +1"
	}

	sets.Kiting = {legs="Carmine Cuisses +1"}

	sets.latent_refresh = {waist="Fucho-no-obi"}
	sets.latent_refresh_grip = {sub="Oneiros Grip"}
	sets.latent_regen = {ring1="Apeile Ring +1",ring2="Apeile Ring"}
	sets.DayIdle = {}
	sets.NightIdle = {}

	--------------------------------------
    -- Defense sets
    --------------------------------------
    
    -- Extra defense sets.  Apply these on top of melee or defense sets.
	sets.Knockback = {}
	
	sets.MP = 
	{
		head=EMPY_HEAD,
		neck="Coatl Gorget +1",
		ear2="Ethereal Earring",
		waist="Flume Belt +1",
		feet=AF_FEET
	}
	sets.passive.AbsorbMP = 
	{
		head=EMPY_HEAD,
		neck="Coatl Gorget +1",
		ear2="Ethereal Earring",
		waist="Flume Belt +1",
		feet=AF_FEET
	}
	
	sets.MP_Knockback = {}
	sets.Twilight = {head="Twilight Helm", body="Twilight Mail"}
	sets.TreasureHunter = set_combine(sets.TreasureHunter, {})
	
	-- Weapons sets
	sets.weapons.SakpataAegis = {main="Sakpata's Sword",sub="Aegis"}
	sets.weapons.NaeglingBlurred = {main="Naegling",sub="Blurred Shield"}
	sets.weapons.SakpataDuban = {main="Sakpata's Sword",sub="Duban"}
	sets.weapons.ClubDuban = {main="Mafic Cudgel",sub="Duban"}
	sets.weapons.DualWeapons = {main="Naegling",sub="Demersal Degen +1"}
	
	sets.defense.Block = 
	{
		main="Sakpata's Sword",sub="Duban",ammo="Eluder's Sachet",
		head=EMPY_HEAD,neck="Diemer Gorget",ear1="Creed Earring",ear2="Thureous Earring",
		body=KALUNGA_BODY,hands="Souv. Handsch. +1",ring1="Defending Ring",ring2="Warden's Ring",
		back="Shadow Mantle",waist="Flume Belt +1",legs=KALUNGA_LEGS,feet="Souveran Schuhs +1"
	}
		
	sets.defense.PDT = 
	{
		main="Sakpata's Sword",sub="Duban",ammo="Eluder's Sachet",
		head=KALUNGA_HEAD,neck="Unmoving Collar +1",ear1="Odnowa Earring +1",ear2="Tuisto Earring",
		body=KALUNGA_BODY,hands=KALUNGA_HANDS,ring1="Gelatinous Ring +1",ring2="Warden's Ring",
		back="Shadow Mantle",waist="Flume Belt +1",legs=KALUNGA_LEGS,feet=KALUNGA_FEET
	}
		
	sets.defense.PDT_HP = 
	{
		main="Sakpata's Sword",sub="Duban",ammo="Eluder's Sachet",
	        head="Souv. Schaller +1",neck="Unmoving Collar +1",ear1="Odnowa Earring +1",ear2="Tuisto Earring",
	        body=AF_BODY,hands="Souv. Handsch. +1",ring1="Gelatinous Ring +1",ring2=MOONLIGHTRING_2,
	        back="Moonlight Cape",waist="Creed Baudrier",legs="Arke Cosc. +1",feet="Souveran Schuhs +1"
	}
		
	sets.defense.MDT = 
	{
		main="Malignance Sword",sub="Aegis",ammo="Staunch Tathlum +1",
		head=BUMBA_HEAD,neck="Warder's Charm +1",ear1="Odnowa Earring +1",ear2="Sanare Earring",
		body=BUMBA_BODY,hands=BUMBA_HANDS,ring1="Archon Ring",ring2="Shadow Ring",
		back=AMBUFC_BACK,waist="Carrier's Sash",legs=BUMBA_LEGS,feet=BUMBA_FEET
	}
	
	sets.defense.MDT_HP = 
	{
		main="Sakpata's Sword",sub="Aegis",ammo="Staunch Tathlum +1",
	        head=KALUNGA_HEAD,neck="Warder's Charm +1",ear1="Odnowa Earring +1",ear2="Tuisto Earring",
	        body="Sakpata's Plate",hands=KALUNGA_HANDS,ring1="Gelatinous Ring +1",ring2=MOONLIGHTRING_2,
	        back="Moonlight Cape",waist="Carrier's Sash",legs=KALUNGA_LEGS,feet=KALUNGA_FEET
	}

	sets.defense.MEVA = 
	{
		main="Malignance Sword",sub="Aegis",ammo="Staunch Tathlum +1",
		head=BUMBA_HEAD,neck="Warder's Charm +1",ear1="Etiolation Earring",ear2="Sanare Earring",
		body=BUMBA_BODY,hands=BUMBA_HANDS,ring1="Purity Ring",ring2="Shadow Ring",
		back=AMBUFC_BACK,waist="Asklepian Belt",legs=BUMBA_LEGS,feet=BUMBA_FEET
	}
	
	sets.defense.MEVA_HP = 
	{
		main="Malignance Sword",sub="Aegis",ammo="Staunch Tathlum +1",
        head=KALUNGA_HEAD,neck="Warder's Charm +1",ear1="Odnowa Earring +1",ear2="Tuisto Earring",
        body="Sakpata's Plate",hands=KALUNGA_HANDS,ring1="Gelatinous Ring +1",ring2=MOONLIGHTRING_2,
        back="Moonlight Cape",waist="Asklepian Belt",legs=KALUNGA_LEGS,feet=KALUNGA_FEET
	}
	
	sets.defense.PDT_Reraise = set_combine(sets.defense.PDT_HP,{head="Twilight Helm",body="Twilight Mail"})
	
	sets.defense.MDT_Reraise = set_combine(sets.defense.MDT_HP,{head="Twilight Helm",body="Twilight Mail"})
		
	--------------------------------------
	-- Engaged sets
	--------------------------------------
	
	sets.engaged = 
	{
		main="Sakpata's Sword",sub="Duban",ammo="Aurgelmir Orb +1",
		head=FLAMMA_HEAD,neck="Asperity Necklace",ear1="Cessance Earring",ear2="Brutal Earring",
		body=gear.valorous_wsd_body,hands=KALUNGA_HANDS,ring1="Flamma Ring",ring2="Petrov Ring",
		back="Bleating Mantle",waist="Windbuffet Belt +1",legs=SULEVIA_LEGS,feet=FLAMMA_FEET
	}
	
	sets.engaged.Acc = 
	{
		main="Sakpata's Sword",sub="Duban",ammo="Hasty Pinion +1",
	        head=FLAMMA_HEAD,neck="Combatant's Torque",ear1="Mache Earring +1",ear2="Telos Earring",
	        body=gear.valorous_wsd_body,hands=KALUNGA_HANDS,ring1="Ramuh Ring +1",ring2="Ramuh Ring +1",
	        back="Ground. Mantle +1",waist="Tempus Fugit",legs="Carmine Cuisses +1",feet=SULEVIA_FEET
	}
	
	sets.engaged.DW = {}
	
	sets.engaged.DW.Acc = {}

	sets.engaged.Tank = 
	{
		main="Sakpata's Sword",sub="Duban",ammo="Staunch Tathlum +1",
		head=EMPY_HEAD,neck="Loricate Torque +1",ear1="Creed Earring",ear2="Thureous Earring",
		body="Tartarus Platemail",hands="Souv. Handsch. +1",ring1="Defending Ring",ring2="Shadow Ring",
		back="Shadow Mantle",waist="Flume Belt +1",legs=EMPY_LEGS,feet="Souveran Schuhs +1"
	}
		
	sets.engaged.DDTank = 
	{
		ammo="Hasty Pinion +1",
		head=KALUNGA_HEAD,neck="Loricate Torque +1",ear1="Brutal Earring",ear2="Cessance Earring",
		body="Tartarus Platemail",hands=KALUNGA_HANDS,ring1="Defending Ring",ring2="Patricius Ring",
		back="Weard Mantle",waist="Sailfi Belt +1",legs=KALUNGA_LEGS,feet=KALUNGA_FEET
	}
		
	sets.engaged.Acc.DDTank = 
	{
		ammo="Hasty Pinion +1",
		head=KALUNGA_HEAD,neck="Loricate Torque +1",ear1="Mache Earring +1",ear2="Telos Earring",
		body="Tartarus Platemail",hands=KALUNGA_HANDS,ring1="Defending Ring",ring2="Patricius Ring",
		back="Weard Mantle",waist="Sailfi Belt +1",legs=KALUNGA_LEGS,feet=KALUNGA_FEET
	
		
	sets.engaged.NoShellTank =
	{
		main="Sakpata's Sword",sub="Duban",ammo="Staunch Tathlum +1",
	        head="Jumalik Helm",neck="Loricate Torque +1",ear1="Thureous Earring",ear2="Etiolation Earring",
	        body=AF_BODY,hands=KALUNGA_HANDS,ring1="Defending Ring",ring2=MOONLIGHTRING_2,
	        back="Moonlight Cape",waist="Flume Belt +1",legs=gear.odyssean_fc_legs,feet=RELIC_FEET
	}
		
	sets.engaged.Reraise = set_combine(sets.engaged.Tank, sets.Reraise)
	sets.engaged.Acc.Reraise = set_combine(sets.engaged.Acc.Tank, sets.Reraise)
		
	--------------------------------------
	-- Custom buff sets
	--------------------------------------
	sets.buff.Doom = set_combine(sets.buff.Doom, {})
	sets.buff.Sleep = {neck="Vim Torque +1"}
	sets.buff.Cover = {body=RELIC_BODY}
end

-- Select default macro book on initial load or subjob change.
function select_default_macro_book()
    -- Default macro set/book
    if player.sub_job == 'NIN' then
        set_macro_page(2, 4)
    elseif player.sub_job == 'RUN' then
        set_macro_page(9, 4)
    elseif player.sub_job == 'RDM' then
        set_macro_page(6, 4)
    elseif player.sub_job == 'BLU' then
        set_macro_page(8, 4)
    elseif player.sub_job == 'DNC' then
        set_macro_page(4, 4)
    else
        set_macro_page(1, 4) --War/Etc
    end
end
