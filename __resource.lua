resource_manifest_version "44febabe-d386-4d18-afbe-5e627f4af937"

description  "Case Script. Made with ??"
author "Movas#6969 & PIMP_CLS#7979"
version "1.0"

server_script {
	'@async/async.lua',
	'@mysql-async/lib/MySQL.lua',
    "s.lua"
}

client_script {
    "nui.lua" 
}

shared_script {
    "config.lua",
}

ui_page "index.html"

files {
    'index.html',
    'js/main.js',
    'css/style.css',
    'reset.css',
    'css/wavecase.png',
    'items/*.png',
    'sounds/start.ogg',
    'css/border.gif',
    'items/respin.gif'
}

dependency 'es_extended'

export 'GeneratePlate'