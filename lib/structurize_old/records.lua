local StructurePrototype = {}









function StructurePrototype:to_noise_function()
   if self.structure_function == nil then
      error("Missing `structure_function` for structure `" .. self.name .. "`. ")
   end

   return {
      type = "noise-function",
      name = self.name .. "-" .. self.noise_channel,

      expression = self.structure_function,
   }
end

local StructureFonctionPrototype = {}





function StructureFonctionPrototype.new(name, parameters, expression)
   local self = setmetatable({}, { __index = StructureFonctionPrototype })
   self.name = name
   self.parameters = parameters
   self.expression = expression
   return self
end



function StructureFonctionPrototype:to_noise_function()
   return {
      type = "noise-function",
      name = self.name,
      parameters = util.merge({ { "local_x", "local_y" } }),
      expression = self.expression,
   }
end
