
-- ToonESP Loader

local url = "https://raw.githubusercontent.com/Xxjesus123xX/toonesp/refs/heads/main/ToonESP.lua"

local success, result = pcall(function()
    local source = game:HttpGet(url)
    local scriptFunction = loadstring(source)

    assert(scriptFunction, "No se pudo cargar el script")

    return scriptFunction()
end)

if success then
    print("ToonESP cargado correctamente")
else
    warn("Error al cargar ToonESP: " .. tostring(result))
end
