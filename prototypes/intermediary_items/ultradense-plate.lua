data:extend({
    ---@type data.ItemPrototype
    {
        type = "item",
        name = "ultradense-plate",
        stack_size = 50,
        icon = utils.icon("test"),
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
            { type = "fluid", name = "ud-coreflux",                                         amount = 100 },
            { type = "item",  name = cube_lib.cube_name(glob.cubes.energized_dense_normal), amount = 1 }
        },
        results = {
            { type = "item", name = "ultradense-plate", amount = 5 },
            cube_lib.cube_product(glob.cubes.energized_dense_normal)
        },
        main_product = "ultradense-plate"
    },
})
