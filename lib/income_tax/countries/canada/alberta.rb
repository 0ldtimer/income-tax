module IncomeTax
  module Countries
    class Canada
      class Alberta < Territory
        register "Alberta", "AB"

        level offset(131220), "10%"
        level offset(26244),  "12%"
        level offset(52488),  "13%"
        level offset(104976), "14%"
        remainder             "15%"
      end
    end
  end
end
