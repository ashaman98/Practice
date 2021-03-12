class Computer
  @@computer_count = 0

  def initialize(memory,processor)
    @memory = memory
    @processor = processor
    @@computer_count +=1
  end

  def boot
    puts "Specs: #{@memory}, powered by #{@processor}"
  end
end

class Laptop < Computer
  def initialize(brand,model,memory,processor)
    @brand = brand
    @model = model
    super(memory,processor)
  end

  def boot
    puts "Welcome to your #{@brand} #{@model}:"
    super()
  end
end

class Console < Computer
  def initialize(console,memory,processor)
    @console = console
    super(memory,processor)
  end

  def boot
    puts "Time to play some #{@console}"
    super()
  end
end

myPC = Computer.new("4GB","IBM_2000")

myPC.boot()

myLaptop = Laptop.new("MSI","GL65","8GB","Intel i9")

myLaptop.boot()

myConsole = Console.new("PS5","16GB","Ryzen Zen 8")

myConsole.boot()

