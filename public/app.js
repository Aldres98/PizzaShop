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

    // Вывод количества товаров в корзине (алертом)
    alert('Items in your cart: ' + cart_get_number_of_items())

}

function cart_get_number_of_items()
{
    var cnt = 0

    for(var i = 0; i < window.localStorage.length; i++)
    {
        var key = window.localStorage.key(i); // получаем ключ
        var value = window.localStorage.getItem(key); // Получаем значение по ключу

        if(key.indexOf('product_') == 0)

        {

            cnt = cnt + value * 1;

        }

    }

    return cnt;

}