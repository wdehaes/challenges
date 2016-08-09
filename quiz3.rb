class Person
  attr_accessor :name
  def initialize(name, character)
    @character = character
    @name = name
  end
  
  def introduce
    puts "Hi, my name is #{@name} and people think I'm #{@character}."
  end
  
end

class Teacher < Person
  attr_accessor :subjects
  @subjects = []

  def initialize(name, character, subjects: [])
    super(name, character)
    @subjects = subjects
  end
  def teaches(subject)
    @subjects << subject
  end

  def teach?(subject)
    return @subjects.include?(subject)
  end

end

t1 = Teacher.new('John', 'boring')
t1.teaches('Biology')
t1.teaches('Chemistry')
t1.introduce
puts t1.teach?('Biology')
puts t1.teach?('Math')
puts "Apparently, #{t1.name} teaches #{t1.subjects.length} subjects!"