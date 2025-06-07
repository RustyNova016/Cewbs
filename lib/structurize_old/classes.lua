do
    ---@class StructureFonctionPrototype
    ---@field name string,
    ---@field parameters string[],
    ---@field expression string
end

do
    ---@class StructurePrototype
    ---@field name string the name of this structure
    ---@field noise_channel string the name of the noise channel this expression will be merged with
    ---
    ---@field structure_function? StructureFonctionPrototype
    ---@field sub_structures? StructurePrototype[],
end

do
    ---@class NoiseFunctionPrototypeExt
    ---@field type string
    ---@field name string the name of this structure
    ---@field noise_channel string the name of the noise channel this expression will be merged with
    ---@field parameters string[],
    ---@field expression string
end
