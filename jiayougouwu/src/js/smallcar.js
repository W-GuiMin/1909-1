//判断小购物车显示内容

let uid = getcookie('uid');
$('#car').mouseenter(function () {
    $('.biao').show();
    $('#ware_list').show();
    if (uid) {//登录
        $('#car_yes').show();
        $('#car_no').hide();
        $.ajax({
            type: 'post',
            url: '../api/car.php',
            dataType: 'json',
            data: {
                name: uid
            },
            success: str => {
                cretCar(str);
                console.log(str)
            }
        });
        function cretCar(data) {
            let str = data.map(item => {
                let totals = (item.price * item.goodnum).toFixed(2);
                let imgUrl = item.url2.split(',');
                return `<li>
                            <a href="##" class="product">
                                <img src="${imgUrl[0]}" alt="">
                                <p>${item.title}</p>
                            </a>
                            <span>${item.price} X ${item.goodnum}<a href="##" class="delete">待付款</a></span>
                        </li>`;
            }).join('');
            $('#waresList').html(str);
        }
    } else {
        $('#car_yes').hide();
        $('#car_no').show();
    }
});

$('#car').mouseleave(function () {
    $('.biao').hide();
    $('#ware_list').hide();
});
$('#btnCart').click(function () {
    window.open('car.html');
});
