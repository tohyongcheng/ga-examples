class List
  attr_accessor :name, :tasks, :tags

  def initialize(name, tasks=[], tags=[])
    @name = name
    @tasks = tasks
    @tags = tags
  end

  def add_task(new_task)
    @tasks << new_task
  end

  def check_off_task(task)
    return false unless @tasks.include? task
    task.check_off
  end

  def get_checked_off_tasks
    @tasks.select do |task|
      task.checked_off == true
    end
  end

  def add_tag(new_tag)
    @tags << new_tag
    @tags = @tags.uniq
  end

end

class Task
  attr_accessor :description, :checked_off

  def initialize(description)
    @description = description
    @checked_off = false
  end

  def check_off
    @checked_off = true
  end
end

class Tag
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

my_list = List.new("Friday's ToDos")
first_task = Task.new("Get groceries")
my_list.add_task first_task
p my_list.tasks
p my_list.get_checked_off_tasks
my_list.tasks[0].check_off
p my_list.get_checked_off_tasks