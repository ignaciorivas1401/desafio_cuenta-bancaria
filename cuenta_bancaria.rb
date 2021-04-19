class CuentaBancaria
    
    attr_reader :nombre_de_usuario, :numero_de_cuenta, :vip

    def initialize(nombre_de_usuario,numero_de_cuenta,vip=0)
        @nombre_de_usuario = nombre_de_usuario
        @vip = vip

        if numero_de_cuenta.digits.count == 8
            @numero_de_cuenta = numero_de_cuenta
        else
            raise ArgumentError.new('el numero de cuenta no tiene 8 digitos')
        end
        
    end

    def numero_de_cuenta
        puts "#{@vip}-#{@numero_de_cuenta}"
    end

end

#nota: al generar las cuentas el metodo .digits.count no cuenta como digito si pones ceros al principio por ejemplo si aplico "0012.digits.count el resultado es 2 digitos" por tanto el ejemplo del desafio tira error 

cuenta_1 = CuentaBancaria.new("ignacio",12345678,1)
cuenta_2 = CuentaBancaria.new("pedrito",56345600)
cuenta_1.numero_de_cuenta
cuenta_2.numero_de_cuenta

