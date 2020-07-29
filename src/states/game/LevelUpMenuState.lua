LevelUpMenuState = Class{__includes = BaseState}

function LevelUpMenuState:init(def)
    self.battleState = def.battleState

    self.LevelUpMenu = Menu {
        x = 0,
        y = VIRTUAL_HEIGHT - 128,
        width = VIRTUAL_WIDTH,
        height = 128,
        items = {
            {
                text = 'Health: ' .. def.oldHP .. ' + ' .. def.hpIncrease .. ' = ' .. self.battleState.playerPokemon.HP,
                onSelect = function() end
            },
            {
                text = 'Attack: ' .. def.oldAttack .. ' + ' .. def.attackIncrease .. ' = ' .. self.battleState.playerPokemon.attack,
                onSelect = function() end
            },
            {
                text = 'Defense: ' .. def.oldDefense .. ' + ' .. def.defenseIncrease .. ' = ' .. self.battleState.playerPokemon.defense,
                onSelect = function() end
            },
            {
                text = 'Speed: ' .. def.oldSpeed .. ' + ' .. def.speedIncrease .. ' = ' .. self.battleState.playerPokemon.speed,
                onSelect = function() end
            }
        },
        displayCursor = false
    }
end

function LevelUpMenuState:update(dt)
    self.LevelUpMenu:update(dt)
end

function LevelUpMenuState:render()
    self.LevelUpMenu:render()
end
