
############################################
		#混淆过滤汇总

#最近更新：2019-09-05
############################################

############################ Base start ############################
#Loader
-keep public class com.libVigame.VigameLoaderNative
-keepclassmembers class com.libVigame.VigameLoaderNative{*;}
-keep public class com.libVigame.VigameLoader
-keepclassmembers class com.libVigame.VigameLoader{
    public static *** ***(...);
}

#Core
-keep public class com.libVigame.CoreManagerNative
-keepclassmembers class com.libVigame.CoreManagerNative{*;}

#支付
-keepclassmembers public class com.libPay.PayAgent{
    public *** init(...);
}
-keep public class * extends com.libPay.PayAgent
-keepclassmembers public class * extends com.libPay.PayAgent{
    public static *** ***(...);
}
#-keep public class com.libPay.PayParams
#-keepclassmembers public class com.libPay.PayParams{*;}
#-keep public class com.libPay.PayManager
-keep public class com.libPay.PayManagerNative
-keepclassmembers class com.libPay.PayManagerNative{*;}
-keepclassmembers class com.libPay.PayAgents.CMGame*{*;}
-keepclassmembers class com.libPay.PayAgents.UniWo*{*;}
-keepclassmembers class com.libPay.PayAgents.MM*{*;}

#广告
-keepclassmembers public class com.libAD.ADAgent{
    public *** init(...);
}
-keep public class * extends com.libAD.ADAgent
-keepclassmembers public class * extends com.libAD.ADAgent{
    public static *** ***(...);
}
-keep public class com.libAD.ADManagerNative
-keepclassmembers class com.libAD.ADManagerNative{*;}

#统计
-keepclassmembers public class com.libTJ.BaseAgent{
    public *** init(...);
}
-keep public class * extends com.libTJ.BaseAgent
-keepclassmembers public class * extends com.libTJ.BaseAgent{
    public static *** ***(...);
}
-keep public class com.libTJ.DataTJManagerNative
-keepclassmembers class com.libTJ.DataTJManagerNative{*;}

#推送
-keepclassmembers public class com.libPH.BasePHAgent{
    public *** init(...);
}
-keep public class * extends com.libPH.BasePHAgent
-keepclassmembers public class * extends com.libPH.BasePHAgent{
    public static *** ***(...);
}
-keep public class com.libPH.PHManagetNative
-keepclassmembers class com.libPH.PHManagetNative{*;}


#social社交模块
-keepclassmembers public class com.libSocial.BaseSocialAgent{
    public *** init(...);
}
-keep public class * extends com.libSocial.BaseSocialAgent
-keepclassmembers public class * extends com.libSocial.BaseSocialAgent{
    public static *** ***(...);
}
-keep public class com.libSocial.SocialManager
-keep public class com.libSocial.SocialManagerNative
-keepclassmembers public class com.libSocial.SocialManagerNative{*;}
-keep public class com.libSocial.SocialDef
-keepclassmembers public class com.libSocial.SocialDef{*;}

#其它
-keep public class com.libExtention.**
-keepclassmembers public class com.libExtention.**{*;}

#Qpay
-keep class com.google.purchase.Purchase
-keepclassmembers public class com.google.purchase.Purchase{
    public static *** requestInitCallBack(...);
    public static *** requestOrderCallBack(...);
    public static *** Notify(...);
    public static *** getPendingIntent(...);
    public static *** cleanFile(...);
    public static *** getFilePath(...);
    public static *** getAndroidId(...);
    public static *** getProjectId(...);
}
-keep class com.google.extra.platform.Utils
-keepclassmembers public class com.google.extra.platform.Utils{*;}
-keepclassmembers class com.google.purchase.web.WapPayActivity{*;}

#安卓
-keep class android.support.**
-keep class android.support.**{*;}
-keep class org.apache.**
-keep class org.apache.**{*;}

#微信
-keep class com.tencent.**
-keep class com.tencent.**{*;}
############################ Base end ############################


############################ AD start ############################
########### 4399Ad（4399广告）###########
#sdk版本：AdUnion4399_v1.1.9
#模块引入：com.libVigame.AD:Ad4399:1.2.4
-keep class com.mob4399.**
-keep class com.mob4399.**{*;}
-keep class com.qq.**
-keep class com.qq.**{*;}
-keep class com.mob4399.** {
    public protected *;
}

###
# Mobgi
###
-dontwarn
-dontoptimize
-keepattributes InnerClasses
-keepattributes *Annotation*
-keepattributes Signature
-keepattributes *JavascriptInterface*

-keepclassmembers enum * {
    public static **[] values();
    public static ** valueOf(java.lang.String);
}
-keep class * implements android.os.Parcelable {
  public static final android.os.Parcelable$Creator *;
}
-keepnames class * implements java.io.Serializable

-dontnote android.net.http.*
-dontnote org.apache.http.**

-keep public class com.mobgi.* {*;}
-keep public class com.mobgi.adutil.parser.NativeAdBeanPro {*;}
-keep public interface com.mobgi.** {*;}
-keep public class com.mobgi.platform.** {*;}
-keep class net.skey.mob.std.dsr.ut.** { *; }

###
# AdView
###
-dontwarn
-keep public class com.kyview.** {*;}
-keepclassmembers class * {public *;}
-keep public class com.kuaiyou.**.** {*;}
-optimizationpasses 5
-dontusemixedcaseclassnames
-dontskipnonpubliclibraryclasses
-dontpreverify
-verbose

###
# Baidu
###
-keepclassmembers class * extends android.app.Activity {
    public void *(android.view.View);
}
-keepclassmembers enum * {
    public static **[] values();
    public static ** valueOf(java.lang.String);
}
-keep class com.baidu.mobads.*.** { *; }

###
# 蓝莓
###
#-libraryjars libs/LamVideo.jar
-keep class com.lam.** { *; }

###
# 九游
###
-keepattributes SourceFile,LineNumberTable
-keepattributes Signature
-keepattributes *Annotation*
## common
-keep public class * extends android.app.Activity
-keep public class * extends android.app.Application
-keep public class * extends android.app.Service
-keep class android.app.**{*;}
-dontwarn  android.app.**
-keep class android.support.v7.media.*{public *;}
-keep class android.support.v4.** { *; }
-dontwarn android.support.**
## network libs
-keep class android.net.http.** { *; }
-dontwarn android.net.**
-dontnote android.net.http.*
-keep class org.apache.http.** { *; }
-dontwarn org.apache.**
-dontnote org.apache.commons.codec.**
-dontnote org.apache.http.**
# Keep native methods
-keepclasseswithmembers class * {
    native <methods>;
}
### utdid
-keep class com.ta.utdid2.**{*;}
-keep class com.ut.device.**{*;}
-dontwarn com.ta.utdid2.**
-dontwarn com.ut.device.**
# Keep ngad-sdk classes
-keep class cn.sirius.nga.** {*; }
-dontwarn cn.sirius.nga.**
-keep class cn.ninegame.library.** {*; }
-dontwarn cn.ninegame.library.**
-keep class com.taobao.** {*; }
-dontwarn com.taobao.**
-keep class android.taobao.** {*; }
-dontwarn android.taobao.**
-keep class com.UCMobile.Apollo.**{*;}

###
# OneWay
###
-keepattributes *Annotation*
-keep enum mobi.oneway.sdk.* {*;}
-keep class mobi.oneway.sdk.** {*;}
# OkDownload
-dontwarn com.liulishuo.okdownload.**
-keep class com.liulishuo.okdownload.core.breakpoint.BreakpointStoreOnSQLite {
    public com.liulishuo.okdownload.core.breakpoint.DownloadStore createRemitSelf();
    public com.liulishuo.okdownload.core.breakpoint.BreakpointStoreOnSQLite(android.content.Context);
}
# okdownload:okhttp
-keepnames class com.liulishuo.okdownload.core.connection.DownloadOk
# okhttp https://github.com/square/okhttp/#proguard
-dontwarn okhttp3.**
-dontwarn okio.**
-dontwarn javax.annotation.**
-dontwarn org.conscrypt.**
# A resource is loaded with a relative path so the package of this class must be preserved.
-keepnames class okhttp3.internal.publicsuffix.PublicSuffixDatabase

###
# Toutiao
###
-keep class com.bytedance.sdk.openadsdk.** { *; }
-keep class com.androidquery.callback.** {*;}
-keep public interface com.bytedance.sdk.openadsdk.downloadnew.** {*;}

###
# Uniplay
###
-dontwarn com.uniplay.**
-keep class com.uniplay.** { *; }

###
# media 4399
###
-keeppackagenames cn.m4399.admob
-keep class cn.m4399.admob.** {*;}
-keeppackagenames cn.m4399.support
-keep class cn.m4399.support.** {*;}
###########  4399Ad（4399广告）###########

########### Ad360（360广告）###########
#sdk版本：新版360游戏聚合SDK_Android_20190603
#模块引入：com.libVigame.AD:Ad360:1.1.1
-ignorewarning
-repackageclasses ''
-allowaccessmodification
-optimizationpasses 2
# Show line number when crash#
-keepattributes SourceFile,LineNumberTable
-dontskipnonpubliclibraryclassmembers
-keepattributes Signature
-keepattributes *Annotation*

#Ad code
-dontwarn com.qihoo.**
-dontwarn com.qihoo360.**
-dontwarn pl.droidsonroids.**
-dontwarn com.androidquery.**
-dontwarn com.lucan.ajtools.**
-dontwarn okhttp3.**
-dontwarn org.aspectj.**
-dontwarn com.qq.e.**
-dontwarn android.net.http.**
-dontwarn okhttp3.**
-dontwarn com.ak.torch.**
-dontwarn okio.**
-dontwarn javax.annotation.**
-dontwarn org.conscrypt.**
-dontwarn com.bytedance.**
-dontwarn com.ss.android.**
-dontwarn org.apache.http.**
-keep class com.qihoo.** {*;}
-keep class com.qihoo360.** { *; }
-keep class pl.droidsonroids.** { *; }
-keep class com.makeramen.** { *; }
-keep class com.bytedance.sdk.openadsdk.** { *; }
-keep class com.androidquery.callback.** {*;}
-keep public interface com.bytedance.sdk.openadsdk.downloadnew.** {*;}
-keep class android.support.v4.app.NotificationCompat**{
    public *;
}
-keep class **.R$* {
     *;
}
-keep class com.qq.e.** {
    public protected *;
}
-keepclassmembers class * extends android.webkit.WebChromeClient{
    public void openFileChooser(...);
}
-keep class org.apache.** {*;}
-keep class android.net.http.** {*;}
# A resource is loaded with a relative path so the package of this class must be preserved.
-keepnames class okhttp3.internal.publicsuffix.PublicSuffixDatabase
#Ad code End
########### Ad360（360广告）###########

########### Ad360_2（360广告2）###########
#sdk版本：Ad360广告SDK_Android_1.4.1040_游戏_0530
#模块引入：com.libVigame.AD:AD360Little:2.0.0
#核心包
-keep class com.ak.** {*;}
-keep class android.support.v4.** {
public *;
}

#穿山甲
-keep class com.bytedance.sdk.openadsdk.** { *; }
-keep class com.androidquery.callback.** {*;}
-keep interface com.bytedance.sdk.openadsdk.** {*;}
########### Ad360_2（360广告2）###########

########### AdView 广告 ###########
#sdk版本：adview-android-bid-3.9.1.jar
#模块引入：com.libVigame.AD:AdView:2.1.5
-keep class com.kuaiyou.**
-keep class com.kuaiyou.**{*;}
-keep class com.kyview.**
-keep class com.kyview.**{*;}

-dontwarn
-keep public class com.kyview.** {*;}
-keepclassmembers class * {public *;}
-keep public class com.kuaiyou.** {*;}
-keep public class com.baidu.** {*;}
-keep class com.qq.e.** {public protected *;}
-keep class android.support.v4.**{public *;}
-keep class android.support.v7.**{public *;}
-keep class com.bytedance.s
-keep class com.androidque
-keep public interface com.b
-optimizationpasses 5
-dontusemixedcaseclassnam
-dontskipnonpubliclibrarycla
-dontpreverify
-verbo
########### AdView 广告 ###########

########### AdView2（AdView广告2）###########
#sdk版本：
#模块引入：com.libVigame.AD2:AdView:2.1.0
########### AdView2（AdView广告2）###########

