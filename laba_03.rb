# TODO: доделать сравнение FALSE/TRUE >=/<=

def makeLogicVyrazy
  $A = false
  $B = false
  $C = false
  $X = 2
  $Y = 10
  $Z = -50

  $a = !($A||$B) && ($A &&!$B)
  puts $a

  $b = ($Z!=$Y)<=>(6>=$Y) && $A||$B && $C && $X>=1.5
  puts $b

  $c = (8 - $X*2 <= $Z) && ($X**2 <= $Y**2 ) || ($Z>=15)
  puts  $c

  $d = $X>0 && $Y < 0 || $Z>=($X*$Y-$Y/$X)+(-$Z)
  puts  $d

  $e = !($A||$B && !($C||(!$A||$B)))
  puts  $e

  $f = $X**2 + $Y**2 >=  1 && $X>= 0 && $Y>=0
  puts $f

  $g = ($A && ($C && $B <=> $B || $A)|| $C)|| $B
  if $g == 0
    puts false
  else
    puts true
  end
end

def makeVyr
  e = 2.71828182846
  x = 5
  case x
    when -4...0
      puts ((x-2).abs/x**2*Math.cos(x))**(1.0/7.0)
    when 0...12
      puts 1.0/((Math.tan(x+1.0/e**x)/Math.sin(x)**2))**(1.0/3.5)
    else
      puts 1.0/(1.0+(x/(x+(x/(1.0+x)))))
  end
end


def taskThree_one
  res = 1
  (1...9).each { |i|
    res += (1.0 / (3 ** i))
  }
  puts res
end

def fact(n)
  (1..n).reduce(:*) || 1
end

def taskThree_two
  n = 10
  x = 2
  res = 1
  (1...n).each { |i|
    res += ((x ** i).to_f / fact(i))
  }
  puts res
end

def taskFour_one
  e = 0.00001.to_f
  an = 0.00000.to_f
  res = 0
  n = 2
  while an < e
    an = (fact(n-1).to_f/fact(n+1).to_f)**(n*(n+1))
    res+= an
    n+=1
  end
  puts res
end

def task_four_two
  e = 0.00001.to_f
  an = 0.00000.to_f
  res = 0
  n = 0
  x = 2.0
  while an < e
    an = ((x-1)**(2*n+1))/((2*n+1)*((x+1)**(2*n+1)))
    res += 2*an
    n+=1
  end

  puts res
  puts Math.log(2.0)
end

def task_four_three
  e = 0.00001.to_f
  an = 0.00000.to_f
  res = 0
  n = 1
  while an < e
    an = (fact(4*n-1)*fact(2*n-1)).to_f/(fact(4*n)*(2**2*n)*fact(2*n))
    res += an
    n+=1
  end
  puts res
end


def task_five_one
  x =  2.0
  n = 4.00004
  c = 0.0001
  dx = n+c
  y = 0
  one = 0
  two = 0
  three = 0
  while x < n
    one = (((x.to_f**(1.0/4.0))-((1.0/x.to_f)**(1.0/4.0)))**(-n))
    two = ((x+1)/x**2-4*x+3*n)
    three = (((36*x*c*n)**(1.0/4.0))/((x+c*n+1)/(x+5)))
    puts one+two+three
    x+=dx
  end

end

def task_five_two
  pi = 3.14159265359
  n = 4.00004
  x =  pi/n
  c = 0.0001
  dx = (3/2)*n+c

  two = 0
  three = 0
  while x<pi
    one = (Math.tan(2*x)*Math.cos(2*x)**(-1)-Math.tan(2*c+x)*Math.cos(2*x)**(-2))
    two = (1+(Math.cos(n*x)**(1.0/c.to_f)))/(2*x+Math.sin(3*x)**2)
      puts one+two
    x+=dx
  end

end

def task_five_three
  pi = 3.14159265359
  n = 4.00004
  x =  2
  c = 10
  dx = 2*n

  two = 0
  three = 0
  while x<c
    case x
    when 2...n
      one = (((x.to_f**(1.0/4.0))-((1.0/x.to_f)**(1.0/4.0)))**(-n))
      two = ((x+1)/x**2-4*x+3*n)
      three = (((36*x*c*n)**(1.0/4.0))/((x+c*n+1)/(x+5)))
      puts one+two+three
    when n...2*n
      one = (Math.tan(2*x)*Math.cos(2*x)**(-1)-Math.tan(2*c+x)*Math.cos(2*x)**(-2))
      two = (1+(Math.cos(n*x)**(1.0/c.to_f)))/(2*x+Math.sin(3*x)**2)
      puts one+two
    else
      one = (((x.to_f**(1.0/4.0))-((1.0/x.to_f)**(1.0/4.0)))**(-n))
      two = ((x+1)/x**2-4*x+3*n)
      three = (((36*x*c*n)**(1.0/4.0))/((x+c*n+1)/(x+5)))
      one2 = (Math.tan(2*x)*Math.cos(2*x)**(-1)-Math.tan(2*c+x)*Math.cos(2*x)**(-2))
      two2 = (1+(Math.cos(n*x)**(1.0/c.to_f)))/(2*x+Math.sin(3*x)**2)
      puts  one+two+three +one2+two2
    end
    x+=dx
  end
end


makeLogicVyrazy
makeVyr
taskThree_one
taskThree_two
taskFour_one
task_four_two
task_four_three
task_five_one
task_five_two
task_five_three