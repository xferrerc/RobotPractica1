from robot.api import logger
from robot.api.deco import keyword
from robot.libraries.BuiltIn import BuiltIn

"""Notas"""
"""N1: RobotFmk instalado, tenemos disponible libreria robot.api"""
"""N2: se importa clase con primera letra mayuscula, en minuscula funcion"""
"""N3: importamos Builtin para importar libreria Selenium"""


@keyword("Conectarme al sistema remoto de creacion de helados")
def test_python():
    logger.console(u"Funcion expuesta desde modulo Python")
    return "Test"


def second_test_python():
    logger.console(u"Segunda Funcion expuesta desde module Python")
    return "TEST"

@keyword("Conectarme a URL con navegador")
def abrir_navegador_en_la_url(url,driver):
    selenium_lib = BuiltIn().get_library_instance("SeleniumLibrary")
    browser = selenium_lib.current_browser()


@keyword("Lista de productos de la web")
def lista_productos(class_name):
    selenium_lib = BuiltIn().get_library_instance("SeleniumLibrary")
    browser = selenium_lib.current_browser()
    lista = browser.find_element_by_class_name(class_name)
    productos = lista.find_element_by_tag_name('article')
    for producto in productos:
        logger.console(producto)




