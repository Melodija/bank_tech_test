class Transaction
  attr_accessor :date, :credit, :debit, :balance

  def initalize(date, credit, debit, balance)
    @date = date
    @credit = credit
    @debit = debit
    @balance = balance
  end
end