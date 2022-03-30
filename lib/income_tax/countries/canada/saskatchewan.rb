module IncomeTax
  module Countries
    class Canada
      class Saskatchewan < Territory
        register "Saskatchewan", "SK"

        levels year: 2022 do
          level offset(45677), "10.5%"
          level offset(84829), "12.5%"
          remainder            "14.5%"
        end
      end
    end
  end
end
