# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# task_course_1 = BaseTask.create(
#   title: "Album example",
#   description: "Abajo encontrarás una url, debes crear una pagina lo mas similar posible a la que esta en la url. No es necesario que sea responsive, pero seraá un plus para ti si así la quieres hacer.",
#   task_url: "https://getbootstrap.com/docs/5.1/examples/album/",
#   )
# task_course_2 = BaseTask.create(
#   title: "Pricing",
#   description: "Abajo encontrarás una url, debes crear una pagina lo mas similar posible a la que esta en la url. No es necesario que sea responsive, pero seraá un plus para ti si así la quieres hacer.",
#   task_url: "https://getbootstrap.com/docs/5.1/examples/pricing/",
#   )


first_web_page = BaseCourse.create(
  title: 'Primera pagina web',
  description: '',
  order: 1
)

setup_course = BaseCourse.create(
  title: 'Configuración del entorno de desarrollo',
  description: '',
  order: 2
)

git_course = BaseCourse.create(
  title: 'Curso Git',
  description: '',
  order: 3
)

html_course = BaseCourse.create(
  title: 'Curso HTML',
  description: '',
  order: 4
)

css_course = BaseCourse.create(
  title: 'Curso css',
  description: '',
  order: 5
)

flexbox_course = BaseCourse.create(
  title: 'Flexbox',
  description: '',
  order: 6
)

grid_course = BaseCourse.create(
  title: 'CSS Grid',
  description: '',
  order: 7
)

bootstrap_course = BaseCourse.create(
  title: 'Bootstrap',
  description: '',
  order: 8
)

customize_bootstrap_course = BaseCourse.create(
  title: 'Personalizar Bootstrap',
  description: '',
  order: 9
)

tailwind_course = BaseCourse.create(
  title: 'Tailwind',
  description: '',
  order: 10
)

videos_first_webpage = BaseVideo.create([{
   title: "CURSO COMPLETO: Crea una página web desde cero (HTML + CSS)",
   url: "https://www.youtube.com/watch?v=TC8bT7zTdoE",
   order: 1,
   base_course: first_web_page
 }])

Resource.create(
  [
   { title: 'Glitch', url: 'https://glitch.com/', base_course: first_web_page },
   { title: "codepen", base_course: first_web_page, url: "https://codepen.io/" },
   { title: "Bootstrap", base_course: first_web_page, url: "https://getbootstrap.com/" },
   { title: "Unsplash", base_course: first_web_page, url: "https://unsplash.com/" },
   { title: "Picresize", base_course: first_web_page, url: "https://picresize.com/" },
   { title: "Fontpair", base_course: first_web_page, url: "https://www.fontpair.co/" },
   { title: "Google Fonts", base_course: first_web_page, url: "https://fonts.google.com/" },
   { title: "unDraw", base_course: first_web_page, url: "https://undraw.co/illustrations" },
   { title: "opendoodles", base_course: first_web_page, url: "https://www.opendoodles.com/" }])






videos_setup_course = BaseVideo.create([
  { title: "Instalar y configurar visual studio code en windows", url: "https://www.youtube.com/watch?v=X_Z7d04x9-E", order: 1, base_course: setup_course },
  { title: "¿Cómo instalar Git? - Todo lo que tenes que saber", url: "https://www.youtube.com/watch?v=h9ZH2wFpSUc", order: 2, base_course: setup_course }])

Resource.create(
[
  { title: "Cómo instalar Microsoft Visual Studio Code", url: "https://support.academicsoftware.eu/hc/es/articles/360006916138-C%C3%B3mo-instalar-Microsoft-Visual-Studio-Code", base_course: setup_course },
  { title: "Cómo instalar y empezar a usar Visual Studio Code en 5 pasos", url: "https://www.cursosgis.com/como-instalar-y-empezar-a-usar-visual-studio-code-en-5-pasos/", base_course: setup_course },
  { title: "Los mejores plugins de Visual Studio Code para desarrolladores web", url: "https://profile.es/blog/visual-studio-code-plugins/", base_course: setup_course }]
)

