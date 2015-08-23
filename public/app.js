function something()
{
	var x = window.localStorage.getItem('aaa');

	x = x*1 + 1

	window.localStorage.setItem('aaa', x);

	alert(x)
}

function add_to_cart(id)
{
	var key = 'product_' + id

	var x = window.localStorage.getItem(key)
	x = x * 1 + 1
	window.localStorage.setItem(key, x)

	update_orders_input();
}

function update_orders_input()
{
	var orders = cart_get_orders();
	$('#orders_input').val(orders);
}

function cart_get_orders()
{
	var orders = '';

	for(var i = 0; i < window.localStorage.length; i++)
	{
			var key = window.localStorage.key(i); // получаем ключ
			var value = window.localStorage.getItem(key); // получаем значение 

		if(key.indexOf('product_') == 0)
		{
			orders = orders + key + '=' + value + ';';
		}
	}

	return orders;
}