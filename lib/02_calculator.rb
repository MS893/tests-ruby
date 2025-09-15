def add(a, b)
  # somme de 2 nombres
  return a + b
end

def subtract(a, b)
  # soustraction de 2 nombres
  return a - b
end

def sum_old(array)
  # somme de tous les nombres d'un tableau
  if tab.empty?
    return 0
  else
    sum = 0
    array.each do |number|
      sum += number
    end
    return sum 
  end
end 

def sum(tab)
  # somme de tous les nombres d'un tableau - plus court
  if tab.empty?
    return 0
  else
    return tab.reduce(:+)
  end
end

def multiply(a, b)
  # multiplication de 2 nombres
  return a * b
end

def power(a, b)
  # puissance de 2 nombres
  return a ** b
end

def factorial(n)
  # factorielle d'un nombre
      if n == 0
    return 1
  else
    return n * factorial(n-1)
  end
end
