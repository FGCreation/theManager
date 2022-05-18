import mysql
import mysql.connector
from . import creds
from datetime import date,datetime
db = mysql.connector.connect(host=creds.host, user=creds.user, passwd=creds.passwd,database=creds.database)
cursor = db.cursor(buffered=True)

client_info_collums = []
client_info = []

def client_info_collums():
    client_info_collum = []
    db2 = mysql.connector.connect(host=creds.host, user=creds.user, passwd=creds.passwd,database=creds.database)
    cursor2 = db2.cursor(buffered=True)
    cursor2.execute("SHOW COLUMNS FROM `clientList`")
    for i in cursor2.fetchall():
        client_info_collum.append(i[0])
    return client_info_collum
def client_in(yr):
    db2 = mysql.connector.connect(host=creds.host, user=creds.user, passwd=creds.passwd,database=creds.database)
    cursor2 = db2.cursor(buffered=True)
    cursor2.execute(f"SELECT * FROM `clientList` WHERE year='{yr}'")
    client_info = cursor2.fetchall()
    return client_info
def clntDlt(cid,unm):
    db2 = mysql.connector.connect(host=creds.host, user=creds.user, passwd=creds.passwd,database=creds.database)
    cursor2 = db2.cursor(buffered=True)
    cursor2.execute(f"DELETE FROM `clientList` WHERE id='{cid}'")
    cdt = cdataForDynamic(cid)
    log(unm,f"""{unm} deleted {cdt['name']} from Client database""")
    db2.commit()
    return True
def users():
    client_info_collum = []
    db2 = mysql.connector.connect(host=creds.host, user=creds.user, passwd=creds.passwd,database=creds.database)
    cursor2 = db2.cursor(buffered=True)
    cursor2.execute("SELECT * FROM `users`")
    user = cursor2.fetchall()
    return user
def years():
    db2 = mysql.connector.connect(host=creds.host, user=creds.user, passwd=creds.passwd,database=creds.database)
    cursor2 = db2.cursor(buffered=True)
    cursor2.execute("SELECT year FROM `clientList`")
    year = list(set(cursor2.fetchall()))
    return year
def log(unm,act):
    db2 = mysql.connector.connect(host=creds.host, user=creds.user, passwd=creds.passwd,database=creds.database)
    cursor2 = db2.cursor(buffered=True)
    q = f"INSERT INTO log (uname,action) VALUES ('{unm}','{act}')"
    cursor2.execute(q)
    db2.commit()
    return True
def grabGroups():
    db2 = mysql.connector.connect(host=creds.host, user=creds.user, passwd=creds.passwd,database=creds.database)
    cursor2 = db2.cursor(buffered=True)
    q = f"SELECT groupName FROM groups"
    cursor2.execute(q)
    grps = cursor2.fetchall()
    db2.commit()
    return grps
def grebGroup(id):
    db2 = mysql.connector.connect(host=creds.host, user=creds.user, passwd=creds.passwd,database=creds.database)
    cursor2 = db2.cursor(buffered=True)
    q = f"SELECT groupName FROM groups WHERE id='{id}'"
    cursor2.execute(q)
    grps = cursor2.fetchall()
    db2.commit()
    return grps
def cdataForDynamic(cid):
    db2 = mysql.connector.connect(host=creds.host, user=creds.user, passwd=creds.passwd,database=creds.database)
    cursor2 = db2.cursor(buffered=True)
    q = f"DESCRIBE clientList;"
    cursor2.execute(q)
    temp_clms = cursor2.fetchall()
    clms = []
    for i in temp_clms:
        clms.append(i[0])
    q = f"SELECT * FROM clientList WHERE id={cid}"
    cursor2.execute(q)
    cdt = dict(zip(clms,list(cursor2.fetchall()[0])))
    db2.commit()
    return cdt
def cClmDataForDynamic():
    db2 = mysql.connector.connect(host=creds.host, user=creds.user, passwd=creds.passwd,database=creds.database)
    cursor2 = db2.cursor(buffered=True)
    q = f"SELECT * FROM clientListField;"
    cflst = {}
    cursor2.execute(q)
    Tcflst = cursor2.fetchall()
    for i in Tcflst:
        cflst[str(i[1])] = list(i)
    return cflst