########### Ali ###########
#sdk版本：
#模块引入：com.libVigame.AD:Ali:2.1.0
########### Ali ###########

########### Anzhi（安智广告）###########
#sdk版本：anzhisdkad_lib_3.1.1-release
#模块引入：com.libVigame.AD:Anzhi:2.2.4
#安智支付、广告
-keep class com.anzhi.**
-keep class com.anzhi.**{*;}
########### Anzhi（安智广告）###########

########### AppLovin 广告 ###########
#sdk版本：9.8.0
#模块引入：com.libVigame.AD:AppLovin:2.1.6
########### AppLovin 广告 ###########

########### Baidu 广告 ###########
#sdk版本：BaiduMobAds_DEMO_as_android_2018_12_17
#模块引入：com.libVigame.AD:BaiduMob:2.4.0
-keepclassmembers	class *	extends	android.app.Activity{ public void *(android.view.View);	}

-keepclassmembers	enum *{public static **[] values(); public static ** valueOf(java.lang.String);	}

-keep class com.baidu.mobads.*.** {	*; }
-keep class com.baidu.mobads.**
-keep class com.baidu.mobads.**{*;}
########### Baidu 广告 ###########

########### Baidu2（Baidu广告2）###########
#sdk版本：BaiduMobAds_DEMO_as_android_2018_12_17
#模块引入：com.libVigame.AD2:BaiduMob:2.4.0
########### Baidu2（Baidu广告2）###########

########### Blueberry（蓝莓广告）###########
#sdk版本：V4.07
#模块引入：com.libVigame.AD:Blueberry:2.1.8
-keep class com.lm.** {*;}

-keep class com.md.a.**
-keep class com.md.a.**{*;}
-keep class com.md.activity.**
-keep class com.md.activity.**{*;}
-keep class com.md.listener.**
-keep class com.md.listener.**{*;}
-keep class com.md.receiver.**
-keep class com.md.receiver.**{*;}
-keep class com.md.service.**
-keep class com.md.service.**{*;}
-keep class com.md.videosdkshell.**
-keep class com.md.videosdkshell.**{*;}
########### Blueberry（蓝莓广告）###########

########### DianView 广告 ###########
#sdk版本：DianView_v1.4.0
#模块引入：com.libVigame.AD:DianView:2.1.2
########### DianView 广告 ###########

########### Domob（多盟广告）###########
#sdk版本：
#模块引入：com.libVigame.AD:Domob:2.1.0
-keep class cn.domob.**
-keep class cn.domob.**{*;}
#多盟积分墙
-keep class cn.aow.**
-keep class cn.aow.**{*;}
########### Domob（多盟广告）###########

########### Duoku（多酷广告）###########
#sdk版本：百度聚合广告3.1.5
#模块引入：com.libVigame.AD:Duoku:2.0.7
########### Duoku（多酷广告）###########

########### Facebook 广告 ###########
#sdk版本：com.facebook.android:audience-network-sdk:5.4.1
#模块引入：com.libVigame.AD:Facebook:2.3.1
-keep class com.facebook.ads.**{*;}
########### Facebook 广告 ###########

########### Fyber 广告 ###########
#sdk版本：
#模块引入：com.libVigame.AD:Fyber:2.1.0
########### Fyber 广告 ###########

########### GDT（广点通广告）###########
#sdk版本：GDTSDK.union.4.63.933
#模块引入：com.libVigame.AD:GDTUnion:2.6.2
-keep class com.qq.e.** {
    public protected *;
}
-keep class com.androidquery.**
-keep class com.androidquery.**{*;}
-keep class com.androidquery.*.**
-keep class com.androidquery.*.**{*;}

-keep class com.qq.e.** {public protected *;}
-keep class android.support.v4.**{public *;}
-keep class android.support.v7.**{public *;}
#    如果您使用的是 X5 内核加强版 SDK，还需要在混淆配置文件中加入下面的代码
-keep class MTT.ThirdAppInfoNew {*;}
-keep class com.tencent.** { *;}

# 嵌入广点通sdk时必须添加
-keep class com.qq.e.** {
    public protected *;
}

# 嵌入广点通sdk时必须添加
-keep class android.support.v4.**{ *;}

# Demo工程里用到了AQuery库，因此需要添加下面的配置
# 请开发者根据自己实际情况给第三方库的添加相应的混淆设置
-dontwarn com.androidquery.**
-keep class com.androidquery.** { *;}

-dontwarn tv.danmaku.**
-keep class tv.danmaku.** { *;}

-dontwarn androidx.**

# 如果使用了tbs版本的sdk需要进行以下配置
-keep class com.tencent.smtt.** { *; }
-dontwarn dalvik.**
-dontwarn com.tencent.smtt.**
########### GDT（广点通广告）###########

########### GDT2（广点通广告2）###########
#sdk版本：GDTSDK.union.4.63.933
#模块引入：com.libVigame.AD2:GDTUnion:2.6.2
########### GDT2（广点通广告2）###########

########### GDT3（广点通广告隐藏方式）###########
#sdk版本：GDTSDK.union.4.63.933
#模块引入：com.libVigame.AD:GDTUnionA:2.6.2
-keep class com.qq.e.** {public protected *;}
-keep class android.support.v4.**{public *;}
-keep class android.support.v7.**{public *;}
# 最新广告隐藏
-keep class com.gg.wb.game.** {
    public protected *;
}
-keep class rr.f.beo.** {*; }
-dontwarn com.rr.f.beo.**
#    如果您使用的是 X5 内核加强版 SDK，还需要在混淆配置文件中加入下面的代码
-keep class MTT.ThirdAppInfoNew {*;}
-keep class com.tencent.** { *;}
########### GDT3（广点通广告隐藏方式）###########

########### Gionee（金立广告）###########
#sdk版本：
#模块引入：com.libVigame.AD:Gionee:2.1.0
-keep class com.changsi.**
-keep class com.changsi.**{*;}
-keep class com.gionee.**
-keep class com.gionee.**{*;}
-keep class qq.**
-keep class qq.**{*;}
########### Gionee（金立广告）###########

########### Google 广告 ###########
#sdk版本：com.google.android.gms:play-services-ads:16.0.0
#模块引入：com.libVigame.AD:Google:2.3.6
-keep class com.google.ads.**
-keep class com.google.ads.**{*;}
-keep class com.google.android.gms.**
-keep class com.google.android.gms.**{*;}

-keep class * extends java.util.ListResourceBundle {
    protected java.lang.Object[][] getContents();
}
-keep public class com.google.android.gms.common.internal.safeparcel.SafeParcelable {
    public static final *** NULL;
}
-keepclassmembers enum * {
  public static **[] values();
  public static ** valueOf(java.lang.String);
}
-keepnames @com.google.android.gms.common.annotation.KeepName class *
-keepclassmembernames class * {
    @com.google.android.gms.common.annotation.KeepName *;
}
-keepnames class * implements android.os.Parcelable {
    public static final ** CREATOR;
}
-keep class * extends java.util.ListResourceBundle {
    protected java.lang.Object[][] getContents();
}
-keep class com.google.android.gms.ads.** {*;}
-keep class com.google.android.gms.common.** {*;}
-dontwarn com.google.android.gms.**
-dontwarn com.google.protobuf.**
-keep class com.google.ads.mediation.** {*;}
-dontwarn com.google.ads.mediation.**
########### Google 广告 ###########

########### GoogleCN 广告（谷歌国内）###########
#sdk版本：play-services-ads-11.0.0.aar（本地）(SDK汇总：panda-aars-20181101.zi)
#需本地引入
-keep class * extends java.util.ListResourceBundle {
    protected java.lang.Object[][] getContents();
}
-keep public class com.google.android.gms.common.internal.safeparcel.SafeParcelable {
    public static final *** NULL;
}
-keepclassmembers enum * {
  public static **[] values();
  public static ** valueOf(java.lang.String);
}
-keepnames @com.google.android.gms.common.annotation.KeepName class *
-keepclassmembernames class * {
    @com.google.android.gms.common.annotation.KeepName *;
}
-keepnames class * implements android.os.Parcelable {
    public static final ** CREATOR;
}
-keep class * extends java.util.ListResourceBundle {
    protected java.lang.Object[][] getContents();
}
-keep class com.google.android.gms.ads.** {*;}
-keep class com.google.android.gms.common.** {*;}
-dontwarn com.google.android.gms.**
-dontwarn com.google.protobuf.**
-keep class com.google.ads.mediation.** {*;}
-dontwarn com.google.ads.mediation.**
########### GoogleCN 广告（谷歌国内）###########

########### HeadlinesToday（头条广告）###########
#sdk版本：头条安卓sdk 2.2.0.2
#模块引入：com.libVigame.AD:Headline:2.7.9
###Toutiao v1.9.3.2
#头条
#穿山甲(今日头条)
###Toutiao v1.9.3.2
-keep class com.bytedance.sdk.openadsdk.** { *; }
-keep class com.androidquery.callback.** {*;}
-keep class com.ss.android.**{*;}
-keep class com.bytedance.sdk.openadsdk.service.TTDownloadProvider
-keep public interface com.bytedance.sdk.openadsdk.downloadnew.** {*;}
########### HeadlinesToday（头条广告）###########

########### HeadlinesToday_A（头条广告隐藏方式）###########
#sdk版本：头条安卓sdk 2.2.0.2
#模块引入：com.libVigame.AD:HeadlineA:2.7.9
#最新广告隐藏方式
-keep class com.bdtt.sdk.wmsdk.** { *; }
-keep class com.androidquery.callback.** {*;}
-keep class com.bdtt.sdk.wmsdk.service.TTDownloadProvider
########### HeadlinesToday_A（头条广告隐藏方式）###########

########### Huawei 广告 ###########
#sdk版本：huawei-pps-sdk-android-13.4.22.315
#模块引入：com.libVigame.AD:Huawei:1.1.2
-keep class com.huawei.openalliance.ad.** { *; }
########### Huawei 广告 ###########

########### InMobi 广告 ###########
#sdk版本：
#模块引入：com.libVigame.AD:InMobi:2.1.1
-keep class com.inmobi.**
-keep class com.inmobi.**{*;}
########### InMobi 广告 ###########

########### InMobi_CN 广告（InMobi国内）###########
#sdk版本：InMobi-7.2.7
#模块引入：com.libVigame.AD:InMobiCN:2.1.6
-keepattributes SourceFile,LineNumberTable
-keep class com.inmobi.** { *; }
-dontwarn com.inmobi.**
-keep public class com.google.android.gms.**
-dontwarn com.google.android.gms.**
-dontwarn com.squareup.picasso.**
-keep class com.google.android.gms.ads.identifier.AdvertisingIdClient{public *;}
-keep class com.google.android.gms.ads.identifier.AdvertisingIdClient$Info{public *;} #skip the Picasso library classes -keep class com.squareup.picasso.** {*;} -dontwarn com.squareup.picasso.** -dontwarn com.squareup.okhttp.** #skip Moat classes -keep class com.moat.** {*;} -dontwarn com.moat.** #skip AVID classes -keep class com.integralads.avid.library.** {*;}
########### InMobi_CN 广告（InMobi国内）###########

########### Ironsource 广告 ###########
#sdk版本：mediationsdk-6.8.2
#模块引入：com.libVigame.AD:Ironsource:2.0.6
-keepclassmembers class com.ironsource.sdk.controller.IronSourceWebView$JSInterface {
    public *;
}
-keepclassmembers class * implements android.os.Parcelable {
    public static final android.os.Parcelable$Creator *;
}
-keep public class com.google.android.gms.ads.** {
   public *;
}
-keep class com.ironsource.adapters.** { *;
}
-dontwarn com.ironsource.mediationsdk.**
-dontwarn com.ironsource.adapters.**
-dontwarn com.moat.**
-keep class com.moat.** { public protected private *; }
########### Ironsource ###########

