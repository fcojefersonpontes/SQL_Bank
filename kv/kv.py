"""coding: utf-8"""

import kivy
from kivy.app import App
from kivy.core.window import Window
from kivy.uix.boxlayout import BoxLayout
from kivy.uix.button import Button
from kivy.uix.label import Label
from kivy.uix.textinput import TextInput
from kivy.uix.floatlayout import FloatLayout
from kivy.utils import get_color_from_hex as color
Window.clearcolor = [0, 0, 0, 1]


class Background(FloatLayout):

    def __init__(self, **kwargs):
        super(Background, self).__init__(**kwargs)
        self.orientation = 'vertical'
        lb = Label()
        lb.color = [255, 10, 10, 1]
        lb.text = "BG"
        self.add_widget(lb)


class Tela3(FloatLayout):

    def on_press_bt(self):
        janela.root_window.remove_widget(janela.root)
        janela.root_window.add_widget(Tela1())

    def __init__(self, **kwargs):
        super(Tela3, self).__init__(**kwargs)
        self.orientation = 'vertical'
        bt1 = Button()
        bt1.text = "Click"
        bt1.on_press = self.on_press_bt
        bt2 = Button()
        bt2.text = "Click 2"
        self.add_widget(bt1)
        self.add_widget(bt2)
        self.add_widget(Button(text="tela3"))


class Tela1(FloatLayout):

    def connect_bd(self):
        janela.root_window.remove_widget(janela.root)
        janela.root = None
        janela.root_window.add_widget(Tela2())

    def __init__(self, **kwargs):
        super(Tela1, self).__init__(**kwargs)
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

        ti_bd_user = TextInput()
        ti_bd_user.size_hint = .5, .09
        ti_bd_user.pos_hint = {"x": .25, "y": .6}
        ti_bd_user.text = ""
        ti_bd_user.font_size = 20

        l_bd_pass = Label()
        l_bd_pass.size_hint = .25, .09
        l_bd_pass.pos_hint = {"x": .05, "y": .5}
        l_bd_pass.text = "Senha"
        l_bd_pass.font_size = 20

        ti_bd_pass = TextInput()
        ti_bd_pass.size_hint = .5, .09
        ti_bd_pass.pos_hint = {"x": .25, "y": .5}
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


class Tela2(FloatLayout):

    def on_press_bt(self):
        janela.root_window.remove_widget(janela.root)
        janela.root_window.add_widget(Tela3())

    def __init__(self, **kwargs):
        super(Tela2, self).__init__(**kwargs)
        self.orientation = "vertical"
        bt = Button()
        bt.text = "CLIque"
        bt.on_press = self.on_press_bt
        self.add_widget(bt)


class Py(App):
    def build(self):
        return Background()


janela = Py()
janela.run()