BaseVideo.create([
  { title: "Curso practico git", url: "https://www.youtube.com/watch?v=HiXLkL42tMU", order: 1, base_course: git_course },
  { title: "Cómo publicar un sitio web gratis con Github pages", url: "https://youtu.be/QaxgF4v4hms", order: 2, base_course: git_course }])

Resource.create(
[
  { title: "¿Cómo se utiliza Github pages?", url: "https://developer.mozilla.org/es/docs/Learn/Common_questions/Using_Github_pages", base_course: git_course },
  { title: "Qué es Git", url: "https://www.atlassian.com/es/git/tutorials/what-is-git", base_course: git_course },
  { title: "git Cheat Sheet", url: "https://overapi.com/git", base_course: git_course },
  { title: "git - la guía sencilla", url: "https://rogerdudler.github.io/git-guide/index.es.html", base_course: git_course }])

BaseVideo.create([
   { title: "Curso de HTML5 desde CERO (Completo)", url: "https://www.youtube.com/watch?v=kN1XP-Bef7w&t=3391s", base_course: html_course, order: 1 },
   { title: "Curso HTML para Principiantes", url: "https://www.youtube.com/watch?v=rbuYtrNUxg4", base_course: html_course, order: 2 },
   { title: "CURSO DE HTML AVANZADO 2020 | html en un solo vídeo", url: "https://www.youtube.com/watch?v=a4w7TCWV-dU&t=2242s", base_course: html_course, order: 3 }]
)

Resource.create(
  [
  { title: "Conceptos básicos de HTML", url: "https://developer.mozilla.org/es/docs/Learn/Getting_started_with_the_web/HTML_basics", base_course: html_course },
  { title: "HTML Tutorial W3Schools", url: "https://www.w3schools.com/html/default.asp", base_course: html_course },
  { title: "HTML Tutorial tutorialspoint", url: "https://www.tutorialspoint.com/html/index.htm", base_course: html_course }
  ]
)

BaseVideo.create([
  { title: '🚀 Curso CSS PARA PRINCIPIANTES desde CERO (DOMINA CSS3)', url: 'https://www.youtube.com/watch?v=LzlarZAtMYI&t=3568s', base_course: css_course, order: 1 },
  { title: 'Curso de CSS desde CERO (Completo)', url: 'https://www.youtube.com/watch?v=OWKXEJN67FE&list=PLE8uP447fYpis_9iiaT1GrdOLmg85pAJB&index=2', base_course: css_course, order: 2 },
  { title: 'Que rayos es la Metodología BEM explicado con un ejemplo | CSS', url: 'https://www.youtube.com/watch?v=bvnzyXGkNY4&t=1050s', base_course: css_course, order: 3 },
  { title: '5 TIPS para ESCRIBIR un mejor CSS (Usado por PROFESIONALES)', url: 'https://www.youtube.com/watch?v=G417Cl-f07s', base_course: css_course, order: 4 }]
)


