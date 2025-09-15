def time_string(nombre)
  heures = nombre / 3600
  minutes = (nombre / 60) % 60
  secondes = nombre % 60
  format("%02d:%02d:%02d", heures, minutes, secondes)
end