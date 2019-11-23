""" coding: utf-8"""

from kivy.app import App
from kivy.core.window import Window
from kivy.uix.floatlayout import FloatLayout
from kivy.uix.label import Label
from kivy.uix.button import Button
from kivy.uix.textinput import TextInput
from kivy.uix.boxlayout import BoxLayout
from kivy.utils import get_color_from_hex as c

Window.clearcolor = c('#10333B')
import MySQLdb as Bd


class ConnectionBd:
    connect = None
    cursor = None

    def __init__(self, **kwargs):
        super(ConnectionBd, self).__init__(**kwargs)

    def connect_bd(self, user, senha):

        host = "localhost"
        data = 'null_bank'
        port = 3306

        self.connect = Bd.connect(host, user, senha, data, port)
        """
        Definir q as tuplas do banco serao transformadas em dicionarios o objetivo 
        das funçoes e sempre o msm :formar a string que  seja igual ao comando em sql relativo a funcao
        """
        self.cursor = self.connect.cursor(Bd.cursors.DictCursor)
        print("tentariva de conexão")

    """ values e uma lista com o valores para inserir table e a tabela onde vai ser inserido  
        e fields os atributos da tabela """

    def select(self, fields, tables, where=None):
        """#fields recebe as strings com o nome das colunas
                                         # table=o nome das tabelas,pode ser mais de uma,
                                         # where é opcional,mas ai e so adicionar o predicado"""

        query = 'select ' + fields + " from  " + tables
        if where:
            query = query + ' WHERE ' + where
        self.cursor.execute(query)
        return self.cursor.fetchall()

    """
        sets e um dicionario onde a chave é o atributo e ele recebe o novo valor tables e where 
        msm jeito q no select
    """

    def insert(self, values, table, fields=None):
        query = "insert into " + table
        if fields:
            query = query + ' (' + fields + ')'

        query = query + ' values ' + ','.join(['(' + v + ')' for v in values])

        self.cursor.execute(query)
        self.connect.commit()

    def update(self, sets, tables, where=None):
        query = "update " + tables + " set "
        query = query + ','.join([fields + '=' + "'" + values + "'" for fields, values in sets.items()])
        if where:
            query = query + " where " + where

        self.cursor.execute(query)
        self.connect.commit()

    def delete(self, table, where):  # do msm jeito q no select
        query = " delete from  " + table + ' where ' + where

        self.cursor.execute(query)
        self.connect.commit()


class Gerente(FloatLayout):

    def __init__(self, **kwargs):
        super(Gerente, self).__init__(**kwargs)
        lb = Label()
        lb.text = "Tela Gerênte"
        lb.font_size = 50
        self.add_widget(lb)


class Background(FloatLayout):

    def __init__(self, **kwargs):
        super(Background, self).__init__(**kwargs)
        self.orientation = 'vertical'
        lb = Button()
        lb.background_color = c('#10333B')
        self.add_widget(lb)


class NullBankWelcome(FloatLayout):

    def iniciar_nb(self):
        print("iniciar")
        NullBank.root_window.remove_widget(NullBank.root)
        NullBank.root_window.add_widget(Background())
        NullBank.root_window.remove_widget(NullBank.root)
        NullBank.root_window.add_widget(LoginNullBank())

    def __init__(self, **kwargs):
        super(NullBankWelcome, self).__init__(**kwargs)
        layout = FloatLayout()

        lb = Label()
        lb.text = "Bem-vindo ao"
        lb.font_size = 30
        lb.size_hint = 1, 0.1
        lb.pos_hint = {"x": 0, "y": .8}

        lb2 = Label()
        lb2.text = "Null Bank"
        lb2.font_size = 50
        lb2.italic = True
        lb2.size_hint = 1, 0.1
        lb2.pos_hint = {"x": 0, "y": .6}

        btw = Button()
        btw.text = "Iniciar"
        btw.font_size = 20
        btw.size_hint = 0.7, 0.1
        btw.pos_hint = {"x": 0.15, "y": .4}
        btw.on_press = self.iniciar_nb

        layout.add_widget(lb)
        layout.add_widget(lb2)
        layout.add_widget(btw)

        self.add_widget(layout)