BaseVideo.create([
   { title: 'Curso Flexbox CSS: (1/13) Introducción - #jonmircha', url: 'https://www.youtube.com/watch?v=AAtvnv6LNMk&list=PLvq-jIkSeTUbQc3dGsssp8lxAi5npMrys', order: 1, base_course: flexbox_course },
  { title: 'Curso Flexbox CSS: (2/13) Conceptos Básicos - #jonmircha', url: 'https://www.youtube.com/watch?v=1NBMqQkcZ9Y&list=PLvq-jIkSeTUbQc3dGsssp8lxAi5npMrys&index=2', order: 2, base_course: flexbox_course },
  { title: 'Curso Flexbox CSS: (3/13) El flujo de Flexbox ( flex-direction + flex-wrap ) - #jonmircha', url: 'https://www.youtube.com/watch?v=lnWBQ3dMzhw&list=PLvq-jIkSeTUbQc3dGsssp8lxAi5npMrys&index=3', order: 3, base_course: flexbox_course },
  { title: 'Curso Flexbox CSS: (4/13) Alineación del Main Axis ( justify-content ) - #jonmircha', url: 'https://www.youtube.com/watch?v=4eHB6O8d1R0&list=PLvq-jIkSeTUbQc3dGsssp8lxAi5npMrys&index=4', order: 4, base_course: flexbox_course },
  { title: 'Curso Flexbox CSS: (5/13) Alineación del Cross Axis ( align-items y align-content ) - #jonmircha', url: 'https://www.youtube.com/watch?v=ELP5l8IVSJo&list=PLvq-jIkSeTUbQc3dGsssp8lxAi5npMrys&index=5', order: 5, base_course: flexbox_course },
  { title: 'Curso Flexbox CSS: (6/13) Factor de Crecimiento ( flex-grow ) - #jonmircha', url: 'https://www.youtube.com/watch?v=Ib9cYYBNQ10&list=PLvq-jIkSeTUbQc3dGsssp8lxAi5npMrys&index=6', order: 6, base_course: flexbox_course },
  { title: 'Curso Flexbox CSS: (7/13) Factor de Reducción ( flex-shrink ) - #jonmircha', url: 'https://www.youtube.com/watch?v=cN6O13okUww&list=PLvq-jIkSeTUbQc3dGsssp8lxAi5npMrys&index=7', order: 7, base_course: flexbox_course },
  { title: 'Curso Flexbox CSS: (8/13) Tamaño de los hijos flexbox ( flex-basis ) - #jonmircha', url: 'https://www.youtube.com/watch?v=jst2jcHDAWA&list=PLvq-jIkSeTUbQc3dGsssp8lxAi5npMrys&index=8', order: 8, base_course: flexbox_course },
  { title: 'Curso Flexbox CSS: (9/13) Orden y Alineación de hijos flexbox ( order y align-self ) - #jonmircha', url: 'https://www.youtube.com/watch?v=u-k1kPtOA5o&list=PLvq-jIkSeTUbQc3dGsssp8lxAi5npMrys&index=9', order: 9, base_course: flexbox_course },
  { title: 'Curso Flexbox CSS: (10/13) Maquetación y Responsive Design con Flexbox - #jonmircha', url: 'https://www.youtube.com/watch?v=KoLOOETh0f4&list=PLvq-jIkSeTUbQc3dGsssp8lxAi5npMrys&index=10', order: 10, base_course: flexbox_course },
  { title: 'Curso Flexbox CSS: (11/13) Casos Prácticos con Flexbox I - #jonmircha', url: 'https://www.youtube.com/watch?v=9TcStLE3qzI&list=PLvq-jIkSeTUbQc3dGsssp8lxAi5npMrys&index=11', order: 11, base_course: flexbox_course },
  { title: 'Curso Flexbox CSS: (12/13) Casos Prácticos con Flexbox II - #jonmircha', url: 'https://www.youtube.com/watch?v=po9V3IoxbJc&list=PLvq-jIkSeTUbQc3dGsssp8lxAi5npMrys&index=12', order: 12, base_course: flexbox_course },
  { title: 'Curso Flexbox CSS: (13/13) Bootstrap y Flexbox - #jonmircha', url: 'https://www.youtube.com/watch?v=z11iV2JKHVc&list=PLvq-jIkSeTUbQc3dGsssp8lxAi5npMrys&index=13', order: 13, base_course: flexbox_course }])


