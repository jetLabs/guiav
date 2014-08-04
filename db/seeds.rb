# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Administrador.create(usuario: 'admin', contrasena: 'admin')

User.create(username: 'guiav', password: 'guiav')

Animal.create(nombre: 'Bovinos')
Animal.create(nombre: 'Ovinos')
Animal.create(nombre: 'Equinos')
Animal.create(nombre: 'Felinos')
Animal.create(nombre: 'Caninos')
Animal.create(nombre: 'Aves')
Animal.create(nombre: 'Abejas')
Animal.create(nombre: 'Porcinos')
Animal.create(nombre: 'Conejos')
Animal.create(nombre: 'Caprinos')


Laboratorio.create(nombre: "Agromas", razon_social: "Agromas S.A.", direccion: "Asuncion 1479", departamento: "Montevideo", telefono: "2929 0339", web: "www.agromas.com.uy")
Laboratorio.create(nombre: "Richmond", razon_social: "Doralben S.A.", direccion: "Ruta 101 K 26,900", departamento: "Canelones", telefono: nil, web: "www.doralben.com.uy")


Medicamento.create(nombre: "Nalbufine 10", laboratorio_id: 2, indicaciones: "Como indicacion general, para el control del dolor ...", composicion: "Cada 100 mL contiene: Nal- bufina, clorhidrato: 1 g...", administracion_dosis: "Inyectable. Combi- naciones: Con Acepromacina: Cani...", categoria_id: nil, presentacion: "Frascos de 20 mL.", tipo: nil, contraindicacion_precaucion: nil, te_carne: nil, te_leche: nil, mgap_nro: "A-3304", observaciones: "Repr. Doralben S.A.")

Categoria.create(nombre: 'Farmacologicos')
Categoria.create(nombre: 'Analgesicos - Antiinflamatorios - Antihistaminicos')
Categoria.create(nombre: 'Analgesicos Opioides')
Categoria.create(nombre: 'Nalbufina')