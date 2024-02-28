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

        levels year: 2024 do
          level offset(32656), "9.65%"
          level offset(31657), "13.63%"
          level offset(40687), "16.65%"
          level offset(35000), "18.00%"
          remainder            "18.75%"
        end
      end
    end
  end
end
