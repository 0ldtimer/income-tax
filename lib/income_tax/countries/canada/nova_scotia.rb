module IncomeTax
  module Countries
    class Canada
      class NovaScotia < Territory
        register "Nova Scotia", "NS"

        levels year: 2022 do
          level offset(29590), "8.79%"
          level offset(29590), "14.95%"
          level offset(33820), "16.67%"
          level offset(57000), "17.5%"
          remainder            "21%"
        end
      end
    end
  end
end
