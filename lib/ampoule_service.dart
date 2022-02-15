class AmpouleService
{
  final String _ampouleAllumee = "Assets/ampouleAllume_flat.png";
  String get ampouleAllumee => _ampouleAllumee;
  final String _ampouleEteinte = "Assets/ampouleEteinte_flat.png";
  String get ampouleEteinte => _ampouleEteinte;
  String ampouleChoisie = "";

  AmpouleService({this.ampouleChoisie = "Assets/ampouleEteinte_flat.png"});

  // Change l'image de l'ampoule en fonction du toggle button en ASYNC
  Future<String> ChangeAmpoule(int index)
  async {
    if(index == 0)
    {
      ampouleChoisie = _ampouleEteinte;
    } else if(index == 1)
    {
      ampouleChoisie = _ampouleAllumee;
    }

    return ampouleChoisie;
  }
}