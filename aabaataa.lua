aa_config = SMODS.current_mod.config

--load atlas (texture)

SMODS.Atlas{
    key = 'Jokers',
    path = 'Jokers.png',
    px = 71,
    py = 95
}

SMODS.Atlas{
    key = 'charms',
    path = 'charms.png',
    px = 71,
    py = 95 -- ou la bonne taille
}

SMODS.Atlas({
        key = "modicon",
        path = "modicon.png",
        px = 32,
        py = 32
    })

--integrate the joker to the game

if aa_config["Jokers"] == nil then
  aa_config["Jokers"] = true
end

local joker_list = {
    "turnip",
    "figurine"
}

if not aa_config["Jokers"] then
  joker_list = {}
end

for _, v in ipairs(joker_list) do
    print(v)
    local joker = SMODS.load_file("jokers/"..v..".lua")()
    if not joker then
        goto continue
    end
    joker.key = v
    local joker_obj = SMODS.Joker(joker)
    for k_, v_ in pairs(joker) do
        if type(v_) == 'function' then
            joker_obj[k_] = joker[k_]
        end
    end
    ::continue::
end

--integrate the chalenges to the game

if aa_config["Chalenges"] == nil then
  aa_config["Chalenges"] = true
end

local chal_list = {
    "moneysmart"
}

if not aa_config["Chalenges"] then
  chal_list = {}
end

for _, v in ipairs(chal_list) do
    print(v)
    local chal = SMODS.load_file("chalenges/"..v..".lua")()
    if not chal then
        goto continue
    end
    chal.key = v
    local chal_obj = SMODS.Challenge(chal)
    for k_, v_ in pairs(chal) do
        if type(v_) == 'function' then
            chal_obj[k_] = chal[k_]
        end
    end
    ::continue::
end



--define charms

if aa_config["Cons"] == nil then
  aa_config["Cons"] = true
end

SMODS.ConsumableType{
    key = 'CharmsConsumableType',
    collection_rows = {4,5},
    primary_colour = 'G.C.DARK_EDITION',
    secondary_colour = 'G.C.DARK_EDITION',
    shop_rate = 1,
    loc_txt = {
        collection = 'Charms Cards',
        name = 'Charms',
    },
    
}

--load consumable

local Cons_list = {
    "c_abracadabra"
}

if not aa_config["Cons"] then
  Cons_list = {}
end

for _, v in ipairs(Cons_list) do
    print(v)
    local Cons = SMODS.load_file("consumable/"..v..".lua")()
    if not Cons then
        goto continue
    end
    Cons.key = v
    local Cons_obj = SMODS.Consumable(Cons)
    for k_, v_ in pairs(Cons) do
        if type(v_) == 'function' then
            Cons_obj[k_] = Cons[k_]
        end
    end
    ::continue::
end


--There is nothing here ;)