class LoginNullBank(FloatLayout):

    def login_null_bank(self):
        print(ti_nb_user.text)
        print(ti_nb_pass.text)
        NullBank.root_window.remove_widget(NullBank.root)
        NullBank.root_window.add_widget(Background())
        NullBank.root_window.remove_widget(NullBank.root)
        NullBank.root_window.add_widget(Gerente())

    def __init__(self, **kwargs):
        super(LoginNullBank, self).__init__(**kwargs)
        layout = FloatLayout()

        l_nb_welcome = Label()
        l_nb_welcome.size_hint = 1, .1
        l_nb_welcome.pos_hint = {"x": 0, "y": .8}
        l_nb_welcome.text = "Bem vindo ao NullBank"
        l_nb_welcome.italic = True
        l_nb_welcome.font_size = 40
        l_nb_welcome.color = 1, 1, 1, 1

        l_nb_user = Label()
        l_nb_user.size_hint = .25, .09
        l_nb_user.pos_hint = {"x": .05, "y": .6}
        l_nb_user.text = "Usuário"
        l_nb_user.font_size = 20

        global ti_nb_user
        ti_nb_user = TextInput()
        ti_nb_user.size_hint = .5, .09
        ti_nb_user.pos_hint = {"x": .25, "y": .6}
        ti_nb_user.text = ""
        ti_nb_user.font_size = 20

        l_nb_pass = Label()
        l_nb_pass.size_hint = .25, .09
        l_nb_pass.pos_hint = {"x": .05, "y": .5}
        l_nb_pass.text = "Senha"
        l_nb_pass.font_size = 20

        global ti_nb_pass
        ti_nb_pass = TextInput()
        ti_nb_pass.size_hint = .5, .09
        ti_nb_pass.pos_hint = {"x": .25, "y": .5}
        ti_nb_pass.text = ""
        ti_nb_pass.font_size = 20

        bt_nb_login = Button()
        bt_nb_login.text = "Entrar"
        bt_nb_login.size_hint = .4, .1
        bt_nb_login.pos_hint = {"x": .3, "y": .3}

        bt_nb_login.on_press = self.login_null_bank

        layout.add_widget(l_nb_welcome)
        layout.add_widget(l_nb_user)
        layout.add_widget(l_nb_pass)
        layout.add_widget(ti_nb_user)
        layout.add_widget(ti_nb_pass)
        layout.add_widget(bt_nb_login)

        self.add_widget(layout)


""""Tela de Login: Banco de Dados"""


class LoginBd(FloatLayout):

    def connect_bd(self):
        print(ti_bd_user.text)
        print(ti_bd_pass.text)
        ConnectionBd.connect_bd(ConnectionBd, ti_bd_user.text, ti_bd_pass.text)
        NullBank.root_window.remove_widget(NullBank.root)
        NullBank.root_window.add_widget(NullBankWelcome())

    def __init__(self, **kwargs):
        super(LoginBd, self).__init__(**kwargs)
        layout = FloatLayout()

        l_bd_welcome = Label()
        l_bd_welcome.size_hint = 1, .1
        l_bd_welcome.pos_hint = {"x": 0, "y": .8}
        l_bd_welcome.text = "Conectar ao Banco de dados"
        l_bd_welcome.italic = True
        l_bd_welcome.font_size = 30
        l_bd_welcome.color = 1, 1, 1, 1

        l_bd_user = Label()
        l_bd_user.size_hint = .25, .09
        l_bd_user.pos_hint = {"x": .05, "y": .6}
        l_bd_user.text = "Usuário"
        l_bd_user.font_size = 20

        global ti_bd_user
        ti_bd_user = TextInput()
        ti_bd_user.size_hint = .5, .09
        ti_bd_user.pos_hint = {"x": .25, "y": .6}
        ti_bd_user.text = ""
        ti_bd_user.font_size = 20

        l_bd_pass = Label()
        l_bd_pass.size_hint = .25, .09
        l_bd_pass.pos_hint = {"x": .05, "y": .475}
        l_bd_pass.text = "Senha"
        l_bd_pass.font_size = 20

        global ti_bd_pass
        ti_bd_pass = TextInput()
        ti_bd_pass.size_hint = .5, .09
        ti_bd_pass.pos_hint = {"x": .25, "y": .475}
        ti_bd_pass.text = ""
        ti_bd_pass.font_size = 20

        bt_bd_login = Button()
        bt_bd_login.text = "Login"
        bt_bd_login.size_hint = .4, .1
        bt_bd_login.pos_hint = {"x": .3, "y": .3}

        bt_bd_login.on_press = self.connect_bd

        layout.add_widget(l_bd_welcome)
        layout.add_widget(l_bd_user)
        layout.add_widget(l_bd_pass)
        layout.add_widget(ti_bd_user)
        layout.add_widget(ti_bd_pass)
        layout.add_widget(bt_bd_login)

        self.add_widget(layout)


class Main(App):
    def build(self):
        return LoginBd()


if __name__ == '__main__':
    NullBank = Main()
    NullBank.run()
    print("final main")
