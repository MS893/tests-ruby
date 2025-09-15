def voyelle(c)
  # vérifie si le caractère c est une voyelle
  voyelles = "aeiouyAEIOUY"
  return voyelles.include?(c)
end

def nb_consonnes(tableau)
  # retourne le nombre de consonnes au début du tableau
  nb = 0
  tableau.each do |lettre|
    if !voyelle(lettre)
      nb += 1
    else
      return nb
    end
  end
  return nb  # il n'y a que des consonnes
end

def translate_mot(string)
  tab = string.split("")
  if !voyelle(tab[0])
    # la première lettre est une consonne
    supp = tab.shift(nb_consonnes(tab))   # caractères à supprimer en début de mot
    tab = tab + supp
    string = tab.join("")
    string = string.gsub("*", "Qu")       # dans le cas où on avait un "qu" qui devait être considéré comme une consonne
    string = string.gsub("=", "qU")
    string = string.gsub("+", "qu")
    string = string.gsub("/", "QU")
  end
  return string + "ay"
end


def translate(string)
  sortie = ""
  string = string.gsub("Qu", "*")
  string = string.gsub("qU", "=")
  string = string.gsub("qu", "+")
  string = string.gsub("QU", "/")
  mots = string.split(" ")
  mots.each do |mot|
    mot = translate_mot(mot)
    sortie = sortie + mot + " "
  end
  sortie = sortie.strip
  return sortie
end
