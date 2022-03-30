module IncomeTax
  module Countries
    class Canada
      class Nunavut < Territory
        register "Nunavut", "NU"

        levels year: 2022 do
          level offset(46740), "4%"
          level offset(46740), "7%"
          level offset(58498), "9%"
          remainder            "11.5%"
        end
      end
    end
  end
end
