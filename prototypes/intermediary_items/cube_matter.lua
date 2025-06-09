data:extend({
    ---@type data.ItemPrototype
    {
        type = "item",
        name = "cube-matter",
        stack_size = 50,
        icon = utils.icon("cubic-matter"),
        subgroup = "udforge-intermediaries",
        order = "a",
    },

    {
        type = "recipe",
        name = "cube-matter",
        category = "cubic-crafting",
        energy_required = 10,
        --enabled = false,
        ingredients = {
            cube_lib.cube_ingredient(glob.cubes.energized_dense_normal)
        },
        results = {
            { type = "item", name = "cube-matter",                      amount = 50 },
            cube_lib.cube_product(glob.cubes.energized_dense_normal)
        },
        main_product = "cube-matter",

    },
})
