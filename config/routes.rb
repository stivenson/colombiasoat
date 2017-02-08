Rails.application.routes.draw do
  get  'type_documents', to: 'type_documents#index'
  get  'subtype_vehicles', to: 'subtype_vehicles#index'
  get  'subtype_vehicles/:id', to: 'subtype_vehicles#show'
  get  'subtype_vehicles/indexOfTypeVehicle/:idtypevehicle', to: 'subtype_vehicles#indexOfTypeVehicle'
  get  'type_vehicles', to: 'type_vehicles#index'
  get  'soats', to: 'soats#index'
  get  '/', to: 'users#messageInit'
  post 'login', to: 'users#showWithCredentials'
  get  'users/:id', to: 'users#show'
  post 'users', to: 'users#create'
  get  'users/showWithPlate/:idplate', to: 'users#showWithPlate'


  get  'vehicles/:id', to: 'vehicles#show'
  post 'vehicles', to: 'vehicles#create'
  get  'vehicles/showWithPlate/:idplate', to: 'vehicles#showWithPlate'

  get  'soats', to: 'soats#index'
  get  'soats/:id', to: 'soats#show'
  post 'soats', to: 'soats#create'
  get  'soats/showWithPlate/:idplate', to: 'soats#showWithPlate'
  get  'soats/indexOfVehicle/:idvehicle', to:'soats#indexOfVehicle'
end
