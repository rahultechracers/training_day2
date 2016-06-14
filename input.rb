# input class is used to process input file and tokenize input in to array
class input
    def initialize(filename)
    
      @item=tokenize(filename)
      @item_to_exclude=hash_exclusion(tokenize(exclusion.txt))
    end
    def tokenize(filename)
      file_address=Dir.getwd+'input'+filename
      input=FIle.open(file_address).
      content=input.each {|line| content<<line}
    end
    def hash_exclusion(arr)
       temp=Hash.new(0)
       arr.each do 
        { |x| temp[x]=1}
       end
    end
end