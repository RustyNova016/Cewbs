data:extend({
    ---@type data.ItemPrototype
    {
        type = "item",
        name = utils.prefix("ambiguous-carbon"),
        stack_size = 50,
        icon = utils.icon("cubic-jelly"),
        subgroup = "udforge-intermediaries",
        order = "a",
    },

    {
        type = "recipe",
        name = utils.prefix("ambiguous-carbon"),
        category = "cubic-crafting",
        energy_required = 10,
        --enabled = false,
        ingredients = {
            { type = "item", name = "coal", amount = 5 },
        },
        results = { { type = "fluid", name = utils.prefix("ambiguous-carbon"), amount = 2 } },
        main_product = utils.prefix("ambiguous-carbon")
    },
})

-- ==== Filters ===

data:extend({
    ---@type data.ItemPrototype
    {
        type = "item",
        name = utils.prefix("ambiguous-filter"),
        stack_size = 50,
        icon = utils.icon("cubic-jelly"),
        subgroup = "udforge-intermediaries",
        order = "a",
    },

    {
        type = "recipe",
        name = utils.prefix("ambiguous-filter"),
        category = "cubic-crafting",
        energy_required = 10,
        --enabled = false,
        ingredients = {
            { type = "item", name = utils.prefix("ambiguous-carbon"), amount = 3 },
            { type = "item", name = "iron-plate",                     amount = 2 },
            { type = "item", name = "cube-matter",                    amount = 2 },
        },
        results = { { type = "fluid", name = utils.prefix("ambiguous-filter"), amount = 2 } },
        main_product = utils.prefix("ambiguous-filter")
    },
})
