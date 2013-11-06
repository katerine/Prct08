require "Matriz.rb"
class Matriz

attr_accessor :filas, :cols, :matriz

def initialize(m)
@filas = m.size
@cols = m[1].size
@matriz = m
end

def to_s () 
   @matriz.each do |fila|			
   puts fila.join(" ")			
   end
end

def + (other)
   for i in 0...@filas do			
      for j in 0...@cols do			
         other.matriz[i][j] = @matriz[i][j] + other.matriz[i][j]
      end
   end
   other.matriz
end

def - (other)
   for i in 0...@filas do			
      for j in 0...@cols do			
         other.matriz[i][j] = @matriz[i][j] - other.matriz[i][j]
      end
   end
   other.matriz
end

def * (other) 
   aux_m = Array.new
   for i in 0...@filas do
      aux_m[i] = Array.new			
      for j in 0...@cols do			
         aux_m[i][j] = 0;
      end
   end   
   for i in 0...@filas do			
      for j in 0...other.cols do			
         for k in 0...other.filas do		
            aux_m[i][j] += @matriz[i][k] * other.matriz[k][j]	
         end
      end
   end
   Matriz.new(aux_m).matriz
end

def traspuesta ()
   aux_m = Array.new
   for i in 0...@filas do
      aux_m[i] = Array.new			
      for j in 0...@cols do
         aux_m[i][j] = @matriz[(@filas-1)-i][(@cols-1)-j]
      end
   end
   Matriz.new(aux_m).matriz
end

end
