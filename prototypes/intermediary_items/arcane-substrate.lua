data:extend({
    ---@type data.ItemPrototype
    {
        type = "item", 
        name = utils.prefix("arcane-substrate"),
        stack_size = 50,
        icon = utils.icon("arcane-substrate"),
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
            { type = "fluid", name = "udf-gel-e",                      amount = 200 },
        },
        results = { { type = "item", name = utils.prefix("arcane-substrate"), amount = 3 } },
        main_product = utils.prefix("arcane-substrate")
    },
})
