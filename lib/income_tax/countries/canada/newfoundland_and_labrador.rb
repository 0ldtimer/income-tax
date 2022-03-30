module IncomeTax
  module Countries
    class Canada
      class NewfoundlandAndLabrador < Territory
        register "Newfoundland and Labrador", "Newfoundland", "Labrador", "NL"

        levels year: 2016 do
          level offset(35148), "7.7%"
          level offset(35147), "12.5%"
          level offset(55205), "13.3%"
          level offset(50200), "14.3%"
          remainder            "15.3%"
        end

        levels year: 2022 do
          level offset(38081), "8.7%"
          level offset(38080), "14.5%"
          level offset(59812), "15.8%"
          level offset(54390), "17.3%"
          remainder            "18.3%"
        end
      end
    end
  end
end
