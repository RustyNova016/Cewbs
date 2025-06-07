require("structurize.classes")

local Public

---Turn a StructureFonctionPrototype into a noise function
---@param data StructureFonctionPrototype
---@return table
function Public.build_structure_function(data)
    return {
        type = "noise-function",
        name = data.name,
        parameters = util.merge({ { "local_x", "local_y" }, data.parameters }),
        expression = data.expression
    }
end

---Turn a structure prototype into an array of noise functions for all the noise channels
---@param data StructurePrototype
---@return NoiseFunctionPrototypeExt[]
function Public.to_noise_function(data)
    if data.sub_structures ~= nil then
        
    end


    if data.structure_function == nil then
        error("Missing `structure_function` for structure `" .. data.name .. "`. ")
    end

    return { {
        type = "noise-function",
        name = data.name .. "-" .. data.noise_channel,
        parameters = { "local_x", "local_y" },
        expression = data.structure_function
    } }
end

return Public
