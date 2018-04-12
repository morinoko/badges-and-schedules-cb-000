speakers = ["Edsger", "Ada", "Charles", "Alan", "Grace", "Linus", "Matz"]

def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(names)
  names.map { |name| badge_maker(name) }
end

def assign_rooms(speakers)
  speakers.each_with_index.map do |speaker, index|
    room_num = index + 1
    "Hello, #{speaker}! You'll be assigned to room #{room_num}!"
  end
end

def printer(speakers)
  badges = batch_badge_creator(speakers)
  badges.each { |badge| puts badge }
  
  room_assignments = assign_rooms(speakers)
  room_assignments.each { |assignment| puts assignment }
end