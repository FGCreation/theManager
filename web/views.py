from flask import Blueprint,request,session,redirect
from flask import render_template
from . import mysqlDB
from . import liveFields

routes = Blueprint('Routes',__name__)

@routes.route('/')
def home():
    if "masteruser" in session or "regularuser" in session:
        yrs = mysqlDB.years()
        return render_template("index.html",years=yrs)
    else:
        return redirect("/login",code=302)

@routes.route('/clients/<path:path>')
def clients(path):
    mysqlDB.yr = path
    if "masteruser" in session or "regularuser" in session:
        cI=mysqlDB.client_in(path)
        cIC= mysqlDB.client_info_collums()
        yrs = mysqlDB.years()
        return render_template("clients.html",c_yr=path,client_collum_info=cIC,client_info=cI,client_info_length=len(cI[0]),years=yrs)
    else:
        return redirect("/login",code=302)


@routes.route('/login/',methods=['POST','GET'])
def login():
    if "masteruser" in session or "regularuser" in session:
        return redirect("/",code=302)
    elif request.method == "POST":
        auth = "wrong"
        for i in mysqlDB.users():
            if i[1] == request.form["uname"]:
                if i[2] == request.form["pass"]:
                    session[f'{i[3]}user']=i[1]
                    auth = "Right"
                    return redirect("/",code=302)
        return render_template("login.html",auth=auth)
    else:
        return render_template("login.html",auth="None")

@routes.route('/logout/')
def logout():
    if 'masteruser' in session:
        session.pop('masteruser',None)
        return redirect('/login',code=302)
    if 'regularuser' in session:
        session.pop('regularuser',None)
        return redirect('/login',code=302)
    else:
        return redirect('/login',code=302)

@routes.route('/delete-client/<cid>',methods=['GET','POST'])
def dltClnt(cid):
        if "masteruser" in session or "regularuser" in session:
            try:
                unm = session['masteruser']
            except:
                unm = session['regularuser']
            mysqlDB.clntDlt(cid,unm)
            return unm
        else:
            return redirect("/",code=302)

@routes.route('/updtcdt/',methods=['POST'])
def clntMng():
    if 'masteruser' in session or 'regularuser' in session:
        cClmdt = mysqlDB.cClmDataForDynamic()
        updtedCdt = {}
        for i in cClmdt:
            updtedCdt[i] = request.form[i]
        q = f"UPDATE `clientList` SET ^k^='^v^' WHERE id='{request.form['cid']}'"
        for i in updtedCdt:
            if i != list(updtedCdt.keys())[0]:
                q=q.replace(",^k^='^v^'",f",{i}='{updtedCdt[i]}',^k^='^v^'")
            elif i == list(updtedCdt.keys())[-1]:
                q=q.replace("^k^='^v^'",f"{i}='{updtedCdt[i]}'")
            else:
                q=q.replace("^k^='^v^'",f"{i}='{updtedCdt[i]}',^k^='^v^'")
        q=q.replace("^k^='^v^'","")
        q=q.replace(", WHERE"," WHERE")
        try:
            usr = session['masteruser']
        except:
            usr = session['regularuser']
        mysqlDB.updtCdt(usr,q,list(updtedCdt.values()))
    return redirect(f"/modify-client/edit/{request.form['cid']}",code=302)

@routes.route('/modify-client/<mType>/', methods=['GET','POST'])
@routes.route('/modify-client/<mType>/<cid>',methods=['GET','POST'])
def mdfyClnt(cid,mType):
    if 'masteruser' in session or 'regularuser' in session:
        if mType=='edit' and cid!=None and request.method == "GET":
            cdt = mysqlDB.cdataForDynamic(cid)
            yrs = mysqlDB.years()
            try:
                cdt['groupName']=mysqlDB.grebGroup(cdt['groupName'])[0][0]
            except:
                pass
            cClmdt = mysqlDB.cClmDataForDynamic()
            mdfyForm = liveFields.create_html(cdt,cClmdt)
    return render_template('edit.html',htm=mdfyForm,years=yrs,cid=cid,cname=cdt['name'])
@routes.route('/clients-db-management/delete/<cid>/',methods=['GET','POST'])
def dlt(cid):
    if 'masteruser' in session:
        try:
            usr = session['masteruser']
        except:
            usr = session['regularuser']
        gg = mysqlDB.dltCClm(cid,usr)
    return redirect("/clients-db-management/",code=302)

