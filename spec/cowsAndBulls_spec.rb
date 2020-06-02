require 'cowsAndBulls.rb'

RSpec.describe CowsAndBulls do
    it 'Deberia devolver true si la clave es de 4 digitos' do
        key = CowsAndBulls.new
        expect(key.insertKey(1234)).to eq(true)
    end
    it 'Deberia devolver false si la clave es mayor a 4 digitos' do
        key = CowsAndBulls.new
        expect(key.insertKey(12345)).to eq(false)
    end
    it 'Deberia devolver false si la clave es menor a 4 digitos' do
        key = CowsAndBulls.new
        expect(key.insertKey(12)).to eq(false)
    end
    it 'Deberia devolver true si la clave es correcta' do
        cowsAndBulls = CowsAndBulls.new
        cowsAndBulls.insertKey(5555)
        expect(cowsAndBulls.playCowsAndBulls(5555)).to eq(true)
    end
    it 'Deberia devolver array [0,1] para un toro y cero vacas' do
        cowsAndBulls = CowsAndBulls.new
        cowsAndBulls.insertKey(1234)
        expect(cowsAndBulls.playCowsAndBulls(1567)).to eq([0,1])
    end
end