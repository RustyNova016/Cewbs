local record StructurePrototype
   name: string
   noise_channel: string

   structure_function: string | nil
   sub_structures: {StructurePrototype} | nil
end

---Turn a structure prototype into an array of noise functions for all the noise channels

function StructurePrototype:to_noise_function(): any
    -- if self.structure_function == nil then
    --     error("Missing `structure_function` for structure `"..self.name.."`. ")
    -- end

    return {
        type = "noise-function",
        name = self.name .. "-" .. self.noise_channel,
        --parameters = util.merge({ { "structure_x", "structure_y" } }),
        expression = self.structure_function
    }
end

local record StructureFonctionPrototype
    name: string
    parameters: {string}
    expression: string
end

function StructureFonctionPrototype.new(    name: string, parameters: {string}, expression: string): StructureFonctionPrototype
    local self: StructureFonctionPrototype = setmetatable({}, { __index = StructureFonctionPrototype })
    self.name = name
    self.parameters = parameters
    self.expression = expression
    return self
end

---Turn a structure prototype into an array of noise functions for all the noise channels



local Public = {}

function Public.build_structure_focntion(data: StructureFonctionPrototype): any
    return {
        type = "noise-function",
        name = data.name,
        --parameters = util.merge({ { "local_x", "local_y" } }),
        expression = data.expression
    }
end