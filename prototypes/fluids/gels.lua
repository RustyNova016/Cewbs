data:extend({
    {
        type = "fluid",
        name = "udf-gel-e",
        icon = utils.icon("test"),
        subgroup = "fluid",
        order = "d[udf]-a[main]-a[coreflux]",
        default_temperature = 15,
        base_color = { 28, 153, 216 },
        flow_color = { 99, 232, 232 },
        auto_barrel = true
    },

    {
        type = "recipe",
        name = "cube-matter",
        category = "oil-processing",
        energy_required = 10,
        --enabled = false,
        ingredients = {
            { type = "item", name = "cube-jelly", amount = 5 },
            cube_lib.cube_ingredient("extra", "")
        },
        results = {
            { type = "fluid", name = "udf-gel-e", amount = 50 },
        },
        main_product = "cube-matter",

    }
})