def cFieldData():
    db2 = mysql.connector.connect(host=creds.host, user=creds.user, passwd=creds.passwd,database=creds.database)
    cursor2 = db2.cursor(buffered=True)
    q = f"DESCRIBE clientListField;"
    cursor2.execute(q)
    tffields = cursor2.fetchall()
    ffields = []
    for i in tffields:
        ffields.append(i[0])
    q = f"SELECT * FROM clientListField;"
    cursor2.execute(q)
    cFields = cursor2.fetchall()
    db2.commit()
    return cFields
def adtFieldData():
    db2 = mysql.connector.connect(host=creds.host, user=creds.user, passwd=creds.passwd,database=creds.database)
    cursor2 = db2.cursor(buffered=True)
    q = f"DESCRIBE auditListField;"
    cursor2.execute(q)
    tffields = cursor2.fetchall()
    ffields = []
    for i in tffields:
        ffields.append(i[0])
    q = f"SELECT * FROM auditListField;"
    cursor2.execute(q)
    cFields = cursor2.fetchall()
    db2.commit()
    return cFields
def insertField(usr,fname,dName,fType,fOpt,Icon):
    db2 = mysql.connector.connect(host=creds.host, user=creds.user, passwd=creds.passwd,database=creds.database)
    cursor2 = db2.cursor(buffered=True)
    if Icon != '':
        q = f"INSERT INTO clientListField(fieldName, displayName, fieldType, fieldOpt) VALUES ('{fname}','{dName}','{fType}','{fOpt}')"
    else:
        q = f"INSERT INTO clientListField(fieldName, displayName, fieldType, fieldOpt, mdiIcon) VALUES ('{fname}','{dName}','{fType}','{fOpt}','{Icon}')"
    log(usr,f'{usr} inserted field "{dName}" in Client colum database - ("{fname}","{dName}","{fType}","{fOpt}","{Icon}")')
    cursor2.execute(q)
    q = f"ALTER TABLE `clientList` ADD `{fname}` VARCHAR(255) NULL DEFAULT NULL"
    cursor2.execute(q)
    db2.commit()
    return q
def insertAdtField(usr,fname,dName,fType,fOpt,Icon):
    db2 = mysql.connector.connect(host=creds.host, user=creds.user, passwd=creds.passwd,database=creds.database)
    cursor2 = db2.cursor(buffered=True)
    if Icon != '':
        q = f"INSERT INTO auditListField(fieldName, displayName, fieldType, fieldOpt) VALUES ('{fname}','{dName}','{fType}','{fOpt}')"
    else:
        q = f"INSERT INTO auditListField(fieldName, displayName, fieldType, fieldOpt, mdiIcon) VALUES ('{fname}','{dName}','{fType}','{fOpt}','{Icon}')"
    log(usr,f'{usr} inserted field "{dName}" in Audit colum database - ("{fname}","{dName}","{fType}","{fOpt}","{Icon}")')
    cursor2.execute(q)
    q = f"ALTER TABLE `audit` ADD `{fname}` VARCHAR(255) NULL DEFAULT NULL"
    cursor2.execute(q)
    db2.commit()
    return q
def dltCClm(cid,usr):
    db2 = mysql.connector.connect(host=creds.host, user=creds.user, passwd=creds.passwd,database=creds.database)
    cursor2 = db2.cursor(buffered=True)
    q = f"SELECT fieldName FROM clientListField WHERE id='{cid}'"
    cursor2.execute(q)
    cname = cursor2.fetchall()
    q = f"DELETE FROM clientListField WHERE id='{cid}'"
    cursor2.execute(q)
    q=f"ALTER TABLE clientList DROP COLUMN {cname[0][0]}"
    print ([q,'>>>>>>>>>>>>>>>>>>>>'])
    cursor2.execute(q) 
    db2.commit()
    return [cname,'>>>>>>>>>>>>>>>>>>>>']
def dltAdtClm(cid,usr):
    db2 = mysql.connector.connect(host=creds.host, user=creds.user, passwd=creds.passwd,database=creds.database)
    cursor2 = db2.cursor(buffered=True)
    q = f"SELECT fieldName FROM auditListField WHERE id='{cid}'"
    cursor2.execute(q)
    cname = cursor2.fetchall()
    q = f"DELETE FROM auditListField WHERE id='{cid}'"
    cursor2.execute(q)
    q=f"ALTER TABLE audit DROP COLUMN {cname[0][0]}"
    print ([q,'>>>>>>>>>>>>>>>>>>>>'])
    cursor2.execute(q) 
    db2.commit()
    return [cname,'>>>>>>>>>>>>>>>>>>>>']
