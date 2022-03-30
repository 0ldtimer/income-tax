module IncomeTax
  module Countries
    class Canada
      class NorthwestTerritories < Territory
        register "Northwest Territories", "NT"

        levels year: 2022 do
          level offset(44396), "5.9%"
          level offset(44400), "8.6%"
          level offset(55566), "12.2%"
          remainder            "14.05%"
        end
      end
    end
  end
end
