local tile_trigger_effects = require("__space-age__/prototypes/tile/tile-trigger-effects")
local tile_pollution = require("__space-age__/prototypes/tile/tile-pollution-values")
local tile_collision_masks = require("__base__/prototypes/tile/tile-collision-masks")
local tile_sounds = require("__space-age__/prototypes/tile/tile-sounds")

local tile_graphics = require("__base__/prototypes/tile/tile-graphics")
local tile_spritesheet_layout = tile_graphics.tile_spritesheet_layout

local tile_lightening = 28
cubium_tile_offset = 40

local rugged_stone_sound = sound_variations("__space-age__/sound/walking/rugged-stone", 10, 0.8)
local rocky_stone_sound = sound_variations("__space-age__/sound/walking/rocky-stone", 10, 0.8)
local soft_sand_sound = sound_variations("__space-age__/sound/walking/soft-sand", 10, 1)
local warm_stone_sound = sound_variations("__space-age__/sound/walking/warm-stone", 10, 1)

local stone_driving_sound =
{
    sound =
    {
        filename = "__base__/sound/driving/vehicle-surface-stone.ogg",
        volume = 0.8,
        advanced_volume_control = { fades = { fade_in = { curve_type = "cosine", from = { control = 0.5, volume_percentage = 0.0 }, to = { 1.5, 100.0 } } } }
    },
    fade_ticks = 6
}
local sand_driving_sound =
{
    sound =
    {
        filename = "__base__/sound/driving/vehicle-surface-sand.ogg",
        volume = 0.8,
        advanced_volume_control = { fades = { fade_in = { curve_type = "cosine", from = { control = 0.5, volume_percentage = 0.0 }, to = { 1.5, 100.0 } } } }
    },
    fade_ticks = 6
}

local lava_patch =
{
    filename = "__cubium__/graphics/terrain/water-transitions/lava-patch.png",
    scale = 0.5,
    width = 64,
    height = 64
}

local lava_stone_transitions =
{
    {
        to_tiles = water_tile_type_names,
        transition_group = water_transition_group_id,

        spritesheet = "__space-age__/graphics/terrain/water-transitions/lava-stone-cold.png",
        layout = tile_spritesheet_layout.transition_16_16_16_4_4,
        effect_map_layout =
        {
            spritesheet = "__base__/graphics/terrain/effect-maps/water-dirt-mask.png",
            inner_corner_count = 8,
            outer_corner_count = 8,
            side_count = 8,
            u_transition_count = 2,
            o_transition_count = 1
        }
    },
    {
        to_tiles = lava_tile_type_names,
        transition_group = lava_transition_group_id,
        spritesheet = "__cubium__/graphics/terrain/water-transitions/lava-stone.png",
        lightmap_layout = { spritesheet = "__cubium__/graphics/terrain/water-transitions/lava-stone-lightmap.png" },
        -- this added the lightmap spritesheet
        layout = tile_spritesheet_layout.transition_16_16_16_4_4,
        lightmap_layout = { spritesheet = "__cubium__/graphics/terrain/water-transitions/lava-stone-lightmap.png" },
        -- this added the lightmap spritesheet
        effect_map_layout =
        {
            spritesheet = "__base__/graphics/terrain/effect-maps/water-dirt-mask.png",
            inner_corner_count = 8,
            outer_corner_count = 8,
            side_count = 8,
            u_transition_count = 2,
            o_transition_count = 1
        }
    },
    {
        to_tiles = { "out-of-map", "empty-space", "oil-ocean-shallow" },
        transition_group = out_of_map_transition_group_id,

        background_layer_offset = 1,
        background_layer_group = "zero",
        offset_background_layer_by_tile_layer = true,

        spritesheet = "__space-age__/graphics/terrain/out-of-map-transition/volcanic-out-of-map-transition.png",
        layout = tile_spritesheet_layout.transition_4_4_8_1_1,
        overlay_enabled = false
    }
}

