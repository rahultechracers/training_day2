require './sales_tax.rb'
require './import_tax.rb'

class CalculateTax
  def initialize(item_list)
    @item_list=item_list
    @total_tax=0
    @total_amount=0
    @final_list=Array.new
  end

  def tax_calculation
      sales_tax=SalesTax.new
      import_duty=ImportTax.new
    
      @item_list.each do |item|
        item=item.split(" ")
        item_cost=item[item.length-1].to_f
        temp=sales_tax.salestax(item)+import_duty.importduty(item)
        total_cost=(item_cost+temp).round(2)
        @total_tax+=temp

        @total_amount+=total_cost
        item=item.join(" ")
        item.gsub!("#{item_cost}","#{total_cost}")
        @final_list.push(item)
      end
     return @final_list,@total_tax.round(2), @total_amount.round(2)   
  end 
end 
