require './person'

class Student < Person
  attr_reader :classroom

  def initialize(classroom, age, name = 'Unknown', parent_permission: true)
    super(age, name)
    @classroom = classroom
    @parent_permission = parent_permission
  end

  def classroom = (classroom)
    @clasroom = classroom
    classroom.students.push(self) unless classroom.students.includes?(self)
  end

  def play_hooky
    '¯\(ツ)/¯'
  end
end
