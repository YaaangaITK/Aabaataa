local cons = {
    key = 'c_lumos',
    set = 'CharmsConsumableType',
    atlas = 'charms',
    pos = {x = 0, y = 1},
    loc_txt = {
        name = 'Lumos',
        text = {
            'Set 3 {C:attention}Playing Cards{} as {C:dark_edition}Negative{}.'
        }
    },

    can_use = function(self,card)
        if G and G.hand then
            if #G.hand.highlighted ~= 0 and #G.hand.highlighted <= 3 then --if cards in hand highlighted are above 0 but below the configurable value then
                return true
            end
        end
        return false
    end,
    use = function(self,card,area,copier)
        for i = 1, #G.hand.highlighted do 
            --for every card in hand highlighted

            G.hand.highlighted[i]:set_edition({negative = true},true)
            --set their edition to negative
        end

    end,
}

return cons