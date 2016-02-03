function PrintElem(elem)
{
    Popup($(elem).html());
}

function Popup(data, document) 
{
    
    var win = window.open("", '_blank');
    win.document.write('<html><head><title>my div</title>');
    /*optional stylesheet*/ //win.document.write('<link rel="stylesheet" href="main.css" type="text/css" />');
    win.document.write('</head><body >');
    win.document.write(data);
    win.document.write('</body></html>');

    win.document.close(); // necessary for IE >= 10
    win.focus(); // necessary for IE >= 10

    win.print();
    win.close();

    return true;
}