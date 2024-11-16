# CRONTAB

 - Es una herramienta en sistemas linux que permite programar tareas para que se ejecuten automaticamente en intervales regulares.

 - Iniciar crontab: sudo service cron start

 - Detener crontab: sudo service cron stop

# Terminal
  
  - ~$ crontab -e **Abrir el archivo crontab del usuario actual**

# Sintaxis
Cada línea en el archivo crontab tiene la estructura ´* * * * * comando´

Cada asteristico representa:

   - Minuto (0 - 59)
   - Hora (0 - 23)
   - Día del mes (1 - 31)
   - Mes (1 - 12)
   - Día de la semana (0 - 6) (Domingo es 0)

# Ver tareas programadas

   - crontab -l

# Elimar todas las tareas programadas

   - crontab -r

# Utilidad

   [crontab](https://crontab.guru/)