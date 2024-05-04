segundosConvert = input("Por favor, entre com o número de segundos que deseja converter: ")
total_segundos  = int(segundosConvert)

dias           = total_segundos // 86400
total_segundos = total_segundos % 86400

horas          = total_segundos // 3600
total_segundos = total_segundos % 3600

minutos        = total_segundos // 60
total_segundos = total_segundos % 60


print(dias,"dias,",horas,"horas,",minutos,"minutos e",total_segundos,"segundos.")
