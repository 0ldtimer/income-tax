module IncomeTax
  module Countries
    class Canada
      class Alberta < Territory
        register "Alberta", "AB"

        levels year: 2022 do
          level offset(131220), "10%"
          level offset(26244),  "12%"
          level offset(52488),  "13%"
          level offset(104976), "14%"
          remainder             "15%"
        end

        levels year: 2024 do
          level offset(148269), "10%"
          level offset(29653),  "12%"
          level offset(59308),  "13%"
          level offset(118615), "14%"
          remainder             "15%"
        end
      end
    end
  end
end
