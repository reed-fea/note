## 发票相关

url: `/getXXX` 获取子订单2个信息, get请求，query传参
query:
```
orderItemSn: xxx // 订单ID
```
response:
```
{
  productXXXType: 1, // 订单商品类型，1.电动自行车，2.电动摩托车，3.配件、衍生品，4.加工修理
  totalAmount: 99.99, // 发票可开金额
}
```