########### Ironsource_Aggregation（Ironsource聚合广告）###########
#sdk版本：mediationsdk-6.9.1
#模块引入：com.libVigame.AD:Ironsource_JuHe:2.1.5
-keepclassmembers class com.ironsource.sdk.controller.IronSourceWebView$JSInterface {
    public *;
}
-keepclassmembers class * implements android.os.Parcelable {
    public static final android.os.Parcelable$Creator *;
}
-keep public class com.google.android.gms.ads.** {
   public *;
}
-keep class com.ironsource.adapters.** { *;
}
-dontwarn com.ironsource.mediationsdk.**
-dontwarn com.ironsource.adapters.**
-dontwarn com.moat.**
-keep class com.moat.** { public protected private *; }
# facebook
-keep class com.facebook.ads.**{*;}
-keep class com.facebook.bidding.** {*;}
-keep class com.google.android.exoplayer2.** {*;}
-dontwarn com.google.android.exoplayer2.**
# facebook end
# applovin
-keep class com.applovin.** { *; }
-dontwarn com.applovin.**
# applovin end
# unity
-keepattributes SourceFile,LineNumberTable
-keepattributes JavascriptInterface
-keep class android.webkit.JavascriptInterface {*;}
-keep class com.unity3d.ads.** {*;}
-keep class com.unity3d.services.** {*;}
-dontwarn com.google.ar.core.**
# unity end
# vungle
-keep class com.vungle.warren.** { *; }
-keep class com.moat.** { *; }
-keep class com.google.android.gms.internal.** { *; }
-dontwarn com.vungle.warren.error.VungleError$ErrorCode
-dontwarn org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement
-dontwarn retrofit2.Platform$Java8
-keepattributes Signature
-keepattributes *Annotation*
-dontwarn sun.misc.**
-dontwarn com.vungle.warren.**
-dontwarn okio.**
-dontwarn retrofit2.**
-dontwarn com.moat.**
-dontwarn com.google.android.gms.ads.identifier.**
-dontwarn org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement
-keeppackagenames 'net.vrallev.android.cat'
-keeppackagenames 'retrofit2.converter.gson'
-keeppackagenames 'com.tonyodev.fetch'
-keeppackagenames 'okhttp3.logging'
-keeppackagenames 'okhttp3'
-keeppackagenames 'okio'
-keeppackagenames 'retrofit2'
# vungle end
# google
-keep class * extends java.util.ListResourceBundle {
    protected java.lang.Object[][] getContents();
}
-keep public class com.google.android.gms.common.internal.safeparcel.SafeParcelable {
    public static final *** NULL;
}
-keepclassmembers enum * {
  public static **[] values();
  public static ** valueOf(java.lang.String);
}
-keepnames @com.google.android.gms.common.annotation.KeepName class *
-keepclassmembernames class * {
    @com.google.android.gms.common.annotation.KeepName *;
}
-keepnames class * implements android.os.Parcelable {
    public static final ** CREATOR;
}
-keep class * extends java.util.ListResourceBundle {
    protected java.lang.Object[][] getContents();
}
-keep class com.google.android.gms.ads.** {*;}
-keep class com.google.android.gms.common.** {*;}
-dontwarn com.google.android.gms.**
-dontwarn com.google.protobuf.**
-keep class com.google.ads.mediation.** {*;}
-dontwarn com.google.ads.mediation.**
# google end
#inmobi
-keepattributes SourceFile,LineNumberTable
-keep class com.inmobi.** { *; }
-dontwarn com.inmobi.**
-keep public class com.google.android.gms.**
-dontwarn com.google.android.gms.**
-dontwarn com.squareup.picasso.**
-keep class com.google.android.gms.ads.identifier.AdvertisingIdClient{public *;}
-keep class com.google.android.gms.ads.identifier.AdvertisingIdClient$Info{public *;}
#skip the Picasso library classes
-keep class com.squareup.picasso.** {*;}
-dontwarn com.squareup.picasso.**
-dontwarn com.squareup.okhttp.**
#skip Moat classes
-keep class com.moat.** {*;}
-dontwarn com.moat.**
#skip AVID classes
-keep class com.integralads.avid.library.** {*;}
#inmobi end
# support
-keep public class * extends android.support.v4.app.Fragment
-keep class android.support.** {*;}
-keep class com.google.gson.** {*;}
-dontwarn android.support.**
# support end
########### Ironsource_Aggregation（Ironsource聚合广告）###########

########### LeDou（乐逗广告）###########
#sdk版本：mobgiads-4.6.0-generic
#模块引入：com.libVigame.AD:LeDou:2.1.1
###
# Mobgi
###
-dontwarn
-dontoptimize
-keepattributes InnerClasses
-keepattributes *Annotation*
-keepattributes Signature
-keepattributes *JavascriptInterface*

-keepclassmembers enum * {
    public static **[] values();
    public static ** valueOf(java.lang.String);
}
-keep class * implements android.os.Parcelable {
  public static final android.os.Parcelable$Creator *;
}
-keepnames class * implements java.io.Serializable

-dontnote android.net.http.*
-dontnote org.apache.http.**

-keep public class com.mobgi.* {*;}
-keep public class com.mobgi.adutil.parser.NativeAdBeanPro {*;}
-keep public interface com.mobgi.** {*;}
-keep public class com.mobgi.platform.** {*;}
-keep class net.skey.mob.** { *; }
-keep class net.sky.mob.** { *; }

###
# Baidu
###
-keepclassmembers class * extends android.app.Activity {
	public void *(android.view.View);
}
-keepclassmembers enum * {
	public static **[] values();
	public static ** valueOf(java.lang.String);
}
-keep class com.baidu.mobads.*.** { *; }

###
# GDT
###
 -keep class com.qq.e.** {
    public protected *;
}
-keep class android.support.v4.**{
    public *;
}
-keep class android.support.v7.**{
    public *;
}

###
# Mintegral
###
-keepattributes Signature
-keepattributes *Annotation*
-keep class com.mintegral.** {*; }
-keep interface com.mintegral.** {*; }
-keep class android.support.v4.** { *; }
-dontwarn com.mintegral.**
-keep class **.R$* { public static final int mintegral*; }
-keep class com.alphab.** {*; }
-keep interface com.alphab.** {*; }

###
# OneWay
###
-keepattributes *Annotation*
-keep enum mobi.oneway.sdk.* {*;}
-keep class mobi.oneway.sdk.** {*;}
# OkDownload
-dontwarn com.liulishuo.okdownload.**
-keep class com.liulishuo.okdownload.core.breakpoint.BreakpointStoreOnSQLite {
    public com.liulishuo.okdownload.core.breakpoint.DownloadStore createRemitSelf();
    public com.liulishuo.okdownload.core.breakpoint.BreakpointStoreOnSQLite(android.content.Context);
}
# okdownload:okhttp
-keepnames class com.liulishuo.okdownload.core.connection.DownloadOk
# okhttp https://github.com/square/okhttp/#proguard
-dontwarn okhttp3.**
-dontwarn okio.**
-dontwarn javax.annotation.**
-dontwarn org.conscrypt.**
# A resource is loaded with a relative path so the package of this class must be preserved.
-keepnames class okhttp3.internal.publicsuffix.PublicSuffixDatabase


###
# Toutiao
###
-keep class com.bytedance.sdk.openadsdk.** { *; }
-keep public interface com.bytedance.sdk.openadsdk.downloadnew.** {*;}

###
# Uniplay
###
-keep class com.uniplay.adsdk.**
-keep class com.joomob.**
-keep class * implements android.os.Parcelable {
    public static final android.os.Parcelable$Creator *;
}
-keepattributes Annotation
-keepattributes JavascriptInterface
-keepclassmembers class * {
    @android.webkit.JavascriptInterface <methods>;
}
-keepclassmembers public class com.uniplay.adsdk.JavaScriptInterface{
    <fields>;
    <methods>;
    public *;
    private *;
}

###
# SigMob
###
# android.support.v4
-dontwarn android.support.v4.**
-keep class android.support.v4.** { *; }
-keep interface android.support.v4.** { *; }
-keep public class * extends android.support.v4.**
# WindAd
-keep class sun.misc.Unsafe { *; }
-dontwarn com.sigmob.**
-keep class com.sigmob.**.**{*;}
########### LeDou（乐逗广告）###########

########### Lenovo（联想广告）###########
#sdk版本：gameAD_SDK-170608-1042
#模块引入：com.libVigame.AD:Lenovo:2.1.7
-keep class com.chance.**
-keep class com.chance.**{*;}
-keep class com.lenovo.**
-keep class com.lenovo.**{*;}
-keep class com.lestore.**
-keep class com.lestore.**{*;}
-keep class de.greenrobot.dao.**
-keep class de.greenrobot.dao.**{*;}
########### Lenovo（联想广告）###########

########### Meizu（魅族广告）###########
#sdk版本：
#模块引入：com.libVigame.AD:Meizu:2.1.0
-keep class com.meizu.advertise.api.** {*;}
-keep class com.meizu.advertise.plugin.api.Mzsdk {*;}
-keep class com.meizu.advertise.plugin.api.Mzsdk$* {*;}
-keep class com.meizu.advertise.config.** {*;}
-keep class com.android.volley.** {*;}
-keep class com.google.protobuf.** {*;}
-dontwarn com.google.protobuf.**
########### Meizu（魅族广告）###########

########### Mi（小米广告）###########
#sdk版本：MimoSdk-V2019-01-18-17-00
#模块引入：com.libVigame.AD:Mi:2.2.7
-keep class com.xiaomi.ad.**{*;}
-keep class com.miui.zeus.**{*;}
-keep class com.xiaomi.**
-keep class com.xiaomi.**{*;}
-keep class com.miui.**
-keep class com.miui.**{*;}
-keep class oauth.signpost.**
-keep class oauth.signpost.**{*;}
-keep class com.google.gdata.util.common.base.**
-keep class com.google.gdata.util.common.base.**{*;}
########### Mi（小米广告）###########

########### MM 广告 ###########
########### MM 广告 ###########

########### MobiVista 广告 ###########
#sdk版本：mintegral_china_android_sdk_9.13.1
#模块引入：com.libVigame.AD:MobVista:1.1.1
-keepattributes Signature
-keepattributes *Annotation*
-dontwarn com.mobvista.**
-keep class com.mobvista.**
-keep class com.mobvista.** {*; }
-keep interface com.mobvista.** {*; }
-keep class android.support.v4.** { *; }
-keep class **.R$* { public static final int mobvista*; }
-keep class com.alphab.**
-keep class com.alphab.** {*; }
-keep interface com.alphab.** {*; }
-keep class com.mintegral.**
-keep class com.mintegral.** {*; }
-keep interface com.mintegral.** {*; }
-dontwarn com.mintegral.**
-keep class **.R$* { public static final int mintegral*; }
########### MobiVista 广告（国内） ###########

########### MobiVista_OverSea（MobVista广告国际版）###########
#sdk版本：mintegral_android_sdk_9.13.1
#模块引入：com.libVigame.AD:MobVistaOversea:2.0.4
-keepattributes Signature
-keepattributes *Annotation*
-dontwarn com.mobvista.**
-keep class com.mobvista.**
-keep class com.mobvista.** {*; }
-keep interface com.mobvista.** {*; }
-keep class android.support.v4.** { *; }
-keep class **.R$* { public static final int mobvista*; }
-keep class com.alphab.**
-keep class com.alphab.** {*; }
-keep interface com.alphab.** {*; }
-keep class com.mintegral.**
-keep class com.mintegral.** {*; }
-keep interface com.mintegral.** {*; }
-dontwarn com.mintegral.**
-keep class **.R$* { public static final int mintegral*; }
########### MobiVista_OverSea（MobVista广告国际版）###########

########### Mopub 广告 ###########
-keepclassmembers class * {
    @android.webkit.JavascriptInterface <methods>;
}
########### Mopub 广告 ###########

########### MSDK 广告 ###########
########### MSDK 广告 ###########

########### Ngad 广告 ###########
#sdk版本：ngad-sdk-all-2.5.40-201812282032
#模块引入：com.libVigame.AD:Ngad:2.2.8
-keepattributes SourceFile,LineNumberTable
-keepattributes Signature
-keepattributes *Annotation*

## common
-keep public class * extends android.app.Activity
-keep public class * extends android.app.Application
-keep public class * extends android.app.Service

-keep class android.app.**{*;}
-dontwarn  android.app.**

-keep class android.support.v7.media.*{public *;}
-keep class android.support.v4.** { *; }
-dontwarn android.support.**

## network libs
-keep class android.net.http.** { *; }
-dontwarn android.net.**
-dontnote android.net.http.*

-keep class org.apache.http.** { *; }
-dontwarn org.apache.**
-dontnote org.apache.commons.codec.**
-dontnote org.apache.http.**

# Keep native methods
-keepclasseswithmembers class * {
    native <methods>;
}

