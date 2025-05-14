local joker = {
    key = 'j_aa_enchantress',
    loc_txt = {
        name = 'Enchantress',
        text = {
            "Generate 1 random {C:purple}Charms Card{}",
            "at the end of the round.",
            "{C:inactive}(Must have room){}"
        },
    },
    atlas = 'charms',
    rarity = 1,
    cost = 3,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = false,
    perishable_compat = false,
    pos = {x = 0, y = 0},
    calculate = function(self,card,context)
        if self.debuff then return nil end
        if context.end_of_round and not (context.individual or context.repetition) then
            if G.consumeables.config.card_limit > #G.consumeables.cards then
                local newcard = create_card('CharmsConsumableType', G.consumeables)
                newcard:add_to_deck()
                G.consumeables:emplace(newcard)
            end
        end
    end
}

return joker