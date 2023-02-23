Config = {}

Config.Settings = {
    Core = "qb-core", -- Your core folder name "qb-core"
    Target = "qb-target", -- Your target/third eye folder name "qb-target"
    Notify = "QBCore", -- Change your notify here "QBCore" | "okok" | "mythic"
    Webhook = "", -- Your webhook to logs when players selling
    Cooldown = false, -- Enable cooldown?
    Timer = 60, -- 60 Seconds
}

Config.Blips = {
    [1] = {enable = true, x = -66.90, y = -1312.41, z = 28.28, sprite = 605, display = 4, scale = 0.8, colour = 5,  name = "Lottery Tickets"},
    -- You can add more blips
    -- Example:
    -- [2] = {enable = true, x = -66.90, y = -1312.41, z = 28.28, sprite = 605, display = 4, scale = 0.8, colour = 5,  name = "Lottery Tickets"},
    -- [3] = {enable = true, x = -66.90, y = -1312.41, z = 28.28, sprite = 605, display = 4, scale = 0.8, colour = 5,  name = "Lottery Tickets"},
}

Config.Peds = {
    [1] = {enable = true, type = 4, hash = GetHashKey("a_m_m_tourist_01"), x = -66.90,  y = -1312.41,  z = 28.28, h = 179.15},
    -- You can add more peds
    -- Example :
    --  [2] = {enable = true, type = 4, hash = GetHashKey("a_m_m_tourist_01"), x = -66.90,  y = -1312.41,  z = 28.28, h = 179.15},
    --  [3] = {enable = true, type = 4, hash = GetHashKey("a_m_m_tourist_01"), x = -66.90,  y = -1312.41,  z = 28.28, h = 179.15},
}

Config.LotteryShop = {
    [1] = { name = "lotterycard01", price = 50,   amount = 10, info = {}, type = "item", slot = 1 },
    [2] = { name = "lotterycard02", price = 150,  amount = 10, info = {}, type = "item", slot = 2 },
    [3] = { name = "lotterycard03", price = 350,  amount = 10, info = {}, type = "item", slot = 3 },
    [4] = { name = "lotterycard04", price = 650,  amount = 10, info = {}, type = "item", slot = 4 },
    [5] = { name = "lotterycard05", price = 1000, amount = 10, info = {}, type = "item", slot = 5 },
}

Config.Rewards = {
    ["LotteryCard01"] = {
        chancePremiumReward = 90, -- Chance to get the premium reward
        minReward = 10, -- Minimum reward
        maxReward = 100, -- Maximum reward
        premiumReward = 150, -- Premium reward
    },
    ["LotteryCard02"] = {
        chancePremiumReward = 30, -- Chance to get the premium reward
        minReward = 50, -- Minimum reward
        maxReward = 300, -- Maximum reward
        premiumReward = 450, -- Premium reward
    },
    ["LotteryCard03"] = {
        chancePremiumReward = 20, -- Chance to get the premium reward
        minReward = 150, -- Minimum reward
        maxReward = 550, -- Maximum reward
        premiumReward = 750, -- Premium reward
    },
    ["LotteryCard04"] = {
        chancePremiumReward = 10, -- Chance to get the premium reward
        minReward = 500, -- Minimum reward
        maxReward = 950, -- Maximum reward
        premiumReward = 1250, -- Premium reward
    },
    ["LotteryCard05"] = {
        chancePremiumReward = 5, -- Chance to get the premium reward
        minReward = 800, -- Minimum reward
        maxReward = 1250, -- Maximum reward
        premiumReward = 1650, -- Premium reward
    },
}
