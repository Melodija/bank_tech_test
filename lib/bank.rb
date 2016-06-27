class Bank
  attr_reader :account
  
  def initialize account = Account.new
    @account = account
  end

  def deposit amount
    @account.deposit_money(amount)
  end

  def withdraw amount
    @account.withdraw_money(amount)
  end
end
