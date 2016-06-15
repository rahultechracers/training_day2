require './input.rb'
require './calculate_tax.rb'
require './print.rb'
filename=gets.chomp
input_file=Input.new(filename)
input_list=input_file.tokenize
costs=CalculateTax.new(input_list)
Detailed_tax=costs.tax_calculation
result=Printer.new(Detailed_tax)
result.receipt_generate
