import MySQLdb as bd

host="localhost"
user='root'
senha='12345'
data='escola_curso'
port=3306

con=bd.connect(host,user,senha,data,port)
c=con.cursor(bd.cursors.DictCursor)#n tenho certeza,mas e so pra definir q as tuplas do banco serao transformadas em dicionarios

# o objetivo das funçoes e sempre o msm :formar a string que  seja igual ao comando em sql relativo a funcao

def select(fields,tables,where=None):#fields recebe as strings com o nome das colunas
                                     # table=o nome das tabelas,pode ser mais de uma,
                                     # where é opcional,mas ai e so adicionar o predicado

    query='select ' + fields + " from  " + tables
    if where:
        query=query +' WHERE '+where
    c.execute(query)
    return c.fetchall()

def insert (values,table,fields=None):#values e uma lista com o valores para inserir
                                      #table e a tabela onde vai ser inserido  e fields os atributos da tabela
    query="insert into " + table
    if fields:
        query=query +' (' + fields +')'

    query=query + ' values ' +','.join(['(' + v +')' for v in values])

    c.execute(query)
    con.commit()

def update (sets,tables,where=None):#sets e um dicionario onde a chave é o atributo e ele recebe o novo valor
                                    #tables e where e do msm jeito q no select
    query ="update " + tables +" set "
    query = query + ','.join([fields+'='+"'"+values+"'" for fields,values in sets.items()])
    if where:
        query=query + " where " +where


    c.execute(query)
    con.commit()

def delete(table,where):#do msm jeito q no select
    query=" delete from  "+table+' where '+where

    c.execute(query)
    con.commit()
#exemplos
print(select('*','cursos'))

print('insere novo curso ')
insert(['"iot"'],'cursos','nome')
print(select('*','cursos','id_curso>1'))

print('atualiza o id_curso =2')
update({"nome":'Banco de dados'},'cursos','id_curso=2')
print(select('*','cursos'))

