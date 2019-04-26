require_relative 'task'

class Controller
  def initialize(repository)
    @view = View.new # INSTANCE OF A VIEW
    @repository = repository # INSTANCE OF REPO
  end

  def add
    title = @view.ask_for_title
    task = Task.new(title)
    @repository.add_task(task)
  end

  def list
    list_tasks
  end

  def mark_as_completed
    # list the tasks
    list_tasks
    # ask user which number task -> index
    index = @view.ask_for_number.to_i - 1
    # ask the repo to find the task with the index
    task = @repository.find(index)
    # mark the task as done
    task.mark_as_completed!
  end

  private

  def list_tasks
    # ask repo for tasks
    tasks = @repository.all
    # tell view to display tasks and give tasks
    @view.display_tasks(tasks)
  end
end














