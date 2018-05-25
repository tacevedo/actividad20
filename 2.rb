module Formula
  def perimetro(ladoa, ladob)
    2*(ladoa + ladob)
  end
  def area(ladoa, ladob)
    ladoa * ladob
  end
end

class Rectangulo
  include Formula
  attr_reader :base, :altura
  def initialize(base, altura)
    @base = base
    @altura = altura
  end
  def lados
    puts "El rectanculo es de ancho: " + @base.to_s + ", alto: " + @altura.to_s + "."
  end
end

class Cuadrado
  include Formula
  attr_reader :lado
  def initialize(lado)
    @lado = lado
  end
  def lados
    puts "El cuadrado es de lados: " + @lado.to_s + "."
  end
end

r = Rectangulo.new(2,3)
c = Cuadrado.new(3)

r.lados
puts "perimetro Rectangulo " + r.perimetro(r.base, r.altura).to_s
puts "area rectanculo " + r.area(r.base, r.altura).to_s

c.lados
puts "perimetro cuadrado " + c.perimetro(c.lado, c.lado).to_s
puts "area cuadrado " + c.area(c.lado, c.lado).to_s