### utdid
-keep class com.ta.utdid2.**{*;}
-keep class com.ut.device.**{*;}
-dontwarn com.ta.utdid2.**
-dontwarn com.ut.device.**

# Keep ngad-sdk classes
-keep interface cn.sirius.nga.** {*; }
-keep class cn.sirius.nga.** {*; }
-dontwarn cn.sirius.nga.**

-keep class cn.ninegame.library.** {*; }
-dontwarn cn.ninegame.library.**

-keep class cn.uc.gamesdk.** {*; }
-dontwarn cn.uc.gamesdk.**

-keep class com.qq.e.** {*; }
-dontwarn com.qq.e.**

-keep class com.taobao.** {*; }
-dontwarn com.taobao.**
-keep class android.taobao.** {*; }
-dontwarn android.taobao.**

-keep class com.UCMobile.Apollo.**{*;}


-keepattributes Signature
-keepattributes *Annotation*
-keep class com.mintegral.** {*; }
-keep interface com.mintegral.** {*; }
-keep class android.support.v4.** { *; }
-dontwarn com.mintegral.**
-keep class **.R$* { public static final int mintegral*; }
-keep class com.alphab.** {*; }
-keep interface com.alphab.** {*; }

-dontwarn com.uniplay.adsdk.**
-keep com.uniplay.adsdk.** {*;}
-keep class com.wzhl.sdk.**
-keep class com.wzhl.sdk.**{*;}
########### Ngad 广告 ###########

########### OneWay 广告 ###########
#sdk版本：onewaysdk2.3.4.jar
#模块引入：com.libVigame.AD:OneWay:2.2.2
############################################
##           OneWaySDK 混淆配置             ##
############################################

-keepattributes *Annotation*
-keep enum mobi.oneway.sdk.* {*;}
-keep class mobi.oneway.sdk.** {*;}


############################################
##           OkDownload 混淆配置            ##
############################################

-dontwarn com.liulishuo.okdownload.**
-keep class com.liulishuo.okdownload.core.breakpoint.BreakpointStoreOnSQLite {
    public com.liulishuo.okdownload.core.breakpoint.DownloadStore createRemitSelf();
    public com.liulishuo.okdownload.core.breakpoint.BreakpointStoreOnSQLite(android.content.Context);
}
# okdownload:okhttp
-keepnames class com.liulishuo.okdownload.core.connection.DownloadOk


############################################
##             OkHttp 混淆配置              ##
############################################

# okhttp https://github.com/square/okhttp/#proguard
-dontwarn okhttp3.**
-dontwarn okio.**
-dontwarn javax.annotation.**
-dontwarn org.conscrypt.**
# A resource is loaded with a relative path so the package of this class must be preserved.
-keepnames class okhttp3.internal.publicsuffix.PublicSuffixDatabase
########### OneWay 广告 ###########

########### OneWayA（OneWay广告隐藏方式）###########
#sdk版本：onewaysdk2.3.4.jar
#模块引入：com.libVigame.AD:OneWayA:2.2.1
############################################
##           OneWaySDK 混淆配置             ##
############################################

-keepattributes *Annotation*
-keep enum mobi.oneway.sdk.* {*;}
-keep class mobi.oneway.sdk.** {*;}

-keep enum npcj.pofxbz.sdk.* {*;}
-keep class npcj.pofxbz.sdk.** {*;}
############################################
##           OkDownload 混淆配置            ##
############################################

-dontwarn com.liulishuo.okdownload.**
-keep class com.liulishuo.okdownload.core.breakpoint.BreakpointStoreOnSQLite {
    public com.liulishuo.okdownload.core.breakpoint.DownloadStore createRemitSelf();
    public com.liulishuo.okdownload.core.breakpoint.BreakpointStoreOnSQLite(android.content.Context);
}
# okdownload:okhttp
-keepnames class com.liulishuo.okdownload.core.connection.DownloadOk


############################################
##             OkHttp 混淆配置              ##
############################################

# okhttp https://github.com/square/okhttp/#proguard
-dontwarn okhttp3.**
-dontwarn okio.**
-dontwarn javax.annotation.**
-dontwarn org.conscrypt.**
# A resource is loaded with a relative path so the package of this class must be preserved.
-keepnames class okhttp3.internal.publicsuffix.PublicSuffixDatabase
########### OneWayA（OneWay广告隐藏方式）###########

########### OPPO 广告 ###########
#sdk版本：oppo_mobad_api_v311_2019_03_21_release
#模块引入：com.libVigame.AD:OPPO:2.5.5
-keep class com.oppo.** {
public protected *;
}
-keep class okio.**{ *; }
-keep class com.squareup.wire.**{ *; }
-keep public class * extends com.squareup.wire.**{ *; }
# Keep methods with Wire annotations (e.g. @ProtoField)
-keepclassmembers class ** {
 @com.squareup.wire.ProtoField public *;
 @com.squareup.wire.ProtoEnum public *;
}
-keep public class com.cdo.oaps.base.**{ *; }
-keepattributes *Annotation*
-keepattributes *JavascriptInterface*
#support-v4
-keep class android.support.v4.** { *; }

-keep class android.app.**
-keep class android.app.**{*;}
-keep class com.wb.plugin.**
-keep class com.wb.plugin.**{*;}
-keep class com.libAD.**
-keep class com.libAD.**{*;}
########### OPPO 广告 ###########

########### OPPO_Test 广告 ###########
#sdk版本：mobad_normal_pub_323_2019_08_09
#模块引入：com.libVigame.AD:OPPO_Test:1.1.0
#广告proguard配置开始
-keep class com.bytedance.sdk.openadsdk.** { *; }
-keep class com.androidquery.callback.** {*;}
-keep public interface com.bytedance.sdk.openadsdk.downloadnew.** {*;}
-keep class com.ss.sys.ces.* {*;}

-keep class com.nearme.instant.router.** { *;}
-keep class com.oppo.oaps.ad.** { *;}
-keep class com.opos.** { *;}
-keep class com.heytap.openid.** {*;}
#广告proguard配置结束
########### OPPO_Test 广告 ###########

########### Pingcoo 广告 ###########
#sdk版本：
#模块引入：com.libVigame.AD:Pingcoo:2.1.0
########### Pingcoo 广告 ###########

########### Shenqi（魅族神奇广告）###########
#sdk版本：ShenQiAdSDKV3.0.0
#模块引入：com.libVigame.AD:Shenqi:2.1.2
########### Shenqi（魅族神奇广告）###########

########### Sogou（搜狗广告）###########
#sdk版本：libAD_Sogou v1.0.1
#模块引入：com.libVigame.AD:SogouAD:1.0.5
-dontwarn com.sogou.**
-keep class com.sogou.** {
   *;
}
-keep class com.sogou.feedads.**{*;}
########### Sogou（搜狗广告）###########

########### Tapjoy 广告 ###########
#sdk版本：TapjoySDK_Android_v12.3.1
#模块引入：com.libVigame.AD:Tapjoy:1.0.0
########### Tapjoy 广告 ###########

########### TuiA（推啊广告）###########
#sdk版本：androidnativetuia-1.0.0
#模块引入：com.libVigame.AD:TuiA:1.0.4
########### TuiA（推啊广告）###########

########### Uniplay 广告（玩转互联）###########
#sdk版本：UniplayAdSDK_6.0.2.jar
#模块引入：com.libVigame.AD:Uniplay:2.1.7
-dontwarn com.uniplay.**
-keep class com.uniplay.** { *; }
-dontwarn com.wzhl.**
-keep class com.wzhl.** { *; }

-keep class com.uniplay.adsdk.**
-keep class com.joomob.**
-keep class * implements android.os.Parcelable {   public static final android.os.Parcelable$Creator *; }
-keepattributes Annotation
-keepattributes JavascriptInterface
-keepclassmembers class * { @android.webkit.JavascriptInterface <methods>; }
-keepclassmembers public class com.uniplay.adsdk.JavaScriptInterface{ <fields>; <methods>; public *; private *; }
########### Uniplay 广告（玩转互联）###########

########### UniplayA 广告（玩转互联隐藏方式）###########
#sdk版本：UniplayAdSDK_6.0.2.jar
#模块引入：com.libVigame.AD:UniplayA:1.0.1
########### UniplayA 广告（玩转互联隐藏方式）###########

########### Unity 广告 ###########
#sdk版本：Unity Ads 3.0.3
#模块引入：com.libVigame.AD:Unity:2.1.5
-keep class com.unity3d.ads.**
-keep class com.unity3d.ads.**{*;}

# Keep filenames and line numbers for stack traces
-keepattributes SourceFile,LineNumberTable

# Keep JavascriptInterface for WebView bridge
-keepattributes JavascriptInterface

# Sometimes keepattributes is not enough to keep annotations
-keep class android.webkit.JavascriptInterface {
   *;
}

# Keep all classes in Unity Ads package 622848 1238806665274
-keep class com.unity3d.ads.** {
   *;
}

# Keep all classes in Unity Services package
-keep class com.unity3d.services.** {
   *;
}

-dontwarn com.google.ar.core.**
########### Unity 广告 ###########

########### UpAds（狂热广告）###########
#sdk版本：UPSDK_Android_foreign_3.0.06_AndroidStudio
#模块引入：com.libVigame.AD:UpAds:1.0.0
# avidly
-keep class com.avidly.ads.** {*;}
-keep class com.up.ads.** {*;}
-keep interface com.up.ads.** {*;}
-keep class com.avidly.channel.** { *; }
-keep class com.up.channel.** { *; }
-keep class com.sm.avid.decode.** {*;}
-keep class com.avidly.playablead.ext.** {*;}
-keep interface com.avidly.ads.** {*;}
-keep interface com.sm.avid.decode.** {*;}
-keep class com.hola.sdk.* {*;}
-keep class com.statistics.channel.* {*;}
-keep class com.aly.analysis.sdk.api.* {*;}
-keepclasseswithmembernames class * {
    native <methods>;
}
-dontwarn com.avidly.**
-dontwarn com.up.**
-keep class com.statistics.channel.* {*;}
# avidly end

# support
-keep public class * extends android.support.v4.app.Fragment
-keep class android.support.** {*;}
-keep class com.google.gson.** {*;}
-dontwarn android.support.**
# support end

# facebook
-keep class com.facebook.ads.InterstitialAd {*;}
-keep class com.facebook.ads.AdView {*;}
-keep class com.facebook.ads.Ad {*;}
-keep class com.facebook.ads.RewardedVideoAd {*;}
-keep class com.facebook.ads.AdListener {*;}
-keep class com.facebook.ads.BuildConfig {*;}
-dontwarn com.facebook.ads.internal.**
-keep class com.facebook.bidding.** {*;}
-keep class com.google.android.exoplayer2.** {*;}
-dontwarn com.google.android.exoplayer2.**
# facebook end

# google
-keep class * extends java.util.ListResourceBundle {
    protected java.lang.Object[][] getContents();
}
-keep public class com.google.android.gms.common.internal.safeparcel.SafeParcelable {
    public static final *** NULL;
}
-keepclassmembers enum * {
  public static **[] values();
  public static ** valueOf(java.lang.String);
}
-keepnames @com.google.android.gms.common.annotation.KeepName class *
-keepclassmembernames class * {
    @com.google.android.gms.common.annotation.KeepName *;
}
-keepnames class * implements android.os.Parcelable {
    public static final ** CREATOR;
}
-keep class * extends java.util.ListResourceBundle {
    protected java.lang.Object[][] getContents();
}
-keep class com.google.android.gms.ads.** {*;}
-keep class com.google.android.gms.common.** {*;}
-dontwarn com.google.android.gms.**
-dontwarn com.google.protobuf.**
-keep class com.google.ads.mediation.** {*;}
-dontwarn com.google.ads.mediation.**
# google end

# adcolony
-keep class com.adcolony.** { *; }
-dontwarn com.adcolony.**
-dontnote com.adcolony.**
# adcolony end

# vungle
-keep class com.vungle.warren.** { *; }
-keep class com.moat.** { *; }
-keep class com.google.android.gms.internal.** { *; }
-dontwarn com.vungle.warren.error.VungleError$ErrorCode
-dontwarn org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement
-dontwarn retrofit2.Platform$Java8
-keepattributes Signature
-keepattributes *Annotation*
-dontwarn sun.misc.**
-dontwarn com.vungle.warren.**
-dontwarn okio.**
-dontwarn retrofit2.**
-dontwarn com.moat.**
-dontwarn com.google.android.gms.ads.identifier.**
-dontwarn org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement
-keeppackagenames 'net.vrallev.android.cat'
-keeppackagenames 'retrofit2.converter.gson'
-keeppackagenames 'com.tonyodev.fetch'
-keeppackagenames 'okhttp3.logging'
-keeppackagenames 'okhttp3'
-keeppackagenames 'okio'
-keeppackagenames 'retrofit2'
# vungle end

