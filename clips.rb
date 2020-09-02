class Clip

    attr_reader :comments

    def initialize
        @commments = []
    end

    def add_comment(comment)
        @commments << comment
    end

    def play
        puts "Playing #{object_id}."
    end

end

class Video < Clip
    attr_accessor :resolution
end

class Song < Clip
    attr_accessor :bpm
end

video = Video.new
video.add_comment("Cool slo-mo")
video.add_comment("Odd ending")
song = Song.new
song.add_comment("Sweet beats")

p video.comments, song.comments