BaseVideo.create(
  [
    { title: 'Curso Grid CSS: (1/17) Introducción y Conceptos Básicos ', url: 'https://www.youtube.com/watch?v=gCox2CqYvto&list=PLvq-jIkSeTUY628cyd9LVbXSXi2xG9mUl', order: 1, base_course: grid_course },
    { title: 'Curso Grid CSS: (2/17) Grid Explícita ', url: 'https://www.youtube.com/watch?v=Wz8cP6Kykuw&list=PLvq-jIkSeTUY628cyd9LVbXSXi2xG9mUl&index=2', order: 2, base_course: grid_course },
    { title: 'Curso Grid CSS: (3/17) Posicionamiento con Grid Lines - #jonmircha', url: 'https://www.youtube.com/watch?v=glwwN1rRs8I&list=PLvq-jIkSeTUY628cyd9LVbXSXi2xG9mUl&index=3', order: 3, base_course: grid_course },
    { title: 'Curso Grid CSS: (4/17) Posicionamiento con nombres de Grid Lines - #jonmircha', url: 'https://www.youtube.com/watch?v=mnHjLoGNCns&list=PLvq-jIkSeTUY628cyd9LVbXSXi2xG9mUl&index=4', order: 4, base_course: grid_course },
    { title: 'Curso Grid CSS: (5/17) Posicionamiento con Grid Areas - #jonmircha', url: 'https://www.youtube.com/watch?v=eUDJVB4e-Bw&list=PLvq-jIkSeTUY628cyd9LVbXSXi2xG9mUl&index=5', order: 5, base_course: grid_course },
    { title: 'Curso Grid CSS: (6/17) Grid Implícita. Grids de bloque y de línea - #jonmircha', url: 'https://www.youtube.com/watch?v=x63kKPlnLO0&list=PLvq-jIkSeTUY628cyd9LVbXSXi2xG9mUl&index=6', order: 6, base_course: grid_course },
    { title: 'Curso Grid CSS: (7/17) Flujo de la Grid (Grid Flow) - #jonmircha', url: 'https://www.youtube.com/watch?v=GTGOsiDGKwA&list=PLvq-jIkSeTUY628cyd9LVbXSXi2xG9mUl&index=7', order: 7, base_course: grid_course },
    { title: 'Curso Grid CSS: (8/17) Flujo Denso de la Grid (Grid Flow Dense) - #jonmircha', url: 'https://www.youtube.com/watch?v=iRkPfACKk6E&list=PLvq-jIkSeTUY628cyd9LVbXSXi2xG9mUl&index=8', order: 8, base_course: grid_course },
    { title: 'Curso Grid CSS: (9/17) Grid Layers: Celdas en capas (superposición) - #jonmircha', url: 'https://www.youtube.com/watch?v=bCULAgZNT_Y&list=PLvq-jIkSeTUY628cyd9LVbXSXi2xG9mUl&index=9', order: 9, base_course: grid_course },
    { title: 'Curso Grid CSS: (10/17) Orden y Alineación de Grid Items - #jonmircha', url: 'https://www.youtube.com/watch?v=I3UqxC-zlHY&list=PLvq-jIkSeTUY628cyd9LVbXSXi2xG9mUl&index=10', order: 10, base_course: grid_course },
    { title: 'Curso Grid CSS: (11/17) Alineación de Grid Tracks - #jonmircha', url: 'https://www.youtube.com/watch?v=IQzW7QnuYvU&list=PLvq-jIkSeTUY628cyd9LVbXSXi2xG9mUl&index=11', order: 11, base_course: grid_course },
    { title: 'Curso Grid CSS: (12/17) Tamaños Máximos y Mínimos de Grid Tracks - #jonmircha', url: 'https://www.youtube.com/watch?v=m3EaKtYe6Gg&list=PLvq-jIkSeTUY628cyd9LVbXSXi2xG9mUl&index=12', order: 12, base_course: grid_course },
    { title: 'Curso Grid CSS: (13/17) Grids con Patrones Repetitivos - #jonmircha', url: 'https://www.youtube.com/watch?v=0W0gjpXqbdo&list=PLvq-jIkSeTUY628cyd9LVbXSXi2xG9mUl&index=13', order: 13, base_course: grid_course },
    { title: 'Curso Grid CSS: (14/17) Grids Dinámicas. Responsive sin Media Queries - #jonmircha', url: 'https://www.youtube.com/watch?v=inVlqjPNmD8&list=PLvq-jIkSeTUY628cyd9LVbXSXi2xG9mUl&index=14', order: 14, base_course: grid_course },
    { title: 'Curso Grid CSS: (15/17) Grids Anidadas & Subgrids - #jonmircha', url: 'https://www.youtube.com/watch?v=vnK7MMSXGVI&list=PLvq-jIkSeTUY628cyd9LVbXSXi2xG9mUl&index=15', order: 15, base_course: grid_course },
    { title: 'Curso Grid CSS: (16/17) Responsive Layout con Grid Lines - #jonmircha', url: 'https://www.youtube.com/watch?v=It-jSvYDW8M&list=PLvq-jIkSeTUY628cyd9LVbXSXi2xG9mUl&index=16', order: 16, base_course: grid_course },
    { title: 'Curso Grid CSS: (17/17) Responsive Layout con Grid Areas - #jonmircha', url: 'https://www.youtube.com/watch?v=g6a2zmEsTZE&list=PLvq-jIkSeTUY628cyd9LVbXSXi2xG9mUl&index=17', order: 17, base_course: grid_course },
    { title: 'Curso de CSS GRID | Como Hacer una Página Web Responsive', url: 'https://www.youtube.com/watch?v=9w3gy2dYN_E', order: 18, base_course: grid_course}
  ]
)

