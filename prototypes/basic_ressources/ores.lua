data:extend({
    {
        type = "recipe",
        name = "cube-coal",
        category = "cubic-crafting",
        energy_required = 10,
        --enabled = false,
        ingredients = {
            cube_lib.cube_ingredient(glob.cubes.energized_dense_normal)
        },
        results = {
            { type = "item", name = "coal", amount = 15 },
            cube_lib.cube_product(glob.cubes.energized_dense_normal),
        },
        main_product = "coal",

    },

    {
        type = "recipe",
        name = "cube-iron-plate",
        category = "cubic-crafting",
        energy_required = 10,
        --enabled = false,
        ingredients = {
            cube_lib.cube_ingredient(glob.cubes.energized_dense_normal)
        },
        results = {
            { type = "item", name = "iron-plate", amount = 10 },
            cube_lib.cube_product(glob.cubes.energized_dense_normal),
        },
        main_product = "iron-plate",

    },

    {
        type = "recipe",
        name = "cube-copper-plate",
        category = "cubic-crafting",
        energy_required = 10,
        --enabled = false,
        ingredients = {
            cube_lib.cube_ingredient(glob.cubes.energized_dense_normal)
        },
        results = {
            { type = "item", name = "copper-plate", amount = 3 },
            cube_lib.cube_product(glob.cubes.energized_dense_normal),
        },
        main_product = "copper-plate",

    },
})
