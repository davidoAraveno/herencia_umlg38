require_relative 'appointment'

class MonthlyAppointment < Appointment

    def initialize(location,purpose,day,hour,min)
        super(location,purpose,hour,min)
        @day = day
    end

    def day()
        print "el dia #{@day}"
    end

    def to_s()
        def location()
            print "Reunion mensual en #{@location} "
        end
        location()
        purpose()
        day()
        hour()
        min()
    end

    def occurs_on?(day)
        if day != @day
            puts false
        else
            puts true
        end

    end
    
end

puts MonthlyAppointment.new('el galpon','niños',23,8,15)

# puts elemento.occurs_on?(1)