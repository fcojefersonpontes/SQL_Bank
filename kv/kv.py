"""coding: utf-8"""

from kivy.app import App
from kivy.uix.floatlayout import FloatLayout
from kivy.uix.label import Label
from kivy.uix.button import Button
'''
def build():
    lb = Label()
    lb.text = "Tela de Boas Vindas"
    lb.italic = True
    lb.font_size = 50
    return lb


app = App()
app.build = build
app.run()
'''

'''
def click():
    print("botão clicado")


def build():
    bt = Button()
    bt.text = "Login"
    bt.font_size = 30
    bt.on_press = click
    return bt


app = App()
app.build = build
app.run()
'''
'''

def build():
    ti = TextInput()
    ti.text = "Edite o Texto"
    return ti


app = App()
app.build = build
app.run()
'''

"""
def click():
    print(ti.text)


def build():
    layout = FloatLayout()

    global ti
    ti = TextInput(text="Input")
    ti.size_hint = None, None
    ti.height = 300
    ti.width = 400
    ti.y = 150
    ti.x = 50

    bt = Button()
    bt.text = "Print in console"
    bt.size_hint = None, None
    bt.height = 50
    bt.width = 200
    bt.y = 50
    bt.x = 150

    bt.on_press = click

    layout.add_widget(ti)
    layout.add_widget(bt)

    return layout


app = App()
app.title = "NullBank"
Window.size = 500, 500

app.build = build
app.run()
"""


class RootWidget(FloatLayout):
    pass


class MedidaApp(App):
    def build(self):
        return RootWidget()


MedidaApp().run()
