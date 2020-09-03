module AcceptsComments
    def comments
        @comments ||= []
    end
    def add_comment(comment)
        comments << comment
    end
end

class Clip

    def play
        puts "Playing #{object_id}."
    end

end

class Video < Clip
    include AcceptsComments
    attr_accessor :resolution
end

class Song < Clip
    include AcceptsComments
    attr_accessor :bpm
end

class Photo
    include AcceptsComments
    def show
        puts "Displaying #{object_id}"
    end
end

video = Video.new
video.add_comment("Cool slo-mo")
video.add_comment("Odd ending")
song = Song.new
song.add_comment("Sweet beats")
photo = Photo.new
photo.add_comment("Nice pic")

puts video.comments, song.comments, photo.comments
p video.play, song.play, photo.show