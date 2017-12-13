Rails.application.routes.draw do
  root 'welcome#index'
  get 'welcome/' , to: 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #Rutas Curso
  get 'cursos/' , to: 'cursos#index'
  post 'cursos/', to: 'cursos#crear'
  get 'cursos/:id/editar/' , to: 'cursos#editar'
  put 'cursos/:id', to: 'cursos#update'
  get 'cursos/nuevo/' , to: 'cursos#nuevo'
  delete 'cursos/:id' , to: 'cursos#eliminar'
  get 'cursos/:id' , to: 'cursos#show'

  #Rutas Pago
  get 'pagos/' , to: 'pagos#index'
  post 'pagos/' , to: 'pagos#crear'
  get 'pagos/:id/editar' , to: 'pagos#editar'
  put 'pagos/:id' , to: 'pagos#update'
  get 'pagos/nuevo/' , to: 'pagos#nuevo'
  delete 'pagos/:id' , to: 'pagos#eliminar'
  get 'pagos/:id' , to: 'pagos#show'

  #Rutas Sueldo
  get 'sueldos/' , to: 'sueldos#index'
  post 'sueldos/' , to: 'sueldos#crear'
  get 'sueldos/:id/editar/' , to: 'sueldos#editar'
  put 'sueldos/:id' , to: 'sueldos#update'
  get 'sueldos/nuevo/' , to: 'sueldos#nuevo'
  delete 'sueldos/:id' , to: 'sueldos#eliminar'
  get 'sueldos/:id' , to: 'sueldos#show'

  #Rutas Profesor
  get 'profesores/', to: 'profesores#index', as: 'profesores_todos'
  get 'profesores/nuevo', to: 'profesores#nuevo', as: 'nuevo_profesor'
  get 'profesores/:id', to: 'profesores#mostrar', as: 'profesor'
  get 'profesores/:id/editar', to: 'profesores#editar', as: 'editar_profesor'
  post 'profesores/', to: 'profesores#crear'
  patch 'profesores/:id', to: 'profesores#actualizar'
  delete 'profesores/:id', to: 'profesores#eliminar'

  #Rutas Alumno
  get 'alumnos/', to: 'alumnos#index', as: 'alumnos_todos'
  get 'alumnos/nuevo', to: 'alumnos#nuevo', as: 'nuevo_alumno'
  get 'alumnos/:id', to: 'alumnos#mostrar', as: 'alumno'
  get 'alumnos/:id/editar', to: 'alumnos#editar', as: 'editar_alumno'
  post 'alumnos/', to: 'alumnos#crear'
  patch 'alumnos/:id', to: 'alumnos#actualizar'
  delete 'alumnos/:id', to: 'alumnos#eliminar'

end
