class TransactionModel {
  final String title, subtitle, amount;
  final bool isWithdrawal;

  const TransactionModel(this.title, this.subtitle, this.amount, this.isWithdrawal);
}