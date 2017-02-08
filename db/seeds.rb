# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
# movies = Movie.create!([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# Character.create!(name: 'Luke', movie: movies.first)



## DEFAULT DATA


Rol.create!(id: 1, name: 'Administrador')
Rol.create!(id: 2, name: 'Tomador')

TypeDocument.create!(id: 1, name: 'Cédula Ciudadanía')
TypeDocument.create!(id: 2, name: 'Cédula de Extranjería')
TypeDocument.create!(id: 3, name: 'Nit')

User.create!(id: 1, type_document_id: 1,number_document: 1090412456, names: 'Stivenson', surnames: "Rincon", email: "stivenson@xxx.com", password: "123456", rol_id: 1)
User.create!(id: 2, type_document_id: 1,number_document: 664421256, names: 'Luis', surnames: "Rincon", email: "luis@xxx.com", password: "123456", rol_id: 2)
User.create!(id: 3, type_document_id: 2,number_document: 664421256, names: 'Alberto', surnames: "Lopez", email: "alberto@xxx.com", password: "123456", rol_id: 2)

TypeVehicle.create!(id:1 ,name: 'MOTOS')
TypeVehicle.create!(id:2 ,name: 'CAMPEROS Y CAMIONETAS')
TypeVehicle.create!(id:3 ,name: 'CARGA O MIXTO')
TypeVehicle.create!(id:4 ,name: 'OFICIALES ESPECIALES')
TypeVehicle.create!(id:5 ,name: 'AUTOS FAMILIARES')
TypeVehicle.create!(id:6 ,name: 'VEHICULOS PARA SEIS O MAS PASAJEROS')
TypeVehicle.create!(id:7 ,name: 'AUTOS DE NEGOCIOS Y TAXIS')
TypeVehicle.create!(id:8 ,name: 'BUSES Y BUSETAS DE SERVICIO PUBLICO URBANO')
TypeVehicle.create!(id:9 ,name: 'SERVICIO PÚBLICO INTERMUNICIPAL')


 
SubtypeVehicle.create!( id: 1, code: 110, description: 'Menos de 100 c.c.',   type_measure:'cc', prima:203100, type_vehicle_id:1)  
SubtypeVehicle.create!( id: 2, code: 120, description: 'De 100 a 200 c.c.',   type_measure:'cc', prima:272700, type_vehicle_id:1)  
SubtypeVehicle.create!( id: 3, code: 130, description: 'Más de 200 c.c.',   type_measure:'cc', prima:307600, type_vehicle_id:1)  
SubtypeVehicle.create!( id: 4, code: 140, description: 'MOTOCARROS',   type_measure:'cc', prima:307600, type_vehicle_id:1)   
SubtypeVehicle.create!( id: 5, code: 211, description: 'Menos de 1500 c.c.', description_age: '0-9', type_measure:'cc', prima:326800, type_vehicle_id:2)  
SubtypeVehicle.create!( id: 6, code: 212, description: 'Menos de 1500 c.c.', description_age: '10+', type_measure:'cc', prima:393200, type_vehicle_id:2)  
SubtypeVehicle.create!( id: 7, code: 221, description: '1500 a 2500', description_age: '0-9', type_measure:'cc', prima:390400, type_vehicle_id:2)  
SubtypeVehicle.create!( id: 8, code: 222, description: '1500 a 2500', description_age: '10+', type_measure:'cc', prima:462700, type_vehicle_id:2)  
SubtypeVehicle.create!( id: 9, code: 231, description: 'Más de 2500 c.c.', description_age: '0-9', type_measure:'cc', prima:458100, type_vehicle_id:2)  
SubtypeVehicle.create!( id: 10, code: 232, description: 'Más de 2500 c.c.', description_age: '10+', type_measure:'cc', prima:525900, type_vehicle_id:2)  
SubtypeVehicle.create!( id: 11, code: 310, description: 'Menos de 5 toneladas',   type_measure:'p', prima:366300, type_vehicle_id:3)  
SubtypeVehicle.create!( id: 12, code: 320, description: 'De 5 a 15 toneladas',   type_measure:'p', prima:529400, type_vehicle_id:3)  
SubtypeVehicle.create!( id: 13, code: 330, description: 'Mas de 15 toneladas',   type_measure:'p', prima:669600, type_vehicle_id:3)   
SubtypeVehicle.create!( id: 14, code: 410, description: 'Menos de 1500 c.c.',   type_measure:'cc', prima:412300, type_vehicle_id:4)  
SubtypeVehicle.create!( id: 15, code: 420, description: '1500 a 2500 c.c.',   type_measure:'cc', prima:520000, type_vehicle_id:4)  
SubtypeVehicle.create!( id: 16, code: 430, description: 'Más de 2500 c.c.',   type_measure:'cc', prima:623600, type_vehicle_id:4)  
SubtypeVehicle.create!( id: 17, code: 511, description: 'Menos de 1500 c.c.', description_age: '0-9', type_measure:'cc', prima:183900, type_vehicle_id:5)  
SubtypeVehicle.create!( id: 18, code: 512, description: 'Menos de 1500 c.c.', description_age: '10+', type_measure:'cc', prima:244100, type_vehicle_id:5)  
SubtypeVehicle.create!( id: 19, code: 521, description: '1500 a 2500 c.c.', description_age: '0-9', type_measure:'cc', prima:224200, type_vehicle_id:5)  
SubtypeVehicle.create!( id: 20, code: 522, description: '1500 a 2500 c.c.', description_age: '10+', type_measure:'cc', prima:279100, type_vehicle_id:5)  
SubtypeVehicle.create!( id: 21, code: 531, description: 'Más de 2500 c.c.', description_age: '0-9', type_measure:'cc', prima:262100, type_vehicle_id:5)  
SubtypeVehicle.create!( id: 22, code: 532, description: 'Más de 2500 c.c.', description_age: '10+', type_measure:'cc', prima:311000, type_vehicle_id:5)  
SubtypeVehicle.create!( id: 23, code: 611, description: 'Menos de 2500 c.c.', description_age: '0-9', type_measure:'cc', prima:328700, type_vehicle_id:6)  
SubtypeVehicle.create!( id: 24, code: 612, description: 'Menos de 2500 c.c.', description_age: '10+', type_measure:'cc', prima:420000, type_vehicle_id:6)  
SubtypeVehicle.create!( id: 25, code: 621, description: '2500 o más c.c.', description_age: '0-9', type_measure:'cc', prima:440400, type_vehicle_id:6)  
SubtypeVehicle.create!( id: 26, code: 622, description: '2500 o más c.c.', description_age: '10+', type_measure:'cc', prima:528900, type_vehicle_id:6)  
SubtypeVehicle.create!( id: 27, code: 711, description: 'Menos de 1500 c.c.', description_age: '0-9', type_measure:'cc', prima:228200, type_vehicle_id:7)  
SubtypeVehicle.create!( id: 28, code: 712, description: 'Menos de 1500 c.c.', description_age: '10+', type_measure:'cc', prima:285200, type_vehicle_id:7)  
SubtypeVehicle.create!( id: 29, code: 721, description: '1500 a 2500 c.c.', description_age: '0-9', type_measure:'cc', prima:283700, type_vehicle_id:7)  
SubtypeVehicle.create!( id: 30, code: 722, description: '1500 a 2500 c.c.', description_age: '10+', type_measure:'cc', prima:350900, type_vehicle_id:7)  
SubtypeVehicle.create!( id: 31, code: 731, description: 'Más de 2500 c.c.', description_age: '0-9', type_measure:'cc', prima:366300, type_vehicle_id:7)  
SubtypeVehicle.create!( id: 32, code: 732, description: 'Más de 2500 c.c.', description_age: '10+', type_measure:'cc', prima:430000, type_vehicle_id:7)   
SubtypeVehicle.create!( id: 33, code: 810, description: 'Todos', prima:536300, type_vehicle_id:8)  
SubtypeVehicle.create!( id: 34, code: 910, description: 'Menor a 10 pasajeros',   type_measure:'pa', prima:541200, type_vehicle_id:9)  
SubtypeVehicle.create!( id: 35, code: 920, description: 'Más de 9 pasajeros',   type_measure:'pa', prima:785900, type_vehicle_id:9)


## ONLY FOR TEST DATA (NOT IS DEFAULT)

Vehicle.create!(id: 1, plate: 'RSD-789', age: 12,subtype_vehicle_id:32,user_id:2,n_passengers:6,tonnes:3.5)
Vehicle.create!(id: 2, plate: 'AAD-554', age: 8,subtype_vehicle_id:29,user_id:3,cylinder:1600)


Soat.create!(vehicle_id:1,number_cart:'4545434343356',holder_cart:'Eduardo Antonio Lopez',date_end_cart: '2020-03',code_card:456,number_quotas:1)
Soat.create!(vehicle_id:1,number_cart:'5983439880232',holder_cart:'Eduardo Antonio Lopez',date_end_cart: '2020-03',code_card:342,number_quotas:2)
Soat.create!(vehicle_id:2,number_cart:'6655893232399',holder_cart:'Maria Isabel Urrutia',date_end_cart: '2021-03',code_card:125,number_quotas:4)



