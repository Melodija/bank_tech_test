require_relative 'transaction'

class Account

  def initialize
    @balance = 0
    @log = []
  end

  def deposit amount, date
    add_deposit_to_balance(amount, date)
    update_log(Transaction.new(date, amount, 0, 6))
    balance
  end

  def withdraw amount, date
    fail "You have insufficient funds!" unless enough_balance?(amount)
    withdraw_from_balance(amount, date)
    balance
  end

  def check_balance
    balance
  end

  def view_statement
    log
  end


  private

  attr_reader :balance, :log

  def add_deposit_to_balance amount, date
    @balance += amount
    # create_transaction(amount, date)
  end

  # def create_transaction amount, date
  #   @log << transaction
  # end

  # def create_credit_transaction amount, date
  #   transaction = [date, "", amount, @balance]
  #   update_log(transaction)
  # end

  def withdraw_from_balance amount, date
    @balance -= amount
  end

  def enough_balance? amount
    @balance > amount
  end

  def balance
    @balance
  end

  def update_log transaction
    @log << transaction
  end

  def log
    format = '%-7s %-7s %-7s %s'
    puts format % ['date', 'credit', 'debit', 'balance']
    @log.each_with_index do | x, i |
      puts format % [ x.date, x.credit, x.debit, x.balance]
    end
  end

end
