# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

task_course_1 = BaseTask.create(
  title: "Album example",
  description: "Abajo encontrarás una url, debes crear una pagina lo mas similar posible a la que esta en la url. No es necesario que sea responsive, pero seraá un plus para ti si así la quieres hacer.",
  task_url: "https://getbootstrap.com/docs/5.1/examples/album/",
  )
task_course_2 = BaseTask.create(
  title: "Pricing",
  description: "Abajo encontrarás una url, debes crear una pagina lo mas similar posible a la que esta en la url. No es necesario que sea responsive, pero seraá un plus para ti si así la quieres hacer.",
  task_url: "https://getbootstrap.com/docs/5.1/examples/pricing/",
  )

course_1 = BaseCourse.create(
  title: "HTML",
  description: "CSS, en español «Hojas de estilo en cascada», es un lenguaje de diseño gráfico para definir y crear la presentación de un documento estructurado escrito en un lenguaje de marcado.",
  order: 1,
  base_task: task_course_1
)

course_2 = BaseCourse.create(title: "CSS",
                             description: "HTML (Lenguaje de Marcas de Hipertexto, del inglés HyperText Markup Language) es el componente más básico de la Web. Define el significado y la estructura del contenido web. ... HTML utiliza 'marcas' para etiquetar texto, imágenes y otro contenido para mostrarlo en un navegador Web.",
                             order: 2,
                             base_task: task_course_2)

videos = BaseVideo.create(
  [{
     title: "Curso Básico de HTML desde 0 - Introducción",
     url: "https://www.youtube.com/watch?v=cqMfPS8jPys",
     order: 1,
     base_course: course_1,
     status: 1
   },
   {
     title: "Curso Básico de HTML - 2. Etiquetas para Textos",
     url: "https://www.youtube.com/watch?v=TNQleomUw6U",
     order: 2,
     base_course: course_1,
     status: 1
   },
   {
     title: "Curso Básico de HTML - 3. Enlaces",
     url: "https://www.youtube.com/watch?v=RdnS55MbdY4",
     order: 3,
     base_course: course_1,
     status: 1
   },
   {
     title: "Curso Básico de HTML - 4. Listas",
     url: "https://www.youtube.com/watch?v=IRbEXqBBOCo",
     order: 4,
     base_course: course_1,
     status: 1
   },
   {
     title: "Curso Básico de HTML - 5. Imágenes",
     url: "https://www.youtube.com/watch?v=lAoeALwWKo0",
     order: 5,
     base_course: course_1,
     status: 1
   },
   {
     title: "Curso Básico de HTML - 6. Tablas",
     url: "https://www.youtube.com/watch?v=LmSUS6MuSzk",
     order: 6,
     base_course: course_1,
     status: 1
   },
   {
     title: "Curso Básico de HTML - 7. Formularios",
     url: "https://www.youtube.com/watch?v=QDOfODwsfuQ",
     order: 7,
     base_course: course_1,
     status: 1
   },
   {
     title: "Curso Básico de HTML - 8. Creando una Estructura de Contenido / Layout",
     url: "https://www.youtube.com/watch?v=yyYPFHAddvs",
     order: 8,
     base_course: course_1,
     status: 1
   },
   {
     title: "Curso Básico de HTML - 9. Metadatos y otras etiquetas",
     url: "https://www.youtube.com/watch?v=eCV_-IHs5xQ",
     order: 9,
     base_course: course_1,
     status: 1
   },
   {
     title: "Curso Básico de CSS desde 0 - Introducción",
     url: "https://www.youtube.com/watch?v=24gNhTcy6pw&list=PLhSj3UTs2_yU0fGoS1bjpHqky4kCEmTbR",
     order: 1,
     base_course: course_2,
     status: 1
   },
   {
     title: "Curso Basico de CSS - 2. Selectores",
     url: "https://www.youtube.com/watch?v=uqkj7HQ7ids&list=PLhSj3UTs2_yU0fGoS1bjpHqky4kCEmTbR&index=2",
     order: 1,
     base_course: course_2,
     status: 1
   },
   {
     title: "Curso Basico de CSS - 3. Unidades de Medida",
     url: "https://www.youtube.com/watch?v=BTv5Etachw0&list=PLhSj3UTs2_yU0fGoS1bjpHqky4kCEmTbR&index=3",
     order: 1,
     base_course: course_2,
     status: 1
   }])

user = User.create!(email: "niljordan23@gmail.com", password: "20152005814", password_confirmation: "20152005814")

profile = Profile.create!(first_name: "Nildiert", last_name: "Jimenez Jaramillo", phone_number: "3192164645", user: user)

Course.create!(user: user, base_course: course_2)

Resource.create!([
                  { title: 'Conceptos básicos de HTML', url: 'https://developer.mozilla.org/es/docs/Learn/Getting_started_with_the_web/HTML_basics', base_course: BaseCourse.all.first },
                  { title: 'HTML Tutorial W3Schools', url: 'https://www.w3schools.com/html/default.asp', base_course: BaseCourse.all.first },
                  { title: 'HTML Tutorial tutorialspoint', url: 'https://www.tutorialspoint.com/html/index.htm', base_course: BaseCourse.all.first },
                  { title: 'CSS Selectors', url: 'https://www.w3schools.com/css/css_selectors.asp', base_course: BaseCourse.all.second },
                  { title: 'CSS Text', url: 'https://www.w3schools.com/css/css_text.asp', base_course: BaseCourse.all.second },
                  { title: 'CSS Tables', url: 'https://www.w3schools.com/css/css_table.asp', base_course: BaseCourse.all.second },
                  { title: 'CSS Cheatsheet', url: 'https://overapi.com/css', base_course: BaseCourse.all.second },
                  { title: 'A Complete Guide to Flexbox', url: 'https://css-tricks.com/snippets/css/a-guide-to-flexbox/', base_course: BaseCourse.all.second }
                ]
)

