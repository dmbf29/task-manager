class View
  def ask_for_title
    puts "What's the title?"
    return gets.chomp
  end

  def ask_for_number
    puts "What's the number?"
    return gets.chomp
  end

  def display_tasks(tasks) # array of INSTANCES
    tasks.each_with_index do |task, index|
      x_mark = task.completed? ? "X" : " "
      puts "#{index + 1} -[#{x_mark}]- #{task.title}"
    end
  end
end
