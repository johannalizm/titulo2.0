# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
tipoinstituciones = Tipoinstitucione.create([{ nombre:'Universidad'}, { nombre: 'Instituto Profesional'},{nombre: 'Otros'}])
tiporelacione = Tiporelacione.create([{ nombre:'Pública'}, { nombre: 'Privada con aportes estatales'},{nombre: 'Privada sin aportes estatales'}])
paise = Paise.create([{ nombre:'Chile'}])
region = Region.create([{ nombre:'Metropolitana', paise_id:'1'}])