local lava_stone_transitions_between_transitions =
{
    {
        transition_group1 = default_transition_group_id,
        transition_group2 = water_transition_group_id,

        spritesheet = "__space-age__/graphics/terrain/water-transitions/lava-stone-cold-transition.png",
        layout = tile_spritesheet_layout.transition_3_3_3_1_0,
        effect_map_layout =
        {
            spritesheet = "__base__/graphics/terrain/effect-maps/water-dirt-to-land-mask.png",
            o_transition_count = 0
        },
        water_patch = lava_patch
    },

    {
        transition_group1 = water_transition_group_id,
        transition_group2 = out_of_map_transition_group_id,

        background_layer_offset = 1,
        background_layer_group = "zero",
        offset_background_layer_by_tile_layer = true,

        spritesheet =
        "__space-age__/graphics/terrain/out-of-map-transition/lava-stone-cold-shore-out-of-map-transition.png",
        layout = tile_spritesheet_layout.transition_3_3_3_1_0,
        effect_map_layout =
        {
            spritesheet = "__base__/graphics/terrain/effect-maps/water-dirt-to-out-of-map-mask.png",
            o_transition_count = 0
        }
    },

    {
        transition_group1 = default_transition_group_id,
        transition_group2 = lava_transition_group_id,

        spritesheet = "__cubium__/graphics/terrain/water-transitions/lava-stone-transition.png",
        layout = tile_spritesheet_layout.transition_3_3_3_1_0,
        effect_map_layout =
        {
            spritesheet = "__base__/graphics/terrain/effect-maps/water-dirt-to-land-mask.png",
            o_transition_count = 0
        },
        water_patch = lava_patch
    },

    {
        transition_group1 = lava_transition_group_id,
        transition_group2 = out_of_map_transition_group_id,

        background_layer_offset = 1,
        background_layer_group = "zero",
        offset_background_layer_by_tile_layer = true,

        spritesheet = "__space-age__/graphics/terrain/out-of-map-transition/lava-stone-shore-out-of-map-transition.png",
        layout = tile_spritesheet_layout.transition_3_3_3_1_0,
        effect_map_layout =
        {
            spritesheet = "__base__/graphics/terrain/effect-maps/water-dirt-to-out-of-map-mask.png",
            o_transition_count = 0
        }
    },
    {
        transition_group1 = default_transition_group_id,
        transition_group2 = out_of_map_transition_group_id,

        background_layer_offset = 1,
        background_layer_group = "zero",
        offset_background_layer_by_tile_layer = true,

        spritesheet =
        "__space-age__/graphics/terrain/out-of-map-transition/volcanic-out-of-map-transition-transition.png",
        layout = tile_spritesheet_layout.transition_3_3_3_1_0,
        overlay_enabled = false
    }
}

local lava_to_out_of_map_transition =
{
    to_tiles = out_of_map_tile_type_names,
    transition_group = out_of_map_transition_group_id,

    overlay_layer_group = "zero",
    apply_effect_color_to_overlay = true,
    background_layer_offset = 1,
    background_layer_group = "zero",
    offset_background_layer_by_tile_layer = true,

    spritesheet = "__base__/graphics/terrain/out-of-map-transition/water-out-of-map-transition-tintable.png",
    layout = tile_spritesheet_layout.transition_4_4_8_1_1,
    background_enabled = false,

    apply_waving_effect_on_masks = true,
    waving_effect_time_scale = 0.005,
    mask_layout =
    {
        spritesheet = "__base__/graphics/terrain/masks/water-edge-transition.png",
        count = 1,
        double_side_count = 0,
        scale = 0.5,
        outer_corner_x = 64,
        side_x = 128,
        u_transition_x = 192,
        o_transition_x = 256,
        y = 0
    }
}

local destroyed_item_trigger =
{
    type = "direct",
    action_delivery =
    {
        type = "instant",
        source_effects =
        {
            type = "create-trivial-smoke",
            smoke_name = "smoke",
            offset_deviation = { { -0.1, -0.1 }, { 0.1, 0.1 } },
            starting_frame_deviation = 5
        }
    }
}

