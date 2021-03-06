--< Module >--
local Queue = {}
Queue.__index = Queue

function Queue.new()
    local self = setmetatable({}, Queue)

    self.Elements = {}

    return self
end

function Queue:IsEmpty()
    return #self.Elements == 0
end

function Queue:Peek()
    return self.Elements[1]
end

function Queue:Enqueue(element)
    table.insert(self.Elements, element)
end

function Queue:Dequeue()
    return table.remove(self.Elements, 1)
end

return Queue
