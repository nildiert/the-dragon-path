# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)



course_1 = BaseCourse.create(
  title: "HTML",
  description: "CSS, en español «Hojas de estilo en cascada», es un lenguaje de diseño gráfico para definir y crear la presentación de un documento estructurado escrito en un lenguaje de marcado.",
  order: 1)

course_2 = BaseCourse.create(title: "CSS",
  description: "HTML (Lenguaje de Marcas de Hipertexto, del inglés HyperText Markup Language) es el componente más básico de la Web. Define el significado y la estructura del contenido web. ... HTML utiliza 'marcas' para etiquetar texto, imágenes y otro contenido para mostrarlo en un navegador Web.",
  order: 2)

videos = BaseVideo.create(
  [{
    title: "Curso Básico de HTML desde 0 - Introducción",
    url: "https://www.youtube.com/watch?v=cqMfPS8jPys&list=PLhSj3UTs2_yVHt2DgHky_MzzRC58UHE4z",
    order: 1,
    base_course: course_1,
    status: 1
  },
  {
    title: "Curso Básico de HTML - 2. Etiquetas para Textos",
    url: "https://www.youtube.com/watch?v=TNQleomUw6U&list=PLhSj3UTs2_yVHt2DgHky_MzzRC58UHE4z&index=2",
    order: 2,
    base_course: course_1,
    status: 1
  },
  {
    title: "Curso Básico de HTML - 3. Enlaces",
    url: "https://www.youtube.com/watch?v=RdnS55MbdY4&list=PLhSj3UTs2_yVHt2DgHky_MzzRC58UHE4z&index=3",
    order: 2,
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


user = User.create(email: "niljordan23@gmail.com", password: "20152005814", password_confirmation: "20152005814")

profile = Profile.create(first_name: "Nildiert", last_name: "Jimenez Jaramillo", phone_number: "3192164645", user: user)
