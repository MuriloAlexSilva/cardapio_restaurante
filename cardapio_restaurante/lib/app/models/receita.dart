class Receita {
  String titulo;
  String foto;
  String porcoes;
  String tempodePreparo;
  String ingredientes;
  String modoDePreparo;

  Receita({
    this.titulo,
    this.foto,
    this.porcoes,
    this.tempodePreparo,
    this.ingredientes,
    this.modoDePreparo,
  });

  Receita.fromJson(Map<String, dynamic> json) {
    titulo = json['titulo'];
    foto = json['foto'];
    porcoes = json['porcoes'];
    tempodePreparo = json['tempodePreparo'];
    ingredientes = json['ingredientes'];
    modoDePreparo = json['modoDePreparo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['titulo'] = this.titulo;
    data['foto'] = this.foto;
    data['porcoes'] = this.porcoes;
    data['tempodePreparo'] = this.tempodePreparo;
    data['ingredientes'] = this.ingredientes;
    data['modoDePreparo'] = this.modoDePreparo;

    return data;
  }
}
