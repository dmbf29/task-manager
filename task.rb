class Task
  attr_reader :title

  def initialize(title)
    @title = title
    @completed = false
  end

  def completed?
    @completed
  end

  def mark_as_completed!
    @completed = true
  end
end