RSpec.describe "Ruby's True and False" do
  def truth_value(condition)
    if condition
      :true_stuff
    else
      :false_stuff
    end
  end

  it "treats true as truthy" do
    expect( truth_value(true) ).to eq( :true_stuff )
  end

  it "treats false as falsey" do
    expect( truth_value(false) ).to eq( :false_stuff )
  end

  it "treats nil as falsey" do
    expect( truth_value(nil) ).to eq( :false_stuff )
  end

  it "treats everything else as truthy" do
    expect( truth_value(1) ).to eq( :true_stuff )
    expect( truth_value(0) ).to eq( :true_stuff )
    expect( truth_value([]) ).to eq( :true_stuff )
    expect( truth_value({}) ).to eq( :true_stuff )
    expect( truth_value("Strings") ).to eq( :true_stuff )
    expect( truth_value("") ).to eq( :true_stuff )
  end

  # These are useful, if awkwardly named matchers
  context "rspec matchers" do
    it "matches truthy things with be_truthy" do

      expect( true ).to be_truthy
      expect( 1 ).to be_truthy
      expect( 1 ).to be_truthy
      expect( 0 ).to be_truthy
      expect( [] ).to be_truthy
      expect( {} ).to be_truthy
      expect( "Strings" ).to be_truthy
      expect( "" ).to be_truthy
    end

    it "matches falsey things with be_falsey" do

      expect( false ).to be_falsey
      expect( nil ).to be_falsey
    end

    it "can match true exactly with be(true) or eq(true) matchers" do

      expect( true ).to be(true)
      expect( true ).to eq(true)

      expect( 1 ).not_to be(true)
      expect( 0 ).not_to eq(true)
    end

    it "can match false exactly with be(false) or be(true) matchers" do

      expect( false ).to be(false)
      expect( false ).to eq(false)

      expect( nil ).not_to be(true)
      expect( nil ).not_to eq(true)
    end
  end

end