BaseVideo.create([
  { title: 'Bootstrap4 Curso Completo | Introducción ¿Qué es Bootstrap4?', url: 'https://www.youtube.com/watch?v=7s1RjItUBqU&list=PLL0TiOXBeDagsYUYFO9WMwDtuDuoGZVB9', base_course: bootstrap_course, order: 1 },
  { title: 'Bootstrap4 Curso Completo | Instalando Bootstrap 4, Clase 2', url: 'https://www.youtube.com/watch?v=WdGxzGpVNvA&list=PLL0TiOXBeDagsYUYFO9WMwDtuDuoGZVB9&index=2', base_course: bootstrap_course, order: 2 },
  { title: 'Bootstrap4 Curso Completo | Tipografías en Bootstrap 4 Clase 3', url: 'https://www.youtube.com/watch?v=dLkwOYDu0xY&list=PLL0TiOXBeDagsYUYFO9WMwDtuDuoGZVB9&index=3', base_course: bootstrap_course, order: 3 },
  { title: 'Bootstrap4 Curso Completo | Alineación de textos en Bootststrap 4, Clase 4', url: 'https://www.youtube.com/watch?v=cLRKFGlOtM0&list=PLL0TiOXBeDagsYUYFO9WMwDtuDuoGZVB9&index=4', base_course: bootstrap_course, order: 4 },
  { title: 'Bootstrap4 Curso Completo | Floats y posiciones fijas en Bootststrap 4, Clase 5', url: 'https://www.youtube.com/watch?v=QBnz6sya3Cs&list=PLL0TiOXBeDagsYUYFO9WMwDtuDuoGZVB9&index=5', base_course: bootstrap_course, order: 5 },
  { title: 'Bootstrap4 Curso Completo | Colores de Texto y Fondos en Bootststrap 4, Clase 6', url: 'https://www.youtube.com/watch?v=ATqWsTGiMSY&list=PLL0TiOXBeDagsYUYFO9WMwDtuDuoGZVB9&index=6', base_course: bootstrap_course, order: 6 },
  { title: 'Bootstrap4 Curso Completo | Padding, Margenes y Espaciados en Bootststrap 4, Clase 7', url: 'https://www.youtube.com/watch?v=9dgRqXvgUDg&list=PLL0TiOXBeDagsYUYFO9WMwDtuDuoGZVB9&index=7', base_course: bootstrap_course, order: 7 },
  { title: 'Bootstrap4 Curso Completo | Altos y Anchos en Bootststrap 4, Clase 8', url: 'https://www.youtube.com/watch?v=1NuhdqjER3U&list=PLL0TiOXBeDagsYUYFO9WMwDtuDuoGZVB9&index=8', base_course: bootstrap_course, order: 8 },
  { title: 'Bootstrap4 Curso Completo | Breakpoints en Bootststrap 4, Clase 9', url: 'https://www.youtube.com/watch?v=a8Ph26Ldl-o&list=PLL0TiOXBeDagsYUYFO9WMwDtuDuoGZVB9&index=9', base_course: bootstrap_course, order: 9 },
  { title: 'Bootstrap4 Curso Completo | Botones en Bootststrap 4, Clase 10', url: 'https://www.youtube.com/watch?v=kOPUj0GicgE&list=PLL0TiOXBeDagsYUYFO9WMwDtuDuoGZVB9&index=10', base_course: bootstrap_course, order: 10 },
  { title: 'Bootstrap4 Curso Completo | List Groups, Badges y Migas de Pan, Clase 11', url: 'https://www.youtube.com/watch?v=0Mo6_bWc8Ho&list=PLL0TiOXBeDagsYUYFO9WMwDtuDuoGZVB9&index=11', base_course: bootstrap_course, order: 11 },
  { title: 'Bootstrap4 Curso Completo | Navegación, Clase 12', url: 'https://www.youtube.com/watch?v=vE6CinkTvKY&list=PLL0TiOXBeDagsYUYFO9WMwDtuDuoGZVB9&index=12', base_course: bootstrap_course, order: 12 },
  { title: 'Bootstrap4 Curso Completo | Alertas y Progress Bar, Clase 13', url: 'https://www.youtube.com/watch?v=3UscvdpXcTQ&list=PLL0TiOXBeDagsYUYFO9WMwDtuDuoGZVB9&index=13', base_course: bootstrap_course, order: 13 }]
)

