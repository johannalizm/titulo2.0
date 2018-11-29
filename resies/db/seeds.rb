# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
tipoinstituciones = Tipoinstitucione.create([{ nombre:'Universidad'}, { nombre: 'Instituto Profesional'},{nombre: 'Otros'}])
tiporelacione = Tiporelacione.create([{ nombre:'Pública'}, { nombre: 'Privada con aportes estatales'},{nombre: 'Privada sin aportes estatales'}])
paise = Paise.create([{ nombre:'Chile'},{ nombre:'Colombia'}])
region = Region.create([{ nombre:'Metropolitana', paise_id:'1'},{ nombre:'Medellin', paise_id:'2'}])
cat = Cat.create([{nombre:'Datos Institucionales'},{nombre:'Gobernanza'},{nombre:'Cultura'},{nombre:'Academia'},{nombre:'Campus'},{nombre:'Responsabilidad Social'}])
subcat = Subcat.create([{nombre:'Población',cat_id:'1'},{nombre:'Instalaciones',cat_id:'1'},{nombre:'Año Base',cat_id:'1'}])
subcat = Subcat.create([{nombre:'GOB1. Participación de grupos de interés',cat_id:'2'},{nombre:'GOB2. Compromiso Institucional',cat_id:'2'},{nombre:'GOB3. Plan/Estrategia de Sustentabilidad',cat_id:'2'},{nombre:'GOB4. Reportabilidad y Transparencia',cat_id:'2'},{nombre:'GOB5. Huella de Carbono',cat_id:'2'},{nombre:'GOB6. Coordinación Sustentabilidad',cat_id:'2'}])
subcat = Subcat.create([{nombre:'CU1. Estudiantes promotores de la Sustentabilidad',cat_id:'3'},{nombre:'CU2. Inducción a la Sustentabilidad para estudiantes',cat_id:'3'},{nombre:'CU3. Funcionarios promotores de la Sustentabilidad',cat_id:'3'},{nombre:'CU4.Inducción a la sustentabilidad para funcionarios',cat_id:'3'},{nombre:'CU5. Programa de prácticas sustentables para oficinas',cat_id:'3'},{nombre:'CU6. Programa de desarrollo profesional en sustentabilidad',cat_id:'3'},
{nombre:'CU7. Actividades de difusión y sensibilización',cat_id:'3'}])
subcat = Subcat.create([{nombre:'AC1. Curso mínimo transversal de pregrado',cat_id:'4'},{nombre:'AC2. Capacitación profesores',cat_id:'4'},{nombre:'AC3. Evaluación conocimiento sustentabilidad de estudiantes',cat_id:'4'},{nombre:'AC4. Programas de postgrado que incluyen competencias en sustentabilidad',cat_id:'4'},{nombre:'AC5. Programas de pregrado que incluyen competencias en sustentabilidad',cat_id:'4'},{nombre:'AC6. Apoyo a la investigación en sustentabilidad',cat_id:'4'}])
subcat = Subcat.create([{nombre:'AC7. Investigación enfocada en sustentabilidad',cat_id:'4'},{nombre:'AC8. Transferencia de conocimiento',cat_id:'4'}])
subcat = Subcat.create([{nombre:'GC1. Huella Hidríca',cat_id:'5'},{nombre:'GC2. Reducción del consumo de agua',cat_id:'5'},{nombre:'GC3. Biodiversidad',cat_id:'5'},{nombre:'GC4. Manejo sustentable de jardines',cat_id:'5'},{nombre:'GC5. Alimentación',cat_id:'5'},{nombre:'GC6. Programa de compras sustentables',cat_id:'5'},
{nombre:'GC7. Diseño y construcción',cat_id:'5'},{nombre:'GC8. Operación y mantención',cat_id:'5'},{nombre:'GC9. Consumo de energía',cat_id:'5'},{nombre:'GC10. Energía renovable',cat_id:'5'},{nombre:'GC11. Generación de residuos',cat_id:'5'},{nombre:'GC12. Recuperación de residuos',cat_id:'5'},{nombre:'GC13. Residuos peligrosos',cat_id:'5'},
{nombre:'GC14. Participación modal medios de transporte',cat_id:'5'},{nombre:'GC15. Plan transporte sustentable',cat_id:'5'}])
subcat = Subcat.create([{nombre:'RS1. Asequibilidad',cat_id:'6'},{nombre:'RS2. Política de inclusión',cat_id:'6'},{nombre:'RS3. Equidad de género',cat_id:'6'},{nombre:'RS4. Colaboración',cat_id:'6'},{nombre:'RS5. PArticipación en políticas públicas',cat_id:'6'},{nombre:'RS6. Comunidades vecinas',cat_id:'6'},
{nombre:'RS7. Compensación del personal',cat_id:'6'},{nombre:'RS8. Satisfacción laboral',cat_id:'6'},{nombre:'RS9. Sindicalización',cat_id:'6'}])
