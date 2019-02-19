departure_schedule = [2.0, 5.0, 7.5, 8.5, 9.0, 10.0, 11.5, 13.5, 14.5, 17.0, 18.0, 19.0, 24.0]
i = 1
  puts "Hello there, what time will you be departing?"
  print " > "
  user_depart_time = gets.chomp.to_i
  while user_depart_time < 0 && user_depart_time > 24
    puts "i dont understand that time"
end
departure_schedule.each_with_index do |departures, index|
  while user_depart_time < departures && i <= 1 do
    puts "You should catch Train #{index + 1} leaving at #{departures}\n"
      i += 1
      puts "------thanks for using me---------\n"
      if departures == 24.0
        puts "***DON'T STOP...BELIEVIN'!***

        Just a small town girl
        Living in a lonely world
        She took the midnight train going anywhere
        Just a city boy
        Born and raised in South Detroit
        He took the midnight train going anywhere

        A singer in a smoky room
        A smell of wine and cheap perfume
        For a smile they can share the night
        It goes on and on and on and on

        Strangers waiting, up and down the boulevard
        Their shadows searching in the night
        Streetlights people, living just to find emotion
        Hiding, somewhere in the night."
      i += 1
    end
  end
end
