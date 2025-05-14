local joker = {
    key = 'j_aa_ccf',
    loc_txt = {
        name = 'Colectible Toy',
        text = {
            "Gives you one {C:dark_edition,T:tag_negative}Negative Tag{}",
            "at the end of the round."
        },
    },
    atlas = 'Jokers',
    rarity = 3,
    cost = 7,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = false,
    perishable_compat = false,
    pos = {x = 0, y = 1},
    soul_pos = {x = 1, y = 1},
    calculate = function(self,card,context)
        if self.debuff then return nil end
        if context.end_of_round and not (context.individual or context.repetition) then
            return{
                add_tag(Tag('tag_negative')),
                card = card,
                message = 'Negative !',
                colour = G.C.DARK_EDITION
            }
        end
    end
}

return joker