local cons = {
    key = 'c_spectro',
    set = 'CharmsConsumableType',
    atlas = 'charms',
    pos = {x = 1, y = 1},
    loc_txt = {
        name = 'Spectro',
        text = {
            'Create 1 random {C:spectral,E:1}Spectral Cards{}.',
            "{C:inactive}(Must have room){}"
        }
    },

    can_use = function (self, card)
        return true
    end,

    use = function(self,card,area,copier)
        if G.consumeables.config.card_limit > #G.consumeables.cards then
            local newcard = create_card('Spectral', G.consumeables)
            newcard:add_to_deck()
            G.consumeables:emplace(newcard)
        end
    end,
}

return cons