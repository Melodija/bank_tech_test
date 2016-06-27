require_relative 'transaction'

class Account

  def initialize
    @balance = 0
    @history = []
  end

  def deposit_money amount
    @balance += amount
    add_to_history(Transaction.new( Time.new, amount, 0))
  end

  def withdraw_money
    @balance -= amount
    add_to_history(Transaction.new( Time.new, 0, amount))
  end

  def statement
    @history
  end

  private

  def add_to_history transaction
    @history << transaction
  end
end
