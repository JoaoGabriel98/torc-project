require './lib/tax'
require './lib/input'
require './lib/print'

class RunTax

  def initialize(filename)
    @filename = filename
  end

  def input
    file = Input.new(@filename)
    file.parse
    return file
  end

  def calc
    costs = Tax.new(input.items)
    costs.total_all
    return costs
  end

  def print
    receipt = Print.new(calc.items, calc.total_sales_tax, calc.total_price)
    receipt.show
  end

  def execute
    input
    calc
    print
  end
end

filename = ARGV.first
purchase = RunTax.new(filename)
purchase.execute
