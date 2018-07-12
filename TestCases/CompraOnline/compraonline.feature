Feature:Compra en e-commerce local
Scenario:Usuario no logado puede listar productos catalogo
    Given usuario no logado
    When usuario busca productos de tipo jardineria
    Then se muestra resultados de busqueda de productos relevantes