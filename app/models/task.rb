class Task < ApplicationRecord
  belongs_to :base_task
  belongs_to :user
end


BaseTask.create(
  title: "Album example",
  description: "Abajo encontrarás una url, debes crear una pagina lo mas similar posible a la que esta en la url. No es necesario que sea responsive, pero seraá un plus para ti si así la quieres hacer.",
  task_url: "https://getbootstrap.com/docs/5.1/examples/album/",
  base_course: course
)