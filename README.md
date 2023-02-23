# m-Lottery script for QB-Core

- Thank you very much for purchasing this product! Hope you have fun!
- If you are intested in recieving updates join the community on **[Discord](https://discord.gg/marcinhu)**! |


# Features
- Optimized
- 0.00ms
- 3 Types of rewards
- 5 Types of cards
- Webhooks
- Cooldown

# About
- A simple scratch card script. You can buy scratchcards and open them to win prizes! All values are configurable.



# Install the script:

**qb-core/shared/items.lua**
```
    ['lotterycard01']           = {['name'] = "lotterycard01",          ['label'] = "Lottery Card 01",              ['weight'] = 100,   ['type'] = "item",    ['image'] = "lotterycard01.png",          ['unique'] = false,    ['useable'] = true,       ['shouldClose'] = true,    ["combinable"] = nil,   ["description"] = ""},
    ['lotterycard02']           = {['name'] = "lotterycard02",          ['label'] = "Lottery Card 02",              ['weight'] = 100,   ['type'] = "item",    ['image'] = "lotterycard02.png",          ['unique'] = false,    ['useable'] = true,       ['shouldClose'] = true,    ["combinable"] = nil,   ["description"] = ""},
    ['lotterycard03']           = {['name'] = "lotterycard03",          ['label'] = "Lottery Card 03",              ['weight'] = 100,   ['type'] = "item",    ['image'] = "lotterycard03.png",          ['unique'] = false,    ['useable'] = true,       ['shouldClose'] = true,    ["combinable"] = nil,   ["description"] = ""},
    ['lotterycard04']           = {['name'] = "lotterycard04",          ['label'] = "Lottery Card 04",              ['weight'] = 100,   ['type'] = "item",    ['image'] = "lotterycard04.png",          ['unique'] = false,    ['useable'] = true,       ['shouldClose'] = true,    ["combinable"] = nil,   ["description"] = ""},
    ['lotterycard05']           = {['name'] = "lotterycard05",          ['label'] = "Lottery Card 05",              ['weight'] = 100,   ['type'] = "item",    ['image'] = "lotterycard05.png",          ['unique'] = false,    ['useable'] = true,       ['shouldClose'] = true,    ["combinable"] = nil,   ["description"] = ""},
```


# Setup Images:

- Copy all images inside of : m-Farming/images
- Open your inventory and inside of folder html/images drop it

# Setup webhooks:

- You need to create a channel on your discord called for example "farming-logs"
- Then you will edit the channel -> Integrations -> Webhooks -> New Webhook
- After creating, you will have an option that says: Copy webhook URL
- Open the config.lua and insert that URL on line 9

# Dependecies:

- qb-core
- qb-target