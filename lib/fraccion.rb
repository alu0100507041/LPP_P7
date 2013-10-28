require "gcd.rb"

class Fraccion

  #Incluir Modulo Comparable
  include Comparable
  
  #Contructor
  def  initialize (*args)
     if args.size == 2
       c = gcd(args[0],args[1])
       @a = (args[0]/c)
       @b = (args[1]/c)
     else
       @a = args[0]
       @b = 1
     end
  end

  #Get y Set	
  attr_accessor :a,:b
  
  #Formato de la fraccion
  def to_s
    "#{@a}/#{@b}"
  end

  #Flotante
  def to_f 
    c = @a.to_f/@b.to_f
    c
  end

  #Comparar fracciones
  def ==(other)
    return @a.eql?(other.a) && @b.eql?(other.b)
  end

  #Valor absoluto
  def abs
    c = @a.to_f/@b.to_f
    return c.abs
  end

  #Fracciones reciprocas
  def reciprocal
    f=Fraccion.new
    f.a=@b
    f.b = @a
    f
  end
  
  #Opuesto
  def -@
    Fraccion.new(-@a,@b)
  end
  
  #Minimizar fracciones
  def minimiza(x,y)
     d = gcd(x,y)
     x = x/d
     y = y/d
     return x,y
  end

  #Suma de fracciones
  def +(other)
    f =Fraccion.new
    if (@b == other.b)
        f.a=@a+ other.a
        f.b=@b
     else
       f.a=@a*other.b+other.a*@b
       
       f.b=@b*other.b
     end
     #minimizamos el resultado
     f.a,f.b = minimiza(f.a,f.b)
     return f
  end
  
  #Resta de fracciones
  def -(other)
    f =Fraccion.new
    if (@b == other.b)
        f.a=@a- other.a
        f.b=@b
     else
       f.a=@a*other.b-@b*other.a

       f.b=@b*other.b
     end
     #minimizamos el resultado
     f.a,f.b = minimiza(f.a,f.b)
     return f
  end

  #Multiplicacion de fracciones
  def *(other)
    f =Fraccion.new
    f.a=@a * other.a
    f.b=@b * other.b 
 
     #minimizamos el resultado
     f.a,f.b = minimiza(f.a,f.b)
     return f
  end

  #Division de fracciones
  def /(other)
    f =Fraccion.new
    f.a=@a*other.b
    f.b=@b*other.a
     #minimizamos el resultado
     f.a,f.b = minimiza(f.a,f.b)
     return f
  end

  #Star Wars (comparable)
  def <=>(other)
     self.to_f <=> other.to_f
  end 
end
