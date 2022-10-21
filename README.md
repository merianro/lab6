# LAB5

## Objetivos

Escribir formularios y comunicarse con APIs externas.

## Pasos previos

Ver la sección [preparar repositorio](https://github.com/I110IS/lab1/blob/master/README.md#preparar-repositorio)

## Parte 1 - Formularios

1. (Opcional) Instalar la gema simple_form y configurarla para que use bootstrap. (https://github.com/heartcombo/simple_form#bootstrap-5)
1. Crear las rutas para poder crear y actualizar monstruos.
1. Crear las acciones para ver el formulario y crear monstruos. Usar strong parameters. El formulario debe incluir campos para:
  1. Nombre
  1. Descripción (debe ser un area de texto)
  1. Teléfono
  1. Fecha de nacimiento (debe ser un selector de fechas)
  1. (Opcional) Ver el schema.rb para obtener el nombre de las columnas
  1. (Opcional) Al crear un monstruo se debe redirigir a la vista de edición del monstruo
1. Crear la vista para crear monstruos. (new.html.erb)
1. Crear las acciones para ver el formulario de edición y editar monstruos. Usar strong parameters.
1. Crear la vista para editar monstruos. (edit.html.erb) Usar un partial para el formulario.

## Parte 2 - APIs

Vamos a validar que los teléfonos de los monstruos sean válidos usando https://www.abstractapi.com/api/phone-validation-api#docs

1. Crear una cuenta en https://app.abstractapi.com/users/signup?target=/api/phone-validation/pricing/select (elegir el plan gratuito)
1. Guardar la API key en las credenciales de rails
1. Actualizar la acción de crear y actualizar monstruos para que se valide que el teléfono sea válido y de Argentina. Si el teléfono no cumple con alguna de esas condiciones se deberá indicar al usuario con un mensaje de error que explique el motivo.
