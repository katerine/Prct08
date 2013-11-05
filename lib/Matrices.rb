class Matriz

attr_accessor :filas,:cols, :matriz

def initialize(m)
@filas = m.size
@cols = m[1].size
@matriz = m
end

def to_s (other) 
   other.each do |fila|			
   puts fila.join(" ")			
   end
end

def + (other)
   for i in 0...@filas do			
      for j in 0...@cols do			
         other[i][j] = m[i][j] + other[i][j]
      end
   end
   Matriz.new(other)
end

def - (other)
   for i in 0...@filas do			
      for j in 0...@cols do			
         other[i][j] = m[i][j] - other[i][j]
      end
   end
   Matriz.new(other)
end

def * (other) 
   aux_m = Matriz.new(other)
   for i in 0...@filas do			
      for j in 0...@cols do			
         aux_m[i][j] = 0;
      end
   end   
   for i in 0...@filas do			
      for j in 0...other.cols do			
         for k in 0...other.filas do		
            aux_m[i][j] += m[i][k] * other[k][j]	
         end
      end
   end
   Matriz.new(aux_m)
end

def traspuestas (other)
   for i in 0...@filas do			
      for j in 0...@cols do
      aux_m[i][j] = other[(@filas-1)-i][(@cols-1)-j]
      end
   end
   Matriz.new(aux_m)
end

