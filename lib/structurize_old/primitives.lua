return {
    ---@type StructureFunction
    square = {
        name = "structurize_square",
        parameters = { "x_a", "y_a", "x_b", "y_b" },
        expression = "local_x >= x_a and local_x <= x_b and local_y >= y_a and local_y <= y_b",
    },
}
