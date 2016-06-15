class Sales_tax
  def salestax(item)
     tax=10
     item_array=item
     item_cost=item_array[item_array.length-1].to_f
     item_exclude=["books","food","medcine","pills","book","pill", "chocolate", "chocolates"]
     item_exclude.each do |i|
        if item_array.include?i
          puts i
          return 0
          break
        end
      end
          tax=(item_cost*10)/100
          tax.round(2)
          return tax
  end
end 
