data:extend({
    {
        type = "recipe",
        name = cube_lib.dormant_cube_name(glob.cubes.dormant_dense_normal),
        category = "cubic-crafting",
        energy_required = 10,
        --enabled = false,
        ingredients = {
            { type = "item", name = utils.prefix("cube-core"), amount = 1 },
            { type = "item", name = "cube-jelly",              amount = 15 },
            { type = "item", name = "ultradense-plate",        amount = 6 },
        },
        results = { { type = "item", name = cube_lib.dormant_cube_name(glob.cubes.dormant_dense_normal), amount = 1 } },
        main_product = cube_lib.dormant_cube_name(glob.cubes.dormant_dense_normal)
    },
    {
        type = "recipe",
        name = cube_lib.dormant_cube_name(glob.cubes.dormant_extra_normal),
        energy_required = 10,
        category = "cubic-crafting",
        --enabled = false,
        ingredients = {
            { type = "item", name = cube_lib.energized_cube_name(glob.cubes.energized_dense_normal), amount = 4 },
            { type = "item", name = "cube-matter",                                                   amount = 20 },
            { type = "item", name = "undimensional-widget",                                          amount = 2 },
        },
        results = { { type = "item", name = cube_lib.dormant_cube_name(glob.cubes.dormant_extra_normal), amount = 1 } },
        main_product = cube_lib.dormant_cube_name(glob.cubes.dormant_extra_normal)
    },
    {
        type = "recipe",
        name = cube_lib.dormant_cube_name(glob.cubes.dormant_super_normal),
        energy_required = 10,
        category = "cubic-crafting",
        --enabled = false,
        ingredients = {
            { type = "item", name = cube_lib.energized_cube_name(glob.cubes.energized_extra_normal), amount = 4 },
            { type = "item", name = utils.prefix("arcane-substrate"),                                amount = 20 },
            { type = "item", name = "undimensional-widget",                                          amount = 5 },
        },
        results = { { type = "item", name = cube_lib.dormant_cube_name(glob.cubes.dormant_super_normal), amount = 1 } },
        main_product = cube_lib.dormant_cube_name(glob.cubes.dormant_super_normal)
    },


})

---Create a cube recovery recipe
---@param cube Cube
function create_cube_recovery(cube)
    data:extend({
        {
            type = "recipe",
            name = cube_lib.cube_name(cube_lib.dormant(cube)) .. "-recovery",
            category = "cube-recovery",
            energy_required = 2 * cube.tier.tier,
            --enabled = false,
            ingredients = { { type = "item", name = cube_lib.cube_name(cube_lib.dormant(cube)), amount = 1 }, },
            results = { { type = "item", name = cube_lib.cube_name(cube_lib.energized(cube)), amount = 1 } },
            main_product = cube_lib.cube_name(cube_lib.energized(cube))
        },
    })
end

create_cube_recovery(glob.cubes.dormant_dense_normal)
create_cube_recovery(glob.cubes.dormant_extra_normal)
create_cube_recovery(glob.cubes.dormant_super_normal)
