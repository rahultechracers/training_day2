class printer
  def initialize(detailed_tax)
    @item=detailed_tax[0]
    @tax=detailed_tax[1]
    @total_cost=detailed_tax[2]
  end

  def receipt_generate
      puts "generating receipt...."
      puts "list of itmes"
      puts @item
      puts "Tax : #{@tax}"
      puts "total amount of purchase: #{@total_cost}"
    end
  end 
  