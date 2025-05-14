local cons = {
    key = 'c_abracadabra',
    set = 'CharmsConsumableType',
    atlas = 'charms',
    pos = {x = 1, y = 0},
    loc_txt = {
        name = 'Abracadabra',
        text = {
            'Create 2 random {C:dark_edition}Charms Card{}.',
            "{C:inactive}(Must have room){}"
        }
    },

    can_use = function (self, card)
        return true
    end,

    use = function(self,card,area,copier)
        if G.consumeables.config.card_limit > #G.consumeables.cards then
            for i = 1, 2 do
                local newcard = create_card('CharmsConsumableType', G.consumeables, 'c_spectro')
                newcard:add_to_deck()
                G.consumeables:emplace(newcard)
            end
        elseif G.consumeables.config.card_limit == #G.consumeables.cards + 1 then
                local newcard = create_card('CharmsConsumableType', G.consumeables, 'c_spectro')
                newcard:add_to_deck()
                G.consumeables:emplace(newcard)
        end

    end,
}

return cons