# 激励视频广告

### dnsdk.openRewardedVideo\(function callback\)

快捷打开视频。

> 需确保sdk初始化时已传入广告配置，否则无效。

#### 参数

**function callback**

用户点击 `关闭广告` 按钮的事件的回调函数

Object res

| 属性 | 类型 | 说明 |
| :--- | :--- | :--- |
| isEnded | boolean | 视频是否是在用户完整观看的情况下被关闭的 |

#### 返回值

RewardedVideoAd 广告组件

### dnsdk.isRewardedVideoLoaded\(\)

用于查询广告是否可播放。

> 由于部分平台会自动预先加载。所以我们提供此接口用于查询是否有加载好的广告。

#### 返回值

true-可播放 

false-不可播放

### dnsdk.createRewardedVideoAd\(object\)

创建激励视频广告组件，调用该方法创建的激励视频广告是一个单例。

#### 参数

object

| 属性 | 类型 | 是否必填 | 说明 |
| :--- | :--- | :--- | :--- |
| adUnitId | string | 是 | 插屏广告位标识 |

#### 返回值

RewardedVideoAd 广告组件

### RewardedVideoAd

#### RewardedVideoAd.isLoaded\(\)

用于查询广告是否可播放。

#### 返回值

true-可播放 

false-不可播放

#### RewardedVideoAd.show\(\)

显示激励视频广告。

#### RewardedVideoAd.load\(\)

加载激励视频广告。

#### RewardedVideoAd.onClose\(function callback\)

监听用户点击广告关闭事件。

#### 参数

**function callback**

用户点击 `关闭广告` 按钮的事件的回调函数

Object res

| 属性 | 类型 | 说明 |
| :--- | :--- | :--- |
| isEnded | boolean | 视频是否是在用户完整观看的情况下被关闭的 |

#### RewardedVideoAd.offClose\(function callback\)

取消监听用户点击广告关闭事件

#### RewardedVideoAd.onLoad\(function callback\)

监听激励视频广告加载事件。

#### RewardedVideoAd.offLoad\(function callback\)

取消监听激励视频广告加载事件。

#### ~~RewardedVideoAd.onError\(function callback\)~~

监听激励视频错误事件。

> 因为SDK内部已经对onError进行处理，包括输出日志和重试操作，监听会造成覆盖。除非特殊情况，不推荐监听onError。

**Object res**

| 属性 | 类型 | 说明 |
| :--- | :--- | :--- |
| errMsg | string | 错误信息 |
| errCode | number | 错误码 |

> 错误原因需参照具体平台的文档

#### ~~RewardedVideoAd.offError\(function callback\)~~

取消监听激励视频错误事件

#### RewardedVideoAd.destroy\(\)

销毁激励视频广告实例。
