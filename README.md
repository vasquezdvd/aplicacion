# mi_aplicacion

A new Flutter project.

## Getting Started

La aplicacion consiste en el formulario para creacion de un usuario a través de Flutter.

El formulario esta contituido por tres ventanas de flujo las cuales se explicaran a continuacion detalladamente:

1. En la primera pantalla se se realiza el registro de Nombre y Apellido del usuario, la ventana contiene principalmente:
    - Texto Form de Nombre
    - Text Form de apellido
    - Boton de validacion de informacion
    Los Text Form reciben la informacion, estos text form tienen sus respectivas funciones de validacion los cuales arrojan un aviso en caso usuario olvide diligenciar la  informacion, o coloque menos de dos caracteres en alguno de los TextForm. La validacion se realiza cuando el usuario le da en el boton con la etiqueta "Siguiente", en caso de que el usurio no diligencie la informacion de forma correcta no se mostrara la siguiente ventana.
    
2. La segunda ventana esta formada prinicpalmete por tres Text Form, y un boton con la etiqueta "crear usuario"
    -Text Form de ingreso de fecha de nacimiento
    -Text Form de ingreso de informacion de direccion fisica 1.
    -Text Form de ingreso de iformacion de direccion fisica2.
    -Boton.
    
    Esta ventana se encarga de recibir la informacion de fecha con el formato (AAAA-MM-DD) Y las direcciones con el formato (calle__#__-__) en el caso de la fecha de realiza una validacion detectando que la cadena de tecto tenga  el simbolo (-) y contega exactamente 10 caracteres, en el caso e las recciones se evalua que contenga (calle), (#) y (-).
    Cuando el usuario le da en el boton de "Crear usuario" se despliega una ventana amergente con el fin de queel usuario confirme la creacion del usuario.
    En caso de que el usario acepte la creacion del usuario y no se haya diligenciado correctamente el formulario se deplegara un aviso indicando que el formulario no se diligencio de forma correcta, en caso de que el usuario no acepte la confirmacion se cierra el cuadro de alerta y se mantiene la segunda ventana actual.
    En caso de que se acepte la creacion de usuario se despliega una ventana confirmando que el usuario se creo de forma correcta.
    
    
 3. En la tercera ventana esta compuesta por
    -10 Text.
    En esta ultima venta se muestran etiquetas con la informacion  de nombre, apellido, fecha de nacimiento, direccion 1 y direccion 2 
     
    
    
4. 
  
