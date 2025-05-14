local chal = {
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
            {id = "dollars", value = 100}
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

return chal