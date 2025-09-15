def who_is_bigger(a, b, c)
  # retourne le plus grand des 3 nombres
  if a == nil || b == nil || c == nil
    return "nil detected"
  elsif a > b && a > c
    return "a is bigger"
  elsif b > a && b > c
    return "b is bigger"
  elsif c > a && c > b
    return "c is bigger"
  end
end

def reverse_upcase_noLTA(string)

  # retourne l'inverse de la chaine convertie en majuscules
  string = string.reverse
  string = string.upcase
  string = string.gsub("L", "")
  string = string.gsub("T", "")
  string = string.gsub("A", "")
  return string
end

def array_42(array)
  # retourne true si l'array contient un 42
  if array.include?(42)
    return true
  else
    return false
  end
end

def magic_array(array)
  # opérations sur l'array
  # - flattened (i.e. no more arrays in array)
  # - sorted
  # - with each number multiplicated by 2
  # - with each multiple of 3 removed
  # - with each number duplicate removed (any number should appear only once)
  # - sorted
  array = array.flatten                     # transforme l'array en un array simple (les arrays à l'intérieur sont intégrés à l'array)
  array = array.sort                        # trie par ordre croissant, il peut y avoir des doublons
  array = array.map { |x| x * 2 }           # multiplie chaque élément du tableau par 2
  array = array.reject { |x| x % 3 == 0 }   # retire les multiples de 3 du tableau (le reste de modulo 3 égal 0, donc multiple de 3)
  array = array.uniq                        # retire les doublons
  array = array.sort                        # trie une nouvelle fois par ordre croissant INUTILE !!! car déjà trié
  return array
end
