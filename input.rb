# input class is used to process input file and tokenize input in to array
class Input
    def initialize(filename)
      @filename= filename
      @item=Array.new
    end
    def tokenize
      file_address=Dir.getwd+'/input/'+@filename
      input_file=File.open(file_address)
      input_file.each {|line| @item<<line}
      return @item
    end
end