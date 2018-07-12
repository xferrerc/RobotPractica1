from robotremoteserver import RobotRemoteServer
from lib_remota import SistemaBancario
"""from Remotoo.lib_remota import SistemaBancario"""


"""Notas:"""
"""N1: buscar 'pip remote server' en google, buscar e instalar esta libreria: 'pip install rrobotremoteserver' """
"""N2: por defecto se utiliza el puerto 8270, sino se puede indicar puerto con argumento 'port' tras 'serve' """

server = RobotRemoteServer(SistemaBancario(), serve=False)
server.serve()
