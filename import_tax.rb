class ImportTax
  def importduty(item)
      tax=5 
      item_split=item
      if item_split.include?("imported")
        item_cost=item_split[item_split.length-1].to_f
        tax=(item_cost*tax)/100
        tax.round(2)
        return tax

      else
        return 0
      end
  end
end
    
