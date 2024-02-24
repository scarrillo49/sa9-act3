class VendingMachine
    attr_reader :bottles
  
    def initialize
      @bottles = 20
    end
  
    def purchase(amount)
      if amount <= @bottles
        @bottles -= amount
        puts "Successfully purchased #{amount} bottles."
      else
        puts "Insufficient inventory. Only #{@bottles} bottles available."
      end
    end
  
    def restock(amount)
      @bottles += amount
      puts "#{amount} bottles restocked. New inventory: #{@bottles} bottles."
    end
  
    def get_inventory
      @bottles
    end
  
    def report
      puts "Inventory: #{@bottles} bottles"
    end
  end
  
  