![foto1](https://media.discordapp.net/attachments/1019726083827961956/1078398513978814576/scratches.png?width=810&height=456)

# m-Scratches script for QB-Core & ESX

- Thank you very much for downloading this product! Hope you have fun!
- If you are intested in recieving updates join the community on **[Discord](https://discord.gg/marcinhu)**! |

# Preview:

- https://www.youtube.com/watch?v=N-2Goua2F0M

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
    ['scratchcard01']           = {['name'] = "scratchcard01",          ['label'] = "Scratch Card 01",              ['weight'] = 100,   ['type'] = "item",    ['image'] = "scratchcard01.png",          ['unique'] = false,    ['useable'] = true,      ['shouldClose'] = true,    ["combinable"] = nil,   ["description"] = "Minimum Prize: 10$  Maximium Prize: 100$  Premium Prize: 150$"},
    ['scratchcard02']           = {['name'] = "scratchcard02",          ['label'] = "Scratch Card 02",              ['weight'] = 100,   ['type'] = "item",    ['image'] = "scratchcard02.png",          ['unique'] = false,    ['useable'] = true,      ['shouldClose'] = true,    ["combinable"] = nil,   ["description"] = "Minimum Prize: 50$  Maximium Prize: 300$  Premium Prize: 450$"},
    ['scratchcard03']           = {['name'] = "scratchcard03",          ['label'] = "Scratch Card 03",              ['weight'] = 100,   ['type'] = "item",    ['image'] = "scratchcard03.png",          ['unique'] = false,    ['useable'] = true,      ['shouldClose'] = true,    ["combinable"] = nil,   ["description"] = "Minimum Prize: 150$  Maximium Prize: 550$  Premium Prize: 750$"},
    ['scratchcard04']           = {['name'] = "scratchcard04",          ['label'] = "Scratch Card 04",              ['weight'] = 100,   ['type'] = "item",    ['image'] = "scratchcard04.png",          ['unique'] = false,    ['useable'] = true,      ['shouldClose'] = true,    ["combinable"] = nil,   ["description"] = "Minimum Prize: 500$  Maximium Prize: 900$  Premium Prize: 1250$"},
    ['scratchcard05']           = {['name'] = "scratchcard05",          ['label'] = "Scratch Card 05",              ['weight'] = 100,   ['type'] = "item",    ['image'] = "scratchcard05.png",          ['unique'] = false,    ['useable'] = true,      ['shouldClose'] = true,    ["combinable"] = nil,   ["description"] = "Minimum Prize: 800$  Maximium Prize: 1250$  Premium Prize: 1650$"},
```


# Setup Images:

- Copy all images inside of : m-Scratches/images
- Open your inventory and inside of folder html/images drop it

# Setup webhooks:

- You need to create a channel on your discord called for example "scratchcard-logs"
- Then you will edit the channel -> Integrations -> Webhooks -> New Webhook
- After creating, you will have an option that says: Copy webhook URL
- Open the config.lua and insert that URL on line 8

# Dependecies:
- qb-core
- qb-target

# ESX:

- ! If you using ESX the shop dont work, you can put the items in other shop you use. :) 

## Uncomment lines on fxmanifest.

    ['scratchcard01'] = { label = 'Scratch Card 01', weight = 50, stack = true, allowArmed = false },
    ['scratchcard02'] = { label = 'Scratch Card 02', weight = 50, stack = true, allowArmed = false },
    ['scratchcard03'] = { label = 'Scratch Card 03', weight = 50, stack = true, allowArmed = false },
    ['scratchcard04'] = { label = 'Scratch Card 04', weight = 50, stack = true, allowArmed = false },
    ['scratchcard04'] = { label = 'Scratch Card 05', weight = 50, stack = true, allowArmed = false },