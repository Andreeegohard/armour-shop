-- This is a remake of https://github.com/STF-steffone/steffone_armour
-- By Andre, https://discord.gg/TbWXCRk7mC

Config = {}

-- Basic Setup 
-- Server name, can be customized
Config.ServerName = 'Name Server'

-- Menu Type

-- Choose between 'esx' for ESX menu or 'ox' for ox_lib menu
Config.Menu = 'esx'

-- Choose between 'esx' for ESX notifications or 'ox' for ox_lib notifications
Config.Notify = 'esx'

-- Shops Coordinates

-- Coordinates of the shops where players can access the armour shop
Config.Shops = {
    vec(219.1104, -817.4422, 30.5655),
    vec(212.5890, -818.9858, 30.5618)
}

-- Prices

-- Prices for each type of armour
Config.BasicArmour = 500
Config.SimpleArmour = 1000
Config.MediumArmour = 1250
Config.HighArmour = 1600

-- Language

-- Notification to open the shop
Config.OpenShop = 'Press [E] to Open the Shop'

-- Text for each type of armour available in the shop
Config.BuyBasicArmour = 'Buy Basic Armour'
Config.BuySimpleArmour = 'Buy Simple Armour'
Config.BuyMediumArmour = 'Buy Medium Armour'
Config.BuyHighArmour = 'Buy High Armour'
Config.ArmourRemove = 'Remove your armour'

-- Text for removing armour
Config.RemoveArmour = 'Armor Removed!'

-- Text for the notification when buying armour
Config.NotifyBuy = "You took armour, and you paid:"
