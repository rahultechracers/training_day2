require '../sales_tax.rb'
require '../import_tax.rb'

class calculate_tax
  def initialize(item_list)
    @item_list=item_list
    @total_tax=0
    @total_amount=0
    @final_list=Array.new
  end

  def tax_calculation
      sales_tax=sales_tax.new
      import_duty=import_tax.new
      @item_list.each do |item|
      item=item.split(" ")
      itme_cost=item[item.length-1].to_f
      temp=sales_tax.sales_tax(item)+import_duty.import_tax(item)
      total_cost=(item_cost+temp).round(2)
      @total_tax+=temp
      @total+=total_cost
      item.gsub!("#{item_cost}","#{total_cost}")
      @final_list.push(item)
   return @final_list,@total_tax.round(2), @total.round(2)   
  end 
end 