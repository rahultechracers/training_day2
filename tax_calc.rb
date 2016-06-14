require '../input.rb'
require '../calucalte_tax'
require '../print.rb'

input_list=input.new(input1.txt)
costs=calucalte_tax(input_list)
Detailed_tax=costs.tax_calulation