Config = {}

Config.Notification = "lation_ui" -- "ox_lib" or "lation_ui"
Config.Display = "lation_ui" -- "ox_lib" or "lation_ui"
Config.Cooldown = 60 -- Cooldown in seconds between using scratch cards

Config.ScratchSettings = {
    location       = vec3(418.51, -767.68, 29.43),       -- Local da loja de raspadinhas
    location_ped   = vec4(418.51, -767.68, 29.43, 88.6), -- Posição do ped com heading
    ped_model      = "u_m_m_partytarget",
    locationBlip = {
        enable = true,
        sprite = 52,
        color  = 2,
        scale  = 0.6,
        text   = "Scratch Shop",
    },
}

Config.MaxScratchCards = 5 -- Maximum scratch cards a player can buy at once

Config.ScratchShop = {
    { item_name = "scratchcard01", item_price = 50  },
    { item_name = "scratchcard02", item_price = 150 },
    { item_name = "scratchcard03", item_price = 300 },
    { item_name = "scratchcard04", item_price = 500 },
    { item_name = "scratchcard05", item_price = 750 },
}

Config.Rewards = {
    {
        id                 = "scratchcard01", -- Item name
        name               = "Card 01", -- Label for the card
        chancePremium      = 90, -- Chance to win premium reward in percentage
        rewardRange        = { min = 10, max = 100 }, -- Normal reward
        premiumReward      = 150, -- Premium reward
    },
    {
        id                 = "scratchcard02",
        name               = "Card 02",
        chancePremium      = 30,
        rewardRange        = { min = 50, max = 300 },
        premiumReward      = 450,
    },
    {
        id                 = "scratchcard03",
        name               = "Card 03",
        chancePremium      = 20,
        rewardRange        = { min = 150, max = 550 },
        premiumReward      = 750,
    },
    {
        id                 = "scratchcard04",
        name               = "Card 04",
        chancePremium      = 10,
        rewardRange        = { min = 500, max = 950 },
        premiumReward      = 1250,
    },
    {
        id                 = "scratchcard05",
        name               = "Card 05",
        chancePremium      = 5,
        rewardRange        = { min = 800, max = 1250 },
        premiumReward      = 1650,
    },
}

