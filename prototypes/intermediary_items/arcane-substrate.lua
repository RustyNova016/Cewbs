data:extend({
    ---@type data.ItemPrototype
    {
        type = "item",
        name = utils.prefix("arcane-substrate"),
        stack_size = 50,
        icon = utils.icon("cubic-jelly"),
        subgroup = "udforge-intermediaries",
        order = "a",
    },

    {
        type = "recipe",
        name = utils.prefix("arcane-substrate"),
        category = "cubic-crafting",
        energy_required = 10,
        --enabled = false,
        ingredients = {
            { type = "item", name = utils.prefix("ambiguous-filter"), amount = 1 },
            { type = "item", name = "cube-jelly",                     amount = 10 },
        },
        results = { { type = "fluid", name = utils.prefix("arcane-substrate"), amount = 3 } },
        main_product = utils.prefix("arcane-substrate")
    },
})
