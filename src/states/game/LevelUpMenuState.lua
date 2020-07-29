LevelUpMenuState = Class{__includes = BaseState}

function LevelUpMenuState:init(battleState)
    self.battleState = battleState

    self.LevelUpMenu = Menu {
        x = VIRTUAL_WIDTH - 64,
        y = VIRTUAL_HEIGHT - 128,
        width = 64,
        height = 128,
        items = {
            {
                text = 'Fight',
                onSelect = function()
                end
            },
            {
                text = 'Run',
                onSelect = function()
                end
            }
        }
    }
end

function LevelUpMenuState:update(dt)
    self.LevelUpMenu:update(dt)
end

function LevelUpMenuState:render()
    self.LevelUpMenu:render()
end
