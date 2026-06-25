#=================================================
# EJERCICIO 1: ANUALIDAD VENCIDA (VA)
#=================================================

R <- 1800
n <- 48
i <- 0.12/12

VA <- R * ((1 - (1+i)^(-n)) / i)
print(paste("VA Ejercicio 1:", round(VA,2)))


#=================================================
# EJERCICIO 2: ANUALIDAD VENCIDA (R)
#=================================================

A <- 50000
n <- 36
i <- 0.18/12

factor_VA <- (1 - (1+i)^(-n)) / i
R2 <- A / factor_VA

print(paste("Cuota Ejercicio 2:", round(R2,2)))


#=================================================
# EJERCICIO 3: ANUALIDAD VENCIDA (n)
#=================================================

A <- 30000
R <- 1200
i <- 0.12/12

proporcion <- 1 - (A*i)/R

if (proporcion > 0) {
  n <- -log(proporcion) / log(1+i)
  print(paste("Meses Ejercicio 3:", round(n,2)))
  print(paste("Meses redondeados:", ceiling(n)))
} else {
  print("No es posible el cálculo")
}


#=================================================
# EJERCICIO 4: ANUALIDAD ANTICIPADA (VA)
#=================================================

R <- 2000
n <- 60
i <- 0.12/12

VA_anti <- R * ((1 - (1+i)^(-n)) / i) * (1+i)

print(paste("VA Ejercicio 4 (anticipada):", round(VA_anti,2)))


#=================================================
# EJERCICIO 5: ANUALIDAD ANTICIPADA (R)
#=================================================

A <- 80000
n <- 48
i <- 0.15/12

factor_anti <- ((1 - (1+i)^(-n)) / i) * (1+i)

R_anti <- A / factor_anti

print(paste("Cuota Ejercicio 5 (anticipada):", round(R_anti,2)))