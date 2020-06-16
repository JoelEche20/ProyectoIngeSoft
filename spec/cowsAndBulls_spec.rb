require 'cowsAndBulls.rb'

RSpec.describe CowsAndBulls do
    it 'Deberia devolver true si el numero es de 4 digitos y los digitos son diferentes' do
        key = CowsAndBulls.new
        expect(key.configuration(1234,"numeros","Facil")).to eq(true)
    end
    it 'Deberia devolver false si ingresa caracteres que no sean numeros como jhgj' do
        key = CowsAndBulls.new
        expect(key.configuration("jhgj","numeros","Facil")).to eq(false)
    end
    it 'Deberia devolver false si ingresa caracteres que no sean numeros como 12hg' do
        key = CowsAndBulls.new
        expect(key.configuration("12hg","numeros","Facil")).to eq(false)
    end
    it 'Deberia devolver false si el numero tiene 4 digitos pero tiene numeros repetidos' do
        key = CowsAndBulls.new
        expect(key.configuration(1123,"numeros","Facil")).to eq(false)
    end
    it 'Deberia devolver true si el string que ingresa es rabv' do
        cowsAndBulls = CowsAndBulls.new
        expect(cowsAndBulls.configuration("ravb","colores","Facil")).to eq(true)
    end
    it 'Deberia devolver false si el numero que ingresa es 1234' do
        cowsAndBulls = CowsAndBulls.new
        expect(cowsAndBulls.configuration(1234,"numeros","Medio")).to eq(false)
    end
    it 'Deberia devolver false si el string que ingresa es ravb' do
        cowsAndBulls = CowsAndBulls.new
        expect(cowsAndBulls.configuration("ravbn","colores","Medio")).to eq(false)
    end
    it 'Deberia devolver false si el string que ingresa es ravbnc' do
        cowsAndBulls = CowsAndBulls.new
        expect(cowsAndBulls.configuration("ravbnc","colores","Medio")).to eq(true)
    end
    it 'Deberia devolver false si el string que ingresa es ravbnc' do
        cowsAndBulls = CowsAndBulls.new
        expect(cowsAndBulls.configuration("ravbnc","colores","Alto")).to eq(false)
    end
    it 'Deberia devolver false si el string que ingresa es ravbncdm' do
        cowsAndBulls = CowsAndBulls.new
        expect(cowsAndBulls.configuration("ravbncdm","colores","Alto")).to eq(true)
    end
    it 'Deberia devolver false si el numero que ingresa es 123456789' do
        cowsAndBulls = CowsAndBulls.new
        expect(cowsAndBulls.configuration(123456789,"numeros","Alto")).to eq(false)
    end
    it 'Deberia devolver false si el string que ingresa es ravb' do
        cowsAndBulls = CowsAndBulls.new
        expect(cowsAndBulls.configuration("ytqwolkz","colores","Alto")).to eq(false)
    end
    it 'Deberia devolver true si el intento es 1234 y la clave es 1234' do
        cowsAndBulls = CowsAndBulls.new
        cowsAndBulls.configuration(1234,"numeros","Facil")
        expect(cowsAndBulls.playCowsAndBulls(1234)).to eq(true)
    end
    it 'Deberia devolver Numero Invalido si el la clave o el intento tienen numeros repetidos' do
        cowsAndBulls = CowsAndBulls.new
        cowsAndBulls.configuration(5555,"numeros","Facil")
        expect(cowsAndBulls.playCowsAndBulls(5555)).to eq("Numero Invalido")
    end
    it 'Deberia devolver un toro si el intento es 1567 y la clave 1234' do
        cowsAndBulls = CowsAndBulls.new
        cowsAndBulls.configuration(1234,"numeros","Facil")
        expect(cowsAndBulls.playCowsAndBulls(1567)).to eq('un toro')
    end
    it 'Deberia devolver cuatro vacas si el intento es 9178 y 1234' do
        cowsAndBulls = CowsAndBulls.new
        cowsAndBulls.configuration(1234,"numeros","Facil")
        expect(cowsAndBulls.playCowsAndBulls(9178)).to eq('una vaca')
    end
    it 'Deberia devolver una vaca si el intento es 4321 y la clave es 1234' do
        cowsAndBulls = CowsAndBulls.new
        cowsAndBulls.configuration(1234,"numeros","Facil")
        expect(cowsAndBulls.playCowsAndBulls(4321)).to eq('cuatro vacas')
    end
    it 'Deberia devolver dos vacas y dos toros si el intento es 1234 y la clave 1243' do
        cowsAndBulls = CowsAndBulls.new
        cowsAndBulls.configuration(1243,"numeros","Facil")
        expect(cowsAndBulls.playCowsAndBulls(1234)).to eq('dos vacas y dos toros')
    end
    it 'Deberia devolver Numero Invalido si el intento tiene digitos invalidos si el intento es menor o mayor a 3 digitos' do
        cowsAndBulls = CowsAndBulls.new
        cowsAndBulls.configuration(1234,"numeros","Facil")
        expect(cowsAndBulls.playCowsAndBulls(123)).to eq('Numero Invalido')
    end
    it 'Deberia devolver sin coincidencias si el intento 1234 y la clave 5678' do
        cowsAndBulls = CowsAndBulls.new
        cowsAndBulls.configuration(5678,"numeros","Facil")
        expect(cowsAndBulls.playCowsAndBulls(1234,)).to eq('Sin coincidencias')
    end
    it 'Deberia devolver sin coincidencias si el intento es 3675 y la clave es 2754' do
        cowsAndBulls = CowsAndBulls.new
        cowsAndBulls.configuration(2754,"numeros","Facil")
        expect(cowsAndBulls.playCowsAndBulls(3675)).to eq('dos vacas')
    end
    it 'Deberia devolver sin coincidencias si el intento es ravb y la clave es RAVB' do
        cowsAndBulls = CowsAndBulls.new
        cowsAndBulls.configuration("RAVB","colores","Facil")
        expect(cowsAndBulls.playCowsAndBulls("ravb")).to eq(true)
    end
    it 'Deberia devolver sin coincidencias si el intento es rbav y la clave es ravb' do
        cowsAndBulls = CowsAndBulls.new
        cowsAndBulls.configuration("ravb","colores","Facil")
        expect(cowsAndBulls.playCowsAndBulls("rbav")).to eq("tres vacas y un toro")
    end
    it 'Deberia devolver sin coincidencias si el intento es rbav y la clave es ravb' do
        cowsAndBulls = CowsAndBulls.new
        cowsAndBulls.configuration("ravb","colores","Facil")
        expect(cowsAndBulls.playCowsAndBulls("rbav")).to eq("tres vacas y un toro")
    end
    it 'Deberia devolver sin coincidencias si el intento es 654321 y la clave es 123456' do
        cowsAndBulls = CowsAndBulls.new
        cowsAndBulls.configuration(123456,"numeros","Medio")
        expect(cowsAndBulls.playCowsAndBulls(654321)).to eq("seis vacas")
    end

    it 'Deberia devolver sin coincidencias si el intento es 123456 y la clave es 654327' do
        cowsAndBulls = CowsAndBulls.new
        cowsAndBulls.configuration(123456,"numeros","Medio")
        expect(cowsAndBulls.playCowsAndBulls(654327)).to eq("cinco vacas")
    end
    it 'Deberia devolver sin coincidencias si el intento es 123456 y la clave es 123456' do
        cowsAndBulls = CowsAndBulls.new
        cowsAndBulls.configuration(123456,"numeros","Medio")
        expect(cowsAndBulls.playCowsAndBulls(123456)).to eq(true)
    end
    it 'Deberia devolver sin coincidencias si el intento es 87654321 y la clave es 12345678' do
        cowsAndBulls = CowsAndBulls.new
        cowsAndBulls.configuration(12345678,"numeros","Alto")
        expect(cowsAndBulls.playCowsAndBulls(87654321)).to eq("ocho vacas")
    end
    it 'Deberia devolver sin coincidencias si el intento es 87654329 y la clave es 12345678' do
        cowsAndBulls = CowsAndBulls.new
        cowsAndBulls.configuration(12345678,"numeros","Alto")
        expect(cowsAndBulls.playCowsAndBulls(87654329)).to eq("siete vacas")
    end
    it 'Deberia devolver sin coincidencias si el intento es cnardm y la clave es ravbnc' do
        cowsAndBulls = CowsAndBulls.new
        cowsAndBulls.configuration("ravbnc","colores","Medio")
        expect(cowsAndBulls.playCowsAndBulls("cnardm")).to eq("cuatro vacas")
    end
    it 'Deberia devolver sin coincidencias si el intento es dmcnbvar y la clave es ravbncmd' do
        cowsAndBulls = CowsAndBulls.new
        cowsAndBulls.configuration("ravbncmd","colores","Alto")
        expect(cowsAndBulls.playCowsAndBulls("dmcnbvar")).to eq("ocho vacas")
    end
end