class DetailProduct {
  String productName;
  String productImage;
  String iupacName;
  String casNumber;
  String hsCode;
  String formula;
  String description;
  String application;
  String packagingName;

  DetailProduct({
    this.productName = "",
    this.productImage = "",
    this.iupacName = "",
    this.casNumber = "",
    this.hsCode = "",
    this.formula = "",
    this.description = "",
    this.application = "",
    this.packagingName = "",
  });

  factory DetailProduct.fromJson(Map<String, dynamic> json) {
    final detailProductJson = json['detail_product'];
    return DetailProduct(
      productName: detailProductJson['productname'],
      productImage: detailProductJson['productimage'],
      iupacName: detailProductJson['iupac_name'],
      casNumber: detailProductJson['cas_number'],
      hsCode: detailProductJson['hs_code'],
      formula: detailProductJson['formula'],
      description: detailProductJson['description'],
      application: detailProductJson['application'],
      packagingName: detailProductJson['packaging_name'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'productname': productName,
      'productimage': productImage,
      'iupac_name': iupacName,
      'cas_number': casNumber,
      'hs_code': hsCode,
      'formula': formula,
      'description': description,
      'application': application,
      'packaging_name': packagingName,
    };
  }
}
