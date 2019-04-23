require 'pry'
class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    files = []
    Dir.new(self.path).each do |file|
      files << file if file.length > 4
    end
    files
  end

  def import
    self.files.each do |filename|
      Song.new_by_filename(filename)
    end
  end
end


class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir[path+"/*.mp3"].map {|music| music.split(path+"/")[1]}
    # binding.pry
  end

  def import
    files.each {|file| Song.new_by_filename(file)}
  end
end
# binding.pry