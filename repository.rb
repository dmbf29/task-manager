class Repository
  def initialize
    @tasks = []
  end

  def all
    @tasks
  end

  def add_task(task)
    @tasks << task # TASK IS AN INSTANCE
  end

  def find(index) # should return an INSTANCE
    @tasks[index]
  end
end
