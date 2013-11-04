class Matriz

attr_accessor :filas,:cols, :matriz

def initialize(m)
@filas = m.size
@cols = m[1].size
@matriz = m


end
