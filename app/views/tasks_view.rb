class TasksView
	# Recuerda que la única responsabilidad de la vista es desplegar data al usuario

	def index(tasks)
    tasks.each_with_index do |task, index|
      complete = task.completed ? "X" :  " " ;
      puts "#{index + 1}.- [#{complete}] #{task.activity}"
    end
	end

  def create(task)
    puts "Creaste la tarea de: \"#{task.activity}\" a tu lista"
  end

  def delete
  end

  def update
  end

	def error
	end
end
