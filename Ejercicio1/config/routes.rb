Rails.application.routes.draw do
  get 'servicios/registrar'

  get 'servicios/buscar'

  get 'servadic/registrar'

  get 'servadic/buscar'

  get 'estacionamientos/registrar'

  get 'estacionamientos/nuevo'

  get 'estacionamientos/buscar'

  get 'clientes/registrar'

  get 'clientes/buscar'

  get 'productos/nuevo'

  get 'productos/buscar'

  get 'formularios/ejercicio1'

 post 'formularios/ejercicio1_post'

  get 'formularios/ejercicio2'

 post 'formularios/ejercicio2_post'

  get 'formularios/ejercicio3'

 post 'formularios/ejercicio3_post'

  get 'formularios/ejercicio4'

 post 'formularios/ejercicio4_post'

 get  'formularios/ejercicio5'

 post 'formularios/ejercicio5_post'

 get  'formularios/ejercicio6'

 post 'formularios/ejercicio6_post'

 get 'productos/nuevo'

 post 'productos/nuevo_post'

 get 'productos/buscar'

 get 'productos/buscar_get'

 get 'clientes/registrar'

 post 'clientes/registrar_post'

 get 'clientes/buscar'

 get 'clientes/buscar_get'

 get 'estacionamientos/registrar'

 post 'estacionamientos/registrar_post'

 get 'estacionamientos/buscar'

 get 'estacionamientos/buscar_get'

 get 'servicios/registrar'

 post 'servicios/registrar_post'

 get 'servicios/buscar'

 get 'servicios/buscar_get'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
