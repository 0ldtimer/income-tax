module IncomeTax
  module Countries
    class Canada
      class Federal < Models::Progressive
        levels year: 2015 do
          level offset(44700), "15%"
          level offset(44700), "22%"
          level offset(49185), "26%"
          remainder            "29%"
        end

        levels year: 2016 do
          level offset(45282), "15%"
          level offset(45281), "22%"
          level offset(49825), "26%"
          level offset(59612), "29%"
          remainder            "33%"
        end

        levels year: 2021 do
          level offset(49020), "15%"
          level offset(49020), "20.5%"
          level offset(49020), "26%"
          level offset(64533), "29%"
          remainder            "33%"
        end

        levels year: 2022 do
          level offset(50197), "15%"
          level offset(50195), "20.5%"
          level offset(55233), "26%"
          level offset(66083), "29%"
          remainder            "33%"
        end
      end
    end
  end
end
