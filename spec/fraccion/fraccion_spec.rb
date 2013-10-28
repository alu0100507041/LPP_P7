require "fraccion.rb"

describe Fraccion do
  before :all do
      A = Fraccion.new(1,1)
      B = Fraccion.new(1,4)
    end
 describe" basicas" do
   it "Existe un numerador" do
     A.a.should == 1
   end
   it "Existe un denominador" do
     A.b.should == 1
   end
   it "se debe mostrar en consola de la forma a/b" do
     A.to_s.should == "1/1"
   end

   it "se debe mostrar en consola en formato flotante" do
     A.to_f.should == 1.00
   end
end
  describe "unarias" do
   it " Se debe comparar si dos fracciones son iguales con ==" do
     (A==B).should == false
   end
   it "Se debe calcular el valor absoluto de una fraccion con el metodo abs" do
     A.abs.should == 1
   end
   it "Se debe calcular el reciproco de una fraccion con el metodo reciprocal" do
     (B.reciprocal).to_s.should == "4/1"
   end
   it "Se debe calcular el opuesto de una fraccion con -" do
     (-A).to_s.should == "-1/1" 
   end
end
 describe "aritmeticas" do
   it "Se debe sumar dos fracciones con + y dar el resultado de forma reducida" do
     (A+B).to_s.should == "5/4"
   end
   it "Se debe restar dos fracciones con - y dar el resultado de forma reducida" do
     (A-B).to_s.should == "3/4"
   end
   it "Se debe multiplicar dos fracciones con * y dar el resultado de forma reducida" do
     (A*B).to_s.should == "1/4"
   end
   it "Se debe dividir dos fracciones con / y dar el resultado de forma reducida" do
     (A/B).to_s.should == "4/1"
   end
end
  describe "Comparacion" do
   it "Se debe de poder comprobar si una fracion es menor que otra" do
     (B<A).should == true 
   end
   it "Se debe de poder comprobar si una fracion es mayor que otra" do
     (A>B).should == true
   end
   it " Se debe de poder comprobar si una fracion es menor o igual que otra" do
     (B<=A).should == true
   end
   it "Se debe de poder comprobar si una fracion es mayor o igual que otra" do
     (A>=B).should == true
   end
end
end
