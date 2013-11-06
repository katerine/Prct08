require "Matriz.rb"
require "Fraccion.rb"

describe Matriz do
  before :each do
      @m = Matriz.new([[1,1,1],[1,1,1],[1,1,1]])
      @mf = Matriz.new([[1,Fraccion.new(2,4),1],[1,Fraccion.new(2,4),1],[1,Fraccion.new(2,4),1]])        
  end

  it " Se debe poder sumar dos matrices de enteros" do
    @aux = Matriz.new([[1,1,1],[1,1,1],[1,1,1]])
    (@m + @aux).should == [[2,2,2],[2,2,2],[2,2,2]]
  end

  it " Se debe poder restar dos matrices de enteros" do
    @aux = Matriz.new([[1,1,1],[1,1,1],[1,1,1]])
    (@m - @aux).should == [[0,0,0],[0,0,0],[0,0,0]]
  end

  it " Se debe poder multiplicar dos matrices de enteros" do
    @aux = Matriz.new([[1,2,3],[1,2,3],[1,2,3]])
    (@m * @aux).should == [[3,6,9],[3,6,9],[3,6,9]]
  end

  it " Se debe poder hacer la traspuesta de una matriz" do
     @aux = Matriz.new([[1,6,2],[2,5,5],[4,8,3]])
     @aux2 = Matriz.new([[3,8,4],[5,5,2],[2,6,1]])
     @aux.traspuesta.should == @aux2.matriz
  end

  it " Se debe poder sumar matrices de fracciones" do
     @aux = Matriz.new([[1,1,1],[1,1,1],[1,1,1]])
     (@mf + @aux).should == [[2,3/2,2],[2,3/2,2],[2,3/2,2]]
  end
end
