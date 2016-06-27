require "account"

describe Account do
  it {expect(subject).to respond_to(:deposit).with(1).argument}

  it "should be able to deposit money into bank" do
    expect(subject.deposit(10)).to eq(10)
  end

  it "should be able to check my balance" do
    subject.deposit(10)
    subject.deposit(25)
    expect(subject.check_balance).to eq(35)
  end
end
