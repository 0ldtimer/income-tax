module IncomeTax
  module Countries
    class Canada
      class Quebec < Territory
        register "Quebec", "Québec", "QC"

        levels year: 2022 do
          level 45105,  "15%"
          level 45095,  "20%"
          level 19555, "24%"
          remainder     "25.75%"
        end

        levels year: 2024 do
          level 51780,  "14%"
          level 51765,  "19%"
          level 22455, "24%"
          remainder     "25.75%"
        end
      end
    end
  end
end
