data:extend({
    {
        type = "furnace",
        name = "cube_sauna",
        icon = utils.icon("test"),
        flags = { "placeable-neutral" },
        icon_size = 64,
        selection_box = { { -1, -1 }, { 1, 1 } },
        collision_box = { { -0.9, -0.9 }, { 0.9, 0.9 } },
        energy_usage = "2.1MW",
        module_slots = 0,
        crafting_categories = {
            "cube-recovery",
        },
        energy_source =
        {
            type = "electric",
            usage_priority = "secondary-input",
            emissions_per_minute = { pollution = 4 }
        },
        autoplace = {
            probability_expression = "25"
        },
        source_inventory_size = 1,
        result_inventory_size = 1,
        crafting_speed = 1,
        corpse = "big-remnants",
        graphics_set = {
            animation = {
                layers = {
                    {
                        priority = "high",
                        width = 194,
                        height = 231,
                        frame_count = 1,
                        shift = util.by_pixel(0, -15),
                        animation_speed = 0.5,
                        scale = 0.35,
                        stripes = {
                            {
                                filename =
                                "__ultradense-forge__/graphics/entity/cube-sauna/cube-sauna.png",
                                width_in_frames = 1,
                                height_in_frames = 1,
                            }
                        },
                    },
                },
            },
            working_visualisations = {
                {
                    {
                        priority = "high",
                        width = 143,
                        height = 256,
                        frame_count = 1,
                        shift = util.by_pixel(0, -15),
                        animation_speed = 0.5,
                        scale = 0.35,
                        stripes = {
                            {
                                filename =
                                "__VoidProcessing__/graphics/entity/void-pylon.png",
                                width_in_frames = 8,
                                height_in_frames = 8,
                            }
                        },
                    },
                },
            },
            reset_animation_when_frozen = true
        },
        allowed_effects = {}
    }
})
