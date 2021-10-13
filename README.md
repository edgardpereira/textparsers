# README

A continuación se muestra el proceso para ejecutar el proyecto en un entorno linux. Este proyecto requiere las siguientes versiones instaladas:

* Ruby version: 2.7.0
* Rails version: 5.2.6

## Dependencias:
  Se recomienda usar un manejador de versiones de ruby como rvm o rbenv, aunque también podría usar una instalación nativa. Los siguientes pasos muestran como instalar ruby usando rvm.

  ### Instalar RVM
  Dependiendo del sistema operativo necesitará instalar gpg2:
  ```
  sudo apt update
  sudo apt upgrade
  sudo apt install gnupg2
  ```
  Instale rvm
  ```
  gpg2 --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
  \curl -sSL https://get.rvm.io | bash -s stable --rails
  ```
  Agregue la siguiente línea al archivo .bashrc que se encuentra en el directorio del usuario:
  source ~/.rvm/scripts/rvm

  Verifique la versión de ruby
  ```
  ruby -v
  ```
  sino no coincide con la requerida, instale la versión correcta:
  ```
  rvm install ruby-2.7.0
  rvm use default 2.7.0
  ```

### Clone el proyecto

Verifique si tiene instalado git
```
git -v
```
Sino esta instalado, siga los siguientes pasos:
```
sudo apt install git
git config --global user.email "tu@email.com"
git config --global user.name "tu nombre"
```
Clona el proyecto:
```
git clone https://github.com/edgardpereira/textparsers.git
cd textparsers
```

### Incializa el proyecto
Instala node.js
```
sudo apt install node
```
Ejecuta el siguiente comando:
```
bundle install
```

### Ejecuta el Servidor
Ejecuta el siguiente comando:
```
rails s
```
Desde el navegador carga el siguiente enlace:
```
http://localhost:3000
```
Si todo quedó bien instalado, deberás ver la página de bienvenida de Rails

Para ejecutar la prueba, carga la siguiente url:
```
http://localhost:3000/api/v1/parsers?text=casa perro gato gato casa perro casa
```
Cambia la cadena después de text= por la cadena que quieras evaluar.