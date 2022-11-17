class Input
  attr_reader :input_file, :items

  def initialize(location)
    @input_file = File.open(File.dirname(File.dirname(__FILE__)) + '/products_input/' + location).to_a
    @exceptions = set_exceptions(File.dirname(File.dirname(__FILE__)) + '/exceptions.txt')
    @items = []
  end

  ##Get the expeceptions
  def set_exceptions(location)
    exceptions = File.open(location).to_a
    exceptions.map! { |item| item.chomp }
    return exceptions
  end

  ##Parse Input
  def parse
    @input_file.each do |item|
      item = item.strip.split(/\s/)
      detect(item)
    end
    return @items
  end

  ##Detect the informations
  def detect(item)
    add_item = { name: get_name(item),
                 qty: get_qty(item),
                 price: get_price(item),
                 good: classify_good(item),
                 import: classify_import(item),
                 total: calculate_total(item)
               }
    @items << add_item
    return @items
  end

  ##Getters

  def get_qty(item)
    return item[0].to_i
  end

  def get_name(item)
    end_point = (item.index "at") - 1
    capture = item[1..end_point].join(" ")
    return capture
  end

  def get_price(item)
    start_point = (item.index "at") + 1
    end_point = item.size
    capture = item[start_point..end_point]
    return capture[0].to_f
  end

  def classify_good(item)
    intersection = item & @exceptions
    intersection = intersection.join(" ")
    return intersection != "" ? false : true
  end

  def classify_import(item)
    check_import = item.include? 'imported'
    return check_import == true ? true : false
  end

  ##Calculate the total price
  def calculate_total(item)
    total = get_qty(item) * get_price(item)
    return total
  end
end
