
class Fraccion
   attr_reader :n, :d

   include Comparable

   def mcd(a,b)
      d = a.abs, b.abs
      while d.min != 0
         d = d.min, d.max%d.min
      end
      d.max
   end
   private :mcd

   #Construccion
   def initialize(n, d)
      @n = n / mcd(n,d)
      @d = d / mcd(n,d)
   end
   
   #Pasar a string el objeto Fraccion
   def imprimirFraccion
      "#{@n}/#{@d}" 
   end
   
   #Pasar a flotante el objeto Fraccion
   def imprimirFlotante
      @n.to_f/@d.to_f
   end

   #Sobrecarga de operadores

   def + (other)
	Fraccion.new(@n* other.d + other.n*@d, @d * other.d)
   end

   def - (other)
	Fraccion.new(@n* other.d - other.n*@d, @d * other.d)
   end

   def * (other)
	Fraccion.new(@n* other.n, @d * other.d)
   end

   def / (other)
	Fraccion.new(@n* other.d, @d * other.n)
   end

   def % (other)
	Fraccion.new((imprimirFlotante % other.imprimirFlotante*1000).to_i, 1000)
   end

   def <=> (other)
	imprimirFlotante <=> other.imprimirFlotante
   end

   #valor absoluto
   def abs
	if (@n < 0) ^ (@d < 0)
	   if @n < 0
		Fraccion.new(@n*-1, @d)
           else
                Fraccion.new(@n, @d*-1)
           end

                elsif (@n < 0) && (@d < 0)
			Fraccion.new(@n*-1, @d*-1)

                      else
                         Fraccion.new(@n, @d)
                end
     end


   #inverso de una fraccion
   def reciprocal
	Fraccion.new(@d, @n)
   end


   #opuesta de una fraccion
   def -@
	Fraccion.new(@n*-1, @d)
   end

end
