data:extend({
    ---@type data.ItemPrototype
    {
        type = "item",
        name = "cubic-fruit",
        stack_size = 50,
        icon = lib.icon("test"),
        subgroup = "udforge-intermediaries",
        order = "a",
    },

    ---@type data.ItemPrototype
    {
        type = "item",
        name = "cubic-seed",
        stack_size = 50,
        icon = lib.icon("test"),
        subgroup = "udforge-intermediaries",
        order = "b",
    },
    {
        type = "recipe",
        name = "cubic-fruit-processing",
        icon = lib.icon("test"),
        category = "organic-or-hand-crafting",
        subgroup = "agriculture-processes",
        order = "a[seeds]-a[yumako-processing]",
        enabled = true,
        allow_productivity = true,
        energy_required = 1,
        ingredients = { { type = "item", name = "cubic-fruit", amount = 1 } },
        results =
        {
            { type = "item", name = "cubic-seed", amount = 1, ignored_by_productivity = 1 }, -- TODO: Set ammounts to the yeild of the tree to prevent seed dups
            { type = "item", name = "cube-core",  amount = 1 }
        },
    },
})
