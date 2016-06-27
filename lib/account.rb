class Account

  def initialize
    @balance = 0
  end

  def deposit amount
    add_deposit_to_balance(amount)
  end

  def check_balance
    balance
  end


  private

  attr_reader :balance

  def add_deposit_to_balance amount
    @balance += amount
  end

  def balance
    @balance
  end

end