# unity
-keepattributes SourceFile,LineNumberTable
-keepattributes JavascriptInterface
-keep class android.webkit.JavascriptInterface {*;}
-keep class com.unity3d.ads.** {*;}
-keep class com.unity3d.services.** {*;}
-dontwarn com.google.ar.core.**
# unity end

# applovin
-keep class com.applovin.** { *; }
-dontwarn com.applovin.**
# applovin end

# chartboost
-keep class com.chartboost.** { *; }
-dontwarn com.chartboost.**
# chartboost end

# playable
-keep class com.avidly.playablead.app.** { *; }
# playable end

# ironsource
-keep class com.ironsource.mediationsdk.IronSource
-keep class com.moat.** { *; }
-keepclassmembers class com.ironsource.sdk.controller.IronSourceWebView$JSInterface {
    public *;
}
-keepclassmembers class * implements android.os.Parcelable {
    public static final android.os.Parcelable$Creator *;
}
-keep public class com.google.android.gms.ads.** {
   public *;
}
-keep public class com.google.ads.** {
   public *;
}

-keep class com.ironsource.adapters.** { *;
}
# ironsource end

# vk
-keep class com.my.target.** {*;}
-dontwarn com.my.target.**
-dontwarn com.mopub.**
# vk end

# maio
-keep class jp.maio.sdk.android.** { *; }
-dontwarn jp.maio.sdk.android.**
-dontnote jp.maio.sdk.android.**
# maio end

# nend
-keep class net.nend.android.** { *; }
-dontwarn net.nend.android.**
-dontnote net.nend.android.**
# nend end

# oneway
-keepattributes *Annotation*
-keep enum mobi.oneway.sdk.* {*;}
-keep class mobi.oneway.sdk.** {*;}
# oneway end

# gdt
-keep class com.qq.e.** {*;}
-keep class android.support.v4.** {public *;}
-keep class android.support.v7.** {public *;}
# gdt end

# toutiao
-keep class com.bytedance.sdk.openadsdk.** { *; }
-keep class com.androidquery.callback.** {*;}
-dontwarn com.bytedance.sdk.**
-dontwarn com.androidquery.**
-dontwarn com.ss.android.**
# toutiao end

# amazon
-keep class com.amazon.device.ads.** { *; }
# amazon end
########### UpAds（狂热广告）###########

########### Vigame（API广告）########
#sdk版本：
#模块引入：com.libVigame.AD:Vigame:2.3.5
-keep class com.qapp.appunion.sdk.**
-keep class com.qapp.appunion.sdk.** {*;}
-keep class com.qapp.android.common.**
-keep class com.qapp.android.common.** {*;}
########### Vigame（API广告）########

########### Vivo 广告 ###########
#sdk版本：vivo_adsdk_v2.9.0.1
#模块引入：com.libVigame.AD:VIVO:2.5.5
-keepattributes SourceFile,LineNumberTable
#GDT
-keep class com.qq.e.** { public protected *; }
-keep class android.support.v4.app.NotificationCompat**{ public *; }
#baidu
-keep class com.baidu.mobads.*.** { *; }
#vivoSDK
-keep class com.vivo.*.** { *; }
-dontwarn com.androidquery.auth.**
-keep class com.vivo.mobilead.*.** { *; }
-dontwarn com.androidquery.*.**
########### Vivo 广告 ###########

########### Vivo_test 广告 ###########
#sdk版本：vivo_adsdk_v3.0.0.0灰测版
#模块引入：com.libVigame.AD:VIVOTest:1.0.9
-keepattributes SourceFile,LineNumberTable
-keep class com.vivo.*.** { *; }
-dontwarn com.androidquery.auth.**
########### Vivo_test 广告 ###########

########### Vungle 广告 ###########
#sdk版本：vungle-android-sdk-6.4.11
#模块引入：com.libVigame.AD:Vungle:2.1.7
-keep class dagger.**
-keep class dagger.**{*;}
-keep class javax.inject.**
-keep class javax.inject.**{*;}
-keep class com.vungle.sdk.**
-keep class com.vungle.sdk.**{*;}
-keep class com.vungle.**
-keep class com.vungle.**{*;}
# Vungle
-keep class com.vungle.warren.** { *; }
# Evernote
-dontwarn com.evernote.android.job.gcm.**
-dontwarn com.evernote.android.job.GcmAvailableHelper
-dontwarn com.google.android.gms.ads.identifier.**
-keep public class com.evernote.android.job.v21.PlatformJobService
-keep public class com.evernote.android.job.v14.PlatformAlarmService
-keep public class com.evernote.android.job.v14.PlatformAlarmReceiver
-keep public class com.evernote.android.job.JobBootReceiver
-keep public class com.evernote.android.job.JobRescheduleService
-dontwarn org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement
-keep class com.google.android.gms.internal.** { *; }
# Moat SDK
-keep class com.moat.** { *; }
-dontwarn com.moat.**
########### Vungle 广告 ###########

########### YuMi（玉米广告）###########
#sdk版本：
#模块引入：com.libVigame.AD:YuMi:2.1.0
-keep class com.google.protobuf.**
-keep class com.google.protobuf.**{*;}
-keep class com.yumi.android.sdk.ads.**
-keep class com.yumi.android.sdk.ads.**{*;}
-keep class com.zplay.android.sdk.zplayad.**
-keep class com.zplay.android.sdk.zplayad.**{*;}
########### YuMi（玉米广告）###########

########### YYB ###########
#sdk版本：adview-android-bid-3.9.1.jar
#模块引入：com.libVigame.AD:YYBOfferwall:2.1.5
########### YYB ###########

########### ADManager ###########
#模块引入：com.libVigame.AD:ADManager:2.3.6
########### ADManager ###########

########### ADManager2 ###########
#模块引入：com.libVigame.AD2:ADManager:2.3.6
########### ADManager2 ###########
############################ AD end ############################


############################ Core start ############################
########### AndroidQuery ###########
#模块引入：com.libVigame.Core:android-query:2.1.1
########### AndroidQuery ###########

########### Api ###########
#模块引入：com.libVigame.Core:API:2.3.5
-keep class com.qapp.appunion.sdk.**
-keep class com.qapp.appunion.sdk.**{*;}
########### Api ###########

########### CoreManager ###########
#模块引入：com.libVigame.Core:CoreManager:2.4.3
########### CoreManager ###########

########### GCOffers（GCOffers工具类库）###########
#模块引入：com.libVigame.Core:GCOffers:2.1.9
########### GCOffers（GCOffers工具类库）###########

########### PushService（PushService工具类库）###########
#模块引入：com.libVigame.Core:PushService:2.3.2
########### PushService（PushService工具类库）###########

########### SMSBlocker ###########
#模块引入：com.libVigame.Core:SMSBlocker:2.0.1
########### SMSBlocker ###########

########### Utdid4all（utd库）###########
#sdk版本：utdid4all-1.1.5.3_proguard
#模块引入：com.libVigame.Core:utdid4all:2.1.1
########### Utdid4all（utd库）###########
############################ Core end ############################


############################ Pay start ############################
########### CMGame（移动（游戏基地）计费）###########
#sdk版本：V3.1.3_MiguSDK_406N_28001
#模块引入：com.libVigame.Pay:CMGame:2.1.7
########### CMGame（移动（游戏基地）计费）###########

########### CMGame_PT（移动（游戏基地）平台计费）###########
#sdk版本：V3.1.3_MiguSDK_406N_28001
#模块引入：com.libVigame.Pay:CMGame_PT:2.1.7
########### CMGame_PT（移动（游戏基地）平台计费）###########

########### CTEStore（电信（天翼）计费）###########
#sdk版本：smsPay3.0.1.151125
#模块引入：com.libVigame.Pay:CTEStore:2.1.0
#电信天翼空间
-keep class com.estore.**
-keep class com.estore.**{*;}
#电信天翼空间3.0
-keep class com.bunoui.**
-keep class com.bunoui.**{*;}
########### CTEStore（电信（天翼）计费）###########

########### Egame（电信（爱游戏）计费）###########
#sdk版本：4.3.1
#模块引入：com.libVigame.Pay:Egame:2.1.7
#-dontwarn cn.egame.terminal.**
-keep class cn.egame.terminal.**
-keep class cn.egame.terminal.**{*;}
-keep class cn.play.dserv**
-keep class cn.play.dserv**{*;}
########### Egame（电信（爱游戏）计费）###########

########### Egame_PT（电信（爱游戏）平台计费）###########
#sdk版本：4.3.0
#模块引入：com.libVigame.Pay:Egame_PT:2.1.8
-keep class org.json.alipay.**
-keep class org.json.alipay.**{*;}
-keep class com.android.said.adapter.**
-keep class com.android.said.adapter.**{*;}
-keep class com.ltayx.pay.**
-keep class com.ltayx.pay.**{*;}
-dontwarn com.chinaMobile.**
-keep class com.chinaMobile.**
-keep class com.chinaMobile.**{*;}
-keep class mm.yp.purchasesdk.**
-keep class mm.yp.purchasesdk.**{*;}
-keep class com.unicom.**
-keep class com.unicom.**{*;}
########### Egame_PT（电信（爱游戏）平台计费）###########

########### MM（移动（MM）计费）###########
#sdk版本：应用内计费SDK3.5.16_20180815、umcsdk-open-v1.4.5(统一认证)
#模块引入：com.libVigame.Pay:MM:2.2.4
########### MM（移动（MM）计费）###########

########### Samsung（三星渠道sdk）###########
#sdk版本：
#模块引入：com.libVigame.Pay:Samsung:2.1.0
########### Samsung（三星渠道sdk）###########

########### UniWo（联通（沃商店）计费）###########
#sdk版本：unipaysdk_4.9.0M2111B1215
#模块引入：com.libVigame.Pay:UniWo:2.2.1
-keep class com.unicom.**
-keep class com.unicom.**{*;}
-keep class com.unipay.**
-keep class com.unipay.**{*;}
-keep class com.wow.**
-keep class com.wow.**{*;}
########### UniWo（联通（沃商店）计费）###########

########### UniWo_PT（联通（沃商店）平台计费）###########
#sdk版本：unipaysdk_4.9.0M2111B1215
#模块引入：com.libVigame.Pay:UniWo_PT:2.2.1
-keep class com.unipay.Alipay**
-keep class com.unipay.Alipay**{*;}
-keep class a.**
-keep class a.**{*;}
-keep class b.**
-keep class b.**{*;}
-keep class com.alipay.**
-keep class com.alipay.**{*;}
-keep class com.ta.utdid2.**
-keep class com.ta.utdid2.**{*;}
-keep class com.ut.device.**
-keep class com.ut.device.**{*;}
-keep class cn.egame.**
-keep class cn.egame.**{*;}
-keep class egame.**
-keep class egame.**{*;}
########### UniWo_PT（联通（沃商店）平台计费）###########

########### AliPay（支付宝支付基础模块）###########
#sdk版本：
#模块引入：com.libVigame.Pay:AliPayLoader:2.1.3
########### AliPay（支付宝支付基础模块）###########

########### Amigo（金立渠道sdk）###########
#sdk版本：Amigo Play SDK单机版V4.0.6.zo
#模块引入：com.libVigame.Pay:Amigo:2.1.3
-keep class com.gionee**
-keep class com.gionee**{*;}
-keep class com.statistics**
-keep class com.statistics**{*;}
-keep class com.youju.statistics**
-keep class com.youju.statistics**{*;}
-keep public class * extends android.os.IInterface
-keep public class * extends android.os.Binder
########### Amigo（金立渠道sdk）###########

########### Anzhi（安智支付）###########
#sdk版本：djSDK_3.7.3_20171225
#模块引入：com.libVigame.Pay:AnzhiPay:2.1.5
########### Anzhi（安智支付）###########

