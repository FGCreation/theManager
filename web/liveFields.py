from cgitb import html
from turtle import ht


def select(fieldName,displayName,opts,currentValue):
  options = ''
  for i in opts:
      if i != currentValue:
          options=options+f'<option>{i}</option>'
      else:
          options=options+f'<option selected="">{i}</option>'
  html = f'''<div class="form-group row">
                    <label
                      for="cono1"
                      class="col-sm-3 text-end control-label col-form-label"
                      >{displayName}</label
                    >
                    <div class="col-md-9">
                      <select
                        class="select2 form-select shadow-none"
                        style="width: 100%; height: 36px"
                        name="{fieldName}"
                      >
                        <optgroup>
                          {options}
                        </optgroup>
                      </select>
                    </div>
                  </div>'''
  return html

def textInpunt(fieldName,displayName,mdiIcon,currentValue):
    html = f'''<div class="form-group row">
                      <label
                        for="lname"
                        class="col-sm-3 text-end control-label col-form-label"
                        >{displayName}</label
                      >
                      <div class="col-lg-9 col-md-12">
                        <div class="input-group">
                          <div class="input-group-prepend">
                            <span class="input-group-text" id="basic-addon1"
                              ><i class="me-2 mdi {mdiIcon}"></i></span
                            >
                          </div>
                          <input
                            type="text"
                            class="form-control"
                            placeholder="Client Name"
                            aria-label="Username"
                            aria-describedby="basic-addon1"
                            name="{fieldName}"
                            value="{currentValue}"
                          />
                        </div>
                      </div>
                    </div>'''
    return html


def create_html(cData,cFieldData):
  html = ''
  if cData == {}:
    for i in cData:
      if cFieldData[i][3] == 'text':
        html = html+textInpunt(cFieldData[i][1],cFieldData[i][2],cFieldData[i][5],cData[i])
      elif cFieldData[i][3] == 'select':
        html = html+select(cFieldData[i][1],cFieldData[i][2],cFieldData[i][4].split(','),cData[i])
  else:
    for i in cFieldData:
      if cFieldData[i][3] == 'text':
        html = html+textInpunt(cFieldData[i][1],cFieldData[i][2],cFieldData[i][5],cData[i])
        print('gg')
      elif cFieldData[i][3] == 'select':
        html = html+select(cFieldData[i][1],cFieldData[i][2],cFieldData[i][4].split(','),cData[i])
        print('gg')
  return html

#print(create_html({'fileNo':'13','year':'2022-23','TDS':'Yes'},{'fileNo':['1','fileNo','File Number','text','','mdi-file-document'],'year':['1','year','Year','text','','mdi-calendar-range'],'TDS':['1','TDS','TDS','select','Yes,NO','']}))