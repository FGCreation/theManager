function tSearch(){
    let input,filter,tbl,tr,td,txtValue;
    input = document.getElementById("tblsrch");
    filter = input.value.toUpperCase();
    tbl = document.getElementById("zero_config");
    tr = document.getElementsByTagName("tr");
    if (filter.length == 10){
        console.log(1)
        for (i=0; i<tr.length; i++){
        td = tr[i].getElementsByTagName('td')[14];
        if (td){
            txtValue = td.textContent || td.innerText;
            if (txtValue.toUpperCase().indexOf(filter)>-1){
            tr[i].style.display = "";
            }
            else{
            tr[i].style.display = "none";
            }
        }
        }
    }
    else if (Number(filter) != NaN && String(Number(filter))==String(filter)){
        console.log(2)
        for (i=0; i<tr.length; i++){
        td = tr[i].getElementsByTagName('td')[2];
        if (td){
            txtValue = td.textContent || td.innerText;
            if (txtValue.toUpperCase().indexOf(filter)>-1){
            tr[i].style.display = "";
            }
            else{
            tr[i].style.display = "none";
            }
        }
        }
    }else{
        console.log(3)
        for (i=0; i<tr.length; i++){
        td = tr[i].getElementsByTagName('td')[4];
        if (td){
            txtValue = td.textContent || td.innerText;
            if (txtValue.toUpperCase().indexOf(filter)>-1){
            tr[i].style.display = "";
            }
            else{
            tr[i].style.display = "none";
            }
        }
        }
    }
    }

function dltClnt(id){
    var xmlHttp = new XMLHttpRequest();
    xmlHttp.open( "GET", '/delete-client/'+id, false ); // false for synchronous request
    xmlHttp.send( null );
    console.log(xmlHttp.responseText);
}

function addField(){
    x = 'gg'
}
