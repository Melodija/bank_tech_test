require "account"

describe Account do
  it {expect(subject).to respond_to(:deposit).with(2).argument}
  it {expect(subject).to respond_to(:withdraw).with(2).argument}

  it "should be able to deposit money into account" do
    expect(subject.deposit(10, '10/01/2012')).to eq(10)
  end

  it "should be able to check my balance" do
    subject.deposit(10, '10/01/2012')
    subject.deposit(25, '10/01/2012')
    expect(subject.check_balance).to eq(35)
  end

  it "can withdraw money from account" do
    subject.deposit(10, '10/01/2012')
    subject.withdraw(8, '10/01/2012')
    expect(subject.check_balance).to eq(2)
  end

  it "should raise an error if attempting to withdraw more than balance amount" do
    subject.deposit(10, '10/01/2012')
    expect{ subject.withdraw(15, '10/01/2012') }.to raise_error("You have insufficient funds!")
  end

  it "should be able to view a statement" do
    expect(subject.view_statement).to eq("date || credit || debit || balance")
  end

  it "should add each transaction into log" do
    subject.deposit(1000, '10/01/2012')
    expect(subject.view_statement).to include("10/01/2012 || 1000 || || 1000 ")
  end
end