########### Duoku（百度多酷sdk）###########
#sdk版本：release_20190404(3.1.3)
#模块引入：com.libVigame.Pay:Duoku:2.1.9
#百度多酷SDK
-keep class a.**
-keep class a.**{*;}
-keep class b.**
-keep class b.**{*;}
-keep class c.**
-keep class c.**{*;}
-keep class d.**
-keep class d.**{*;}
-keep class e.**
-keep class e.**{*;}
-keep class f.**
-keep class f.**{*;}
-keep class g.**
-keep class g.**{*;}
-keep class h.**
-keep class h.**{*;}
-keep class i.**
-keep class i.**{*;}
-keep class com.alipay**
-keep class com.alipay**{*;}
-keep class i**
-keep class i**{*;}
-keep class i**
-keep class i**{*;}

-keep class com.baidu**
-keep class com.baidu**{*;}
-keep class com.duoku**
-keep class com.duoku**{*;}

-keep class com.ta**
-keep class com.ta**{*;}
-keep class com.ut**
-keep class com.ut**{*;}
-keep class org.agoo.ut.device**
-keep class org.agoo.ut.device**{*;}

-keep class HttpUtils**
-keep class HttpUtils**{*;}

-keep class com.nostra13**
-keep class com.nostra13**{*;}

-keep class com.chinaMobile**
-keep class com.chinaMobile**{*;}
-keep class com.sms.purchasesdk.view**
-keep class com.sms.purchasesdk.view**{*;}
-keep class mm.sms.purchasesdk**
-keep class mm.sms.purchasesdk**{*;}

-keep class com.unipay**
-keep class com.unipay**{*;}

-dontwarn android.support.v4.**
-keep class android.support.v4**
-keep class android.support.v4**{*;}
#-keep interface android.support.v4.app.**{*;}
#-keep public class * extends android.support.v4.**
#-keep public class * extends android.app.Fragment


#douku sdk v3.1.3 start
-dontshrink
-dontoptimize
-keepattributes Exceptionss,InnerClasses,Signature,Deprecated,Signature,*Annotation*
-dontpreverify
-verbose
-dontwarn android.net.http.**,android.annotation.**
-dontwarn android.support.v4.**
-ignorewarnings

-keep class **.R$* {
    <fields>;
    <methods>;
}


-keep class com.duoku.** {*; }
-keep class com.baidu.** { *; }

-keep class com.tencent.stat.**{*;}
-keep class com.tencent.mid.**{*;}

-dontwarn okhttp3.**
-keep class okhttp3.**{*;}

-dontwarn okio.**
-keep class okio.**{*;}

-keep class android.annotation.** {
    <fields>;
    <methods>;
}

-keep class org.json.** {
    <fields>;
    <methods>;
}

-keep class com.secneo.** {
	<fields>;
	<methods>;
}

-keep class com.unicom.dcLoader.** {
    <fields>;
    <methods>;
}

-keep public class * extends android.app.Activity
-keep public class * extends android.app.Application
-keep public class * extends android.app.Service
-keep public class * extends android.content.BroadcastReceiver
-keep public class * extends android.content.ContentProvider
-keep public class * extends android.app.backup.BackupAgentHelper
-keep public class * extends android.preference.Preference

-keep class android.support.v4.** { *; }
-keep interface android.support.v4.app.** { *; }
-keep public class * extends android.support.v4.**
-keep public class * extends android.app.Fragment

-keep public class com.android.vending.licensing.ILicensingService

-keep class * extends android.os.Parcelable {
    public static final android.os.Parcelable$Creator *;
}

-keepclasseswithmembers class * {
    public <init>(android.content.Context,android.util.AttributeSet);
}

-keepclasseswithmembers class * {
    public <init>(android.content.Context,android.util.AttributeSet,int);
}

-keepclassmembers class * extends android.app.Activity {
    public void *(android.view.View);
}

-keep class com.qy.** {
    <fields>;
    <methods>;
}

-keep class com.ccit.** {
    <fields>;
    <methods>;
}

-keep class ccit.** {
    <fields>;
    <methods>;
}

-keep class mm.purchasesdk.**
-keep class mm.purchasesdk.** {*;}

-keep class com.secneo.mmb.**
-keep class com.secneo.mmb.** {*;}
-keep class com.chinaMobile.**
-keep class com.chinaMobile.** {*;}

-keep class com.cmcc.**
-keep class com.cmcc.** {*;}

-keep class cn.cmgame.*
-keep class cn.cmgame.** {
    <fields>;
    <methods>;
}

-keep class com.ccit.mmwlan.**
-keep class com.ccit.mmwlan.** {
    <fields>;
    <methods>;
}

-keep class com.baidu.platformsdk.wxpay.**
-keep class com.baidu.platformsdk.wxpay.** {
    <fields>;
    <methods>;
}

-keep class com.daomeng.**
-keep class com.daomeng.** {
    <fields>;
    <methods>;
}

-keep class com.ipaynow.**
-keep class com.ipaynow.** {
    <fields>;
    <methods>;
}

-keep class com.unicom.**
-keep class com.unicom.** {
    <fields>;
    <methods>;
}

-keep class com.alipay.**
-keep class com.alipay.** {
    <fields>;
    <methods>;
}
-keep class com.ta.utdid2.** { *;}
-keep class com.ut.device.** { *;}

-keepclassmembers enum  * {
    public static **[] values();
    public static ** valueOf(java.lang.String);
}

# Keep names - Native method names. Keep all native class/method names.
-keepclasseswithmembers,allowshrinking class * {
    native <methods>;
}

-keep public class com.tendcloud.tenddata.** { public protected *;}
-keep public class * extends android.os.IInterface
-keep public class com.alipay.android.app.IAlixPay
-keepclasseswithmembernames class * { native <methods>;}
-keepclasseswithmembernames class * {
	public <init>(android.content.Context, android.util.AttributeSet);
}
-keepclasseswithmembernames class * {
    public <init>(android.content.Context, android.util.AttributeSet, int);
}
-keepclassmembers enum * {
    public static **[] values();
    public static ** valueOf(java.lang.String);
}
-keepclassmembers class * implements android.os.Parcelable {
    public static final android.os.Parcelable$Creator *;
}
#douku sdk v3.1.3 end
########### Duoku（百度多酷sdk）###########

########### Free（免费版）###########
#模块引入：com.libVigame.Pay:Free:2.1.0
########### Free（免费版）###########

########### GooglePlay（谷歌渠道sdk）###########
#sdk版本：
#模块引入：com.libVigame.Pay:GooglePlay:2.1.3
########### GooglePlay（谷歌渠道sdk）###########

########### Huawei（华为渠道sdk）###########
#sdk版本：HMSAgent_2.6.3.301
#模块引入：com.libVigame.Pay:Huawei:2.2.9
-keep class com.huawei.**
-keep class com.huawei.**{*;}
-keep class com.android.huawei.**
-keep class com.android.huawei.**{*;}
-keep class com.hianalytics.**
-keep class com.hianalytics.**{*;}
-ignorewarning
-keepattributes *Annotation*
-keepattributes Exceptions
-keepattributes InnerClasses
-keepattributes Signature
-keepattributes SourceFile,LineNumberTable
-keep class com.hianalytics.android.**{*;}
-keep class com.huawei.updatesdk.**{*;}
-keep class com.huawei.hms.**{*;}
-keep class com.huawei.gamebox.plugin.gameservice.**{*;}
-keep public class com.huawei.android.hms.agent.** extends android.app.Activity { public *; protected *; }
-keep interface com.huawei.android.hms.agent.common.INoProguard {*;}
-keep class * extends com.huawei.android.hms.agent.common.INoProguard {*;}

-keep class com.huawei.**
-keep class com.huawei.**{*;}
-keep class com.android.huawei.**
-keep class com.android.huawei.**{*;}
-keep class com.hianalytics.**
-keep class com.hianalytics.**{*;}
########### Huawei（华为渠道sdk）###########

########### Huawei_Overseas（华为海外sdk）###########
#sdk版本：华为HMSAgent_2.6.1.302
#模块引入：com.libVigame.Pay:HuaweiOverseas:2.1.2
-keep class com.huawei.oversea.pay.**
-keep class com.huawei.oversea.pay.**{*;}
########### Huawei_Overseas（华为海外sdk）###########

########### Kugou（酷狗渠道sdk）###########
#sdk版本：2.0.0
#模块引入：com.libVigame.Pay:Kugou:2.1.0
-keep class com.unionpay.**
-keep class com.unionpay.**{ *; }
-keep class com.UCMobile.**{ *; }
-keep class com.alipay.**{ *; }
-keep class com.kugou.sdk.**{ *; }
-keep class com.kugou.game.sdk.**{ *; }
########### Kugou（酷狗渠道sdk）###########

########### Lenovo（联想渠道sdk）###########
#sdk版本：爱贝4.0.0_1.0
#模块引入：com.libVigame.Pay:Lenovo:2.1.4
########### Lenovo（联想渠道sdk）###########

########### M4399（4399渠道sdk）###########
#sdk版本：2.0.8
#模块引入：com.libVigame.Pay:M4399:2.0.3
#4399SDK
-dontwarn android.support.v4.**
-keep class android.support.v4.** { *; }
-keep public class * extends android.support.v4.**

-dontwarn com.unipay.**
-keep class cn.m4399.operate.** {*;}
-keep class cn.m4399.recharge.** {*;}
-keepclassmembers class cn.m4399.recharge.R$* {*;}
########### M4399（4399渠道sdk）###########

########### Meitu（美图渠道sdk）###########
#sdk版本：美图游戏联运SDK_v1.0.3
#模块引入：com.libVigame.Pay:Meitu:2.0.1
########### Meitu（美图渠道sdk）###########

########### Meizu（魅族渠道sdk）###########
#sdk版本：魅族单机SDK 2.2.0_20190514
#模块引入：com.libVigame.Pay:Meizu:2.1.9
-keep class com.meizu.**
-keep class com.meizu.**{*;}
########### Meizu（魅族渠道sdk）###########

########### MeizuOline（魅族渠道sdk(网游版)）###########
#sdk版本：魅族网游SDK3.3.1_20170428
#模块引入：com.libVigame.Pay:MeizuOnline:2.0.0
########### MeizuOline（魅族渠道sdk(网游版)）###########

########### Mi（小米渠道sdk(单机版)）###########
#sdk版本：小米游戏单机SDK3.1.0
#模块引入：com.libVigame.Pay:MiSingle:2.1.3
-dontwarn com.xiaomi.**
-keep class com.xiaomi.** {*;}
-dontwarn org.xiaomi.**
-keep class org.xiaomi.** {*;}
-dontwarn com.wali.**
-keep class com.wali.** {*;}
-dontwarn com.mi.milink.**
-keep class com.mi.milink.** {*;}
-dontwarn cn.com.wali.**
-keep class cn.com.wali.** {*;}
-keep class com.example.milinksdkcore.** {*;}
-dontwarn  org.apache.**
-keep class org.apache.** {*;}
-dontwarn android.net.**
-keep class android.net.** {*;}
-keep class android.** {*;}
-keep class com.android.** {*;}
-keep class com.google.** {*;}
-keep class com.alipay.** {*;}
-keep class com.ut.device.** {*;}
-keep class com.ta.utdid2.** {*;}
-keep class org.greenrobot.** {*;}
-keep class com.bumptech.** {*;}
-keep class com.payeco.** {*;}
########### Mi（小米渠道sdk(单机版)）###########

########### Oppo（oppo渠道sdk）###########
#sdk版本：OPPO游戏中心sdk_2.0.1.502_20190227(单机)  替换jar  到 --  gamesdk-20190610
#模块引入：com.libVigame.Pay:Oppo:2.1.9
-keep class com.nearme**
-keep class com.nearme**{*;}
########### Oppo（oppo渠道sdk）###########

########### OppoBuy_Net（oppo买量sdk网游版）###########
#sdk版本：OPPO游戏中心sdk_2.0.2.102_20190722(网游&广告)
#模块引入：com.libVigame.Pay:OppoBuyNet:1.0.0
########### OppoBuy_Net（oppo买量sdk网游版）###########

########### OppoBuy_Single（oppo买量sdk单机版）###########
#sdk版本：OPPO游戏中心sdk_2.0.2.102_20190722(单机&广告)
#模块引入：com.libVigame.Pay:OppoBuySingle:1.0.1
########### OppoBuy_Single（oppo买量sdk单机版）###########

