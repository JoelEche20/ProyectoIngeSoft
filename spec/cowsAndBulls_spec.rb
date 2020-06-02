require 'cowsAndBulls.rb'

RSpec.describe CowsAndBulls do
    it 'Deberia devolver true si la clave es de 4 digitos' do
        key = CowsAndBulls.new
        expect(key.verifyQuantityOfDigits(1234)).to eq(true)
    end
    it 'Deberia devolver false si la clave es mayor a 4 digitos' do
        key = CowsAndBulls.new
        expect(key.verifyQuantityOfDigits(12345)).to eq(false)
    end
    it 'Deberia devolver false si la clave es menor a 4 digitos' do
        key = CowsAndBulls.new
        expect(key.verifyQuantityOfDigits(12)).to eq(false)
    end
    it 'Deberia devolver true si la clave es correcta' do
        cowsAndBulls = CowsAndBulls.new
        expect(cowsAndBulls.playCowsAndBulls(5555,5555)).to eq(true)
    end
    it 'Deberia devolver un toro' do
        cowsAndBulls = CowsAndBulls.new
        expect(cowsAndBulls.playCowsAndBulls(1567,1234)).to eq('un toro')
    end
    it 'Deberia devolver una vaca' do
        cowsAndBulls = CowsAndBulls.new
        expect(cowsAndBulls.playCowsAndBulls(9178,1234)).to eq('una vaca')
    end
    it 'Deberia devolver dos vacas y dos toros' do
        cowsAndBulls = CowsAndBulls.new
        expect(cowsAndBulls.playCowsAndBulls(5152,5512)).to eq('dos vacas y dos toros')
    end
    it 'Deberia devolver dos toros' do
        cowsAndBulls = CowsAndBulls.new
        expect(cowsAndBulls.playCowsAndBulls(5555,5225)).to eq('dos toros')
    end
end