class import_tax
  def initialize(item)
    @item=item
    @tax=5
  end

  def import_duty(item)
    {
      item_split=item.split(" ")
      if item.split.downcase.include("imported")
        item_cost=item_split[item_split.lenght-1].to_f
        tax
      else
        return 0
      end
    }