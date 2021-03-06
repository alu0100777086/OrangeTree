require 'spec_helper'
require 'orangetree'

describe OrangeTree do
	before :each do
		@tree = OrangeTree.new
		@mutex = Mutex.new
        @recurso = ConditionVariable.new
	end
	it "Comprobacion de inicializacion de la clase" do
		@tree.is_a?(OrangeTree)
	end
	it "Comprobacion del metodo height" do
		expect(@tree.height).to eq(0)
	end
	it "Comprobacion del metodo age" do
		expect(@tree.age).to eq(0)
	end
	it "Comprobacion del metodo oranges" do
		expect(@tree.oranges).to eq(0)
	end
	it "Existencia de las variables de instancia" do
		expect(@tree.instance_variable_defined?(:@height)).to be true
		expect(@tree.instance_variable_defined?(:@age)).to be true
		expect(@tree.instance_variable_defined?(:@oranges)).to be true
		expect(@tree.instance_variable_defined?(:@alive)).to be true
	end
	it "Comprobacion del metodo que coge una naranja" do
		expect(@tree.pick_one).to eq("Sorry, no Oranges to pick")
	end
	it "Comprobacion del metodo que cuenta las naranjas" do
		expect(@tree.time_passes).to eq("I'm still unable to bear fruit")
	end
 

end


