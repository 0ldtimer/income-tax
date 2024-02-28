module IncomeTax
  module Countries
    class Canada
      class Yukon < Territory
        register "Yukon", "YT"

        levels year: 2022 do
          level offset(49020),  "6.4%"
          level offset(49020),  "9%"
          level offset(53938),  "10.9%"
          level offset(348022), "12.8%"
          remainder             "15%"
        end

        levels year: 2024 do
          level offset(55867),  "6.4%"
          level offset(55866),  "9%"
          level offset(61472),  "10.9%"
          level offset(73547), "12.93%"
          level offset(253248), "12.8%"
          remainder             "15%"
        end
      end
    end
  end
end
