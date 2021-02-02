require_relative 'appointment'

class DailyAppointment < Appointment

    def initialize(location,purpose,hour,min)
        super(location,purpose,hour,min)
    end

    def occurs_on?(hour,min)
        if hour != @hour || min != @min
            puts false
        else
            puts true
        end
    end

    def to_s()
        def location()
            print "Reunion diaria en #{@location} "
        end
        location()
        purpose()
        hour()
        min()
    end
end

puts DailyAppointment.new('Desafio Latam','educacion',8,15)

# elemento = DailyAppointment.new('Desafio Latam','educacion',8,15)
# puts elemento.occurs_on?(8,15)