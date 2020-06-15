require 'cowsAndBulls.rb'

RSpec.describe CowsAndBulls do
    it 'Deberia devolver true si el numero es de 4 digitos y los digitos son diferentes' do
        key = CowsAndBulls.new
        expect(key.configuration(1234,"numeros",4)).to eq(true)
    end
    it 'Deberia devolver false si ingresa caracteres que no sean numeros como jhgj' do
        key = CowsAndBulls.new
        expect(key.configuration("jhgj","numeros",4)).to eq(false)
    end
    it 'Deberia devolver false si ingresa caracteres que no sean numeros como 12hg' do
        key = CowsAndBulls.new
        expect(key.configuration("12hg","numeros",4)).to eq(false)
    end
    it 'Deberia devolver false si el numero tiene 4 digitos pero tiene numeros repetidos' do
        key = CowsAndBulls.new
        expect(key.configuration(1123,"numeros",4)).to eq(false)
    end
    it 'Deberia devolver true si el string que ingresa es rabv' do
        cowsAndBulls = CowsAndBulls.new
        expect(cowsAndBulls.configuration("ravb","colores",4)).to eq(true)
    end
    it 'Deberia devolver true si el intento es 1234 y la clave es 1234' do
        cowsAndBulls = CowsAndBulls.new
        cowsAndBulls.configuration(1234,"numeros",4)
        expect(cowsAndBulls.playCowsAndBulls(1234)).to eq(true)
    end
    it 'Deberia devolver Numero Invalido si el la clave o el intento tienen numeros repetidos' do
        cowsAndBulls = CowsAndBulls.new
        cowsAndBulls.configuration(5555,"numeros",4)
        expect(cowsAndBulls.playCowsAndBulls(5555)).to eq("Numero Invalido")
    end
    it 'Deberia devolver un toro si el intento es 1567 y la clave 1234' do
        cowsAndBulls = CowsAndBulls.new
        cowsAndBulls.configuration(1234,"numeros",4)
        expect(cowsAndBulls.playCowsAndBulls(1567)).to eq('un toro')
    end
    it 'Deberia devolver cuatro vacas si el intento es 9178 y 1234' do
        cowsAndBulls = CowsAndBulls.new
        cowsAndBulls.configuration(1234,"numeros",4)
        expect(cowsAndBulls.playCowsAndBulls(9178)).to eq('una vaca')
    end
    it 'Deberia devolver una vaca si el intento es 4321 y la clave es 1234' do
        cowsAndBulls = CowsAndBulls.new
        cowsAndBulls.configuration(1234,"numeros",4)
        expect(cowsAndBulls.playCowsAndBulls(4321)).to eq('cuatro vacas')
    end
    it 'Deberia devolver dos vacas y dos toros si el intento es 1234 y la clave 1243' do
        cowsAndBulls = CowsAndBulls.new
        cowsAndBulls.configuration(1243,"numeros",4)
        expect(cowsAndBulls.playCowsAndBulls(1234)).to eq('dos vacas y dos toros')
    end
    it 'Deberia devolver Numero Invalido si el intento tiene digitos invalidos si el intento es menor o mayor a 3 digitos' do
        cowsAndBulls = CowsAndBulls.new
        cowsAndBulls.configuration(1234,"numeros",4)
        expect(cowsAndBulls.playCowsAndBulls(123)).to eq('Numero Invalido')
    end
    it 'Deberia devolver sin coincidencias si el intento 1234 y la clave 5678' do
        cowsAndBulls = CowsAndBulls.new
        cowsAndBulls.configuration(5678,"numeros",4)
        expect(cowsAndBulls.playCowsAndBulls(1234,)).to eq('Sin coincidencias')
    end
    it 'Deberia devolver sin coincidencias si el intento es 3675 y la clave es 2754' do
        cowsAndBulls = CowsAndBulls.new
        cowsAndBulls.configuration(2754,"numeros",4)
        expect(cowsAndBulls.playCowsAndBulls(3675)).to eq('dos vacas')
    end
    it 'Deberia devolver sin coincidencias si el intento es 3675 y la clave es 2754' do
        cowsAndBulls = CowsAndBulls.new
        cowsAndBulls.configuration("RAVB","colores",4)
        expect(cowsAndBulls.playCowsAndBulls("ravb")).to eq(true)
    end
    it 'Deberia devolver sin coincidencias si el intento es 3675 y la clave es 2754' do
        cowsAndBulls = CowsAndBulls.new
        cowsAndBulls.configuration("ravb","colores",4)
        expect(cowsAndBulls.playCowsAndBulls("rbav")).to eq("tres vacas y un toro")
    end
    it 'Deberia devolver sin coincidencias si el intento es 3675 y la clave es 2754' do
        cowsAndBulls = CowsAndBulls.new
        cowsAndBulls.configuration("ravb","colores",4)
        expect(cowsAndBulls.playCowsAndBulls("rbav")).to eq("tres vacas y un toro")
    end
end