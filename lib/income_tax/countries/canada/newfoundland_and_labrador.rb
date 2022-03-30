module IncomeTax
  module Countries
    class Canada
      class NewfoundlandAndLabrador < Territory
        register "Newfoundland and Labrador", "Newfoundland", "Labrador", "NL"

        level offset(38081), "8.7%"
        level offset(38080), "14.5%"
        level offset(59812), "15.8%"
        level offset(54390), "17.3%"
        remainder            "18.3%"
      end
    end
  end
end
