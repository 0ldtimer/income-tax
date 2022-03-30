module IncomeTax
  module Countries
    class Canada
      class NewBrunswick < Territory
        register "New Brunswick", "NB"

        level offset(43835),  "9.68%"
        level offset(43836),  "14.82%"
        level offset(54863),  "16.52%"
        level offset(19849),  "17.84%"
        remainder             "20.3%"
      end
    end
  end
end