def updtCdt(usr,q2,uData):
    db2 = mysql.connector.connect(host=creds.host, user=creds.user, passwd=creds.passwd,database=creds.database)
    cursor2 = db2.cursor(buffered=True)
    q = q2
    cursor2.execute(q)
    db2.commit()
    print(usr,str(uData))
    log(usr,f"""{usr} updated {str(uData).replace("'",'"')} in Client Database""")
    print('>>><<<')
    return q
def getUsrs():
    db2 = mysql.connector.connect(host=creds.host, user=creds.user, passwd=creds.passwd,database=creds.database)
    cursor2 = db2.cursor(buffered=True)
    q = f"DESCRIBE users;"
    cursor2.execute(q)
    tffields = cursor2.fetchall()
    q = f"SELECT * FROM users;"
    cursor2.execute(q)
    cFields = cursor2.fetchall()
    db2.commit()
    return [tffields,cFields]
def dltUsr(uid):
    db2 = mysql.connector.connect(host=creds.host, user=creds.user, passwd=creds.passwd,database=creds.database)
    cursor2 = db2.cursor(buffered=True)
    q = f"DELETE FROM users WHERE id='{uid}'"
    cursor2.execute(q)
    db2.commit()
    return q
def addUsr(uname,pswd,role):
    db2 = mysql.connector.connect(host=creds.host, user=creds.user, passwd=creds.passwd,database=creds.database)
    cursor2 = db2.cursor(buffered=True)
    q = f"INSERT INTO users (`username`, `password`, `role`) VALUES ('{uname}','{pswd}','{role}')"
    cursor2.execute(q)
    db2.commit()
    return q
def getAuditors():
    db2 = mysql.connector.connect(host=creds.host, user=creds.user, passwd=creds.passwd,database=creds.database)
    cursor2 = db2.cursor(buffered=True)
    q = f"DESCRIBE auditors;"
    cursor2.execute(q)
    tffields = cursor2.fetchall()
    q = f"SELECT * FROM auditors;"
    cursor2.execute(q)
    cFields = cursor2.fetchall()
    db2.commit()
    return [tffields,cFields]
def addAudt(name):
    db2 = mysql.connector.connect(host=creds.host, user=creds.user, passwd=creds.passwd,database=creds.database)
    cursor2 = db2.cursor(buffered=True)
    q = f"INSERT INTO auditors (`name`) VALUES ('{name}')"
    cursor2.execute(q)
    db2.commit()
    return q
def dltAudtr(aid):
    db2 = mysql.connector.connect(host=creds.host, user=creds.user, passwd=creds.passwd,database=creds.database)
    cursor2 = db2.cursor(buffered=True)
    q = f"DELETE FROM auditors WHERE id='{aid}'"
    cursor2.execute(q)
    db2.commit()
    print('>>>>>>>>>>',q)
    return q
def getArtcls():
    db2 = mysql.connector.connect(host=creds.host, user=creds.user, passwd=creds.passwd,database=creds.database)
    cursor2 = db2.cursor(buffered=True)
    q = f"DESCRIBE articles;"
    cursor2.execute(q)
    tffields = cursor2.fetchall()
    q = f"SELECT * FROM articles;"
    cursor2.execute(q)
    cFields = cursor2.fetchall()
    db2.commit()
    return [tffields,cFields]
def addArtcl(name):
    db2 = mysql.connector.connect(host=creds.host, user=creds.user, passwd=creds.passwd,database=creds.database)
    cursor2 = db2.cursor(buffered=True)
    q = f"INSERT INTO articles (`name`) VALUES ('{name}')"
    cursor2.execute(q)
    db2.commit()
    return q
def dltArtcl(aid):
    db2 = mysql.connector.connect(host=creds.host, user=creds.user, passwd=creds.passwd,database=creds.database)
    cursor2 = db2.cursor(buffered=True)
    q = f"DELETE FROM articles WHERE id='{aid}'"
    cursor2.execute(q)
    db2.commit()
    print('>>>>>>>>>>',q)
    return q
#print(dataForDynamic(1))
db.commit()
cursor.close()
db.close()
