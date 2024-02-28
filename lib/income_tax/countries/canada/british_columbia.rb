module IncomeTax
  module Countries
    class Canada
      class BritishColumbia < Territory
        register "British Columbia", "BC"

        levels year: 2022 do
          level offset(42184), "5.06%"
          level offset(42185), "7.7%"
          level offset(12497), "10.5%"
          level offset(20757), "12.29%"
          level offset(41860), "14.7%"
          level offset(62937), "16.8%"
          remainder            "20.5%"
        end

        levels year: 2024 do
          level offset(47937), "5.06%"
          level offset(47938), "7.7%"
          level offset(14201), "10.5%"
          level offset(23588), "12.29%"
          level offset(47568), "14.7%"
          level offset(71250), "16.8%"
          remainder            "20.5%"
        end
      end
    end
  end
end
