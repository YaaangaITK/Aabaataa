--- STEAMODDED HEADER
--- MOD_NAME: Aabaataa
--- MOD_ID: aabaataa
--- MOD_AUTHOR: [yaaangaitk]
--- MOD_DESCRIPTION: More... things?
--- BADGE_COLOR: G.C.DARK_EDITION
--- PREFIX: xmpl
----------------------------------------------
------------MOD CODE -------------------------

--define texture atlas

if SMODS.Atlas then
    SMODS.Atlas{
    key = 'Jokers',
    path = 'Jokers.png',
    px = 71,
    py = 95
}

SMODS.Atlas({
        key = "modicon",
        path = "modicon.png",
        px = 32,
        py = 32
    })

end
--Turnip Joker

SMODS.Joker{
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

--Collectible Figurine

SMODS.Joker{
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

SMODS.Challenge {
    key = "c_aa_economic",
    loc_txt = {
        name = 'Smart Money'
    },
    rules = {
        custom = {
            {id = "no_interest"},
            {id = "no_reward"},
            {id = "no_extra_hand_money"}
        },

        modifiers = {
            {id = "dollars", value = 250}
        }
    },
    restrictions = {
        banned_cards = {
            {id = "j_egg"},
            {id = "j_golden"},
            {id = "j_trading"},
            {id = "j_credit_card"},
            {id = "j_delayed_grat"},
            {id = "j_business"},
            {id = "j_faceless"},
            {id = "j_todo_list"},
            {id = "j_cloud_9"},
            {id = "j_rocket"},
            {id = "j_gift"},
            {id = "j_mail"},
            {id = "j_to_the_moon"},
            {id = "j_ticket"},
            {id = "j_rough_gem"},
            {id = "j_matador"},
            {id = "j_satellite"},
            {id = "j_midas_mask"},
            {id = "c_talisman"},
            {id = "c_wraith"},
            {id = "c_immolate"},
            {id = "c_magician"},
            {id = "c_hermit"},
            {id = "c_temperance"},
            {id = "c_devil"},
            {id = "m_gold"},
            {id = "m_lucky"},
            {id = "p_standard_normal_1"},
            {id = "p_standard_normal_2"},
            {id = "p_standard_normal_3"},
            {id = "p_standard_normal_4"},
            {id = "p_standard_jumbo_1"},
            {id = "p_standard_jumbo_2"},
            {id = "p_standard_mega_1"},
            {id = "p_standard_mega_2"}
        },

        banned_tags = {
            {id = "tag_handy"},
            {id = "tag_garbage"},
            {id = "tag_investment"},
            {id = "tag_economy"},
            {id = "tag_standard"}
        }

    }

        
}


  
----------------------------------------------
------------MOD CODE END----------------------
    