# API desplegada en Heroku
[colombiasoat.herokuapp.com](http://colombiasoat.herokuapp.com)

# Api (Ruby on Rails 5)
(Folder colombiasoat-client)

* Requerimientos del sistema
    * [Ruby 2.3.1](https://www.ruby-lang.org/en/)
    * Instalar la gema rails versión 5.0.1
    * [Postgresql 9.5.5](https://www.postgresql.org/)

* Instalación
    * Descargar el repositorio y ubicarse en el folder colombiasoat

* Creación de la base de datos
    * Crear la base de datos llamada `colombiasoat` en postgresql

* Inicialización de la base de datos
    * Correr el comando `rake db:migrate` para crear las tablas 
    * Correr el comando `rake db:seed` para llenar tablas que tienen valores por defecto y registros iniciales para poder ingresar a la zona de administración.
    * Ejecutar `rails console`, para abrir la consola de rails en donde debemos ejecutar los siguientes tres comandos, para organizar los autoincrementales (Esto es una particularidad que siempre debo hacer con postgresql):
       * `ActiveRecord::Base.connection.reset_pk_sequence!('users')`
       * `ActiveRecord::Base.connection.reset_pk_sequence!('vehicles')`
       * `ActiveRecord::Base.connection.reset_pk_sequence!('soats')`

* Para desarrollo
    * Correr el comando `rails server` y un servidor quedará escuchando por el puerto 3000
