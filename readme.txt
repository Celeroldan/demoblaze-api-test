***Proyecto: Pruebas API con Karate para DemoBlaze

Este proyecto automatiza pruebas funcionales sobre los servicios REST de DemoBlaze, utilizando el framework Karate y Maven.

***Requisitos

- Java 17
- Maven instalado
- Conexión a internet

***Ejecución de pruebas

1. Clonar el repositorio:
   git clone https://github.com/Celeroldan/demoblaze-api-test.git

2. Navegar al proyecto:
   cd demoblaze-api-test

3. Ejecutar las pruebas:
   mvn test

4. Ver resultados:
   - En consola
   - En el reporte HTML: target/karate-reports/index.html

***Escenarios cubiertos

- Registro de nuevo usuario (/signup)
- Registro de usuario duplicado (/signup)
- Login exitoso (/login)
- Login fallido (/login)

***Tecnologías utilizadas

- Karate 1.4.1
- Maven Surefire Plugin 3.0.0-M7
- Java 17