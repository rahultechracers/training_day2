# training_day2

we have designed a Tax calculator  by considering both sales tax and import duty both

input1.txt, input2.txt, input3.txt : these are the input files 

tax_calc.rb : This is tax calculator file, Run this file file to calculate tax of input data This file invokes the input.rb file to take the input  filename from user

input.rb : this file is used for taking input filename from user

calculate_tax.rb : This file is invoked in tac_calc after taking input from user and it call function to calcualte sales tax and import duty

sales_tax.rb: calcualte sales tax and exclude calcualtion for items in exclusion list

import_tax.rb: checks wheather item is imported or not and if imported then calcualtes import duty at tax rate

print.rb : this file is used to print receipt for item purchaed mentioning total tax  paid and total amount to be  paid 
