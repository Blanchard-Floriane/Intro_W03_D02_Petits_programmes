#si majuscule ASCII code boucle 65 à 90
  # "A".ord => 56
  # 65.chr => A

def uppercase_rule(char,key) #char = character
   # exemple char = F et key = 6
  char_value = char.ord - "A".ord # => char_value = 70 - 65 = 5
  new_char_value = (char_value + key) % 26 # modulo s'assure que si on dépasse "Z" on recommence à "A", si bien que ici new_char_value = (5 + 6) % 26 = 11
  # autre exemple avec char = "Z" et key = 2 => new_char_value = ((90 - 65) + 2) % 26 = (25 + 2) % 26 = 27 % 26 = 1 
  new_char = ("A".ord + new_char_value).chr # .chr pour convertir en caractère
  # ex1. new_char = 65 + 11 = 76.chr = "L"
  # ex2. new_char = 65 + 1 = 66.chr = "B"
  return new_char
end

def lowercase_rule(char,key) 
 char_value = char.ord - "a".ord 
 new_char_value = (char_value + key) % 26 
 new_char = ("a".ord + new_char_value).chr
 return new_char
end

def caesar_cipher(string,key)
  #vérifie si l'argument n'est pas une chaîne de caractère
  unless string.is_a?(string)
    return "Ce n'est pas une string andouille !"
  end

  string_split = string.split("")
  string_split.map! do |char| #pour enregistre chaque nouveau caractère
    char_value = char.ord
    if char_value >= 65 && char_value <= 90 #on aurait aussi pu écrire char.match(/[A-Z]/)
      uppercase_rule(char,key)
    elsif char_value >= 97 && char_value <= 122
      lowercase_rule(char,key)
    else
      char
    end
  end
  new_string = string_split.join("")
  return new_string
end
