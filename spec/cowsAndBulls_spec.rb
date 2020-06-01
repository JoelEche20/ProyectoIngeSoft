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
end