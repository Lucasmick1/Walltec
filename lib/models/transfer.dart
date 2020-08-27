class Transfer {
  final double value;
  final int account;

  Transfer(
    this.account,
    this.value,
  );

  @override
  String toString() {
    return 'Transfer{"value": $value, "account": $account}';
  }
}