########### SouGou（搜狗渠道sdk）###########
#sdk版本：sogouSingleGameSDK_v2.0.2_2018.03.02
#模块引入：com.libVigame.Pay:SouGou:2.1.2
########### SouGou（搜狗渠道sdk）###########

########### TT（头条渠道sdk）###########
#sdk版本：GameSdk_v3.3.7_10_25
#模块引入：com.libVigame.Pay:TT:1.0.4
########### TT（头条渠道sdk）###########

########### UC（UC渠道sdk）###########
#sdk版本：UC九游单机SDK_1.7.3  大于 1.7.2_4.6.7 支付界面显示的是 4.6.7
#模块引入：com.libVigame.Pay:UC:2.1.1
-keep class com.uc.**
-keep class com.uc.**{*;}
-keep class cn.uc.**
-keep class cn.uc.**{*;}
########### UC（UC渠道sdk）###########

########### Vivo（vivo渠道sdk）###########
#sdk版本：vivoUnionSDK_v4.2.4
#模块引入：com.libVigame.Pay:Vivo:2.2.0
-keep class com.bbkmobile.**
-keep class com.bbkmobile.**{*;}
########### Vivo（vivo渠道sdk）###########

########### Vivo_Overseas（vivo渠道sdk(海外版)）###########
#sdk版本：vivounionsdk_1.0.0.0_release
#模块引入：com.libVigame.Pay:VivoOverseas:2.0.4
########### Vivo_Overseas（vivo渠道sdk(海外版)）###########

########### Vivo_single（特殊备注才使用，vivo渠道sdk(单机版)）###########
#sdk版本：VivoSinglePaySDK_2.2.42
#模块引入：com.libVigame.Pay:VivoSingle:2.0.0
########### Vivo_single（特殊备注才使用，vivo渠道sdk(单机版)）###########

########### WeChat（微信支付）###########
#sdk版本：
#模块引入：com.libVigame.Pay:WeChatPay:2.1.5
########### WeChat（微信支付）###########

########### WK（wifi万能钥匙渠道sdk）###########
#sdk版本：SDK-2.0.1
#模块引入：com.libVigame.Pay:WK:1.0.2
########### WK（wifi万能钥匙渠道sdk）###########

########### YSDK ###########
#sdk版本：YSDK_Android_1.4.5_1078_213_20181025     YSDK_Android_1.4.5_1078
#模块引入：com.libVigame.Pay:YSDK:2.1.6
-keep class com.tencent.**
-keep class com.tencent.**{*;}

-keep class com.demon.**
-keep class com.demon.**{*;}
-keep class com.pay.**
-keep class com.pay.**{*;}
-keep class com.qq.**
-keep class com.qq.**{*;}
-keep class common.**{*;}
-keep class mqq.**{*;}
-keep class qimei.**{*;}
-keep class strategy.**{*;}
-keep class userinfo.**{*;}
-keep class oicq.wlogin_sdk.**{*;}
-keep class exceptionupload.**{*;}
-keep class org.apache.http.**
-keep class org.apache.http.** {*;}
-keep class android.os.**
-keep class android.os.**{*;}
-dontwarn java.nio.file.Files
-dontwarn java.nio.file.Path
-dontwarn java.nio.file.OpenOption
-dontwarn org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement

