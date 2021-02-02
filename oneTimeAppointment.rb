require_relative 'appointment'

class OneTimeAppointment < Appointment
    
    def initialize(location,purpose,hour,min,day,month,year)
        super(location,purpose,hour,min)
        @day = day
        @month = month
        @year = year
    end

    def day()
        print "el #{@day}/"
    end
    def month()
        print "#{@month}/"
    end
    def year()
        print "#{@year}"
    end

    def occurs_on?(day,month,year)
        if day != @day || month != @month || year != @year
            puts false
        else
            puts true
        end
    end

    def to_s()
        location()
        purpose()
        day()
        month()
        year()
        hour()
        min()
    end

end

puts OneTimeAppointment.new('Desafio Latam','trabajo',14,30,4,6,2019)

# elemento = OneTimeAppointment.new('Desafio Latam','trabajo',14,30,4,6,2019)
# elemento.occurs_on?(4,6,2019)