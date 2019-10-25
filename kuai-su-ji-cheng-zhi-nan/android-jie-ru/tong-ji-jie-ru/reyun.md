# ReYun
## 模块引入

```text
    implementation 'com.libVigame.TJ:ReYun:2.0.1'
```
## Manifest参数选项

| 参数 | 说明 | 备注 |
| :--- | :--- | :--- |
| ReYunAppKey | 在热云上申请的appKey（商务提供） | eg：5bbb2803b465f5c58c000017 |

## 配置文件说明

需要在app的build.gradle的manifestPlaceholders中设置“ReYunAppKey”的值,如下：

```text
android {
   ...
    defaultConfig {
    manifestPlaceholders = [
    ....
            ReYunAppKey:"5bbb2803b465f5c58c000017",
    ...
            ]
    }
}
```
