class OvenOffError < StandardError
end

class OvenEmptyError < StandardError
end

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
            raise OvenOffError, "You need to turn on the oven!"
        end
        if @contents == nil
            raise OvenEmptyError, "You need to put something in the oven!"
        end
        "golden-brown #{contents}."
    end

end

dinner = ['turkey', nil, 'pie']
oven = SmallOven.new
oven.turn_off
dinner.each do |item|
    begin
    oven.contents = item
    puts "Serving #{oven.bake}."
    rescue OvenEmptyError => error 
        puts "Error: #{error.message}"
    rescue OvenOffError => error
        oven.turn_on
        retry
    ensure
        oven.turn_off
    end
end