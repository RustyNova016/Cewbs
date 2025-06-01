data:extend({
    ---@type data.ItemPrototype
    {
        type = "item",
        name = "undimensional-widget",
        stack_size = 50,
        icon = lib.icon("undimensional-widget"),
        subgroup = "udforge-intermediaries",
        order = "a",
    },

    {
        type = "recipe",
        name = "undimensional-widget",
        energy_required = 10,
        --enabled = false,
        ingredients = {
            { type = "item", name = "cube-matter", amount = 20 },
            { type = "item", name = "iron-gear-wheel",       amount = 3 },
        },
        results = { { type = "item", name = "undimensional-widget", amount = 1 } },
        main_product = "undimensional-widget"
    },
})