@routes.route('/clients-db-management/',methods=['GET','POST'])
def mngClientDb():
    if 'masteruser' in session:
        if request.method == 'GET':
            yrs = mysqlDB.years()
            return render_template('clientDb.html',years=yrs,fieldData=mysqlDB.cFieldData())
        if request.method == 'POST':
            try:
                usr = session['regularuser']
            except:
                usr = session['masteruser']
            mysqlDB.insertField(usr,request.form['fName'],request.form['dName'],request.form['fType'],request.form['opts'],request.form['icon'])
            return redirect("/clients-db-management/",code=302)

@routes.route('/users/',methods=['GET','POST'])
def users():
    if 'masteruser' in session:
        if request.method == "POST":
            mysqlDB.addUsr(request.form['uname'],request.form['pass'],request.form['role'])
            return redirect("/users/",code=302)
        else:
            gg = mysqlDB.getUsrs()
            yrs = mysqlDB.years()
            return render_template('users.html',user_clms=gg[0],users=gg[1],years=yrs)

@routes.route('/users/delete/<cid>',methods=['GET','POST'])
def dltUsers(cid):
    if 'masteruser' in session:
        mysqlDB.dltUsr(cid)
        gg = mysqlDB.getUsrs()
        return redirect("/users/",code=302)

@routes.route('/auditors/')
def adtrs():
    if "masteruser" in session:
        yrs = mysqlDB.years()
        audt = mysqlDB.getAuditors()
        return render_template('auditors.html',years=yrs,audtrs=audt[1],audtclmns=audt[0])
    else:
        return redirect("/login",code=302)
@routes.route('/auditors/<type>/<aid>',methods=['POST','GET'],)
@routes.route('/auditors/<type>/',methods=['POST','GET'])
def audtEdit(type,aid=''):
    if "masteruser" in session:
        if type=='add':
            mysqlDB.addAudt(request.form['name'])
        if type=='delete':
            mysqlDB.dltAudtr(aid)
        return redirect("/auditors/",code=302)
    else:
        return redirect("/login",code=302)

@routes.route('/articles/')
def artcls():
    if "masteruser" in session:
        yrs = mysqlDB.years()
        audt = mysqlDB.getArtcls()
        return render_template('articles.html',years=yrs,artcls=audt[1],artclClmns=audt[0])
    else:
        return redirect("/login",code=302)
@routes.route('/articles/<type>/<aid>',methods=['POST','GET'],)
@routes.route('/articles/<type>/',methods=['POST','GET'])
def artclsEdit(type,aid=''):
    if "masteruser" in session:
        if type=='add':
            mysqlDB.addArtcl(request.form['name'])
        if type=='delete':
            mysqlDB.dltArtcl(aid)
        return redirect("/articles/",code=302)
    else:
        return redirect("/login",code=302)
@routes.route('/clients/<yr>/<cid>')
def abtCl(cid,yr):
    if "masteruser" in session or "regularuser" in session:
        cdt = mysqlDB.cdataForDynamic(cid)
        yrs = mysqlDB.years()
        return render_template('abtClient.html',years=yrs,cdt=cdt,c_yr=yr)
    else:
        return redirect("/login",code=302)
@routes.route('/clients/<yr>/<cid>/<work>')
def mngWork(cid,yr,work):
    if "masteruser" in session or "regularuser" in session:
        yrs = mysqlDB.years()
        return render_template('abtClient.html',years=yrs,cdt=cdt,c_yr=yr)
    else:
        return redirect("/login",code=302)
@routes.route('/audit-db-management/',methods=['GET','POST'])
def adtClientDb():
    if 'masteruser' in session:
        if request.method == 'GET':
            yrs = mysqlDB.years()
            return render_template('auditDb.html',years=yrs,fieldData=mysqlDB.adtFieldData())
        if request.method == 'POST':
            try:
                usr = session['regularuser']
            except:
                usr = session['masteruser']
            mysqlDB.insertAdtField(usr,request.form['fName'],request.form['dName'],request.form['fType'],request.form['opts'],request.form['icon'])
            return redirect("/audit-db-management/",code=302)
@routes.route('/audit-db-management/delete/<cid>/',methods=['GET','POST'])
def audtDb(cid):
    if 'masteruser' in session:
        try:
            usr = session['masteruser']
        except:
            usr = session['regularuser']
        gg = mysqlDB.dltAdtClm(cid,usr)
    return redirect("/audit-db-management/",code=302)