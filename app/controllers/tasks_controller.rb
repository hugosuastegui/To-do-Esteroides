
class TasksController
  def initialize(argv)
    @view = TasksView.new
    @argv = argv
    command = @argv[0]
    arguments = arg(@argv)
    if command == "index"
      index
    elsif command == "add"
      add(arguments)
    end
  end

  def arg(array)
    array.delete_at(0)
    array.join(' ')
  end

  def index
    # TIP: Aquí debes de llamar al método del mismo nombre de @view
    @view.index(Task.all)
  end

  def add(activity, complete = false)
    # task = Task.add
    task = Task.create(activity: activity, completed: complete)
    @view.create(task)
  end

  def delete

  end

  def complete
  end
end

