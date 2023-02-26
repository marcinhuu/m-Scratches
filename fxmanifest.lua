fx_version 'cerulean'
author '! marcinhu.#6158'
Description 'm-Scratches'
game 'gta5'


shared_script {
  --'@ox_lib/init.lua', -- Uncomment if you use ESX
  --'@es_extended/imports.lua', -- Uncomment if you use ESX
  'configs/**.lua',
}

client_scripts{
    'client/**',
}

server_scripts{
    'server/**',
}

escrow_ignore {
    "images/**",
    "client/**",
    "server/**",
    "configs/**",
    "README.lua",
}

lua54 'yes'