data:extend({
    -- {
    --     type = "tile",
    --     name = "udf-lava-hot",
    --     order = "a-a",
    --     subgroup = "cubium-tiles",
    --     collision_mask = tile_collision_masks.lava(),
    --     autoplace =
    --     {
    --         probability_expression = "udforge_core_flux == 1"
    --     },
    --     effect = "cubium-lava",
    --     fluid = "ultradense-lava",
    --     effect_color = { 167, 59, 27 },
    --     effect_color_secondary = { 49, 80, 14 },
    --     particle_tints = tile_graphics.lava_particle_tints,
    --     destroys_dropped_items = true,
    --     default_destroyed_dropped_item_trigger = destroyed_item_trigger,
    --     layer = 5,
    --     layer_group = "water",
    --     sprite_usage_surface = "any",
    --     variants =
    --     {
    --         main =
    --         {
    --             {
    --                 picture = "__cubium__/graphics/terrain/cubium/lava-hot.png",
    --                 count = 1,
    --                 scale = 0.5,
    --                 size = 1
    --             }
    --         },
    --         empty_transitions = true,
    --     },
    --     allowed_neighbors = { "cubium-lava" },
    --     transitions = { lava_to_out_of_map_transition },
    --     transitions_between_transitions = data.raw.tile["water"].transitions_between_transitions,
    --     walking_sound = data.raw.tile["water"].walking_sound,
    --     map_color = { r = 57, g = 138, b = 255 },
    --     absorptions_per_second = tile_pollution.lava,
    --     default_cover_tile = "foundation",
    --     ambient_sounds =
    --     {
    --         sound =
    --         {
    --             variations = sound_variations("__space-age__/sound/world/tiles/magma", 10, 0.7),
    --             advanced_volume_control =
    --             {
    --                 fades = { fade_in = { curve_type = "cosine", from = { control = 0.5, volume_percentage = 0.0 }, to = { 1.5, 100.0 } } }
    --             }
    --         },
    --         radius = 7.5,
    --         min_entity_count = 10,
    --         max_entity_count = 30,
    --         entity_to_sound_ratio = 0.1,
    --         average_pause_seconds = 3
    --     }
    -- },
    -- {
    --     type = "tile",
    --     name = "udf_ground",
    --     subgroup = "cubium-tiles",
    --     order = "a-j",
    --     collision_mask = tile_collision_masks.ground(),
    --     autoplace =
    --     {
    --         probability_expression = "udforge_core_flux == 0"
    --     },
    --     layer = cubium_tile_offset + 16,
    --     sprite_usage_surface = "any",
    --     variants = tile_variations_template_with_transitions(
    --         "__cubium__/graphics/terrain/cubium/volcanic-folds-flat.png",
    --         {
    --             max_size = 4,
    --             [1] = { weights = { 0.085, 0.085, 0.085, 0.085, 0.087, 0.085, 0.065, 0.085, 0.045, 0.045, 0.045, 0.045, 0.005, 0.025, 0.045, 0.045 } },
    --             [2] = { probability = 1, weights = { 0.018, 0.020, 0.015, 0.025, 0.015, 0.020, 0.025, 0.015, 0.025, 0.025, 0.010, 0.025, 0.020, 0.025, 0.025, 0.010 }, },
    --             [4] = { probability = 0.1, weights = { 0.018, 0.020, 0.015, 0.025, 0.015, 0.020, 0.025, 0.015, 0.025, 0.025, 0.010, 0.025, 0.020, 0.025, 0.025, 0.010 }, },
    --         }
    --     ),
    --     transitions = lava_stone_transitions,
    --     transitions_between_transitions = lava_stone_transitions_between_transitions,
    --     walking_sound = rugged_stone_sound,
    --     landing_steps_sound = tile_sounds.landing.rock,
    --     driving_sound = stone_driving_sound,
    --     map_color = { r = tile_lightening + 16, g = tile_lightening + 15, b = tile_lightening + 16 }, -- changed from (8 7 8) to satisfy TerrainColorsVersusResourceColors test
    --     walking_speed_modifier = 1,
    --     vehicle_friction_modifier = 2,
    --     absorptions_per_second = tile_pollution.lava

    -- },

    util.merge({
        data.raw["tile"]["foundation"],
        {
            name = "udf-ground",
            autoplace =
            {
                probability_expression = "udforge_core_flux == 0"
            },
        }
    }),
    {
        type = "tile",
        name = "udf-core-flux",
        order = "a-a",
        subgroup = "vulcanus-tiles",
        collision_mask = tile_collision_masks.lava(),
        autoplace =
        {
            probability_expression = "udforge_core_flux == 1"
        },
        effect = "udf-core-flux",
        --fluid = "lava",
        effect_color = { 167, 59, 27 },
        effect_color_secondary = { 49, 80, 14 },
        --particle_tints = tile_graphics.lava_particle_tints,
        destroys_dropped_items = true,
        default_destroyed_dropped_item_trigger = destroyed_item_trigger,
        layer = 5,
        layer_group = "water",
        --sprite_usage_surface = "vulcanus",
        variants =
        {
            main =
            {
                {
                    picture = "__ultradense-forge__/graphics/terrain/core-flux.png",
                    count = 1,
                    scale = 0.5,
                    size = 1
                }
            },
            empty_transitions = true,
        },
        --allowed_neighbors = { "lava" },
        --transitions = { lava_to_out_of_map_transition },
        --transitions_between_transitions = data.raw.tile["water"].transitions_between_transitions,
        map_color = { r = 255, g = 138, b = 57 },
        --absorptions_per_second = tile_pollution.lava,
        default_cover_tile = "foundation",
        ambient_sounds = tile_sounds.ambient.magma,
    },
    {
        type = "tile-effect",
        name = "udf-core-flux",
        shader = "water",
        water =
        {
            shader_variation = "lava",
            textures =
            {
                {
                    filename = "__space-age__/graphics/terrain/vulcanus/lava-textures/lava-noise-texture.png",
                    width = 512,
                    height = 512
                },
                {
                    filename = "__ultradense-forge__/graphics/terrain/core-flux-effect.png",
                    width = 512 * 4,
                    height = 512 * 2
                }
            },
            texture_variations_columns = 1,
            texture_variations_rows = 1,
            secondary_texture_variations_columns = 4,
            secondary_texture_variations_rows = 2,

            animation_speed = 1.5,
            animation_scale = { 0.75, 0.75 },
            tick_scale = 1,

            specular_lightness = { 30, 48, 22 },
            foam_color = { 73, 5, 5 },
            foam_color_multiplier = 1,

            dark_threshold = { 0.755, 0.755 },
            reflection_threshold = { 1, 1 },
            specular_threshold = { 0.889, 0.291 },

            near_zoom = 1 / 16,
            far_zoom = 1 / 16
        }
    }
})
