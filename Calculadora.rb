#calculadora simple con Ruby básico y sentencia de control case
def lectura
  puts "Escriba el segundo número: "
  $b=gets.to_f
  return $b
end
def suma(a, b)
  puts a+b
end
def resta(a, b)
  puts a-b
end
def multiplicacion(a, b)
  puts a*b
end
def division(a,b)
  puts a/b
end
def potencia(a,b)
  puts a**b
end
def raiz(a)
  puts Math.sqrt(a)
end
loop do
  puts "Escriba el primer número:"
  $a=gets.to_f
  puts "Operando (teclee sqrt para raíz cuadrada): "
  op=gets.chomp
  puts case op
  when '+'
    lectura
    suma($a, $b)
  when '-'
    lectura
    resta($a, $b)
  when '*'
    lectura
    multiplicacion($a, $b)
  when '/'
    lectura
    division($a, $b)
  when '**'
    lectura
    potencia($a, $b)
  when 'sqrt'
    raiz($a)
  else
    "Por favor escoja otra opción válida."
  end
  puts "Si quiere hacer otra operación, oprima 1. En caso contrario oprima 0."
  x=gets.to_i
  break if x==0
end
