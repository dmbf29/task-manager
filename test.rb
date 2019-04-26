require_relative 'task'
require_relative 'repository'
require_relative 'view'
require_relative 'controller'
require_relative 'router'


repository = Repository.new
controller = Controller.new(repository)
router = Router.new(controller)
router.run

# saad = Task.new("organize Saad's bday")
# karaoke = Task.new("call karaoke place")
# repository.add_task(saad)
# repository.add_task(karaoke)

# p repository
# puts ""
# controller.list
# puts ""
# p repository
# controller.mark_as_completed

# puts ""
# p repository
# require_relative 'task_repository'
# require_relative 'tasks_controller'








# https://www.airbnb.com/rooms/32557110










