data:extend({
    ---@type data.ItemPrototype
    {
        type = "item",
        name = "cube-matter",
        stack_size = 50,
        icon = lib.icon("cubic-matter"),
        subgroup = "udforge-intermediaries",
        order = "a",
    },

    {
        type = "recipe",
        name = "cube-matter",
        category = "chemistry",
        energy_required = 10,
        --enabled = false,
        ingredients = {
            { type = "item", name = lib.energized_cube_name("",""), amount = 1 },
        },
        results = { 
            { type = "item", name = "cube-matter", amount = 50 } ,
            { type = "item", name = lib.dormant_cube_name("", ""), amount = 1 },
        },
        main_product = "cube-matter",
        aut
    },
})
