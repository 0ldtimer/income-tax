module IncomeTax
  module Countries
    class Canada
      class NewBrunswick < Territory
        register "New Brunswick", "NB"

        levels year: 2022 do
          level offset(43835),  "9.68%"
          level offset(43836),  "14.82%"
          level offset(54863),  "16.52%"
          level offset(19849),  "17.84%"
          remainder             "20.3%"
        end

        levels year: 2024 do
          level offset(49958),  "9.4%"
          level offset(49958),  "14.0%"
          level offset(85148),  "16.0%"
          remainder             "19.5%"
        end
      end
    end
  end
end
