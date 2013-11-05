require "Matrices.rb"

describe Matrices do

   before :each do
      @m = Matrices.new([[1,1,1],[1,1,1],[1,1,1]]) 
      @ma =Matrices.new([[1,2,4],[6,5,8],[2,5,3]])       
   end


  it " Se debe poder sumar dos matrices de enteros" do
    @aux = MatrizEntera.new([[1,1,1],[1,1,1],[1,1,1]])
    (@m + @aux).matriz.should == [[2,2,2],[2,2,2],[2,2,2]]
  end


  it " Se debe poder restar dos matrices de enteros" do
    @aux = MatrizEntera.new([[1,1,1],[1,1,1],[1,1,1]])
    (@m - @aux).matriz.should == [[0,0,0],[0,0,0],[0,0,0]]
  end



  it " Se debe poder multiplicar dos matrices de enteros" do
    @aux = MatrizEntera.new([[1,2,3],[1,2,3],[1,2,3]])
    (@ma * @aux).matriz.should == [[3,6,9],[3,6,9],[3,6,9]]
  end

  it "se debe poder hallar la Traspuesta de una matriz" do
     @aux = Matriz.new([[1,6,2],[2,5,5],[4,8,3]])
     @m.trasponer.to_s.should eq(@aux.to_s)
  end

end
