(function () {
    $('.wrap_top').load('wrap_top.html');
    $('.head').load('head.html', function () {
        //渲染左侧一级导航栏
        let p = new Promise(function (resolve) {
            $.ajax({
                type: 'get',
                url: '../api/data.json',
                success: str => {
                    resolve(str);
                }
            });
        });
        p.then(function (data) {
            let str = data.map(item => {
                return `<li class="nav-bottom-li" data-id="${item.id}"><a href="###">${item.title}<a></li>`;
            }).join('');
            $('.nav-bottom-list').html(str);
        });

        //划过左侧一级导航栏 渲染右侧相应二级导航栏
        $('.nav-bottom-list').on('mouseover', 'li', function () {
            $('.nav-content').show();
            let n = $(this).attr('data-id');
            //当前li高亮排他
            $(this).addClass('active').siblings().removeClass('active');
            let p = new Promise(function (resolve) {
                $.ajax({
                    type: 'get',
                    url: '../api/data.json',
                    success: str => {
                        resolve(str);
                    }
                });
            });
            p.then(function (data) {
                let str2 = '';//二级导航栏小标题
                let str3 = '';//二级导航栏内容
                let str = data.map(item => {
                    //根据绑定id值判断划过哪个数据，找相应数据渲染，其余不渲染
                    if (item.id == n) {
                        //拼接小标题+内容
                        str2 = item.content.map(item => {
                            //拼接内容
                            str3 = item.content.map(item => {
                                return `<a href="###">${item}</a>`;
                            }).join('');
                            return `<dt>  
                                    <a href="###">${item.title}</a>
                                    <i>></i>
                                </dt>
                                <dd>
                                    ${str3}
                                </dd>`;
                        }).join('');
                        //拼接右侧二级导航栏
                        return `<dl class="${item.id}">
                                ${str2}
                            </dl >`;
                    }
                }).join('');
                //渲染到右侧二级导航栏
                $('.nav-content').html(str);
            });
        });

        $('.nav-bottom').mouseleave(function () {
            $('.nav-content').hide();
            $('.nav-bottom').find('.nav-bottom-li').removeClass('active');
        });

        $('.nav1').mouseenter(function () {
            $('.nav-bottom-list').show();
            $('.nav-top').css('background', '#333');
        }).mouseleave(function () {
            $('.nav-bottom-list').hide();
            $('.nav-top').css('background', '#333 url(../css/img/nav_b_bg.jpg) no-repeat 203px center');
        });

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
                        // console.log(str)
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

    });
    $('.foot').load('foot.html');
    $('.tanchuang').load('tanchuang.html');
})();