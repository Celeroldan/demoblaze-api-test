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

-Signup – Crear un nuevo usuario

Entrada probada: JSON con un username aleatorio y un password.

Salida esperada: Cadena vacía "" indicando que el registro fue exitoso.

Resultado en tus corridas: Cuando el usuario ya existía, el servicio devolvió {"errorMessage":"This user already exist."}.

-Signup – Intentar crear un usuario ya existente

Entrada probada: Mismo username ya registrado anteriormente.

Salida esperada: Respuesta con errorMessage informando que el usuario ya existe.

Resultado en tus corridas: Se recibió correctamente {"errorMessage":"This user already exist."}.

- Login – Usuario y password correctos

Entrada probada: username y password válidos (por ejemplo, croldan con la contraseña real que usaste).

Salida esperada: Objeto con un campo Auth_token (por ejemplo {"Auth_token":"Y3J...=="}) que confirma el login.

Resultado en tus corridas: Cuando la contraseña no coincidía, la API devolvía {"errorMessage":"Wrong password."}; cuando coincidía, sí devolvía el Auth_token.

- Login – Usuario y password incorrectos

Entrada probada: Usuario o contraseña inválidos.

Salida esperada: Objeto con {"errorMessage":"Wrong password."} o {"errorMessage":"User does not exist."} según el caso.

Resultado en tus corridas: Se obtuvo la respuesta de error esperada.

Resumen final

Se cubre los cuatro casos:

Alta de usuario nuevo.

Alta de usuario duplicado.

Inicio de sesión exitoso.

Inicio de sesión fallido.

Motivo de los fallos en las pruebas automáticas:
La lógica de verificación en Karate intentaba “adivinar” si la respuesta era objeto o cadena vacía, y por eso algunas aserciones no coincidieron aunque el servicio sí respondía.

***Tecnologías utilizadas

- Karate 1.4.1
- Maven Surefire Plugin 3.0.0-M7
- Java 17
