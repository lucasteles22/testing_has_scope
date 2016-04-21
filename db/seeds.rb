Graduation.find_or_create_by(:name => 'Law') do |graduation|
  graduation.degree = 'Technologist'
  graduation.active = false
  graduation.started_at = DateTime.new(2016, 1, 1)
  graduation.ended_at = DateTime.new(2016, 12, 31)
end

Graduation.find_or_create_by(:name => 'Science Computer') do |graduation|
  graduation.degree = 'Graduation'
  graduation.active = false
  graduation.started_at = DateTime.new(2016, 7, 1)
  graduation.ended_at = DateTime.new(2016, 12, 31)
end

Graduation.find_or_create_by(:name => 'Information Systems') do |graduation|
  graduation.degree = 'Graduation'
  graduation.active = true
  graduation.started_at = DateTime.new(2016, 1, 1)
  graduation.ended_at = DateTime.new(2016, 6, 30)
end

Graduation.find_or_create_by(:name => 'Engineering') do |graduation|
  graduation.degree = 'Technologist'
  graduation.active = true
  graduation.started_at = DateTime.new(2016, 1, 1)
  graduation.ended_at = DateTime.new(2017, 12, 31)
end
