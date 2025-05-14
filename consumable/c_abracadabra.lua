local cons = {
    key = 'c_abracadabra',
    set = 'CharmsConsumableType',
    atlas = 'charms',
    pos = {x = 1, y = 0},
    loc_txt = {
        name = 'Abracadabra',
        text = {
            'Create 2 random {C:dark_edition}Charms Card{}.'
        }
    },

    can_use = function (self, card)
        return true
    end,

    use = function(self,card,area,copier)
        local newcard = create_card('CharmsConsumableType', G.consumeables)
        newcard:add_to_deck()
        G.consumeables:emplace(newcard)
        local newcard = create_card('CharmsConsumableType', G.consumeables)
        newcard:add_to_deck()
        G.consumeables:emplace(newcard)

    end,
}

return cons