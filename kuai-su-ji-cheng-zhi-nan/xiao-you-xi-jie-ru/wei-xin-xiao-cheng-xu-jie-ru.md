# 微信小游戏

## 一、接入流程

### 1.申请参数

联系动能商务人员获取产品参数。包括：

* 动能的Appid
* 微信的Appid
* 阿拉丁的app\_key

需确保在微信后台配置以下request域名地址：

* [https://log.aldwx.com](https://log.aldwx.com)
* [https://api.vzhifu.net](https://api.vzhifu.net)
* [https://tj.vzhifu.net](https://tj.vzhifu.net)
* [https://a.vigame.cn](https://a.vigame.cn)

### 2.导入SDK

1\)下载SDK压缩包，解压至本地目录。

[1.0下载](http://dnsdk.oss-cn-shenzhen.aliyuncs.com/wechat/1.0/dnsdk.zip)

Demo克隆地址（Creator2.2.0制作）：

[http://gitblit.vigame.cn:6300/r/WechatDemo-Creator.git](http://gitblit.vigame.cn:6300/r/WechatDemo-Creator.git)

2\)将"dnsdk.js"文件引入到项目中。

注：建议导入到公用头部，确保项目环境能访问到TrackingIO工具类。

3\)接入阿拉丁SDK。

> 参考： [http://doc.aldwx.com/aldwx/src/game.html](http://doc.aldwx.com/aldwx/src/game.html) 的“一、接入SDK”部分。
>
> 注：只需要引入sdk部分，不需要调用接口。

### 3.接入SDK方法

详见“二、接入方法说明”

### 4.测试

查看输出，有服务器数据输出即表示接入成功。

![image](http://dnsdk.oss-cn-shenzhen.aliyuncs.com/wechat/%E8%BE%93%E5%87%BA.png)

## 二、接入方法说明

### 1.初始化SDK

方法接口：

```text
dnsdk.init(appid);
```

参数说明：

| 参数 | 描述 | 参数类型 | 长度 | 是否必传 |
| :--- | :--- | :--- | :--- | :--- |
| appid | 产品ID | String |  | 是 |

示例代码：

```javascript
dnsdk.init("10000");
```

### 2.分享接口

> 将微信的wx.onShareAppMessage替换成dnsdk.onShareAppMessage

方法接口：

```javascript
dnsdk.onShareAppMessage(func);
```

示例代码：

```javascript
//分享，监听用户点击右上角菜单的“转发”按钮时触发的事件
  dnsdk.onShareAppMessage(function(){
    return {
      imageUrl : 'https://favicon.yandex.net/favicon/aldwx.com', //转发显示图片的链接
      title    : '分享title', //转发标题
      query    : 'id=89&select=2'//查询字符串，必须是 key1=val1&key2=val2 的格式。从这条转发消息进入后，可通过 wx.getLaunchOptionSync() 或 wx.onShow() 获取启动参数中的 query。
    }
  })
```

方法接口：

```javascript
dnsdk.shareAppMessage(object);
```

> 将微信的wx.shareAppMessage替换成dnsdk.shareAppMessage

示例代码：

```javascript
// 分享，主动拉起转发，进入选择通讯录界面
  dnsdk.shareAppMessage({
    imageUrl : 'https://favicon.yandex.net/favicon/aldwx.com',//转发标题
    title    : '分享title',//转发标题
    query    : 'id=89&select=2'//查询字符串，必须是 key1=val1&key2=val2 的格式。从这条转发消息进入后，可通过 wx.getLaunchOptionSync() 或 wx.onShow() 获取启动参数中的 query。
  })
```

### 3.自定义事件统计

方法接口：

```text
dnsdk.tj.sendEvent(eventId, object);
```

参数说明：

| 参数 | 描述 | 参数类型 | 长度 | 是否必传 |
| :--- | :--- | :--- | :--- | :--- |
| eventId | 事件名称 | String | 不超过255个字符 | 是 |
| object | 事件参数 | Object |  | 是 |

示例代码：

```javascript
dnsdk.tj.sendEvent('事件名称',{'参数key' : '参数value'})
```

### 4.关卡统计

> 此接口用于追踪玩家对关卡的完成情况等

方法接口：

```text
//关卡开始
dnsdk.tj.onStart(object)
//关卡进行中
dnsdk.tj.onRunning(object)
//关卡结束
dnsdk.tj.onEnd(object)
```

#### dnsdk.tj.onStart关卡开始

| 参数 | 描述 | 参数类型 | 规则 | 是否必传 |
| :--- | :--- | :--- | :--- | :--- |
| stageId | 关卡ID | String | 1 , 2 , 3 , 1.1 , 1.2 , 1.3 格式 最多支持 32 个字符 | 是 |
| stageName | 关卡名称 | String | 最多支持 32 个字符 | 是 |
| userId | 用户名称 | String | 最多支持 32 个字符 | 否 |

示例代码：

```javascript
dnsdk.tj.onStart({
  stageId : "1.1", //关卡ID， 必须是1 || 2 || 1.1 || 12.2 格式  该字段必传
  stageName : "第一大关-第一小关",//关卡名称，该字段必传
  userId  : "123456" //用户ID
})
```

#### dnsdk.tj.onRunning捕捉用户在关卡中的一些行为和操作

| 参数 | 描述 | 参数类型 | 规则 | 是否必传 |
| :--- | :--- | :--- | :--- | :--- |
| stageId | 关卡ID | String | 1 , 2 , 3 , 1.1 , 1.2 , 1.3 格式 最多支持 32 个字符 | 是 |
| stageName | 关卡名称 | String | 最多支持 32 个字符 | 是 |
| userId | 用户名称 | String | 最多支持 32 个字符 | 否 |
| event | 时间类型 | String | payStart:发起支付 paySuccess:支付成功 payFail:支付失败 tools:使用道具 revive:复活 award:奖励 | 否 |
| params | 事件参数 | Object | 否 |  |
| params.itemName | 商品/道具名称 | String | “屠龙刀” | 是 |
| params.itemId | 商品/道具ID    String | "123" | 否 |  |
| params.itemCount | 商品/道具数量 | Number | 1 | 否 默认:1 |
| params.desc | 描述 | String | “+9屠龙刀” | 否 |
| params.itemMoney | 商品/道具价格 | Number | 12 | 否 默认:0 |

示例代码：

```javascript
// 在关卡中使用道具
dnsdk.tj.onRunning({
  stageId : "1.1",
  stageName : "第一大关-第一小关",
  userId : "123456",
  event : "tools",
  params : {
    itemName : "火力加强",

  }
})
```

#### dnsdk.tj.onEnd 关卡结束

| 参数 | 描述 | 参数类型 | 规则 | 是否必传 |  |
| :--- | :--- | :--- | :--- | :--- | :--- |
| stageId | 关卡ID | String | 1 , 2 , 3 , 1.1 , 1.2 , 1.3 格式 | 最多支持 32 个字符 | 是 |
| stageName | 关卡名称 | String | 最多支持 32 个字符 | 是 |  |
| userId | 用户ID | String | 最多支持 32 个字符 | 否 |  |
| event | 事件类型 | String | complete:关卡完成 fail:关卡失败 | 是 |  |
| params | 事件参数 | Object |  |  |  |
| params.desc | 描述 | String | 对关卡失败/成功的描述 | 否 |  |

示例代码：

```javascript
//关卡完成
dnsdk.tj.onEnd({
  stageId : "1",    //关卡ID 该字段必传
  stageName : "第一关", //关卡名称  该字段必传
  userId : "06_bmjrPtlm6_2sgVt7hMZOPfL2M",  //用户ID 可选
  event : "complete",   //关卡完成  关卡进行中，用户触发的操作    该字段必传
  params : {
    desc : "关卡完成"   //描述
  }
})
```

### 5.互推接口

#### 5.1 监听互推数据获取成功

方法接口:

```javascript
dnsdk.onDataReceived(func)
```

示例代码：

```javascript
 dnsdk.onDataReceived(function (data) {
        dnsdk.log(data);
    });
```

#### 5.2 使用互推数据

方法接口:

```javascript
dnsdk.Data.pushData
```

示例代码：

```javascript
dnsdk.Data.pushData.iconList
```

互推数据说明：

| 参数 | 类型 | 描述 |
| :--- | :--- | :--- |
| iconList | Array | icon广告互推列表 |
| bannerList | Array | 横幅式互推列表 |
| plaqueList | Array | 插屏式互推列表 |
| buttomList | Array | 首页的滚动互推列表 |
| gouppageList | Array | 首页侧边栏热门推荐互推列表 |
| moregroupList | Array | 分发页的更多游戏互推列表 |
| hotgameList | Array | 分发页的大图滚动互推列表 |
| fungameList | Array | 分发页的滚动互推列表 |

互推二级字段说明：

| 参数 | 类型 | 描述 |
| :--- | :--- | :--- |
| id | String | 推广产品的id |
| icon | String | 推广产品图标地址 |
| plist | String | 帧动画文件地址 |
| pushImage | String | 推广产品二维码图 |
| pushAppID | String | 推广产品的微信Appid |
| open | String | 打开类型（1.image 2.url 3.miniprogram） |
| openPath | String | 打开的小程序的路径 |
| gameName | String | 推广产品的名称 |
| extra | String | 额外参数 |

#### 5.3 互推展示统计

方法接口：

```text
dnsdk.tj.sendShowEvent(object)
```

参数说明：

| 参数/key | 描述 | 参数类型/value | 是否必传 |
| :--- | :--- | :--- | :--- |
| label | 当前互推的唯一标识符 | String | 是 |
| pushappid | 要跳转的appid | String | 是 |
| placement | 展示界面名称标识 | String | 是 |
| eventid | 互推数据列表标识 | String | 是 |

示例代码：

```javascript
// 展示上报
var tjData = {
        label: this.data.id,
        pushappid: this.data.pushAppID,
        placement: "home",
          eventid: "grouppage"
};
dnsdk.tj.sendShowEvent("bottom", tjData);
```

#### 5.4 互推点击统计

方法接口：

```text
dnsdk.tj.sendClickEvent(object)
```

参数说明：

| 参数/key | 描述 | 参数类型/value | 是否必传 |
| :--- | :--- | :--- | :--- |
| label | 当前互推的唯一标识符 | String | 是 |
| pushappid | 要跳转的appid | String | 是 |
| placement | 展示界面名称标识 | String | 是 |
| eventid | 互推数据列表标识 | String | 是 |

示例代码：

```javascript
// 点击上报

var tjData = {
 label: this.data.id,
 pushappid: this.data.pushAppID,
 placement: "home",
 eventid: "grouppage"
 };

dnsdk.tj.sendClickEvent(tjData);
```

### 6.SDK版本更新日志

#### 版本：v1.0  发布时间：2019-10-24

* 小游戏统计SDKV1.0发布！
