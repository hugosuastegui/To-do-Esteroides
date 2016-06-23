# Este archivo sirve para crear registros de prueba


15.times do 
   Task.create!(activity: Faker::Hipster.sentence, completed: Faker::Boolean.boolean)
 end
