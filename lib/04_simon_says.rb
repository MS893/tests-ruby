def echo(string)
  return string
end

def shout(string)
  return string.upcase
end

def repeat(string, times = 2)
  # 2 est la valeur par défaut
  string = (string + " ")
  string = string * times
  return string.strip # retire le dernier espace
end

def start_of_word(string, length = 1)
  return string[0..length-1]
end

def first_word(string)
  # split créé un tableau qui contient chaque sous chaine séparée par un caractère (ici " ")
  return string.split(" ")[0] # on retouren le premier de ces éléments de tableau
end

def titleize(string)
  # met la première lettre de chaque mot en majuscule sauf les petits mots
  array = []
  string = string.split(" ")
  string.each do |mot|
    if mot.length > 3
      mot = mot.capitalize()
    end
    array = array.push(mot)
  end
  array[0]=array[0].capitalize()  # met la première lettre du premier mot en majuscule même si c'est un petit mot
  return array.join(" ")
end
