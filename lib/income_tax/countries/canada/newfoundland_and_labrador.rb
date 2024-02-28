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

        levels year: 2024 do
          level offset(43198), "8.7%"
          level offset(43097), "14.5%"
          level offset(67849), "15.8%"
          level offset(61699), "17.8%"
          level offset(59927), "19.8%"
          level offset(275869), "20.8%"
          level offset(551739), "21.3%"
          remainder            "21.8%"
        end
      end
    end
  end
end
