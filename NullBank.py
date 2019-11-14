""" coding: utf-8"""

from kivy.app import App
from kivy.core.window import Window
from kivy.uix.floatlayout import FloatLayout
from kivy.uix.label import Label
from kivy.uix.button import Button
from kivy.uix.textinput import TextInput

"""Tela de Login da aplicação"""


def click():
    print("Hello")


class MeuPrograma(App):

    def build(self):
        layout = FloatLayout()

        l_welcome = Label()
        l_welcome.size_hint = 1, .1
        l_welcome.pos_hint = {"x": 0, "y": .9}
        l_welcome.text = "Bem-vindo ao"
        l_welcome.italic = True
        l_welcome.font_size = 20
        l_welcome.color = 1, 1, 1, 1

        l_bank = Label()
        l_bank.size_hint = 1, .1
        l_bank.pos_hint = {"x": 0, "y": .8}
        l_bank.text = "NullBank"
        l_bank.italic = True
        l_bank.font_size = 50

        l_user = Label()
        l_user.size_hint = .25, .09
        l_user.pos_hint = {"x": .05, "y": .6}
        l_user.text = "Usuário"
        l_user.font_size = 20

        ti_user = TextInput()
        ti_user.size_hint = .5, .09
        ti_user.pos_hint = {"x": .25, "y": .6}
        ti_user.text = ""

        l_pass = Label()
        l_pass.size_hint = .25, .09
        l_pass.pos_hint = {"x": .05, "y": .5}
        l_pass.text = "Senha"
        l_pass.font_size = 20

        ti_pass = TextInput()
        ti_pass.size_hint = .5, .09
        ti_pass.pos_hint = {"x": .25, "y": .5}
        ti_pass.text = ""

        bt_login = Button()
        bt_login.text = "Login"
        bt_login.size_hint = .4, .09
        bt_login.pos_hint = {"x": .3, "y": .3}

        bt_login.on_press = click

        layout.add_widget(l_welcome)
        layout.add_widget(l_bank)
        layout.add_widget(l_user)
        layout.add_widget(l_pass)
        layout.add_widget(ti_user)
        layout.add_widget(ti_pass)
        layout.add_widget(bt_login)

        return layout


Window.size = 500, 500
MeuPrograma().run()