#该代码混淆文件为YSDK对外提供个游戏开发者集成YSDK时使用
-optimizationpasses 5                   # 指定代码的压缩级别
-dontusemixedcaseclassnames             # 指定代码的压缩级别
-dontskipnonpubliclibraryclasses        # 是否混淆第三方jar
-dontpreverify                          # 混淆时是否做预校验
-dontoptimize
-ignorewarning                          # 忽略警告，避免打包时某些警告出现
-verbose                                # 混淆时是否记录日志
-optimizations !code/simplification/arithmetic,!field/*,!class/merging/*    # 混淆时所采用的算法

-keep public class * extends android.app.Activity
-keep public class * extends android.app.Application
-keep public class * extends android.app.Service
-keep public class * extends android.content.BroadcastReceiver
-keep public class * extends android.content.ContentProvider
-keep public class * extends android.app.backup.BackupAgentHelper
-keep public class * extends android.preference.Preference
-keep public class com.android.vending.licensing.ILicensingService

-keepclasseswithmembernames class * {
    native <methods>;
}

-keepclasseswithmembernames class * {
    public <init>(android.content.Context, android.util.AttributeSet);
}

-keepclasseswithmembernames class * {
    public <init>(android.content.Context, android.util.AttributeSet, int);
}


-keepclassmembers enum * {
    public static **[] values();
    public static ** valueOf(java.lang.String);
}

-keep class * implements android.os.Parcelable {
  public static final android.os.Parcelable$Creator *;
}

-keepattributes InnerClasses
-keep class com.tencent.bugly.**{*;}
-keep class com.tencent.stat.**{*;}
-keep class com.tencent.smtt.**{*;}
-keep class com.tencent.beacon.**{*;}
-keep class com.tencent.mm.**{*;}
-keep class com.tencent.apkupdate.**{*;}
-keep class com.tencent.tmassistantsdk.**{*;}
-keep class org.apache.http.** { * ;}
-keep class com.qq.jce.**{*;}
-keep class com.qq.taf.**{*;}
-keep class com.tencent.connect.**{*;}
-keep class com.tencent.map.**{*;}
-keep class com.tencent.open.**{*;}
-keep class com.tencent.qqconnect.**{*;}
-keep class com.tencent.mobileqq.**{*;}
-keep class com.tencent.tauth.**{*;}
-keep class com.tencent.feedback.**{*;}
-keep class common.**{*;}
-keep class exceptionupload.**{*;}
-keep class mqq.**{*;}
-keep class qimei.**{*;}
-keep class strategy.**{*;}
-keep class userinfo.**{*;}
-keep class com.pay.**{*;}
-keep class com.demon.plugin.**{*;}
-keep class com.tencent.midas.**{*;}
-keep class oicq.wlogin_sdk.**{*;}
-keep class com.tencent.ysdk.**{*;}
-keepclasseswithmembernames class * {
    native <methods>;
}

-dontwarn java.nio.file.Files
-dontwarn java.nio.file.Path
-dontwarn java.nio.file.OpenOption
-dontwarn org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement
########### YSDK ###########

########### PayManager ###########
#模块引入：com.libVigame.Pay:PayManager:2.2.6
########### PayManager ###########

########### PurchaseCenter（自有支付 PurchaseCenter）###########
#模块引入：com.libVigame.Pay:PurchaseCenter:2.1.6
########### PurchaseCenter（自有支付 PurchaseCenter）###########
############################ Pay end ############################


############################ Proxy start ############################
########### Features（jni封装库）###########
#模块引入：com.libVigame.Proxy:Features:2.5.7
########### Features（jni封装库）###########
############################ Proxy end ############################


############################ Push start ############################
########### OPPO（oppo推送）###########
#sdk版本：mcssdk-1.0.1
#模块引入：com.libVigame.Push:Oppo:1.0.1
########### OPPO（oppo推送）###########

########### UMeng（友盟推送）###########
#sdk版本：'com.umeng.umsdk:push:5.0.2'
#模块引入：com.libVigame.Push:UMeng:2.1.9
-keep class com.alibaba.sdk.android.httpdns.**
-keep class com.alibaba.sdk.android.httpdns.**{*;}
-keep class anet.channel.**
-keep class anet.channel.**{*;}
-keep class anetwork.channel.**
-keep class anetwork.channel.**{*;}
-keep class org.android.**
-keep class org.android.**{*;}
-keep class com.taobao.**
-keep class com.taobao.**{*;}
-keep class com.umeng.message.**
-keep class com.umeng.message.**{*;}

-dontwarn com.taobao.**
-dontwarn anet.channel.**
-dontwarn anetwork.channel.**
-dontwarn org.android.**
-dontwarn org.apache.thrift.**
-dontwarn com.xiaomi.**
-dontwarn com.huawei.**

-keepattributes *Annotation*

-keep class com.taobao.** {*;}
-keep class org.android.** {*;}
-keep class anet.channel.** {*;}
-keep class com.umeng.** {*;}
-keep class com.xiaomi.** {*;}
-keep class com.huawei.** {*;}
-keep class org.apache.thrift.** {*;}

-keep class com.alibaba.sdk.android.**{*;}
-keep class com.ut.**{*;}
-keep class com.ta.**{*;}

-keep public class **.R$*{
   public static final int *;
}
########### UMeng（友盟推送）###########

########### PushManager ###########
#模块引入：com.libVigame.Push:PHManager:2.1.4
########### PushManager ###########
############################ Push end ############################


############################ Social start ############################
########### AliGame（阿里游戏社交模块）###########
#sdk版本：
#模块引入：com.libVigame.Social:AliGame:2.1.0
-keep class cn.gosdk.**
-keep class cn.gosdk.**{*;}
-keep class cn.uc.**
-keep class cn.uc.** {*;}
-keep class com.ds.**
-keep class com.ds.** { *; }
-keep class com.uc.crashsdk.**
-keep class com.uc.crashsdk.**{*;}
-keep interface com.uc.crashsdk.** { *; }
-keep class com.uc.crashsdk.JNIBridge { *; }
-keep public class * extends android.app.Service
-keepclassmembers class * implements cn.gosdk.event.SDKEventReceiver {*;}

########### AliGame（阿里游戏社交模块）###########

########### AliGame2（阿里游戏社交模块）###########
#sdk版本：
#模块引入：com.libVigame.Social:AliGame2:2.1.1
########### AliGame2（阿里游戏社交模块）###########

########### Downjoy（当乐社交模块）###########
#sdk版本：
#模块引入：com.libVigame.Social:Downjoy:2.1.1
########### Downjoy（当乐社交模块）###########

########### FaceBook（fb社交模块）###########
#sdk版本：4.40.0
#模块引入：com.libVigame.Social:Facebook:2.1.9
########### FaceBook（fb社交模块）###########

########### MSDK2（MSDK社交模块）###########
#sdk版本：MSDK_Android_2.16.0a_svn73089        MidasPluginSDK-release-1.6.3d
#模块引入：com.libVigame.Social:Msdk2:2.1.7
########### MSDK2（MSDK社交模块）###########

########### QihooOnline（360渠道网游sdk）###########
#sdk版本：V1.0.1_9102
#模块引入：com.libVigame.Social:QihooOnline:2.1.0
########### QihooOnline（360渠道网游sdk）###########

########### QihooOffline（360渠道单机SDK）###########
#sdk版本：1002.1.8(698)
#模块引入：com.libVigame.Social:QihooOffline:2.2.0
-keep class okhttp3.** {*;}
-dontwarn okhttp3.**
-keep class com.yeepay.** {*;}
-dontwarn com.yeepay.**
-keep class com.tencent.** {*;}
-dontwarn com.tencent.**
-keep class com.sina.** {*;}
-dontwarn com.sina.**
-keep class com.qihoosdk.** {*;}
-dontwarn com.qihoosdk.**
-keep class com.qihoopp.** {*;}
-dontwarn com.qihoopp.**
-keep class com.qihoo360.** {*;}
-dontwarn com.qihoo360.**
-keep class com.qihoo.** {*;}
-dontwarn com.qihoo.**
-keep class com.nearme.atlas.** {*;}
-dontwarn com.nearme.atlas.**
-keep class com.ipaynow.** {*;}
-dontwarn com.ipaynow.**
-keep class com.iapppay.** {*;}
-dontwarn com.iapppay.**
-keep class com.heepay.** {*;}
-dontwarn com.heepay.**
-keep class com.cloudplay.** {*;}
-dontwarn com.cloudplay.**
-keep class com.alipay.** {*;}
-dontwarn com.alipay.**
-keep class com.a.** {*;}
-dontwarn com.a.**
-keep class cn.pp.** {*;}
-dontwarn cn.pp.**
-keep class org.json.alipay.** {*;}
-dontwarn org.json.alipay.**
-keep class qihoohttp.** {*;}
-dontwarn qihoohttp.**
########### QihooOffline（360渠道单机SDK）###########

########### QQ（QQ社交模块）###########
#sdk版本：
#模块引入：com.libVigame.Social:QQ:2.1.0
########### QQ（QQ社交模块）###########

########### WeChat（微信社交模块）###########
#sdk版本：
#模块引入：com.libVigame.Social:WeChat:2.1.9
########### WeChat（微信社交模块）###########

########### SocialManager ###########
#模块引入：com.libVigame.Social:SocialManager:2.1.7
########### SocialManager ###########
############################ Social end ############################


############################ Tj start ############################
########### Adjust（adjust统计追踪）###########
#sdk版本：com.adjust.sdk:adjust-android:4.18.0
#模块引入：com.libVigame.TJ:Adjust:1.0.1
-keep class com.adjust.sdk.** { *; }
-keep class com.google.android.gms.common.ConnectionResult {
    int SUCCESS;
}
-keep class com.google.android.gms.ads.identifier.AdvertisingIdClient {
    com.google.android.gms.ads.identifier.AdvertisingIdClient$Info getAdvertisingIdInfo(android.content.Context);
}
-keep class com.google.android.gms.ads.identifier.AdvertisingIdClient$Info {
    java.lang.String getId();
    boolean isLimitAdTrackingEnabled();
}
-keep public class com.android.installreferrer.** { *; }
########### Adjust（adjust统计追踪）###########

########### Appsflyer（AppsFlyer统计）###########
#sdk版本：com.appsflyer:af-android-sdk:4.8.6
#模块引入：com.libVigame.TJ:AppsFlyer:2.0.8
-dontwarn com.android.installreferrer
-keep class com.appsflyer.** { *; }
########### Appsflyer（AppsFlyer统计）###########

########### DateEye（DateEye统计）###########
#sdk版本：DataEye_Android_v2.9.3   +  DataEye_Tracking_Android_v1.9.3
#模块引入：com.libVigame.TJ:DateEye:2.1.0
-keep public class com.dataeye.** {*;}
-keep public interface com.dataeye.** {*;}
-dontwarn com.unity3d.player.**
-keep class com.unity3d.player.**
-keepattributes SourceFile,LineNumberTable
########### DateEye（DateEye统计）###########

########### Facebook（fb统计）###########
#sdk版本：
#模块引入：com.libVigame.TJ:Facebook:2.1.6
-keep class com.facebook.**{*;}
########### Facebook（fb统计）###########

########### Firebase（FireBase统计）###########
#sdk版本：
#模块引入：com.libVigame.TJ:FireBase:2.0.6
########### Firebase（FireBase统计）###########

########### GDT（GDT统计上报）###########
#sdk版本：
#模块引入：com.libVigame.TJ:GDT:2.0.0
-dontwarn com.qq.gdt.action.**
-keep class com.qq.gdt.action.** {*;}
########### GDT（GDT统计上报）###########

########### HeadLine（头条广告追踪）###########
#sdk版本：TouTiao_Android_SDK_2.0.5
#模块引入：com.libVigame.TJ:HeadLine:2.0.2
-keep com.bytedance.**
-keep com.bytedance.**{*;}
-keep com.ss.android.common.**
-keep com.ss.android.common.**{*;}
########### HeadLine（头条广告追踪）###########

########### Tenjin（Tenjin统计）###########
#sdk版本：com.appsflyer:af-android-sdk:4.8.6
#模块引入：com.libVigame.TJ:Tenjin:1.0.0
-keep class com.tenjin.** { *; }
-keep public class com.google.android.gms.ads.identifier.** { *; }
-keep public class com.google.android.gms.common.** { *; }
-keep public class com.android.installreferrer.** { *; }
-keep class * extends java.util.ListResourceBundle {
    protected Object[][] getContents();
}
-keepattributes *Annotation*
########### Tenjin（Tenjin统计）###########

########### UMeng（友盟统计）###########
#sdk版本：com.umeng.umsdk:game:8.0.0+G
#模块引入：com.libVigame.TJ:UMeng:2.0.5
-keep class com.umeng.**
-keep class com.umeng.**{*;}
########### UMeng（友盟统计）###########

########### TJManager ###########
#模块引入：com.libVigame.TJ:TJManager:2.0.7
########### TJManager ###########
############################ Tj end ############################


############################ Other start ############################
#MM强联网
-keep class com.ccit.**
-keep class com.ccit.**{*;}
-keep class com.chinaMobile.**
-keep class com.chinaMobile.**{*;}
-keep class com.cmcc.**
-keep class com.cmcc.**{*;}
-keep class mm.purchasesdk.**
-keep class mm.purchasesdk.**{*;}
-keep class safiap.**
-keep class safiap.**{*;}
-keep class com.secneo.**
-keep class com.secneo.**{*;}

#移动游戏基地
#-libraryjars runtime/CMBilling.jar
-keep public class cn.cmgame.billing.api**
-keep public class cn.cmgame.billing.api**{*;}

#移动游戏基地-咪咕视频录制
-keep class com.wonxing.**
-keep class com.wonxing.**{*;}

#联通手机游戏
-keep class com.linktech**
-keep class com.linktech**{*;}

#银联
-keep class com.unionpay.**
-keep class com.unionpay.**{ *; }
-keep class cn.gov.pbc.**
-keep class cn.gov.pbc.**{ *; }
-keep class com.UCMobile.PayPlugin.**
-keep class com.UCMobile.PayPlugin.**{ *; }

#应用宝积分墙
-keep class a.a.**
-keep class a.a.**{*;}
-keep class com.a.a.a.**
-keep class com.a.a.a.**{*;}
-keep class com.qq.taf.**
-keep class com.qq.taf.**{*;}
-keep class com.tencent.**
-keep class com.tencent.**{*;}

#umeng分享 --- start
-dontusemixedcaseclassnames
	-dontshrink
	-dontoptimize
	-dontwarn com.google.android.maps.**
	-dontwarn android.webkit.WebView
	-dontwarn com.umeng.**
	-dontwarn com.tencent.weibo.sdk.**
	-dontwarn com.facebook.**
	-keep public class javax.**
	-keep public class android.webkit.**
	-dontwarn android.support.v4.**
	-keep enum com.facebook.**
	-keepattributes Exceptions,InnerClasses,Signature
	-keepattributes *Annotation*
	-keepattributes SourceFile,LineNumberTable

	-keep public interface com.facebook.**
	-keep public interface com.tencent.**
	-keep public interface com.umeng.socialize.**
	-keep public interface com.umeng.socialize.sensor.**
	-keep public interface com.umeng.scrshot.**
	-keep class com.android.dingtalk.share.ddsharemodule.** { *; }
	-keep public class com.umeng.socialize.* {*;}

	-keep class com.facebook.**
	-keep class com.facebook.** { *; }
	-keep class com.umeng.scrshot.**
	-keep public class com.tencent.** {*;}
	-keep class com.umeng.socialize.sensor.**
	-keep class com.umeng.socialize.handler.**
	-keep class com.umeng.socialize.handler.*
	-keep class com.umeng.weixin.handler.**
	-keep class com.umeng.weixin.handler.*
	-keep class com.umeng.qq.handler.**
	-keep class com.umeng.qq.handler.*
	-keep class UMMoreHandler{*;}
	-keep class com.tencent.mm.sdk.modelmsg.WXMediaMessage {*;}
	-keep class com.tencent.mm.sdk.modelmsg.** implements 	com.tencent.mm.sdk.modelmsg.WXMediaMessage$IMediaObject {*;}
	-keep class im.yixin.sdk.api.YXMessage {*;}
	-keep class im.yixin.sdk.api.** implements im.yixin.sdk.api.YXMessage$YXMessageData{*;}
	-keep class com.tencent.mm.sdk.** {
  	 *;
	}
	-keep class com.tencent.mm.opensdk.** {
   *;
	}
	-dontwarn twitter4j.**
	-keep class twitter4j.** { *; }

	-keep class com.tencent.** {*;}
	-dontwarn com.tencent.**
	-keep public class com.umeng.com.umeng.soexample.R$*{
    public static final int *;
	}
	-keep public class com.linkedin.android.mobilesdk.R$*{
    public static final int *;
		}
	-keepclassmembers enum * {
    public static **[] values();
    public static ** valueOf(java.lang.String);
	}

	-keep class com.tencent.open.TDialog$*
	-keep class com.tencent.open.TDialog$* {*;}
	-keep class com.tencent.open.PKDialog
	-keep class com.tencent.open.PKDialog {*;}
	-keep class com.tencent.open.PKDialog$*
	-keep class com.tencent.open.PKDialog$* {*;}

	-keep class com.sina.** {*;}
	-dontwarn com.sina.**
	-keep class  com.alipay.share.sdk.** {
	   *;
	}
	-keepnames class * implements android.os.Parcelable {
    public static final ** CREATOR;
	}

	-keep class com.linkedin.** { *; }
	-keepattributes Signature
#umeng分享 --- end

#BuglySDK
-dontwarn com.tencent.bugly.**
-keep public class com.tencent.bugly.**{*;}

#icon4399
# sdk
-keeppackagenames cn.m4399.ad
-keep class cn.m4399.ad.** {*;}
# Aidl
-keep class cn.m4399.** {*; }
-dontwarn cn.m4399.**
-dontwarn com.m4399.gamecenter.**
-keep public class com.m4399.gamecenter.** {*;}
#icon4399 end

#didi
-keep class com.didi.virtualapk.internal.VAInstrumentation { *; }
-keep class com.didi.virtualapk.internal.PluginContentResolver { *; }

-dontwarn com.didi.virtualapk.**
-dontwarn android.**
-keep class android.** { *; }
-dontwarn com.didi.virtualapk.**
-keep class com.didi.virtualapk.** { *; }

#something else
#保留
-keep class com.libAD.ADAgents.**{ *;}

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
-keepclassmembers class fqcn.of.javascript.interface.for.webview {
   public *;
}

-dontusemixedcaseclassnames
-dontskipnonpubliclibraryclasses
-dontpreverify
-verbose
-dontoptimize
-dontshrink
-allowaccessmodification
-keepattributes *Annotation*
-keepattributes Exceptions
-keepattributes JavascriptInterface
-keepattributes LineNumberTable
-keepattributes Signature
-keepattributes SourceFile

-keep public class * extends android.app.Activity
-keep public class * extends android.app.Application
-keep public class * extends android.app.Service
-keep public class * extends android.content.BroadcastReceiver
-keep public class * extends android.content.ContentProvider
-keep public class * extends android.app.backup.BackupAgentHelper
-keep public class * extends android.preference.Preference
-keep public class com.android.vending.licensing.ILicensingService
-dontnote com.android.vending.licensing.ILicensingService

-keepclasseswithmembernames class * {
    native <methods>;
}

-keepclassmembers enum * {
    public static <fields>;
    public static **[] values();
    public static ** valueOf(java.lang.String);
}

-keep class com.google.**{*;}
-keep class sun.misc.Unsafe { *; }
-keepnames class * implements java.io.Serializable
-keepclassmembers class * implements java.io.Serializable {
    static final long serialVersionUID;
    private static final java.io.ObjectStreamField[] serialPersistentFields;
    !static !transient <fields>;
    private void writeObject(java.io.ObjectOutputStream);
    private void readObject(java.io.ObjectInputStream);
    java.lang.Object writeReplace();
    java.lang.Object readResolve();
}

-keep class * extends java.util.ListResourceBundle {
    protected Object[][] getContents();
}

-keepclassmembers class * extends android.view.View {
    public <init>(android.content.Context);
    public <init>(android.content.Context);
    public <init>(android.content.Context, android.util.AttributeSet);
    public <init>(android.content.Context, android.util.AttributeSet, int);
    void set*(***);
    *** get*();
}

-keepclassmembers class * extends android.app.Activity {
    public void *(android.view.View);
}

-keep class * implements android.os.Parcelable {
    public static final android.os.Parcelable$Creator *;
}

-keep class **.R$* {
    public static <fields>;
}

-keep @android.support.annotation.Keep class *
-keep @android.support.annotation.Keep interface *

-keepclassmembers class * {
    @android.support.annotation.Keep <methods>;
}

-keepclassmembers class * {
    @android.support.annotation.Keep <fields>;
}

-keepclassmembers interface * {
    @android.support.annotation.Keep <methods>;
}

-keepclassmembers class * {
    @android.webkit.JavascriptInterface <methods>;
}

-assumenosideeffects class android.util.Log {
    public static boolean isLoggable(java.lang.String,int);
    public static int v(...);
    public static int i(...);
    public static int w(...);
    public static int d(...);
    public static int e(...);
}
############################ Other end ############################

#####用户协议模块    com.libVigame.Extention:Protocol  模块
-keep class com.libExtention.ProtocolExt
-keep class com.libExtention.ProtocolExt{*;}



####----其他补充------####



