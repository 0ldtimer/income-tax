module IncomeTax
  module Countries
    class Canada
      class Ontario < Territory
        register "Ontario", "ON"

        levels year: 2022 do
          level offset(45142),  "5.05%"
          level offset(45145),  "9.15%"
          level offset(59713),  "11.16%"
          level offset(70000),  "12.16%"
          remainder             "13.16%"
        end

        levels year: 2024 do
          level offset(51446),  "5.05%"
          level offset(51448),  "9.15%"
          level offset(47106),  "11.16%"
          level offset(70000),  "12.16%"
          remainder             "13.16%"
        end
      end
    end
  end
end
