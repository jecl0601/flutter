Future<void> main() async {
  print('Inicio del main');
  try {
    final value = await httpGet('http');
    print('exito: $value');
  } on Exception catch (e) {
    print('Tenemos una excepcion en la petición: $e');
  } catch (err) {
    print('Ooops un error fatal');
  } finally {
    print('Fin del try catch');
  }

  /*
  httpGet('http')
      .then((value) {
        print(value);
      })
      .catchError((err) {
        print('Error: $err');
      }); */

  print('Fin del programa');
}

Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 2));
  throw Exception('No hay parametros en la url');
  //throw 'Error en la petición http';
  //return 'Tenemos un valor de la peticion';
  /*
  return Future.delayed(const Duration(seconds: 2), () {
    throw 'Error en la petición http';
  });
  */
}
