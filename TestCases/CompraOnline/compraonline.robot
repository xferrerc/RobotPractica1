*** Settings ***
test setup  Navegar a la pagina  http://www.amazon.es
test teardown  Cerrar navegador

*** Test Cases ***
Usuario no logado puede listar productos catalogo
    Given usuario no logado
    When usuario busca productos de tipo jardineria
    Then se muestra resultados de busqueda de productos relevantes