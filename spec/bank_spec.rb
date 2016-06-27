require "bank"

describe Bank do
  it "should be able to deposit" do
    subject.deposit(1000)
    expect(subject.account.statement).to include(1000)
  end
end
