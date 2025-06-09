data:extend({
    ---@type data.ItemPrototype
    {
        type = "item",
        name = "cube-jelly",
        stack_size = 50,
        icon = utils.icon("cubic-jelly"),
        subgroup = "udforge-intermediaries",
        order = "a",
    },

    {
        type = "recipe",
        name = "jelly-liquefaction",
        category = "chemistry",
        energy_required = 10,
        --enabled = false,
        ingredients = {
            { type = "item", name = "cube-jelly", amount = 5 },
        },
        results = { { type = "fluid", name = "water", amount = 100 } },
        main_product = "water"
    },

    {
        type = "recipe",
        name = "matter-jellification",
        category = "cubic-crafting",
        energy_required = 10,
        --enabled = false,
        ingredients = {
            { type = "item", name = "cube-matter", amount = 10 },
            cube_lib.cube_ingredient(glob.cubes.energized_dense_normal),
        },
        results = {
            { type = "item", name = "cube-jelly", amount = 5 },
            cube_lib.cube_product(glob.cubes.energized_dense_normal)
        },
        main_product = "cube-jelly"
    },
})
