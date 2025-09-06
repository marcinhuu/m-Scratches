fx_version 'cerulean'
author 'marcinhu - marcinhu.tebex.io'
Description 'm-Scratches - Scratch Cards System for QBCore and Ox Inventory'
game 'gta5'

shared_script {
  '@ox_lib/init.lua',
  'configs/**.lua',
}

client_scripts{
    'client/**',
}

server_scripts{
    'server/**',
}


lua54 'yes'
