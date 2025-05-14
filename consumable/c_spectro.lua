local cons = {
    key = 'c_spectro',
    set = 'CharmsConsumableType',
    atlas = 'charms',
    pos = {x = 1, y = 1},
    loc_txt = {
        name = 'Spectro',
        text = {
            'Create 2 random {C:spectral,E:1}Spectral Cards{}.'
        }
    },

    can_use = function (self, card)
        return true
    end,

    use = function(self,card,area,copier)
        local newcard = create_card('Spectral', G.consumeables)
        newcard:add_to_deck()
        G.consumeables:emplace(newcard)
        local newcard = create_card('Spectral', G.consumeables)
        newcard:add_to_deck()
        G.consumeables:emplace(newcard)

    end,
}

return cons