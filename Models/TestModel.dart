import 'dart:convert';

// Produto produtoFromJson(String str) {
//     final jsonData = json.decode(str);
//     return Produto.fromJson(jsonData);
// }

// String produtoToJson(Produto data) {
//     final dyn = data.toJson();
//     return json.encode(dyn);
// }

class Produto {
    int id;
    String nome;
    String valor;
    int quantidade;

    Produto({this.id,this.nome,this.valor,this.quantidade});


    factory Produto.fromJson(Map<String, dynamic> json) => new Produto(
        id: json["id"],
        nome: json["nome"],
        valor: json["valor"],
        quantidade: json["quantidade"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "nome": nome,
        "valor": valor,
        "quantidade": quantidade,
};
}