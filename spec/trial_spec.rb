require_relative '../lib/input'
require_relative '../lib/tax'
require_relative '../lib/print'

describe "trial" do
  it "should correctly display output 1" do
    input = Input.new("../products_input/input1.txt")
    input.parse

    costs = Tax.new(input.items)
    costs.total_all
    receipt = Print.new(costs.items, costs.total_sales_tax, costs.total_price)
    puts "Output 1:"
    puts "-------------------------\n\n"
    receipt.show
    puts "-------------------------\n\n"
  end

  it "should correctly display output 2" do
    input = Input.new("../products_input/input2.txt")
    input.parse

    costs = Tax.new(input.items)
    costs.total_all
    receipt = Print.new(costs.items, costs.total_sales_tax, costs.total_price)
    puts "Output 2:"
    puts "-------------------------\n\n"
    receipt.show
    puts "-------------------------\n\n"
  end

  it "should correctly display output 3" do
    input = Input.new("../products_input/input3.txt")
    input.parse

    costs = Tax.new(input.items)
    costs.total_all
    receipt = Print.new(costs.items, costs.total_sales_tax, costs.total_price)
    puts "Output 3:"
    puts "-------------------------\n\n"
    receipt.show
    puts "-------------------------\n\n"
  end

end

