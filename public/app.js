function something()
{

	var x = window.localStorage.getItem('bbb'); // x = hh['bbb']

	x = x * 1 + 1;

	window.localStorage.setItem('bbb', x); // hh['bbb'] = x 

	alert(x);
}

function add_to_cart(id)
{
    var key = 'product_' + id;

    var x = window.localStorage.getItem(key);
    x = x * 1 + 1;
    window.localStorage.setItem(key, x);

    for (var i=0, len=localStorage.length; i<len; i++ )
    {
        var show_key = localStorage.key(i);
        var show_value = localStorage[show_key];
        console.log(show_key + "=> " + show_value);
    }

}