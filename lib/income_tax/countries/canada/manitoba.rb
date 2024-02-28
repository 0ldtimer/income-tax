module IncomeTax
  module Countries
    class Canada
      class Manitoba < Territory
        register "Manitoba", "MB"

        levels year: 2022 do
          level offset(33723), "10.8%"
          level offset(39162), "12.75%"
          remainder            "17.4%"
        end

        levels year: 2024 do
          level offset(47000), "10.8%"
          level offset(37000), "12.75%"
          remainder            "17.4%"
        end
      end
    end
  end
end
