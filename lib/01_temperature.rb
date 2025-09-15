def ftoc(farhreneith)
  # tranforme des degrès Fahrenheit en degrés celsius
  return ((farhreneith.to_f - 32) * 5/9)
end

def ctof(celsius)
  # tranforme des degrès Fahrenheit en degrés celsius
  return ((celsius.to_f * 9/5) + 32)
end
