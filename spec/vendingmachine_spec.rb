require '~/desktop/mbp/workspace-3081/sa9-act3/vending_machine'

RSpec.describe VendingMachine do
    describe "#initialize" do
        it "initializes the inventory with 20 bottles" do
        vending_machine = VendingMachine.new
        expect(vending_machine.bottles).to eq(20)
        end
    end
    
    describe "#purchase" do
        it "reduces the inventory by the purchased amount" do
        vending_machine = VendingMachine.new
        amount_to_purchase = 5
        vending_machine.purchase(amount_to_purchase)
        expect(vending_machine.bottles).to eq(15)
        end
    
        it "does not allow purchase if inventory is insufficient" do
        vending_machine = VendingMachine.new
        amount_to_purchase = 30
        vending_machine.purchase(amount_to_purchase)
        expect(vending_machine.bottles).to eq(20)
        end
    end
    
    describe "#restock" do
        it "increases inventory by the restocked amoun" do
        vending_machine = VendingMachine.new
        amount_to_restock = 10
        vending_machine.restock(amount_to_restock)
        expect(vending_machine.bottles).to eq(30)
        end
    end
    
    describe "#get_inventory" do
        it "returns the correct inventory" do
        vending_machine = VendingMachine.new
        expect(vending_machine.get_inventory).to eq(20)
        end
    end
    
    describe "#report" do
        it "reports the correct inventory level" do
        vending_machine = VendingMachine.new
        expect { vending_machine.report }.to output("Inventory: 20 bottles\n").to_stdout
        end
    end
end