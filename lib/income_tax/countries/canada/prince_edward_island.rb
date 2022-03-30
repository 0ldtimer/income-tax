module IncomeTax
  module Countries
    class Canada
      class PrinceEdwardIsland < Territory
        register "Prince Edward Island", "PE"

        levels year: 2022 do
          level offset(31984), "9.8%"
          level offset(31985), "13.8%"
          remainder            "16.7%"
        end
      end
    end
  end
end
