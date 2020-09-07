class SmallOven

    attr_accessor :contents

    def turn_on
        puts "Turning the oven on"
        @state = "on"
    end
    def turn_off
        puts "Turning off the oven"
        @state = "off"
    end

    def bake
        unless @state == "on"
            puts "You need to turn on the oven"
        end
        if @contents = nil
            puts "You need to put something in the oven"
        end
        "golden-brown #{contents}."
    end

end

dinner = ['turkey', nil, 'pie']
oven = SmallOven.new
oven.turn_on
dinner.each do |item|
    oven.contents = item
    puts "Serving #{oven.bake}."
end