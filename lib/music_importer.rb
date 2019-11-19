class MusicImporter
  attr_reader :path

  def initialize(path)
    @path = path
  end

  def files
    @files ||= Dir.glob("#{path}/*.mp3").collect{|files| files.gsub("#{path}/", "")}
  end

  def import
    self.files.each 
  end

end
