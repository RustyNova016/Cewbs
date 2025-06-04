data:extend({
    ---@type data.ItemPrototype
    {
        type = "item",
        name = "ultradense-plate",
        stack_size = 50,
        icon = lib.icon("test"),
        subgroup = "udforge-intermediaries",
        order = "a",
    },

    {
        type = "recipe",
        name = "ultradense-plate",
        category = "cubic-crafting",
        energy_required = 10,
        --enabled = false,
        ingredients = {
            { type = "fluid", name = "ud-coreflux",                   amount = 100 },
            { type = "item",  name = cube_lib.energized_cube_name("", ""), amount = 1 }
        },
        results = {
            { type = "item", name = "ultradense-plate",                 amount = 5 },
            { type = "item", name = cube_lib.dormant_cube_name("", ""), amount = 1 }
        },
        main_product = "ultradense-plate"
    },
})