BaseVideo.create( title: '💜Cómo PERSONALIZAR los estilos CSS de Bootstrap 5 con SASS 😱 (PASO a PASO)', url: 'https://www.youtube.com/watch?v=A9i42AuaTLw&t=1037s', order: 1, base_course: customize_bootstrap_course )


BaseVideo.create([
  { title: 'Tailwind CSS - ⭐ Fundamentos desde Cero ⭐ [Tutorial en Español]', url: 'https://www.youtube.com/watch?v=3xlUAMXui2c&list=PLPl81lqbj-4JdoHDiERR2ptkw9zRggXAL', base_course: tailwind_course, order: 1 },
  { title: 'Tailwind CSS ⭐ Grid ⭐ [Parte 2]', url: 'https://www.youtube.com/watch?v=97hHnlnxpPQ&list=PLPl81lqbj-4JdoHDiERR2ptkw9zRggXAL&index=2', base_course: tailwind_course, order: 2 },
  { title: 'Tailwind CSS ⭐ Personalización - Instalación npm ⭐ [Parte 3]', url: 'https://www.youtube.com/watch?v=MwVfIP3vuw0&list=PLPl81lqbj-4JdoHDiERR2ptkw9zRggXAL&index=3', base_course: tailwind_course, order: 3 },
  { title: 'Tailwind CSS ⭐ Flexbox ⭐ [Parte 4]', url: 'https://www.youtube.com/watch?v=sfTBUHR9pyA&list=PLPl81lqbj-4JdoHDiERR2ptkw9zRggXAL&index=4', base_course: tailwind_course, order: 4 },
  { title: 'Tailwind CSS ⭐ Navbar Responsive ⭐ [Parte 5]', url: 'https://www.youtube.com/watch?v=16fc0YSn4o8&list=PLPl81lqbj-4JdoHDiERR2ptkw9zRggXAL&index=5', base_course: tailwind_course, order: 5 }]
)




user = User.create!(email: "niljordan23@gmail.com", password: "20152005814", password_confirmation: "20152005814")

profile = Profile.create!(first_name: "Nildiert", last_name: "Jimenez Jaramillo", phone_number: "3192164645", user: user)

Course.create!(user: user, base_course: setup_course)
Course.create!(user: user, base_course: first_web_page)
Course.create!(user: user, base_course: git_course)
Course.create!(user: user, base_course: html_course)
Course.create!(user: user, base_course: css_course)
Course.create!(user: user, base_course: flexbox_course)
Course.create!(user: user, base_course: grid_course)
Course.create!(user: user, base_course: bootstrap_course)
Course.create!(user: user, base_course: customize_bootstrap_course)
Course.create!(user: user, base_course: tailwind_course)



