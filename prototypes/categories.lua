data:extend({
    {
        type = "fuel-category",
        name = "udforge-cube",
    },

    {
        type = "recipe-category",
        name = "forge-crafter",
    },

    {
        type = "recipe-category",
        name = "cubic-crafter",
    },

    {
        type = "item-group",
        name = "udforge",
        order = "udforge",
        icon = lib.icon("test"),
        icon_size = 128,
    },
    {
        type = "item-subgroup",
        name = "udforge-machines",
        group = "udforge",
        order = "a"
    },
    {
        type = "item-subgroup",
        name = "udforge-intermediaries",
        group = "udforge",
        order = "b"
    },
        {
        type = "item-subgroup",
        name = "udforge-basic-cubes",
        group = "udforge",
        order = "c"
    },
})
