def accelerate
    puts "Stepping on the gas."
    puts "Speeding up!"
end

def sound_horn #if there is no parameter, no brackets
    puts "Pressing the horn button"
    puts "Beep! Beep!"
end

def use_headlights (brightness = "low-beam")
    puts "Turning on #{brightness} headlights."
    puts "Watch out for deer!"
end

sound_horn
accelerate
use_headlights
