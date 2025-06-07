

data:extend({
    {
        name = "structurize_square",
        parameters = { "x_a", "y_a", "x_b", "y_b" },
        expression = "local_x >= x_a and local_x <= x_b and local_y >= y_a and local_y <= y_b",
    },
})

---Turn a structure fonction into a noise function
---@param data StructureFunction
---@return data.NoiseFunction
function structurize(data)
    return {
        type = "noise-function",
        name = data.name,
        parameters = util.merge({{"local_x", "local_y"}}),
        expression = data.expression
    }
end



local landing_plateform = {
    name = "landing-plateform",
    local_x = 0,
    local_y = 0,
    sub_structures = {
        {
            name = "main_square",
            local_x = -2,
            local_y = -2,
            sub_structures = {},
            noise_function = structurize(data.raw["noise-function"]["structurize_square"]),
        },
    },
}