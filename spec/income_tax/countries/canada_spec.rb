describe IncomeTax::Countries::Canada do
  subject(:result) { described_class.new(income: income, income_type: type, tax_year: tax_year, territory: territory) }
  let(:type) { :gross }
  let(:territory) { nil }

  describe "tax year 2015, federal taxes only" do
    describe "from gross income of 0" do
      let(:tax_year)     { 2015                                      }
      let(:income)       { 0                                         }
      its(:rate)         { should be == Rational(0, 1)               }
      its(:gross_income) { should be == 0                            }
      its(:net_income)   { should be == 0                            }
      its(:taxes)        { should be == 0                            }
    end

    describe "from gross income of 1000" do
      let(:tax_year)     { 2015                                      }
      let(:income)       { 1000                                      }
      its(:rate)         { should be == Rational(3, 20)              }
      its(:gross_income) { should be == 1000                         }
      its(:net_income)   { should be == 850                          }
      its(:taxes)        { should be == 150                          }
    end

    describe "from gross income of 10000" do
      let(:tax_year)     { 2015                                      }
      let(:income)       { 10000                                     }
      its(:rate)         { should be == Rational(3, 20)              }
      its(:gross_income) { should be == 10000                        }
      its(:net_income)   { should be == 8500                         }
      its(:taxes)        { should be == 1500                         }
    end

    describe "from gross income of 100000" do
      let(:tax_year)     { 2015                                      }
      let(:income)       { 100000                                    }
      its(:rate)         { should be == Rational(82, 425)            }
      its(:gross_income) { should be == 100000                       }
      its(:net_income)   { should be == 80705                        }
      its(:taxes)        { should be == 19295                        }
    end

    describe "from gross income of 100000000" do
      let(:tax_year)     { 2015                                      }
      let(:income)       { 100000000                                 }
      its(:rate)         { should be == Rational(109, 376)           }
      its(:gross_income) { should be == 100000000                    }
      its(:net_income)   { should be == "71010862.55".to_d           }
      its(:taxes)        { should be == "28989137.45".to_d           }
    end

    describe "from net income of 0" do
      let(:type)         { :net                                      }
      let(:tax_year)     { 2015                                      }
      let(:income)       { 0                                         }
      its(:rate)         { should be == Rational(0, 1)               }
      its(:gross_income) { should be == 0                            }
      its(:net_income)   { should be == 0                            }
      its(:taxes)        { should be == 0                            }
    end

    describe "from net income of 1000" do
      let(:type)         { :net                                      }
      let(:tax_year)     { 2015                                      }
      let(:income)       { 1000                                      }
      its(:rate)         { should be == Rational(3, 20)              }
      its(:gross_income) { should be == "1176.470588235294118".to_d  }
      its(:net_income)   { should be == 1000                         }
      its(:taxes)        { should be == "176.470588235294118".to_d   }
    end

    describe "from net income of 10000" do
      let(:type)         { :net                                      }
      let(:tax_year)     { 2015                                      }
      let(:income)       { 10000                                     }
      its(:rate)         { should be == Rational(3, 20)              }
      its(:gross_income) { should be == "11764.70588235294118".to_d  }
      its(:net_income)   { should be == 10000                        }
      its(:taxes)        { should be == "1764.70588235294118".to_d   }
    end

    describe "from net income of 100000" do
      let(:type)         { :net                                      }
      let(:tax_year)     { 2015                                      }
      let(:income)       { 100000                                    }
      its(:rate)         { should be == Rational(85, 411)            }
      its(:gross_income) { should be == "126074.3243243243243".to_d  }
      its(:net_income)   { should be == 100000                       }
      its(:taxes)        { should be == "26074.3243243243243".to_d   }
    end

    describe "from net income of 100000000" do
      let(:type)         { :net                                      }
      let(:tax_year)     { 2015                                      }
      let(:income)       { 100000000                                 }
      its(:rate)         { should be == Rational(69, 238)            }
      its(:gross_income) { should be == "140829771.056338028".to_d   }
      its(:net_income)   { should be == 100000000                    }
      its(:taxes)        { should be == "40829771.056338028".to_d    }
    end
  end

  describe "tax year 2016, taxes in Labrador" do
    let(:tax_year)  { 2016       }
    let(:territory) { "Labrador" }

    describe "from gross income of 0" do
      let(:income)       { 0                                         }
      its(:rate)         { should be == Rational(0, 1)               }
      its(:gross_income) { should be == 0                            }
      its(:net_income)   { should be == 0                            }
      its(:taxes)        { should be == 0                            }
    end

    describe "from gross income of 1000" do
      let(:income)       { 1000                                      }
      its(:rate)         { should be == Rational(37, 163)            }
      its(:gross_income) { should be == 1000                         }
      its(:net_income)   { should be == 773                          }
      its(:taxes)        { should be == 227                          }
    end

    describe "from gross income of 100000" do
      let(:income)       { 100000                                    }
      its(:rate)         { should be == Rational(82, 271)            }
      its(:gross_income) { should be == 100000                       }
      its(:net_income)   { should be == "69741.724".to_d             }
      its(:taxes)        { should be == "30258.276".to_d             }
    end

    describe "from net income of 0" do
      let(:type)         { :net                                      }
      let(:income)       { 0                                         }
      its(:rate)         { should be == Rational(0, 1)               }
      its(:gross_income) { should be == 0                            }
      its(:net_income)   { should be == 0                            }
      its(:taxes)        { should be == 0                            }
    end

    describe "from net income of 100000" do
      let(:type)         { :net                                      }
      let(:income)       { 100000                                    }
      its(:rate)         { should be == Rational(137, 491)           }
      its(:gross_income) { should be == "138702.1216683811839".to_d  }
      its(:net_income)   { should be == 100000                       }
      its(:taxes)        { should be == "38702.1216683811839".to_d   }
    end
  end

  describe "tax year 2021, taxes in Canada" do
    let(:tax_year)  { 2021       }

    describe "from gross income of 50000" do
      let(:income)       { 50000                                     }
      its(:gross_income) { should be == 50000                        }
      its(:net_income)   { should be == 42446.1.to_d                 }
      its(:taxes)        { should be == 7553.90.to_d                 }
    end
  end

  describe "tax year 2022, taxes in Canada" do
    let(:tax_year)  { 2022       }

    describe "from gross income of 50197" do
      let(:income)       { 50197                                     }
      its(:rate)         { should be == Rational(3, 20)              }
      its(:gross_income) { should be == 50197                        }
      its(:net_income)   { should be == 42667.45.to_d                }
      its(:taxes)        { should be == 7529.55.to_d                 }
    end

    describe "from gross income of 50197" do
      let(:income)       { 55000                                     }
      its(:gross_income) { should be == 55000                        }
      its(:net_income)   { should be == 46485.835.to_d                }
      its(:taxes)        { should be == 8514.165.to_d                 }
    end
  end

  describe "tax year 2022, taxes in BC" do
    let(:tax_year)  { 2022       }
    let(:territory) { "BC" }

    describe "from gross income of 55000" do
      let(:income)       { 55000                                     }

      its(:gross_income) { should be == 55000                        }
      its(:net_income)   { should be == 43364.4926.to_d                     }
      its(:taxes)        { should be == 11635.5074.to_d              }
    end
  end
end
