require 'account'

describe Account do
  it "should be able to add money to the account" do
    subject.deposit_money(10)
    expect(subject.statement).to include(10)
  end
end
