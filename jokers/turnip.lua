local joker = {
    key = 'j_aa_turnip',
    loc_txt = {
        name = 'Turnip',
        text = {
            "Gives you {X:mult,C:white}X3{} Mult",
            "for each {C:money}-1${} you have in bank."
        },
    },
    atlas = 'Jokers',
    rarity = 2,
    cost = 5,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = false,
    perishable_compat = false,
    pos = {x = 0, y = 0},
    calculate = function(self,card,context)
        if context.joker_main then
            if G.GAME.dollars < 0 then
                return {
                    card = card,
                    Xmult_mod = 3 * (G.GAME.dollars * -1),
                    message = 'X' .. 3 * (G.GAME.dollars * -1),
                    colour = G.C.MULT
                }
            end
        end
    end
}

return joker