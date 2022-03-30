require 'money'

describe IncomeTax do
  example { expect(IncomeTax.new("CA", 60000).gross_income)                     .to be == 60000                }
  example { expect(IncomeTax.new("CA", "$5k/mo").gross_income)                  .to be == 60000                }
  example { expect(IncomeTax.new("CA", 60000, :net).net_income)                 .to be == 60000                }
  example { expect(IncomeTax.new("CA", Money.new(6000000, "CAD")).gross_income) .to be == 60000                }
  example { expect{IncomeTax.new(:CA,  60000)}                                  .to raise_error(ArgumentError) }
end
