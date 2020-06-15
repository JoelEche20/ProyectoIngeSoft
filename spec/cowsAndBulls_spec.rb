require 'cowsAndBulls.rb'

RSpec.describe CowsAndBulls do
    it 'Deberia devolver true si el numero es de 4 digitos y los digitos son diferentes' do
        key = CowsAndBulls.new
        expect(key.verifyData(1234)).to eq(true)
    end
     it 'Deberia devolver false si el numero es mayor a 4 digitos' do
        key = CowsAndBulls.new
        expect(key.verifyData(12345)).to eq(false)
     end
    it 'Deberia devolver false si el numero tiene 4 digitos pero tiene numeros repetidos' do
        key = CowsAndBulls.new
        expect(key.verifyData(1123)).to eq(false)
    end
    it 'Deberia devolver true si el intento es 1234 y la clave es 1234' do
        cowsAndBulls = CowsAndBulls.new
        expect(cowsAndBulls.playCowsAndBulls(1234,1234)).to eq(true)
    end
    it 'Deberia devolver Numero Invalido si el la clave o el intento tienen numeros repetidos' do
        cowsAndBulls = CowsAndBulls.new
        expect(cowsAndBulls.playCowsAndBulls(5555,5555)).to eq("Numero Invalido")
    end
    it 'Deberia devolver un toro si el intento es 1567 y la clave 1234' do
        cowsAndBulls = CowsAndBulls.new
        expect(cowsAndBulls.playCowsAndBulls(1567,1234)).to eq('un toro')
    end
    it 'Deberia devolver cuatro vacas si el intento es 9178 y 1234' do
        cowsAndBulls = CowsAndBulls.new
        expect(cowsAndBulls.playCowsAndBulls(9178,1234)).to eq('una vaca')
    end
    it 'Deberia devolver una vaca si el intento es 4321 y la clave es 1234' do
        cowsAndBulls = CowsAndBulls.new
        expect(cowsAndBulls.playCowsAndBulls(4321,1234)).to eq('cuatro vacas')
    end
    it 'Deberia devolver dos vacas y dos toros si el intento es 1234 y la clave 1243' do
        cowsAndBulls = CowsAndBulls.new
        expect(cowsAndBulls.playCowsAndBulls(1234,1243)).to eq('dos vacas y dos toros')
    end
    it 'Deberia devolver Numero Invalido si el intento tiene digitos invalidos si el intento es menor o mayor a 3 digitos' do
        cowsAndBulls = CowsAndBulls.new
        expect(cowsAndBulls.playCowsAndBulls(123,1234)).to eq('Numero Invalido')
    end
    it 'Deberia devolver sin coincidencias si el intento 1234 y la clave 5678' do
        cowsAndBulls = CowsAndBulls.new
        expect(cowsAndBulls.playCowsAndBulls(1234,5678)).to eq('Sin coincidencias')
    end
    it 'Deberia devolver sin coincidencias si el intento es 3675 y la clave es 2754' do
        cowsAndBulls = CowsAndBulls.new
        expect(cowsAndBulls.playCowsAndBulls(3675,2754)).to eq('dos vacas')
    end
end