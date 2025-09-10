# m-Scratches Script for QB-Core & ESX

Thank you for downloading this product! Hope you have fun!  
To receive updates, join the community on **[Discord](https://discord.gg/https://discord.gg/8cp3UDEeR2)**.

# Preview
[Watch Preview](https://www.youtube.com/watch?v=N-2Goua2F0M)

# Features

- Optimized and fast (0.00ms)
- 3 types of rewards
- 5 types of scratch cards
- Webhooks support
- Cooldown system

# Installation

**qb-core/shared/items.lua**

    ['scratchcard01']           = {['name'] = "scratchcard01",          ['label'] = "Scratch Card 01",              ['weight'] = 100,   ['type'] = "item",    ['image'] = "scratchcard01.png",          ['unique'] = false,    ['useable'] = true,      ['shouldClose'] = true,    ["combinable"] = nil,   ["description"] = "Minimum Prize: 10$  Maximium Prize: 100$  Premium Prize: 150$"},
    ['scratchcard02']           = {['name'] = "scratchcard02",          ['label'] = "Scratch Card 02",              ['weight'] = 100,   ['type'] = "item",    ['image'] = "scratchcard02.png",          ['unique'] = false,    ['useable'] = true,      ['shouldClose'] = true,    ["combinable"] = nil,   ["description"] = "Minimum Prize: 50$  Maximium Prize: 300$  Premium Prize: 450$"},
    ['scratchcard03']           = {['name'] = "scratchcard03",          ['label'] = "Scratch Card 03",              ['weight'] = 100,   ['type'] = "item",    ['image'] = "scratchcard03.png",          ['unique'] = false,    ['useable'] = true,      ['shouldClose'] = true,    ["combinable"] = nil,   ["description"] = "Minimum Prize: 150$  Maximium Prize: 550$  Premium Prize: 750$"},
    ['scratchcard04']           = {['name'] = "scratchcard04",          ['label'] = "Scratch Card 04",              ['weight'] = 100,   ['type'] = "item",    ['image'] = "scratchcard04.png",          ['unique'] = false,    ['useable'] = true,      ['shouldClose'] = true,    ["combinable"] = nil,   ["description"] = "Minimum Prize: 500$  Maximium Prize: 900$  Premium Prize: 1250$"},
    ['scratchcard05']           = {['name'] = "scratchcard05",          ['label'] = "Scratch Card 05",              ['weight'] = 100,   ['type'] = "item",    ['image'] = "scratchcard05.png",          ['unique'] = false,    ['useable'] = true,      ['shouldClose'] = true,    ["combinable"] = nil,   ["description"] = "Minimum Prize: 800$  Maximium Prize: 1250$  Premium Prize: 1650$"},

**ox_invenotry/data/items.lua**

    ['scratchcard01'] = { label = 'Scratch Card 01', weight = 50, stack = true, close = true, allowArmed = false, client = { image = 'scratchcard01.png' }},
    ['scratchcard02'] = { label = 'Scratch Card 02', weight = 50, stack = true, close = true, allowArmed = false, client = { image = 'scratchcard02.png' }},
    ['scratchcard03'] = { label = 'Scratch Card 03', weight = 50, stack = true, close = true, allowArmed = false, client = { image = 'scratchcard03.png' }},
    ['scratchcard04'] = { label = 'Scratch Card 04', weight = 50, stack = true, close = true, allowArmed = false, client = { image = 'scratchcard04.png' }},
    ['scratchcard05'] = { label = 'Scratch Card 05', weight = 50, stack = true, close = true, allowArmed = false, client = { image = 'scratchcard05.png' }},