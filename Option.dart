class purchase {
  int numb;
  String purchaseType;

  purchase({this.numb, this.purchaseType});
  @override
  String toString() {
    return 'Purchase {Numb: $numb, Purchase: $purchaseType}';
  }
}

var purchaseTypes = <purchase>[
  purchase(
    numb: 1,
    purchaseType: "by Cash",
  ),
  purchase(
    numb: 2,
    purchaseType: "by Liter",
  ),
];
