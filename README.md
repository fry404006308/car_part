# car_part
简单的停车场系统

## 效果图
![preview.gif](https://github.com/fry404006308/car_part/blob/master/demo-apps-master/imgs/preview.gif) 

## 路由
```php
Route::group(['prefix' => 'car-park'], function () {
    Route::post('pay', 'CarParkController@pay');
    Route::post('order', 'CarParkController@order');
});