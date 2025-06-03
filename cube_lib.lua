local Public = {}

Public.energized_cube_name = function(tier, type)
    return "energized-" .. tier .. "-" .. type .. "-cube"
end

Public.dormant_cube_name = function(tier, type)
    return "dormant-" .. tier .. "-" .. type .. "-cube"
end

function Public.cube_ingredient(tier, type)
    return { type = "item", name = lib.energized_cube_name(tier, type), amount = 1 }
end

function Public.cube_product(tier, type)
    return { type = "item", name = lib.dormant_cube_name(tier, type), amount = 1 }
end

return Public
