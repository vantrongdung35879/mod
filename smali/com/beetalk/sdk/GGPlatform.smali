.class public Lcom/beetalk/sdk/GGPlatform;
.super Ljava/lang/Object;
.source "GGPlatform.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beetalk/sdk/GGPlatform$WakeupNotifyCallback;,
        Lcom/beetalk/sdk/GGPlatform$ShareCallback;,
        Lcom/beetalk/sdk/GGPlatform$UserInfoCallback;,
        Lcom/beetalk/sdk/GGPlatform$UserFriendIDListCallback;,
        Lcom/beetalk/sdk/GGPlatform$FriendGroupListCallback;,
        Lcom/beetalk/sdk/GGPlatform$GroupFriendInfoCallback;,
        Lcom/beetalk/sdk/GGPlatform$Callback;,
        Lcom/beetalk/sdk/GGPlatform$FriendInfoCallback;
    }
.end annotation


# static fields
.field private static appId:Ljava/lang/String;

.field private static appKey:Ljava/lang/String;

.field private static volatile applicationContext:Landroid/content/Context;

.field private static garenaLoginTitle:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$smbindCurrentPlatformWithGuest(Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V
    .locals 0

    invoke-static {p0}, Lcom/beetalk/sdk/GGPlatform;->bindCurrentPlatformWithGuest(Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smreLoginSession(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/beetalk/sdk/GGPlatform;->reLoginSession(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smsecondRoundLogin(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/beetalk/sdk/GGPlatform;->secondRoundLogin(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GGCheckLineInstalled(Landroid/content/Context;)Z
    .locals 1

    .line 1631
    const-string v0, "jp.naver.line.android"

    invoke-static {v0, p0}, Lcom/beetalk/sdk/helper/Helper;->isPackageInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static GGEnableDebugLog()V
    .locals 1

    const/4 v0, 0x1

    .line 1232
    invoke-static {v0}, Lcom/beetalk/sdk/SDKConstants;->setDebugMode(Z)V

    return-void
.end method

.method public static GGFacebookGooglePlay(Landroid/app/Activity;)V
    .locals 1

    .line 994
    const-string v0, "com.facebook.katana"

    invoke-static {p0, v0}, Lcom/beetalk/sdk/helper/Helper;->openInGooglePlay(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static GGFeedback(Landroid/app/Activity;Ljava/lang/String;Lcom/beetalk/sdk/plugin/GGPluginCallback;)V
    .locals 2

    .line 1216
    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->checkInValidityOfSession()Z

    move-result v0

    const-string v1, "app.feedback"

    if-eqz v0, :cond_0

    .line 1217
    invoke-static {p2, v1}, Lcom/beetalk/sdk/GGPlatform;->complainAboutLogin(Lcom/beetalk/sdk/plugin/GGPluginCallback;Ljava/lang/String;)V

    return-void

    .line 1220
    :cond_0
    new-instance v0, Lcom/beetalk/sdk/GGPlatform$6;

    invoke-direct {v0, p1}, Lcom/beetalk/sdk/GGPlatform$6;-><init>(Ljava/lang/String;)V

    .line 1225
    invoke-static {}, Lcom/beetalk/sdk/plugin/GGPluginManager;->getInstance()Lcom/beetalk/sdk/plugin/GGPluginManager;

    move-result-object p1

    invoke-virtual {p1, p0, v1, v0, p2}, Lcom/beetalk/sdk/plugin/GGPluginManager;->invokePlugin(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;Lcom/beetalk/sdk/plugin/GGPluginCallback;)V

    return-void
.end method

.method public static GGGetDeviceID(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1531
    invoke-static {p0}, Lcom/garena/android/gpns/utility/DeviceUtil;->generateDeviceId(Landroid/content/Context;)J

    move-result-wide v0

    .line 1532
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static GGGetEnvironment()Lcom/beetalk/sdk/SDKConstants$GGEnvironment;
    .locals 1

    .line 1011
    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getEnvironment()Lcom/beetalk/sdk/SDKConstants$GGEnvironment;

    move-result-object v0

    return-object v0
.end method

.method public static GGGetFacebookAccessToken()Ljava/lang/String;
    .locals 2

    .line 1587
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1588
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->isExpired()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1589
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1591
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public static GGGetSDKVersion()Ljava/lang/String;
    .locals 1

    .line 1208
    const-string v0, "4.0.39"

    return-object v0
.end method

.method public static GGGetSessionForAppPlatformBind(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V
    .locals 0

    .line 735
    invoke-static {p0, p1}, Lcom/beetalk/sdk/GGPlatform;->wrapCallbackWithoutLoginAgain(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)Lcom/beetalk/sdk/GGLoginSession$SessionCallback;

    move-result-object p1

    .line 736
    invoke-static {p0, p1}, Lcom/beetalk/sdk/GGLoginSession;->obtainActiveAppPlatformBindSession(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V

    return-void
.end method

.method public static GGGetSessionForBind(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V
    .locals 1

    .line 362
    invoke-static {p0, p1}, Lcom/beetalk/sdk/GGPlatform;->wrapCallbackWithoutLoginAgain(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)Lcom/beetalk/sdk/GGLoginSession$SessionCallback;

    move-result-object p1

    .line 363
    const-string v0, "normal"

    invoke-static {p0, v0, p1}, Lcom/beetalk/sdk/GGLoginSession;->obtainActiveBindSession(Landroid/app/Activity;Ljava/lang/String;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V

    return-void
.end method

.method public static GGGetSessionForBindV2(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V
    .locals 1

    .line 368
    invoke-static {p0, p1}, Lcom/beetalk/sdk/GGPlatform;->wrapCallbackWithoutLoginAgain(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)Lcom/beetalk/sdk/GGLoginSession$SessionCallback;

    move-result-object p1

    .line 369
    const-string v0, "guest_swap"

    invoke-static {p0, v0, p1}, Lcom/beetalk/sdk/GGLoginSession;->obtainActiveBindSession(Landroid/app/Activity;Ljava/lang/String;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V

    return-void
.end method

.method public static GGGetSessionForSwap(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V
    .locals 1

    .line 374
    invoke-static {p0, p1}, Lcom/beetalk/sdk/GGPlatform;->wrapCallbackWithoutLoginAgain(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)Lcom/beetalk/sdk/GGLoginSession$SessionCallback;

    move-result-object p1

    .line 375
    const-string v0, "account_swap"

    invoke-static {p0, v0, p1}, Lcom/beetalk/sdk/GGLoginSession;->obtainActiveSwapSession(Landroid/app/Activity;Ljava/lang/String;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V

    return-void
.end method

.method public static GGGetUserInfo(Landroid/app/Activity;Lcom/beetalk/sdk/GGPlatform$UserInfoCallback;)V
    .locals 3

    .line 1298
    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->checkInValidityOfSession()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1299
    invoke-static {p1}, Lcom/beetalk/sdk/GGPlatform;->complainAboutLogin(Lcom/beetalk/sdk/GGPlatform$UserInfoCallback;)V

    return-void

    .line 1302
    :cond_0
    invoke-static {}, Lcom/beetalk/sdk/plugin/GGPluginManager;->getInstance()Lcom/beetalk/sdk/plugin/GGPluginManager;

    move-result-object v0

    const-string v1, "msdk.user.info.get"

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2, p1}, Lcom/beetalk/sdk/plugin/GGPluginManager;->invokePlugin(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;Lcom/beetalk/sdk/plugin/GGPluginCallback;)V

    return-void
.end method

.method public static GGHasGuestAccount()Z
    .locals 1

    .line 405
    invoke-static {}, Lcom/beetalk/sdk/cache/PersistentCache;->getInstance()Lcom/beetalk/sdk/cache/PersistentCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beetalk/sdk/cache/PersistentCache;->getGuestUID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static GGIsPlatformInstalled(Landroid/content/Context;I)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v1, 0x3

    if-eq p1, v1, :cond_3

    const/16 v1, 0xb

    if-eq p1, v1, :cond_2

    const/4 v1, 0x5

    if-eq p1, v1, :cond_1

    const/4 v1, 0x6

    if-eq p1, v1, :cond_0

    return v0

    .line 1248
    :cond_0
    const-string p1, "jp.naver.line.android"

    invoke-static {p1, p0}, Lcom/beetalk/sdk/helper/Helper;->isPackageInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p0

    return p0

    .line 1246
    :cond_1
    const-string p1, "com.vkontakte.android"

    invoke-static {p1, p0}, Lcom/beetalk/sdk/helper/Helper;->isPackageInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p0

    return p0

    .line 1252
    :cond_2
    const-string p1, "com.twitter.android"

    invoke-static {p1, p0}, Lcom/beetalk/sdk/helper/Helper;->isPackageInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p0

    return p0

    .line 1244
    :cond_3
    const-string p1, "com.facebook.katana"

    invoke-static {p1, p0}, Lcom/beetalk/sdk/helper/Helper;->isPackageInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p0

    return p0

    .line 1250
    :cond_4
    const-string p1, "com.garena.gas"

    invoke-static {p1, p0}, Lcom/beetalk/sdk/helper/Helper;->isPackageInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "com.garena.gaslite"

    invoke-static {p1, p0}, Lcom/beetalk/sdk/helper/Helper;->isPackageInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_6

    :cond_5
    const/4 v0, 0x1

    :cond_6
    return v0
.end method

.method public static GGLoadAppFriendGroups(Landroid/app/Activity;Lcom/beetalk/sdk/GGPlatform$FriendGroupListCallback;)V
    .locals 3

    .line 1317
    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->checkInValidityOfSession()Z

    move-result v0

    const-string v1, "msdk.load.inapp.friendgroups.list"

    if-eqz v0, :cond_0

    .line 1318
    invoke-static {p1, v1}, Lcom/beetalk/sdk/GGPlatform;->complainAboutLogin(Lcom/beetalk/sdk/GGPlatform$FriendGroupListCallback;Ljava/lang/String;)V

    return-void

    .line 1321
    :cond_0
    invoke-static {}, Lcom/beetalk/sdk/plugin/GGPluginManager;->getInstance()Lcom/beetalk/sdk/plugin/GGPluginManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2, p1}, Lcom/beetalk/sdk/plugin/GGPluginManager;->invokePlugin(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;Lcom/beetalk/sdk/plugin/GGPluginCallback;)V

    return-void
.end method

.method public static GGLoadFacebookInfo(Landroid/app/Activity;Lcom/beetalk/sdk/plugin/GGPluginCallback;)V
    .locals 3

    .line 990
    invoke-static {}, Lcom/beetalk/sdk/plugin/GGPluginManager;->getInstance()Lcom/beetalk/sdk/plugin/GGPluginManager;

    move-result-object v0

    const-string v1, "facebook.request.me"

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2, p1}, Lcom/beetalk/sdk/plugin/GGPluginManager;->invokePlugin(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;Lcom/beetalk/sdk/plugin/GGPluginCallback;)V

    return-void
.end method

.method public static GGLoadFriendGroups(Landroid/app/Activity;Lcom/beetalk/sdk/GGPlatform$FriendGroupListCallback;)V
    .locals 3

    .line 1335
    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->checkInValidityOfSession()Z

    move-result v0

    const-string v1, "msdk.load.friendgroups.list"

    if-eqz v0, :cond_0

    .line 1336
    invoke-static {p1, v1}, Lcom/beetalk/sdk/GGPlatform;->complainAboutLogin(Lcom/beetalk/sdk/GGPlatform$FriendGroupListCallback;Ljava/lang/String;)V

    return-void

    .line 1339
    :cond_0
    invoke-static {}, Lcom/beetalk/sdk/plugin/GGPluginManager;->getInstance()Lcom/beetalk/sdk/plugin/GGPluginManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2, p1}, Lcom/beetalk/sdk/plugin/GGPluginManager;->invokePlugin(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;Lcom/beetalk/sdk/plugin/GGPluginCallback;)V

    return-void
.end method

.method public static GGLoadGroupFriendsInfo(Landroid/app/Activity;Ljava/util/List;Lcom/beetalk/sdk/GGPlatform$GroupFriendInfoCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/beetalk/sdk/GGPlatform$GroupFriendInfoCallback;",
            ")V"
        }
    .end annotation

    .line 1353
    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->checkInValidityOfSession()Z

    move-result v0

    const-string v1, "msdk.group.friend.info"

    if-eqz v0, :cond_0

    .line 1354
    invoke-static {p2, v1}, Lcom/beetalk/sdk/GGPlatform;->complainAboutLogin(Lcom/beetalk/sdk/GGPlatform$GroupFriendInfoCallback;Ljava/lang/String;)V

    return-void

    .line 1357
    :cond_0
    invoke-static {}, Lcom/beetalk/sdk/plugin/GGPluginManager;->getInstance()Lcom/beetalk/sdk/plugin/GGPluginManager;

    move-result-object v0

    invoke-virtual {v0, p0, v1, p1, p2}, Lcom/beetalk/sdk/plugin/GGPluginManager;->invokePlugin(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;Lcom/beetalk/sdk/plugin/GGPluginCallback;)V

    return-void
.end method

.method public static GGOpenUrlInGas(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3

    .line 1558
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1561
    invoke-static {p0, v0}, Lcom/beetalk/sdk/GGPlatform;->GGPlatformInstalledVersionCode(Landroid/app/Activity;I)I

    move-result v0

    const/16 v1, 0x59

    const-string v2, "android.intent.action.VIEW"

    if-lt v0, v1, :cond_2

    .line 1563
    const-string v0, "garena://deeplink"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1564
    new-instance v0, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_0

    .line 1566
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.garena.gas.intent.OPEN_GAS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1567
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1569
    :goto_0
    const-string v1, "com.garena.gas"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1571
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1574
    invoke-static {v0}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/Exception;)V

    .line 1577
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1578
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static GGParseWakeUpNotify(Landroid/app/Activity;Lcom/beetalk/sdk/GGPlatform$WakeupNotifyCallback;)V
    .locals 1

    .line 1019
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const-string v0, "com.garena.msdk.game_launch_bundle"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    .line 1020
    new-instance v0, Lcom/beetalk/sdk/GGPlatform$4;

    invoke-direct {v0, p0}, Lcom/beetalk/sdk/GGPlatform$4;-><init>(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    .line 1028
    invoke-interface {p1, v0}, Lcom/beetalk/sdk/GGPlatform$WakeupNotifyCallback;->OnWakeupNotify(Lcom/beetalk/sdk/ndk/WakeupRet;)V

    :cond_0
    return-void
.end method

.method public static GGPlatformInstalledVersion(Landroid/app/Activity;I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/16 v0, 0xb

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    .line 1274
    const-string p0, ""

    return-object p0

    .line 1264
    :cond_0
    const-string p1, "jp.naver.line.android"

    invoke-static {p0, p1}, Lcom/beetalk/sdk/helper/Helper;->getPackageVersion(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1262
    :cond_1
    const-string p1, "com.vkontakte.android"

    invoke-static {p0, p1}, Lcom/beetalk/sdk/helper/Helper;->getPackageVersion(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1272
    :cond_2
    const-string p1, "com.twitter.android"

    invoke-static {p0, p1}, Lcom/beetalk/sdk/helper/Helper;->getPackageVersion(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1260
    :cond_3
    const-string p1, "com.facebook.katana"

    invoke-static {p0, p1}, Lcom/beetalk/sdk/helper/Helper;->getPackageVersion(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1266
    :cond_4
    const-string p1, "com.garena.gas"

    invoke-static {p1, p0}, Lcom/beetalk/sdk/helper/Helper;->isPackageInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1267
    invoke-static {p0, p1}, Lcom/beetalk/sdk/helper/Helper;->getPackageVersion(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1269
    :cond_5
    const-string p1, "com.garena.gaslite"

    invoke-static {p0, p1}, Lcom/beetalk/sdk/helper/Helper;->getPackageVersion(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static GGPlatformInstalledVersionCode(Landroid/app/Activity;I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/16 v0, 0xb

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1284
    :cond_0
    const-string p1, "jp.naver.line.android"

    invoke-static {p0, p1}, Lcom/beetalk/sdk/helper/Helper;->getPackageVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0

    .line 1282
    :cond_1
    const-string p1, "com.vkontakte.android"

    invoke-static {p0, p1}, Lcom/beetalk/sdk/helper/Helper;->getPackageVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0

    .line 1292
    :cond_2
    const-string p1, "com.twitter.android"

    invoke-static {p0, p1}, Lcom/beetalk/sdk/helper/Helper;->getPackageVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0

    .line 1280
    :cond_3
    const-string p1, "com.facebook.katana"

    invoke-static {p0, p1}, Lcom/beetalk/sdk/helper/Helper;->getPackageVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0

    .line 1286
    :cond_4
    const-string p1, "com.garena.gas"

    invoke-static {p1, p0}, Lcom/beetalk/sdk/helper/Helper;->isPackageInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1287
    invoke-static {p0, p1}, Lcom/beetalk/sdk/helper/Helper;->getPackageVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0

    .line 1289
    :cond_5
    const-string p1, "com.garena.gaslite"

    invoke-static {p0, p1}, Lcom/beetalk/sdk/helper/Helper;->getPackageVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static GGPushCancelAll(Landroid/content/Context;)V
    .locals 1

    .line 1521
    const-string v0, "Application Context"

    invoke-static {p0, v0}, Lcom/beetalk/sdk/helper/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1522
    invoke-static {p0}, Lcom/garena/android/push/PushClient;->cancelAll(Landroid/content/Context;)V

    return-void
.end method

.method public static GGPushCancelLocal(Landroid/content/Context;I)V
    .locals 1

    .line 1511
    const-string v0, "Application Context"

    invoke-static {p0, v0}, Lcom/beetalk/sdk/helper/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1512
    invoke-static {p0, p1}, Lcom/garena/android/push/PushClient;->cancelNotification(Landroid/content/Context;I)V

    return-void
.end method

.method public static GGPushRegister(Landroid/app/Activity;Lcom/garena/android/push/PushClient$PushRequest;)V
    .locals 0

    .line 1484
    invoke-static {}, Lcom/garena/android/msdk/push/gcm/FCMNotificationReceiver;->registerToken()V

    return-void
.end method

.method public static GGPushRegister(Landroid/app/Activity;Lcom/garena/android/push/PushClient$PushRequest;Lcom/garena/android/PushNotificationStateListener;)V
    .locals 0

    .line 1464
    invoke-static {p0, p1}, Lcom/beetalk/sdk/GGPlatform;->GGPushRegister(Landroid/app/Activity;Lcom/garena/android/push/PushClient$PushRequest;)V

    return-void
.end method

.method public static GGPushScheduleLocal(Lcom/garena/android/push/NotificationData;Landroid/content/Context;J)V
    .locals 2

    .line 1498
    const-string v0, "Application Context"

    invoke-static {p1, v0}, Lcom/beetalk/sdk/helper/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1499
    const-string v0, "Notification Data"

    invoke-static {p0, v0}, Lcom/beetalk/sdk/helper/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x3e8

    mul-long p2, p2, v0

    .line 1501
    invoke-virtual {p0, p1, p2, p3}, Lcom/garena/android/push/NotificationData;->scheduleNotification(Landroid/content/Context;J)V

    return-void
.end method

.method public static GGResetGuest(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 387
    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentBindSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 390
    invoke-virtual {v0}, Lcom/beetalk/sdk/GGLoginSession;->getCache()Lcom/beetalk/sdk/cache/StorageCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/beetalk/sdk/cache/StorageCache;->clearSession()V

    const/4 v1, 0x0

    .line 391
    invoke-static {v1}, Lcom/beetalk/sdk/GGLoginSession;->setCurrentBindSession(Lcom/beetalk/sdk/GGLoginSession;)V

    .line 393
    new-instance v1, Lcom/beetalk/sdk/cache/SharedPrefStorage;

    invoke-direct {v1, p0}, Lcom/beetalk/sdk/cache/SharedPrefStorage;-><init>(Landroid/content/Context;)V

    .line 394
    invoke-virtual {v0, v1}, Lcom/beetalk/sdk/GGLoginSession;->setCache(Lcom/beetalk/sdk/cache/StorageCache;)V

    .line 395
    invoke-static {v0}, Lcom/beetalk/sdk/GGLoginSession;->setCurrentSession(Lcom/beetalk/sdk/GGLoginSession;)V

    .line 396
    invoke-virtual {v0}, Lcom/beetalk/sdk/GGLoginSession;->getTokenValue()Lcom/beetalk/sdk/data/AuthToken;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/beetalk/sdk/cache/SharedPrefStorage;->putToken(Lcom/beetalk/sdk/data/AuthToken;)V

    goto :goto_0

    .line 398
    :cond_0
    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->clearSession()Z

    .line 400
    :goto_0
    invoke-static {}, Lcom/beetalk/sdk/cache/AccountManagerHelper;->getInstance()Lcom/beetalk/sdk/cache/AccountManagerHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/beetalk/sdk/cache/AccountManagerHelper;->clear()V

    .line 401
    invoke-static {}, Lcom/beetalk/sdk/cache/PersistentCache;->getInstance()Lcom/beetalk/sdk/cache/PersistentCache;

    move-result-object p0

    invoke-virtual {p0}, Lcom/beetalk/sdk/cache/PersistentCache;->deleteGuestInfo()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static GGSendEventToFacebook(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1684
    invoke-static {p0}, Lcom/facebook/appevents/AppEventsLogger;->newLogger(Landroid/content/Context;)Lcom/facebook/appevents/AppEventsLogger;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;)V

    return-void
.end method

.method public static GGSendEventToFacebook(Landroid/content/Context;Ljava/lang/String;D)V
    .locals 0

    .line 1680
    invoke-static {p0}, Lcom/facebook/appevents/AppEventsLogger;->newLogger(Landroid/content/Context;)Lcom/facebook/appevents/AppEventsLogger;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;D)V

    return-void
.end method

.method public static GGSendEventToFacebook(Landroid/content/Context;Ljava/lang/String;DLandroid/os/Bundle;)V
    .locals 0

    .line 1671
    invoke-static {p0}, Lcom/facebook/appevents/AppEventsLogger;->newLogger(Landroid/content/Context;)Lcom/facebook/appevents/AppEventsLogger;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;DLandroid/os/Bundle;)V

    return-void
.end method

.method public static GGSendEventToFacebook(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 1676
    invoke-static {p0}, Lcom/facebook/appevents/AppEventsLogger;->newLogger(Landroid/content/Context;)Lcom/facebook/appevents/AppEventsLogger;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static GGSendGameRequestToFacebookUser(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/beetalk/sdk/plugin/GGPluginCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/beetalk/sdk/plugin/GGPluginCallback<",
            "Lcom/beetalk/sdk/plugin/PluginResult;",
            ">;)V"
        }
    .end annotation

    .line 1147
    new-instance v0, Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;

    invoke-direct {v0}, Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;-><init>()V

    .line 1148
    invoke-virtual {v0, p1}, Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;->uid(Ljava/lang/String;)Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;

    move-result-object p1

    .line 1149
    invoke-virtual {p1, p2}, Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;->title(Ljava/lang/String;)Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;

    move-result-object p1

    .line 1150
    invoke-virtual {p1, p3}, Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;->description(Ljava/lang/String;)Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;

    move-result-object p1

    .line 1151
    invoke-virtual {p1, p4}, Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;->data(Ljava/lang/String;)Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;

    move-result-object p1

    .line 1152
    invoke-virtual {p1}, Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;->build()Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData;

    move-result-object p1

    .line 1153
    invoke-static {}, Lcom/beetalk/sdk/plugin/GGPluginManager;->getInstance()Lcom/beetalk/sdk/plugin/GGPluginManager;

    move-result-object p2

    const-string p3, "facebook.game.message"

    .line 1154
    invoke-virtual {p2, p0, p3, p1, p5}, Lcom/beetalk/sdk/plugin/GGPluginManager;->invokePlugin(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;Lcom/beetalk/sdk/plugin/GGPluginCallback;)V

    return-void
.end method

.method public static GGSendGameToSession(Landroid/app/Activity;Lcom/beetalk/sdk/GGTextShare;Lcom/beetalk/sdk/plugin/GGPluginCallback;)V
    .locals 2

    .line 959
    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beetalk/sdk/GGLoginSession;->getSessionProvider()Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    move-result-object v0

    sget-object v1, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->GARENA:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    if-ne v0, v1, :cond_0

    .line 960
    invoke-static {}, Lcom/beetalk/sdk/plugin/GGPluginManager;->getInstance()Lcom/beetalk/sdk/plugin/GGPluginManager;

    move-result-object v0

    const-string v1, "gas.share.text"

    invoke-virtual {v0, p0, v1, p1, p2}, Lcom/beetalk/sdk/plugin/GGPluginManager;->invokePlugin(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;Lcom/beetalk/sdk/plugin/GGPluginCallback;)V

    :cond_0
    return-void
.end method

.method public static GGSendImageToFBMessenger(Landroid/app/Activity;[BLcom/beetalk/sdk/plugin/GGPluginCallback;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1131
    invoke-static {}, Lcom/beetalk/sdk/plugin/GGPluginManager;->getInstance()Lcom/beetalk/sdk/plugin/GGPluginManager;

    move-result-object v0

    const-string v1, "facebook.messenger.send.image"

    invoke-virtual {v0, p0, v1, p1, p2}, Lcom/beetalk/sdk/plugin/GGPluginManager;->invokePlugin(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;Lcom/beetalk/sdk/plugin/GGPluginCallback;)V

    return-void
.end method

.method public static GGSendLinkToFacebook(Landroid/app/Activity;Lcom/beetalk/sdk/facebook/FBPostItem;Lcom/beetalk/sdk/plugin/GGPluginCallback;)V
    .locals 2

    .line 1061
    invoke-static {}, Lcom/beetalk/sdk/plugin/GGPluginManager;->getInstance()Lcom/beetalk/sdk/plugin/GGPluginManager;

    move-result-object v0

    const-string v1, "facebook.share.fallback"

    invoke-virtual {v0, p0, v1, p1, p2}, Lcom/beetalk/sdk/plugin/GGPluginManager;->invokePlugin(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;Lcom/beetalk/sdk/plugin/GGPluginCallback;)V

    return-void
.end method

.method public static GGSendLinkToSession(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/beetalk/sdk/GGPlatform$ShareCallback;)V
    .locals 1

    .line 1378
    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object p5

    invoke-virtual {p5}, Lcom/beetalk/sdk/GGLoginSession;->getApplicationId()Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p5

    .line 1379
    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object p7

    invoke-virtual {p7}, Lcom/beetalk/sdk/GGLoginSession;->getPlatform()Ljava/lang/Integer;

    move-result-object p7

    invoke-virtual {p7}, Ljava/lang/Integer;->intValue()I

    move-result p7

    const/4 v0, 0x1

    if-ne p7, v0, :cond_0

    .line 1380
    new-instance p7, Lcom/beetalk/sdk/GGTextShare$Builder;

    invoke-direct {p7, p5}, Lcom/beetalk/sdk/GGTextShare$Builder;-><init>(I)V

    .line 1381
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p7, p1}, Lcom/beetalk/sdk/GGTextShare$Builder;->setScene(Ljava/lang/Integer;)Lcom/beetalk/sdk/GGTextShare$Builder;

    move-result-object p1

    .line 1382
    invoke-virtual {p1, p6}, Lcom/beetalk/sdk/GGTextShare$Builder;->setDesc(Ljava/lang/String;)Lcom/beetalk/sdk/GGTextShare$Builder;

    move-result-object p1

    .line 1383
    invoke-virtual {p1, p2}, Lcom/beetalk/sdk/GGTextShare$Builder;->setMediaTag(Ljava/lang/String;)Lcom/beetalk/sdk/GGTextShare$Builder;

    move-result-object p1

    .line 1384
    invoke-virtual {p1, p4}, Lcom/beetalk/sdk/GGTextShare$Builder;->setTitle(Ljava/lang/String;)Lcom/beetalk/sdk/GGTextShare$Builder;

    move-result-object p1

    .line 1385
    invoke-virtual {p1, p3}, Lcom/beetalk/sdk/GGTextShare$Builder;->setUrl(Ljava/lang/String;)Lcom/beetalk/sdk/GGTextShare$Builder;

    move-result-object p1

    .line 1386
    invoke-virtual {p1}, Lcom/beetalk/sdk/GGTextShare$Builder;->build()Lcom/beetalk/sdk/GGTextShare;

    move-result-object p1

    .line 1387
    invoke-static {}, Lcom/beetalk/sdk/plugin/GGPluginManager;->getInstance()Lcom/beetalk/sdk/plugin/GGPluginManager;

    move-result-object p2

    new-instance p3, Lcom/beetalk/sdk/GGPlatform$7;

    invoke-direct {p3, p8}, Lcom/beetalk/sdk/GGPlatform$7;-><init>(Lcom/beetalk/sdk/GGPlatform$ShareCallback;)V

    const-string p4, "gas.share.url"

    invoke-virtual {p2, p0, p4, p1, p3}, Lcom/beetalk/sdk/plugin/GGPluginManager;->invokePlugin(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;Lcom/beetalk/sdk/plugin/GGPluginCallback;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 1399
    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "Unsupported Platform Chosen"

    invoke-static {p1, p0}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static GGSendMediaToSession(Landroid/app/Activity;Lcom/beetalk/sdk/GGPhotoShare;Lcom/beetalk/sdk/plugin/GGPluginCallback;)V
    .locals 2

    .line 980
    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beetalk/sdk/GGLoginSession;->getSessionProvider()Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    move-result-object v0

    sget-object v1, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->GARENA:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    if-ne v0, v1, :cond_0

    .line 981
    invoke-static {}, Lcom/beetalk/sdk/plugin/GGPluginManager;->getInstance()Lcom/beetalk/sdk/plugin/GGPluginManager;

    move-result-object v0

    const-string v1, "gas.share.photo"

    invoke-virtual {v0, p0, v1, p1, p2}, Lcom/beetalk/sdk/plugin/GGPluginManager;->invokePlugin(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;Lcom/beetalk/sdk/plugin/GGPluginCallback;)V

    :cond_0
    return-void
.end method

.method public static GGSendMessageToFacebook(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/beetalk/sdk/plugin/GGPluginCallback;)V
    .locals 1

    .line 1110
    new-instance v0, Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;

    invoke-direct {v0}, Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;-><init>()V

    .line 1111
    invoke-virtual {v0, p1}, Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;->title(Ljava/lang/String;)Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;

    move-result-object p1

    .line 1112
    invoke-virtual {p1, p2}, Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;->description(Ljava/lang/String;)Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;

    move-result-object p1

    .line 1113
    invoke-virtual {p1, p3}, Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;->contentUrl(Ljava/lang/String;)Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;

    move-result-object p1

    .line 1114
    invoke-virtual {p1, p4}, Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;->imageUrl(Ljava/lang/String;)Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;

    move-result-object p1

    .line 1115
    invoke-virtual {p1}, Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;->build()Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData;

    move-result-object p1

    .line 1116
    invoke-static {}, Lcom/beetalk/sdk/plugin/GGPluginManager;->getInstance()Lcom/beetalk/sdk/plugin/GGPluginManager;

    move-result-object p2

    const-string p3, "facebook.message"

    invoke-virtual {p2, p0, p3, p1, p5}, Lcom/beetalk/sdk/plugin/GGPluginManager;->invokePlugin(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;Lcom/beetalk/sdk/plugin/GGPluginCallback;)V

    return-void
.end method

.method public static GGSendRequestInvitationToFacebook(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/beetalk/sdk/plugin/GGPluginCallback;)V
    .locals 2

    .line 1043
    invoke-static {}, Lcom/beetalk/sdk/plugin/GGPluginManager;->getInstance()Lcom/beetalk/sdk/plugin/GGPluginManager;

    move-result-object v0

    new-instance v1, Lcom/beetalk/sdk/GGPlatform$5;

    invoke-direct {v1, p1, p2}, Lcom/beetalk/sdk/GGPlatform$5;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "facebook.invite"

    invoke-virtual {v0, p0, p1, v1, p3}, Lcom/beetalk/sdk/plugin/GGPluginManager;->invokePlugin(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;Lcom/beetalk/sdk/plugin/GGPluginCallback;)V

    return-void
.end method

.method public static GGSetEnvironment(Lcom/beetalk/sdk/SDKConstants$GGEnvironment;)V
    .locals 0

    .line 1007
    invoke-static {p0}, Lcom/beetalk/sdk/SDKConstants;->setSandboxMode(Lcom/beetalk/sdk/SDKConstants$GGEnvironment;)V

    return-void
.end method

.method public static GGShareToFacebook(Landroid/app/Activity;Lcom/beetalk/sdk/facebook/FBPostItem;Lcom/beetalk/sdk/plugin/GGPluginCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/beetalk/sdk/facebook/FBPostItem;",
            "Lcom/beetalk/sdk/plugin/GGPluginCallback<",
            "Lcom/beetalk/sdk/plugin/PluginResult;",
            ">;)V"
        }
    .end annotation

    .line 1079
    invoke-static {}, Lcom/beetalk/sdk/plugin/GGPluginManager;->getInstance()Lcom/beetalk/sdk/plugin/GGPluginManager;

    move-result-object v0

    const-string v1, "facebook.share"

    invoke-virtual {v0, p0, v1, p1, p2}, Lcom/beetalk/sdk/plugin/GGPluginManager;->invokePlugin(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;Lcom/beetalk/sdk/plugin/GGPluginCallback;)V

    return-void
.end method

.method public static GGShareToLine(Landroid/app/Activity;Lcom/beetalk/sdk/line/LinePostItem;Lcom/beetalk/sdk/plugin/GGPluginCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/beetalk/sdk/line/LinePostItem;",
            "Lcom/beetalk/sdk/plugin/GGPluginCallback<",
            "Lcom/beetalk/sdk/plugin/PluginResult;",
            ">;)V"
        }
    .end annotation

    .line 1622
    invoke-static {}, Lcom/beetalk/sdk/plugin/GGPluginManager;->getInstance()Lcom/beetalk/sdk/plugin/GGPluginManager;

    move-result-object v0

    const-string v1, "line.share"

    invoke-virtual {v0, p0, v1, p1, p2}, Lcom/beetalk/sdk/plugin/GGPluginManager;->invokePlugin(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;Lcom/beetalk/sdk/plugin/GGPluginCallback;)V

    return-void
.end method

.method public static GGShareToTikTok(Landroid/app/Activity;Lcom/garena/android/share/model/ShareContent;Lcom/beetalk/sdk/plugin/GGPluginCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/garena/android/share/model/ShareContent;",
            "Lcom/beetalk/sdk/plugin/GGPluginCallback<",
            "Lcom/beetalk/sdk/plugin/PluginResult;",
            ">;)V"
        }
    .end annotation

    .line 1699
    invoke-static {}, Lcom/beetalk/sdk/plugin/GGPluginManager;->getInstance()Lcom/beetalk/sdk/plugin/GGPluginManager;

    move-result-object v0

    const-string/jumbo v1, "tiktok.share"

    invoke-virtual {v0, p0, v1, p1, p2}, Lcom/beetalk/sdk/plugin/GGPluginManager;->invokePlugin(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;Lcom/beetalk/sdk/plugin/GGPluginCallback;)V

    return-void
.end method

.method public static GGShareToTwitter(Landroid/app/Activity;Lcom/beetalk/sdk/twitter/TwitterPostItem;Lcom/beetalk/sdk/plugin/GGPluginCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/beetalk/sdk/twitter/TwitterPostItem;",
            "Lcom/beetalk/sdk/plugin/GGPluginCallback<",
            "Lcom/beetalk/sdk/plugin/PluginResult;",
            ">;)V"
        }
    .end annotation

    .line 1646
    invoke-static {}, Lcom/beetalk/sdk/plugin/GGPluginManager;->getInstance()Lcom/beetalk/sdk/plugin/GGPluginManager;

    move-result-object v0

    const-string/jumbo v1, "twitter.share"

    invoke-virtual {v0, p0, v1, p1, p2}, Lcom/beetalk/sdk/plugin/GGPluginManager;->invokePlugin(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;Lcom/beetalk/sdk/plugin/GGPluginCallback;)V

    return-void
.end method

.method public static GGShareToVk(Landroid/app/Activity;Lcom/beetalk/sdk/vk/VKPostItem;Lcom/beetalk/sdk/plugin/GGPluginCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/beetalk/sdk/vk/VKPostItem;",
            "Lcom/beetalk/sdk/plugin/GGPluginCallback<",
            "Lcom/beetalk/sdk/plugin/PluginResult;",
            ">;)V"
        }
    .end annotation

    .line 1607
    invoke-static {}, Lcom/beetalk/sdk/plugin/GGPluginManager;->getInstance()Lcom/beetalk/sdk/plugin/GGPluginManager;

    move-result-object v0

    const-string/jumbo v1, "vk.share"

    invoke-virtual {v0, p0, v1, p1, p2}, Lcom/beetalk/sdk/plugin/GGPluginManager;->invokePlugin(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;Lcom/beetalk/sdk/plugin/GGPluginCallback;)V

    return-void
.end method

.method public static GGShareVideoToFacebookReels(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/beetalk/sdk/plugin/GGPluginCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/beetalk/sdk/plugin/GGPluginCallback<",
            "Lcom/beetalk/sdk/plugin/PluginResult;",
            ">;)V"
        }
    .end annotation

    .line 1660
    invoke-static {}, Lcom/beetalk/sdk/plugin/GGPluginManager;->getInstance()Lcom/beetalk/sdk/plugin/GGPluginManager;

    move-result-object v0

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string p1, "facebook.reels"

    invoke-virtual {v0, p0, p1, v1, p3}, Lcom/beetalk/sdk/plugin/GGPluginManager;->invokePlugin(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;Lcom/beetalk/sdk/plugin/GGPluginCallback;)V

    return-void
.end method

.method public static GGShareVideoToFacebookWall(Landroid/app/Activity;Lcom/beetalk/sdk/facebook/FBPostItem;Lcom/beetalk/sdk/plugin/GGPluginCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/beetalk/sdk/facebook/FBPostItem;",
            "Lcom/beetalk/sdk/plugin/GGPluginCallback<",
            "Lcom/beetalk/sdk/plugin/PluginResult;",
            ">;)V"
        }
    .end annotation

    .line 1092
    invoke-static {}, Lcom/beetalk/sdk/plugin/GGPluginManager;->getInstance()Lcom/beetalk/sdk/plugin/GGPluginManager;

    move-result-object v0

    const-string v1, "facebook.share.video"

    invoke-virtual {v0, p0, v1, p1, p2}, Lcom/beetalk/sdk/plugin/GGPluginManager;->invokePlugin(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;Lcom/beetalk/sdk/plugin/GGPluginCallback;)V

    return-void
.end method

.method public static GGVkGooglePlay(Landroid/app/Activity;)V
    .locals 1

    .line 998
    const-string v0, "com.vkontakte.android"

    invoke-static {p0, v0}, Lcom/beetalk/sdk/helper/Helper;->openInGooglePlay(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static bind(Landroid/app/Activity;ILcom/beetalk/sdk/GGLoginSession$SessionCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 410
    invoke-static {p0, p2}, Lcom/beetalk/sdk/GGPlatform;->wrapCallback(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)Lcom/beetalk/sdk/GGLoginSession$SessionCallback;

    move-result-object p2

    .line 412
    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    const/16 v1, 0xe

    const/16 v2, 0xd

    const/4 v3, 0x6

    const/4 v4, 0x5

    const/16 v5, 0xb

    const/16 v6, 0x8

    const/4 v7, 0x1

    const/4 v8, 0x3

    if-eqz v0, :cond_9

    .line 413
    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beetalk/sdk/GGLoginSession;->getSessionProvider()Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    move-result-object v0

    sget-object v9, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->GUEST:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    if-ne v0, v9, :cond_9

    .line 414
    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beetalk/sdk/GGLoginSession;->getSessionStatus()Lcom/beetalk/sdk/SessionStatus;

    move-result-object v0

    sget-object v9, Lcom/beetalk/sdk/SessionStatus;->TOKEN_AVAILABLE:Lcom/beetalk/sdk/SessionStatus;

    if-ne v0, v9, :cond_9

    if-ne p1, v8, :cond_0

    .line 417
    sget-object p1, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->FACEBOOK:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    invoke-static {p0, p1, p2}, Lcom/beetalk/sdk/GGPlatform;->bindPlatformWhenGuestLogin(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession$SessionProvider;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V

    goto/16 :goto_1

    :cond_0
    if-ne p1, v7, :cond_1

    .line 419
    sget-object p1, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->GARENA:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    invoke-static {p0, p1, p2}, Lcom/beetalk/sdk/GGPlatform;->bindPlatformWhenGuestLogin(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession$SessionProvider;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V

    goto/16 :goto_1

    :cond_1
    const/4 p3, 0x4

    if-ne p1, p3, :cond_2

    goto/16 :goto_1

    :cond_2
    if-nez p1, :cond_3

    goto/16 :goto_1

    :cond_3
    if-ne p1, v4, :cond_4

    .line 425
    sget-object p1, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->VK:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    invoke-static {p0, p1, p2}, Lcom/beetalk/sdk/GGPlatform;->bindPlatformWhenGuestLogin(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession$SessionProvider;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V

    goto/16 :goto_1

    :cond_4
    if-ne p1, v3, :cond_5

    .line 427
    sget-object p1, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->LINE:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    invoke-static {p0, p1, p2}, Lcom/beetalk/sdk/GGPlatform;->bindPlatformWhenGuestLogin(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession$SessionProvider;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V

    goto/16 :goto_1

    :cond_5
    if-ne p1, v6, :cond_6

    .line 429
    sget-object p1, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->GOOGLE:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    invoke-static {p0, p1, p2}, Lcom/beetalk/sdk/GGPlatform;->bindPlatformWhenGuestLogin(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession$SessionProvider;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V

    goto/16 :goto_1

    :cond_6
    if-ne p1, v5, :cond_7

    .line 431
    sget-object p1, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->TWITTER:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    invoke-static {p0, p1, p2}, Lcom/beetalk/sdk/GGPlatform;->bindPlatformWhenGuestLogin(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession$SessionProvider;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V

    goto/16 :goto_1

    :cond_7
    if-ne p1, v2, :cond_8

    .line 433
    sget-object p1, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->EMAIL:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    invoke-static {p0, p1, p2}, Lcom/beetalk/sdk/GGPlatform;->bindPlatformWhenGuestLogin(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession$SessionProvider;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V

    goto/16 :goto_1

    :cond_8
    if-ne p1, v1, :cond_16

    .line 435
    sget-object p1, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->PLAY_GAMES:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    invoke-static {p0, p1, p2}, Lcom/beetalk/sdk/GGPlatform;->bindPlatformWhenGuestLogin(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession$SessionProvider;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V

    goto/16 :goto_1

    .line 437
    :cond_9
    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 438
    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beetalk/sdk/GGLoginSession;->getSessionProvider()Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    move-result-object v0

    sget-object v9, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->GUEST:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    if-eq v0, v9, :cond_a

    .line 439
    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beetalk/sdk/GGLoginSession;->getSessionStatus()Lcom/beetalk/sdk/SessionStatus;

    move-result-object v0

    sget-object v9, Lcom/beetalk/sdk/SessionStatus;->TOKEN_AVAILABLE:Lcom/beetalk/sdk/SessionStatus;

    if-ne v0, v9, :cond_a

    .line 440
    invoke-static {p2}, Lcom/beetalk/sdk/GGPlatform;->bindCurrentPlatformWithGuest(Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V

    goto/16 :goto_1

    .line 441
    :cond_a
    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 442
    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beetalk/sdk/GGLoginSession;->getSessionStatus()Lcom/beetalk/sdk/SessionStatus;

    move-result-object v0

    sget-object v9, Lcom/beetalk/sdk/SessionStatus;->TOKEN_AVAILABLE:Lcom/beetalk/sdk/SessionStatus;

    if-eq v0, v9, :cond_16

    .line 444
    :cond_b
    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    .line 446
    new-array v0, v0, [Ljava/lang/Object;

    const-string v9, "session exists"

    invoke-static {v9, v0}, Lcom/beetalk/sdk/helper/BBLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_c
    if-eq p1, v7, :cond_14

    if-eq p1, v8, :cond_13

    if-eq p1, v6, :cond_12

    if-eq p1, v5, :cond_11

    if-eq p1, v4, :cond_10

    if-eq p1, v3, :cond_f

    if-eq p1, v2, :cond_e

    if-eq p1, v1, :cond_d

    return-void

    .line 476
    :cond_d
    sget-object p1, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->PLAY_GAMES:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    goto :goto_0

    .line 473
    :cond_e
    sget-object p1, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->EMAIL:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    goto :goto_0

    .line 464
    :cond_f
    sget-object p1, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->LINE:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    goto :goto_0

    .line 461
    :cond_10
    sget-object p1, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->VK:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    goto :goto_0

    .line 470
    :cond_11
    sget-object p1, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->TWITTER:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    goto :goto_0

    .line 467
    :cond_12
    sget-object p1, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->GOOGLE:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    goto :goto_0

    .line 455
    :cond_13
    sget-object p1, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->FACEBOOK:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    goto :goto_0

    .line 458
    :cond_14
    sget-object p1, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->GARENA:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    .line 482
    :goto_0
    new-instance v0, Lcom/beetalk/sdk/GGLoginSession$Builder;

    invoke-direct {v0, p0}, Lcom/beetalk/sdk/GGLoginSession$Builder;-><init>(Landroid/content/Context;)V

    .line 483
    invoke-virtual {v0, p4}, Lcom/beetalk/sdk/GGLoginSession$Builder;->setApplicationId(Ljava/lang/String;)Lcom/beetalk/sdk/GGLoginSession$Builder;

    move-result-object p4

    sget-object v0, Lcom/beetalk/sdk/AuthMode;->LEGACY_ENABLED:Lcom/beetalk/sdk/AuthMode;

    .line 484
    invoke-virtual {p4, v0}, Lcom/beetalk/sdk/GGLoginSession$Builder;->setAuthMode(Lcom/beetalk/sdk/AuthMode;)Lcom/beetalk/sdk/GGLoginSession$Builder;

    move-result-object p4

    .line 485
    invoke-virtual {p4, p1}, Lcom/beetalk/sdk/GGLoginSession$Builder;->setSessionProvider(Lcom/beetalk/sdk/GGLoginSession$SessionProvider;)Lcom/beetalk/sdk/GGLoginSession$Builder;

    move-result-object p1

    .line 486
    invoke-virtual {p1}, Lcom/beetalk/sdk/GGLoginSession$Builder;->build()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object p1

    .line 487
    invoke-static {p1}, Lcom/beetalk/sdk/GGPlatform;->initialize(Lcom/beetalk/sdk/GGLoginSession;)V

    .line 490
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_15

    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object p1

    if-eqz p1, :cond_15

    .line 492
    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/beetalk/sdk/GGLoginSession;->setApplicationKey(Ljava/lang/String;)V

    .line 495
    :cond_15
    invoke-static {p0, p2}, Lcom/beetalk/sdk/GGPlatform;->loginWithBind(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V

    :cond_16
    :goto_1
    return-void
.end method

.method private static bindCurrentPlatformWithGuest(Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V
    .locals 7

    const/4 v0, 0x0

    .line 528
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "bindCurrentPlatformWithGuest"

    invoke-static {v1, v0}, Lcom/beetalk/sdk/helper/BBLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 529
    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    .line 530
    invoke-virtual {v0}, Lcom/beetalk/sdk/GGLoginSession;->getSessionProvider()Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    move-result-object v1

    sget-object v2, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->GUEST:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 531
    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->processSessionBindFail()V

    .line 532
    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    invoke-interface {p0, v0, v3}, Lcom/beetalk/sdk/GGLoginSession$SessionCallback;->onSessionProcessed(Lcom/beetalk/sdk/GGLoginSession;Ljava/lang/Exception;)V

    goto :goto_0

    .line 534
    :cond_0
    invoke-virtual {v0}, Lcom/beetalk/sdk/GGLoginSession;->getSessionStatus()Lcom/beetalk/sdk/SessionStatus;

    move-result-object v1

    sget-object v2, Lcom/beetalk/sdk/SessionStatus;->TOKEN_AVAILABLE:Lcom/beetalk/sdk/SessionStatus;

    if-eq v1, v2, :cond_1

    .line 535
    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->processSessionBindFail()V

    .line 536
    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    invoke-interface {p0, v0, v3}, Lcom/beetalk/sdk/GGLoginSession$SessionCallback;->onSessionProcessed(Lcom/beetalk/sdk/GGLoginSession;Ljava/lang/Exception;)V

    return-void

    .line 540
    :cond_1
    invoke-virtual {v0}, Lcom/beetalk/sdk/GGLoginSession;->getTokenValue()Lcom/beetalk/sdk/data/AuthToken;

    move-result-object v1

    .line 541
    invoke-virtual {v0}, Lcom/beetalk/sdk/GGLoginSession;->getCache()Lcom/beetalk/sdk/cache/StorageCache;

    move-result-object v2

    invoke-virtual {v2}, Lcom/beetalk/sdk/cache/StorageCache;->getGuestToken()Lcom/beetalk/sdk/data/AuthToken;

    move-result-object v2

    .line 542
    invoke-static {}, Lcom/beetalk/sdk/cache/PersistentCache;->getInstance()Lcom/beetalk/sdk/cache/PersistentCache;

    move-result-object v4

    invoke-virtual {v4}, Lcom/beetalk/sdk/cache/PersistentCache;->getGuestUID()Ljava/lang/String;

    move-result-object v4

    .line 543
    invoke-static {}, Lcom/beetalk/sdk/cache/PersistentCache;->getInstance()Lcom/beetalk/sdk/cache/PersistentCache;

    move-result-object v5

    invoke-virtual {v5}, Lcom/beetalk/sdk/cache/PersistentCache;->getGuestPassword()Ljava/lang/String;

    move-result-object v5

    .line 544
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 545
    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->processSessionBindFail()V

    .line 546
    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    invoke-interface {p0, v0, v3}, Lcom/beetalk/sdk/GGLoginSession$SessionCallback;->onSessionProcessed(Lcom/beetalk/sdk/GGLoginSession;Ljava/lang/Exception;)V

    return-void

    :cond_2
    if-nez v2, :cond_3

    .line 551
    sget-object v2, Lcom/beetalk/sdk/request/ResponseType;->TOKEN:Lcom/beetalk/sdk/request/ResponseType;

    invoke-virtual {v0}, Lcom/beetalk/sdk/GGLoginSession;->getApplicationId()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lcom/beetalk/sdk/GGPlatform$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0, v0, v1}, Lcom/beetalk/sdk/GGPlatform$$ExternalSyntheticLambda0;-><init>(Lcom/beetalk/sdk/GGLoginSession$SessionCallback;Lcom/beetalk/sdk/GGLoginSession;Lcom/beetalk/sdk/data/AuthToken;)V

    invoke-static {v4, v5, v2, v3, v6}, Lcom/beetalk/sdk/networking/service/AuthService;->grantGuestToken(Ljava/lang/String;Ljava/lang/String;Lcom/beetalk/sdk/request/ResponseType;Ljava/lang/String;Lcom/beetalk/sdk/networking/HttpRequestTask$JSONObjectCallback;)V

    goto :goto_0

    .line 607
    :cond_3
    invoke-static {v1, v2, p0}, Lcom/beetalk/sdk/GGPlatform;->inspectGuestTokenAndBindWhenCurrentPlatformTokenAvailable(Lcom/beetalk/sdk/data/AuthToken;Lcom/beetalk/sdk/data/AuthToken;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V

    :goto_0
    return-void
.end method

.method public static bindOrUpdateMobileNum(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/beetalk/sdk/GGPlatform$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/beetalk/sdk/GGPlatform$Callback<",
            "Lcom/garena/android/model/Result<",
            "Lcom/beetalk/sdk/networking/model/UpdateMobileNumberResponse;",
            ">;>;)V"
        }
    .end annotation

    .line 1760
    invoke-static {p0, p1, p2, p3}, Lcom/beetalk/sdk/account/ParentalController;->updateParentPhoneNum(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/beetalk/sdk/GGPlatform$Callback;)V

    return-void
.end method

.method public static bindPlatformWhenGuestLogin(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession$SessionProvider;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V
    .locals 4

    .line 651
    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    .line 652
    invoke-virtual {v0}, Lcom/beetalk/sdk/GGLoginSession;->getSessionProvider()Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    move-result-object v1

    sget-object v2, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->GUEST:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    if-ne v1, v2, :cond_0

    .line 653
    invoke-virtual {v0}, Lcom/beetalk/sdk/GGLoginSession;->getSessionStatus()Lcom/beetalk/sdk/SessionStatus;

    move-result-object v1

    sget-object v2, Lcom/beetalk/sdk/SessionStatus;->TOKEN_AVAILABLE:Lcom/beetalk/sdk/SessionStatus;

    if-ne v1, v2, :cond_0

    .line 655
    invoke-virtual {v0}, Lcom/beetalk/sdk/GGLoginSession;->getTokenValue()Lcom/beetalk/sdk/data/AuthToken;

    move-result-object v1

    .line 656
    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->clearSession()Z

    .line 657
    new-instance v2, Lcom/beetalk/sdk/GGLoginSession$Builder;

    invoke-direct {v2, p0}, Lcom/beetalk/sdk/GGLoginSession$Builder;-><init>(Landroid/content/Context;)V

    .line 658
    invoke-virtual {v0}, Lcom/beetalk/sdk/GGLoginSession;->getApplicationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/beetalk/sdk/GGLoginSession$Builder;->setApplicationId(Ljava/lang/String;)Lcom/beetalk/sdk/GGLoginSession$Builder;

    move-result-object v2

    .line 659
    invoke-virtual {v0}, Lcom/beetalk/sdk/GGLoginSession;->getApplicationKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/beetalk/sdk/GGLoginSession$Builder;->setApplicationKey(Ljava/lang/String;)Lcom/beetalk/sdk/GGLoginSession$Builder;

    move-result-object v2

    sget-object v3, Lcom/beetalk/sdk/AuthMode;->LEGACY_ENABLED:Lcom/beetalk/sdk/AuthMode;

    .line 660
    invoke-virtual {v2, v3}, Lcom/beetalk/sdk/GGLoginSession$Builder;->setAuthMode(Lcom/beetalk/sdk/AuthMode;)Lcom/beetalk/sdk/GGLoginSession$Builder;

    move-result-object v2

    .line 661
    invoke-virtual {v2, p1}, Lcom/beetalk/sdk/GGLoginSession$Builder;->setSessionProvider(Lcom/beetalk/sdk/GGLoginSession$SessionProvider;)Lcom/beetalk/sdk/GGLoginSession$Builder;

    move-result-object p1

    .line 662
    invoke-virtual {p1}, Lcom/beetalk/sdk/GGLoginSession$Builder;->build()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object p1

    .line 664
    invoke-static {p1}, Lcom/beetalk/sdk/GGPlatform;->initialize(Lcom/beetalk/sdk/GGLoginSession;)V

    const/4 p1, 0x0

    .line 665
    new-array p1, p1, [Ljava/lang/Object;

    const-string/jumbo v2, "start to login platform"

    invoke-static {v2, p1}, Lcom/beetalk/sdk/helper/BBLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 666
    new-instance p1, Lcom/beetalk/sdk/GGPlatform$2;

    invoke-direct {p1, p0, v0, p2, v1}, Lcom/beetalk/sdk/GGPlatform$2;-><init>(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;Lcom/beetalk/sdk/data/AuthToken;)V

    invoke-static {p0, p1}, Lcom/beetalk/sdk/GGPlatform;->login(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 717
    invoke-interface {p2, v0, p0}, Lcom/beetalk/sdk/GGLoginSession$SessionCallback;->onSessionProcessed(Lcom/beetalk/sdk/GGLoginSession;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method private static checkInValidityOfSession()Z
    .locals 2

    .line 943
    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 944
    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beetalk/sdk/GGLoginSession;->getSessionStatus()Lcom/beetalk/sdk/SessionStatus;

    move-result-object v0

    sget-object v1, Lcom/beetalk/sdk/SessionStatus;->TOKEN_AVAILABLE:Lcom/beetalk/sdk/SessionStatus;

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static closeRegistrationForm()V
    .locals 2

    .line 1794
    new-instance v0, Lcom/beetalk/sdk/GGPlatform$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/beetalk/sdk/GGPlatform$$ExternalSyntheticLambda2;-><init>()V

    sget-object v1, Lbolts/Task;->UI_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1}, Lbolts/Task;->call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lbolts/Task;

    return-void
.end method

.method private static complainAboutLogin(Lcom/beetalk/sdk/GGPlatform$FriendGroupListCallback;Ljava/lang/String;)V
    .locals 1

    .line 1192
    new-instance p1, Lcom/beetalk/sdk/data/DataModel$FriendGroupsRet;

    invoke-direct {p1}, Lcom/beetalk/sdk/data/DataModel$FriendGroupsRet;-><init>()V

    .line 1193
    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->GOP_ERROR_TOKEN:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v0}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lcom/beetalk/sdk/data/DataModel$FriendGroupsRet;->flag:I

    .line 1194
    invoke-interface {p0, p1}, Lcom/beetalk/sdk/GGPlatform$FriendGroupListCallback;->onPluginResult(Ljava/lang/Object;)V

    return-void
.end method

.method private static complainAboutLogin(Lcom/beetalk/sdk/GGPlatform$GroupFriendInfoCallback;Ljava/lang/String;)V
    .locals 1

    .line 1199
    new-instance p1, Lcom/beetalk/sdk/data/DataModel$GroupFriendsInfoRet;

    invoke-direct {p1}, Lcom/beetalk/sdk/data/DataModel$GroupFriendsInfoRet;-><init>()V

    .line 1200
    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->GOP_ERROR_TOKEN:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v0}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lcom/beetalk/sdk/data/DataModel$GroupFriendsInfoRet;->flag:I

    .line 1201
    invoke-interface {p0, p1}, Lcom/beetalk/sdk/GGPlatform$GroupFriendInfoCallback;->onPluginResult(Ljava/lang/Object;)V

    return-void
.end method

.method private static complainAboutLogin(Lcom/beetalk/sdk/GGPlatform$ShareCallback;)V
    .locals 2

    .line 1169
    new-instance v0, Lcom/beetalk/sdk/ndk/ShareRet;

    invoke-direct {v0}, Lcom/beetalk/sdk/ndk/ShareRet;-><init>()V

    .line 1170
    sget-object v1, Lcom/garena/pay/android/GGErrorCode;->GOP_ERROR_TOKEN:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/beetalk/sdk/ndk/ShareRet;->flag:I

    .line 1171
    const-string v1, "Please Login."

    iput-object v1, v0, Lcom/beetalk/sdk/ndk/ShareRet;->desc:Ljava/lang/String;

    .line 1172
    invoke-interface {p0, v0}, Lcom/beetalk/sdk/GGPlatform$ShareCallback;->onPluginResult(Ljava/lang/Object;)V

    return-void
.end method

.method private static complainAboutLogin(Lcom/beetalk/sdk/GGPlatform$UserFriendIDListCallback;Ljava/lang/String;)V
    .locals 1

    .line 1183
    new-instance p1, Lcom/beetalk/sdk/data/DataModel$FriendIDsRet;

    invoke-direct {p1}, Lcom/beetalk/sdk/data/DataModel$FriendIDsRet;-><init>()V

    const/4 v0, -0x1

    .line 1184
    iput v0, p1, Lcom/beetalk/sdk/data/DataModel$FriendIDsRet;->platform:I

    .line 1185
    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->GOP_ERROR_TOKEN:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v0}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lcom/beetalk/sdk/data/DataModel$FriendIDsRet;->flag:I

    .line 1186
    invoke-interface {p0, p1}, Lcom/beetalk/sdk/GGPlatform$UserFriendIDListCallback;->onPluginResult(Ljava/lang/Object;)V

    return-void
.end method

.method private static complainAboutLogin(Lcom/beetalk/sdk/GGPlatform$UserInfoCallback;)V
    .locals 2

    .line 1176
    new-instance v0, Lcom/beetalk/sdk/data/DataModel$UserInfoRet;

    invoke-direct {v0}, Lcom/beetalk/sdk/data/DataModel$UserInfoRet;-><init>()V

    .line 1177
    sget-object v1, Lcom/garena/pay/android/GGErrorCode;->GOP_ERROR_TOKEN:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/beetalk/sdk/data/DataModel$UserInfoRet;->flag:I

    .line 1178
    invoke-interface {p0, v0}, Lcom/beetalk/sdk/GGPlatform$UserInfoCallback;->onPluginResult(Ljava/lang/Object;)V

    return-void
.end method

.method private static complainAboutLogin(Lcom/beetalk/sdk/plugin/GGPluginCallback;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/beetalk/sdk/plugin/GGPluginCallback<",
            "Lcom/beetalk/sdk/plugin/PluginResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1160
    new-instance v0, Lcom/beetalk/sdk/plugin/PluginResult;

    invoke-direct {v0}, Lcom/beetalk/sdk/plugin/PluginResult;-><init>()V

    .line 1161
    const-string v1, "Please Login."

    iput-object v1, v0, Lcom/beetalk/sdk/plugin/PluginResult;->message:Ljava/lang/String;

    .line 1162
    iput-object p1, v0, Lcom/beetalk/sdk/plugin/PluginResult;->source:Ljava/lang/String;

    .line 1163
    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->GOP_ERROR_TOKEN:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Lcom/beetalk/sdk/plugin/PluginResult;->flag:I

    const/4 p1, -0x1

    .line 1164
    iput p1, v0, Lcom/beetalk/sdk/plugin/PluginResult;->status:I

    .line 1165
    invoke-interface {p0, v0}, Lcom/beetalk/sdk/plugin/GGPluginCallback;->onPluginResult(Ljava/lang/Object;)V

    return-void
.end method

.method public static deleteLocalGuest(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 741
    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    if-nez v0, :cond_0

    .line 742
    new-instance v0, Lcom/beetalk/sdk/GGLoginSession$Builder;

    invoke-direct {v0, p0}, Lcom/beetalk/sdk/GGLoginSession$Builder;-><init>(Landroid/content/Context;)V

    const-string p0, "0"

    .line 743
    invoke-virtual {v0, p0}, Lcom/beetalk/sdk/GGLoginSession$Builder;->setApplicationId(Ljava/lang/String;)Lcom/beetalk/sdk/GGLoginSession$Builder;

    move-result-object p0

    sget-object v0, Lcom/beetalk/sdk/AuthMode;->LEGACY_ENABLED:Lcom/beetalk/sdk/AuthMode;

    .line 744
    invoke-virtual {p0, v0}, Lcom/beetalk/sdk/GGLoginSession$Builder;->setAuthMode(Lcom/beetalk/sdk/AuthMode;)Lcom/beetalk/sdk/GGLoginSession$Builder;

    move-result-object p0

    sget-object v0, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->GARENA:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    .line 745
    invoke-virtual {p0, v0}, Lcom/beetalk/sdk/GGLoginSession$Builder;->setSessionProvider(Lcom/beetalk/sdk/GGLoginSession$SessionProvider;)Lcom/beetalk/sdk/GGLoginSession$Builder;

    move-result-object p0

    .line 746
    invoke-virtual {p0}, Lcom/beetalk/sdk/GGLoginSession$Builder;->build()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object p0

    .line 747
    invoke-static {p0}, Lcom/beetalk/sdk/GGPlatform;->initialize(Lcom/beetalk/sdk/GGLoginSession;)V

    .line 749
    :cond_0
    invoke-static {}, Lcom/beetalk/sdk/cache/AccountManagerHelper;->getInstance()Lcom/beetalk/sdk/cache/AccountManagerHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/beetalk/sdk/cache/AccountManagerHelper;->clear()V

    .line 750
    invoke-static {}, Lcom/beetalk/sdk/cache/PersistentCache;->getInstance()Lcom/beetalk/sdk/cache/PersistentCache;

    move-result-object p0

    invoke-virtual {p0}, Lcom/beetalk/sdk/cache/PersistentCache;->deleteGuestInfo()Ljava/lang/String;

    move-result-object p0

    .line 751
    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->clearSession()Z

    return-object p0
.end method

.method public static getAppId()Ljava/lang/String;
    .locals 2

    .line 250
    sget-object v0, Lcom/beetalk/sdk/GGPlatform;->appId:Ljava/lang/String;

    .line 251
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 255
    :cond_0
    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 257
    invoke-virtual {v1}, Lcom/beetalk/sdk/GGLoginSession;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    .line 260
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 261
    sget-object v0, Lcom/beetalk/sdk/GGPlatform;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/beetalk/sdk/helper/Helper;->getMetaDataAppId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 264
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 265
    invoke-static {v0}, Lcom/beetalk/sdk/GGPlatform;->setAppId(Ljava/lang/String;)V

    :cond_3
    return-object v0
.end method

.method public static getAppIdInt()I
    .locals 1

    .line 240
    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getAppId()Ljava/lang/String;

    move-result-object v0

    .line 243
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, -0x1

    return v0
.end method

.method public static getAppKey()Ljava/lang/String;
    .locals 2

    .line 272
    sget-object v0, Lcom/beetalk/sdk/GGPlatform;->appKey:Ljava/lang/String;

    .line 274
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    invoke-static {}, Lcom/beetalk/sdk/helper/Helper;->getMetaDataApplicationKey()Ljava/lang/String;

    move-result-object v0

    .line 278
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 279
    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 281
    invoke-virtual {v1}, Lcom/beetalk/sdk/GGLoginSession;->getApplicationKey()Ljava/lang/String;

    move-result-object v0

    .line 285
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 286
    invoke-static {v0}, Lcom/beetalk/sdk/GGPlatform;->setAppKey(Ljava/lang/String;)V

    :cond_2
    return-object v0
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .locals 1

    .line 165
    sget-object v0, Lcom/beetalk/sdk/GGPlatform;->applicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getChannelSource()Ljava/lang/Integer;
    .locals 1

    .line 236
    sget-object v0, Lcom/beetalk/sdk/GGPlatform;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/beetalk/sdk/helper/Helper;->getMetaDataSourceId(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static getGOPDeviceID(Lcom/beetalk/sdk/GGPlatform$Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/beetalk/sdk/GGPlatform$Callback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1807
    sget-object v0, Lbolts/Task;->UI_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/beetalk/sdk/GGPlatform$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/beetalk/sdk/GGPlatform$$ExternalSyntheticLambda3;-><init>(Lcom/beetalk/sdk/GGPlatform$Callback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static getGarenaLoginTitle()Ljava/lang/String;
    .locals 1

    .line 1550
    sget-object v0, Lcom/beetalk/sdk/GGPlatform;->garenaLoginTitle:Ljava/lang/String;

    return-object v0
.end method

.method public static getGuestPwd()Ljava/lang/String;
    .locals 1

    .line 337
    invoke-static {}, Lcom/beetalk/sdk/cache/AccountManagerHelper;->getInstance()Lcom/beetalk/sdk/cache/AccountManagerHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beetalk/sdk/cache/AccountManagerHelper;->getGuestPassword()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getGuestUid()Ljava/lang/String;
    .locals 1

    .line 333
    invoke-static {}, Lcom/beetalk/sdk/cache/AccountManagerHelper;->getInstance()Lcom/beetalk/sdk/cache/AccountManagerHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beetalk/sdk/cache/AccountManagerHelper;->getGuestUID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLastLoginSession(Landroid/app/Activity;)Z
    .locals 7

    .line 828
    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getAppId()Ljava/lang/String;

    move-result-object v0

    .line 829
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 830
    const-string p0, "Invalid appId, do you forget to invoke GGPlatform.setAppId() ? "

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    .line 834
    :cond_0
    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getAppKey()Ljava/lang/String;

    move-result-object v1

    .line 835
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 836
    const-string p0, "Invalid appKey, do you forget to invoke GGPlatform.setAppKey() ? "

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    .line 840
    :cond_1
    new-instance v3, Lcom/beetalk/sdk/cache/SharedPrefStorage;

    invoke-direct {v3, p0}, Lcom/beetalk/sdk/cache/SharedPrefStorage;-><init>(Landroid/content/Context;)V

    .line 842
    invoke-virtual {v3}, Lcom/beetalk/sdk/cache/SharedPrefStorage;->getToken()Lcom/beetalk/sdk/data/AuthToken;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 843
    invoke-virtual {v4}, Lcom/beetalk/sdk/data/AuthToken;->getAuthToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    .line 848
    :cond_2
    invoke-virtual {v4}, Lcom/beetalk/sdk/data/AuthToken;->getLoginPlatform()I

    move-result v5

    if-nez v5, :cond_4

    .line 860
    invoke-virtual {v4}, Lcom/beetalk/sdk/data/AuthToken;->getOriginalPlatform()I

    move-result v5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_3

    .line 862
    invoke-virtual {v3}, Lcom/beetalk/sdk/cache/SharedPrefStorage;->clearSession()V

    return v2

    .line 866
    :cond_3
    invoke-virtual {v4, v6}, Lcom/beetalk/sdk/data/AuthToken;->setLoginPlatform(I)V

    .line 867
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/beetalk/sdk/data/AuthToken;->setPrimaryPlatform(Ljava/lang/Integer;)V

    .line 868
    invoke-virtual {v3, v4}, Lcom/beetalk/sdk/cache/SharedPrefStorage;->putToken(Lcom/beetalk/sdk/data/AuthToken;)V

    const/4 v5, 0x4

    .line 871
    :cond_4
    invoke-static {v5}, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->obtainFromPlatformType(I)Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    move-result-object v4

    if-nez v4, :cond_5

    .line 874
    invoke-virtual {v3}, Lcom/beetalk/sdk/cache/SharedPrefStorage;->clearSession()V

    return v2

    .line 880
    :cond_5
    new-instance v3, Lcom/beetalk/sdk/GGLoginSession$Builder;

    invoke-direct {v3, p0}, Lcom/beetalk/sdk/GGLoginSession$Builder;-><init>(Landroid/content/Context;)V

    .line 881
    invoke-virtual {v3, v0}, Lcom/beetalk/sdk/GGLoginSession$Builder;->setApplicationId(Ljava/lang/String;)Lcom/beetalk/sdk/GGLoginSession$Builder;

    move-result-object p0

    .line 882
    invoke-virtual {p0, v1}, Lcom/beetalk/sdk/GGLoginSession$Builder;->setApplicationKey(Ljava/lang/String;)Lcom/beetalk/sdk/GGLoginSession$Builder;

    move-result-object p0

    sget-object v0, Lcom/beetalk/sdk/AuthMode;->LEGACY_ENABLED:Lcom/beetalk/sdk/AuthMode;

    .line 883
    invoke-virtual {p0, v0}, Lcom/beetalk/sdk/GGLoginSession$Builder;->setAuthMode(Lcom/beetalk/sdk/AuthMode;)Lcom/beetalk/sdk/GGLoginSession$Builder;

    move-result-object p0

    .line 884
    invoke-virtual {p0, v4}, Lcom/beetalk/sdk/GGLoginSession$Builder;->setSessionProvider(Lcom/beetalk/sdk/GGLoginSession$SessionProvider;)Lcom/beetalk/sdk/GGLoginSession$Builder;

    move-result-object p0

    .line 885
    invoke-virtual {p0}, Lcom/beetalk/sdk/GGLoginSession$Builder;->build()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object p0

    .line 887
    invoke-virtual {p0}, Lcom/beetalk/sdk/GGLoginSession;->getSessionStatus()Lcom/beetalk/sdk/SessionStatus;

    move-result-object v0

    sget-object v1, Lcom/beetalk/sdk/SessionStatus;->TOKEN_AVAILABLE:Lcom/beetalk/sdk/SessionStatus;

    if-ne v0, v1, :cond_6

    .line 889
    invoke-static {p0}, Lcom/beetalk/sdk/GGPlatform;->initialize(Lcom/beetalk/sdk/GGLoginSession;)V

    const/4 p0, 0x1

    return p0

    :cond_6
    :goto_0
    return v2
.end method

.method public static getOTP(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/beetalk/sdk/GGPlatform$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/beetalk/sdk/GGPlatform$Callback<",
            "Lcom/garena/android/model/Result<",
            "Lcom/beetalk/sdk/networking/model/GetOTPResponse;",
            ">;>;)V"
        }
    .end annotation

    .line 1732
    invoke-static {p0, p1, p2, p3}, Lcom/beetalk/sdk/account/ParentalController;->getBindInfoOTP(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/beetalk/sdk/GGPlatform$Callback;)V

    return-void
.end method

.method public static handleActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x0

    .line 809
    invoke-static {p1, v0}, Lcom/beetalk/sdk/GGLoginSession;->retrieveSessionByRequestCode(ILcom/beetalk/sdk/GGLoginSession;)Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 811
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/beetalk/sdk/GGLoginSession;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    return-void

    .line 814
    :cond_0
    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 815
    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/beetalk/sdk/GGLoginSession;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 817
    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "onActivityResult: no available session"

    invoke-static {p1, p0}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static hasPGSSignedIn(Landroid/app/Activity;Lcom/beetalk/sdk/GGPlatform$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/beetalk/sdk/GGPlatform$Callback<",
            "Lcom/garena/android/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;)V"
        }
    .end annotation

    .line 1720
    invoke-static {p0, p1}, Lcom/beetalk/sdk/pgs/PlayGamesService;->checkHasSignedIn(Landroid/app/Activity;Lcom/beetalk/sdk/GGPlatform$Callback;)V

    return-void
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 4

    .line 207
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/beetalk/sdk/GGPlatform;->applicationContext:Landroid/content/Context;

    .line 208
    sget-object v0, Lcom/beetalk/sdk/GGPlatform;->applicationContext:Landroid/content/Context;

    .line 209
    invoke-static {v0}, Lcom/beetalk/sdk/helper/BBLogger;->init(Landroid/content/Context;)V

    .line 210
    invoke-static {v0}, Lcom/beetalk/sdk/networking/GarenaUserAgent;->init(Landroid/content/Context;)V

    .line 212
    sget-object v1, Lbolts/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-static {v1}, Lcom/facebook/FacebookSdk;->setExecutor(Ljava/util/concurrent/Executor;)V

    .line 214
    invoke-static {v0}, Lcom/beetalk/sdk/vk/VKUtils;->lookUpAppId(Landroid/content/Context;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 216
    invoke-static {v0}, Lcom/vk/api/sdk/VK;->initialize(Landroid/content/Context;)V

    .line 220
    :cond_0
    new-instance v1, Lcom/twitter/sdk/android/core/TwitterConfig$Builder;

    invoke-direct {v1, v0}, Lcom/twitter/sdk/android/core/TwitterConfig$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/twitter/sdk/android/core/DefaultLogger;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Lcom/twitter/sdk/android/core/DefaultLogger;-><init>(I)V

    .line 221
    invoke-virtual {v1, v2}, Lcom/twitter/sdk/android/core/TwitterConfig$Builder;->logger(Lcom/twitter/sdk/android/core/Logger;)Lcom/twitter/sdk/android/core/TwitterConfig$Builder;

    move-result-object v1

    new-instance v2, Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    .line 223
    invoke-static {v0}, Lcom/beetalk/sdk/helper/Helper;->getTwitterKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 224
    invoke-static {v0}, Lcom/beetalk/sdk/helper/Helper;->getTwitterSecret(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/twitter/sdk/android/core/TwitterAuthConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-virtual {v1, v2}, Lcom/twitter/sdk/android/core/TwitterConfig$Builder;->twitterAuthConfig(Lcom/twitter/sdk/android/core/TwitterAuthConfig;)Lcom/twitter/sdk/android/core/TwitterConfig$Builder;

    move-result-object v0

    sget-object v1, Lbolts/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    .line 226
    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/TwitterConfig$Builder;->executorService(Ljava/util/concurrent/ExecutorService;)Lcom/twitter/sdk/android/core/TwitterConfig$Builder;

    move-result-object v0

    sget-boolean v1, Lcom/beetalk/sdk/SDKConstants;->DEBUG_SHOW:Z

    .line 227
    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/TwitterConfig$Builder;->debug(Z)Lcom/twitter/sdk/android/core/TwitterConfig$Builder;

    move-result-object v0

    .line 228
    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/TwitterConfig$Builder;->build()Lcom/twitter/sdk/android/core/TwitterConfig;

    move-result-object v0

    .line 229
    invoke-static {v0}, Lcom/twitter/sdk/android/core/Twitter;->initialize(Lcom/twitter/sdk/android/core/TwitterConfig;)V

    .line 231
    invoke-static {p0}, Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokInitializer;->initSDK(Landroid/content/Context;)V

    return-void
.end method

.method public static initialize(Lcom/beetalk/sdk/GGLoginSession;)V
    .locals 0

    .line 188
    invoke-static {p0}, Lcom/beetalk/sdk/GGLoginSession;->setCurrentSession(Lcom/beetalk/sdk/GGLoginSession;)V

    return-void
.end method

.method public static initializeForAppPlatformBind(Lcom/beetalk/sdk/GGLoginSession;)V
    .locals 0

    .line 196
    invoke-static {p0}, Lcom/beetalk/sdk/GGLoginSession;->setCurrentAppPlatformBindSession(Lcom/beetalk/sdk/GGLoginSession;)V

    return-void
.end method

.method public static initializeForBind(Lcom/beetalk/sdk/GGLoginSession;)V
    .locals 0

    .line 192
    invoke-static {p0}, Lcom/beetalk/sdk/GGLoginSession;->setCurrentBindSession(Lcom/beetalk/sdk/GGLoginSession;)V

    return-void
.end method

.method public static initializeForSwap(Lcom/beetalk/sdk/GGLoginSession;)V
    .locals 0

    .line 200
    invoke-static {p0}, Lcom/beetalk/sdk/GGLoginSession;->setCurrentSwapSession(Lcom/beetalk/sdk/GGLoginSession;)V

    return-void
.end method

.method private static inspectGuestTokenAndBindWhenCurrentPlatformTokenAvailable(Lcom/beetalk/sdk/data/AuthToken;Lcom/beetalk/sdk/data/AuthToken;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V
    .locals 2

    .line 614
    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    new-instance v1, Lcom/beetalk/sdk/GGPlatform$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1, p2}, Lcom/beetalk/sdk/GGPlatform$$ExternalSyntheticLambda5;-><init>(Lcom/beetalk/sdk/data/AuthToken;Lcom/beetalk/sdk/data/AuthToken;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V

    invoke-virtual {v0, p1, v1}, Lcom/beetalk/sdk/GGLoginSession;->inspectGuestToken(Lcom/beetalk/sdk/data/AuthToken;Lcom/beetalk/sdk/GGLoginSession$OnTokenResultListener;)Z

    return-void
.end method

.method static synthetic lambda$bindCurrentPlatformWithGuest$0(Lcom/beetalk/sdk/GGLoginSession$SessionCallback;Lcom/beetalk/sdk/GGLoginSession;Lcom/beetalk/sdk/data/AuthToken;Lorg/json/JSONObject;)V
    .locals 6

    .line 552
    const-string v0, "error"

    invoke-static {p3}, Lcom/beetalk/sdk/helper/StringUtils;->responseHasError(Lorg/json/JSONObject;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 553
    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->processSessionBindFail()V

    .line 554
    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object p1

    invoke-interface {p0, p1, v2}, Lcom/beetalk/sdk/GGLoginSession$SessionCallback;->onSessionProcessed(Lcom/beetalk/sdk/GGLoginSession;Ljava/lang/Exception;)V

    goto/16 :goto_3

    .line 557
    :cond_0
    :try_start_0
    const-string v1, "data"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p3

    if-nez p3, :cond_1

    .line 560
    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->processSessionBindFail()V

    .line 561
    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object p1

    invoke-interface {p0, p1, v2}, Lcom/beetalk/sdk/GGLoginSession$SessionCallback;->onSessionProcessed(Lcom/beetalk/sdk/GGLoginSession;Ljava/lang/Exception;)V

    goto/16 :goto_3

    .line 562
    :cond_1
    const-string v1, "open_id"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 564
    const-string v0, "access_token"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 565
    const-string v1, "refresh_token"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 566
    const-string v3, "expiry_time"

    invoke-virtual {p3, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 567
    new-instance v4, Lcom/beetalk/sdk/data/AuthToken;

    const/4 v5, 0x4

    invoke-direct {v4, v0, v5, v5}, Lcom/beetalk/sdk/data/AuthToken;-><init>(Ljava/lang/String;II)V

    .line 568
    invoke-virtual {v4, p3}, Lcom/beetalk/sdk/data/AuthToken;->updatePrimaryPlatform(Lorg/json/JSONObject;)Lcom/beetalk/sdk/data/AuthToken;

    .line 569
    invoke-virtual {v4, v1}, Lcom/beetalk/sdk/data/AuthToken;->setRefreshToken(Ljava/lang/String;)V

    .line 570
    invoke-virtual {v4, v3}, Lcom/beetalk/sdk/data/AuthToken;->setExpiryTimestamp(I)V

    .line 572
    invoke-virtual {p1}, Lcom/beetalk/sdk/GGLoginSession;->getCache()Lcom/beetalk/sdk/cache/StorageCache;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/beetalk/sdk/cache/StorageCache;->putGuestToken(Lcom/beetalk/sdk/data/AuthToken;)V

    .line 573
    invoke-static {p2, v4, p0}, Lcom/beetalk/sdk/GGPlatform;->inspectGuestTokenAndBindWhenCurrentPlatformTokenAvailable(Lcom/beetalk/sdk/data/AuthToken;Lcom/beetalk/sdk/data/AuthToken;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V

    goto/16 :goto_3

    .line 574
    :cond_2
    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p2, 0x0

    const-string v1, "grand token result: "

    if-eqz p1, :cond_9

    .line 575
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, p2, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 576
    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 577
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p3

    const v0, -0x7573cb4f

    const/4 v1, 0x1

    if-eq p3, v0, :cond_4

    const p2, -0x246561ad

    if-eq p3, p2, :cond_3

    goto :goto_0

    :cond_3
    const-string p2, "error_account_swapped"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p2, 0x1

    goto :goto_1

    :cond_4
    const-string p3, "auth_error"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    :goto_0
    const/4 p2, -0x1

    :goto_1
    if-eqz p2, :cond_7

    if-eq p2, v1, :cond_6

    goto :goto_2

    .line 586
    :cond_6
    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 588
    sget-object p2, Lcom/garena/pay/android/GGErrorCode;->ACCOUNT_SECURITY_ALREADY_SWAPPED:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p2}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/beetalk/sdk/GGLoginSession;->setErrorCode(I)V

    goto :goto_2

    .line 582
    :cond_7
    invoke-static {}, Lcom/beetalk/sdk/cache/PersistentCache;->getInstance()Lcom/beetalk/sdk/cache/PersistentCache;

    move-result-object p1

    invoke-virtual {p1}, Lcom/beetalk/sdk/cache/PersistentCache;->deleteGuestInfo()Ljava/lang/String;

    .line 583
    invoke-static {}, Lcom/beetalk/sdk/cache/AccountManagerHelper;->getInstance()Lcom/beetalk/sdk/cache/AccountManagerHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/beetalk/sdk/cache/AccountManagerHelper;->clear()V

    .line 592
    :cond_8
    :goto_2
    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->processSessionBindFail()V

    .line 593
    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object p1

    invoke-interface {p0, p1, v2}, Lcom/beetalk/sdk/GGLoginSession$SessionCallback;->onSessionProcessed(Lcom/beetalk/sdk/GGLoginSession;Ljava/lang/Exception;)V

    goto :goto_3

    .line 595
    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 596
    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->processSessionBindFail()V

    .line 597
    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object p1

    invoke-interface {p0, p1, v2}, Lcom/beetalk/sdk/GGLoginSession$SessionCallback;->onSessionProcessed(Lcom/beetalk/sdk/GGLoginSession;Ljava/lang/Exception;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 600
    invoke-static {p1}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/Exception;)V

    .line 601
    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->processSessionBindFail()V

    .line 602
    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object p1

    invoke-interface {p0, p1, v2}, Lcom/beetalk/sdk/GGLoginSession$SessionCallback;->onSessionProcessed(Lcom/beetalk/sdk/GGLoginSession;Ljava/lang/Exception;)V

    :goto_3
    return-void
.end method

.method static synthetic lambda$closeRegistrationForm$4()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1795
    invoke-static {}, Lcom/beetalk/sdk/registration/UserRegistrationController;->closeForm()V

    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$getGOPDeviceID$5(Lcom/beetalk/sdk/GGPlatform$Callback;)V
    .locals 1

    .line 1807
    invoke-static {}, Lcom/beetalk/sdk/deviceId/DeviceIdManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/beetalk/sdk/GGPlatform$Callback;->onPluginResult(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$inspectGuestTokenAndBindWhenCurrentPlatformTokenAvailable$1(Lcom/beetalk/sdk/GGLoginSession$SessionCallback;Lorg/json/JSONObject;)V
    .locals 5

    const-string v0, "bind result: "

    .line 617
    invoke-static {p1}, Lcom/beetalk/sdk/helper/StringUtils;->responseHasError(Lorg/json/JSONObject;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 618
    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->processSessionBindFail()V

    .line 619
    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object p1

    invoke-interface {p0, p1, v2}, Lcom/beetalk/sdk/GGLoginSession$SessionCallback;->onSessionProcessed(Lcom/beetalk/sdk/GGLoginSession;Ljava/lang/Exception;)V

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 622
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/beetalk/sdk/helper/BBLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 623
    const-string v3, "result"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    .line 625
    invoke-static {}, Lcom/beetalk/sdk/cache/AccountManagerHelper;->getInstance()Lcom/beetalk/sdk/cache/AccountManagerHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/beetalk/sdk/cache/AccountManagerHelper;->clear()V

    .line 626
    invoke-static {}, Lcom/beetalk/sdk/cache/PersistentCache;->getInstance()Lcom/beetalk/sdk/cache/PersistentCache;

    move-result-object p1

    invoke-virtual {p1}, Lcom/beetalk/sdk/cache/PersistentCache;->deleteGuestInfo()Ljava/lang/String;

    goto :goto_0

    .line 628
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 629
    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->processSessionBindFail()V

    .line 631
    :goto_0
    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object p1

    invoke-interface {p0, p1, v2}, Lcom/beetalk/sdk/GGLoginSession$SessionCallback;->onSessionProcessed(Lcom/beetalk/sdk/GGLoginSession;Ljava/lang/Exception;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 633
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "bind exception: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 634
    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->processSessionBindFail()V

    .line 635
    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object p1

    invoke-interface {p0, p1, v2}, Lcom/beetalk/sdk/GGLoginSession$SessionCallback;->onSessionProcessed(Lcom/beetalk/sdk/GGLoginSession;Ljava/lang/Exception;)V

    :goto_1
    return-void
.end method

.method static synthetic lambda$inspectGuestTokenAndBindWhenCurrentPlatformTokenAvailable$2(Lcom/beetalk/sdk/data/AuthToken;Lcom/beetalk/sdk/data/AuthToken;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;Lcom/beetalk/sdk/data/AuthToken;Lcom/garena/pay/android/GGErrorCode;)V
    .locals 0

    .line 615
    sget-object p3, Lcom/garena/pay/android/GGErrorCode;->SUCCESS:Lcom/garena/pay/android/GGErrorCode;

    if-ne p4, p3, :cond_0

    .line 616
    invoke-virtual {p0}, Lcom/beetalk/sdk/data/AuthToken;->getAuthToken()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/beetalk/sdk/data/AuthToken;->getAuthToken()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Lcom/beetalk/sdk/GGPlatform$$ExternalSyntheticLambda4;

    invoke-direct {p3, p2}, Lcom/beetalk/sdk/GGPlatform$$ExternalSyntheticLambda4;-><init>(Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V

    invoke-static {p0, p1, p3}, Lcom/beetalk/sdk/networking/service/AuthService;->bindGuestAccount(Ljava/lang/String;Ljava/lang/String;Lcom/beetalk/sdk/networking/HttpRequestTask$JSONObjectCallback;)V

    goto :goto_0

    .line 640
    :cond_0
    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->processSessionBindFail()V

    .line 641
    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p2, p0, p1}, Lcom/beetalk/sdk/GGLoginSession$SessionCallback;->onSessionProcessed(Lcom/beetalk/sdk/GGLoginSession;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$openRegistrationForm$3(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/beetalk/sdk/registration/UserRegistrationDialogCallback;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1788
    invoke-static {p0, p1, p2, p3}, Lcom/beetalk/sdk/registration/UserRegistrationController;->openForm(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/beetalk/sdk/registration/UserRegistrationDialogCallback;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static login(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V
    .locals 2

    .line 315
    invoke-static {p0, p1}, Lcom/beetalk/sdk/GGPlatform;->wrapCallback(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)Lcom/beetalk/sdk/GGLoginSession$SessionCallback;

    move-result-object p1

    .line 317
    invoke-static {}, Lcom/beetalk/sdk/helper/Helper;->isNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 318
    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 320
    sget-object v0, Lcom/beetalk/sdk/SessionStatus;->CLOSED_WITH_ERROR:Lcom/beetalk/sdk/SessionStatus;

    sget-object v1, Lcom/garena/pay/android/GGErrorCode;->NETWORK_EXCEPTION:Lcom/garena/pay/android/GGErrorCode;

    .line 322
    invoke-virtual {v1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 320
    invoke-virtual {p0, v0, v1}, Lcom/beetalk/sdk/GGLoginSession;->setSessionStatusAndError(Lcom/beetalk/sdk/SessionStatus;I)Lcom/beetalk/sdk/GGLoginSession;

    const/4 v0, 0x0

    .line 324
    invoke-interface {p1, p0, v0}, Lcom/beetalk/sdk/GGLoginSession$SessionCallback;->onSessionProcessed(Lcom/beetalk/sdk/GGLoginSession;Ljava/lang/Exception;)V

    :cond_0
    return-void

    .line 328
    :cond_1
    invoke-static {}, Lcom/beetalk/sdk/deviceId/DeviceIdManager;->refreshDeviceId()V

    .line 329
    invoke-static {p0, p1}, Lcom/beetalk/sdk/GGLoginSession;->obtainActiveSession(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V

    return-void
.end method

.method public static loginWithBind(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V
    .locals 2

    const/4 v0, 0x0

    .line 500
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "loginWithBind"

    invoke-static {v1, v0}, Lcom/beetalk/sdk/helper/BBLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 501
    new-instance v0, Lcom/beetalk/sdk/GGPlatform$1;

    invoke-direct {v0, p1}, Lcom/beetalk/sdk/GGPlatform$1;-><init>(Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V

    invoke-static {p0, v0}, Lcom/beetalk/sdk/GGLoginSession;->obtainActiveSession(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V

    return-void
.end method

.method public static openRegistrationForm(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/beetalk/sdk/registration/UserRegistrationDialogCallback;)V
    .locals 1

    .line 1787
    new-instance v0, Lcom/beetalk/sdk/GGPlatform$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/beetalk/sdk/GGPlatform$$ExternalSyntheticLambda1;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/beetalk/sdk/registration/UserRegistrationDialogCallback;)V

    sget-object p0, Lbolts/Task;->UI_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-static {v0, p0}, Lbolts/Task;->call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lbolts/Task;

    return-void
.end method

.method private static processSessionBindFail()V
    .locals 2

    .line 521
    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    sget-object v1, Lcom/beetalk/sdk/SessionStatus;->CLOSED_WITH_BIND_FAIL:Lcom/beetalk/sdk/SessionStatus;

    invoke-virtual {v0, v1}, Lcom/beetalk/sdk/GGLoginSession;->setSessionStatus(Lcom/beetalk/sdk/SessionStatus;)V

    return-void
.end method

.method private static reLoginSession(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V
    .locals 0

    .line 756
    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->clearSession()Z

    .line 757
    invoke-static {p1}, Lcom/beetalk/sdk/GGPlatform;->initialize(Lcom/beetalk/sdk/GGLoginSession;)V

    .line 758
    invoke-static {p0, p2}, Lcom/beetalk/sdk/GGPlatform;->login(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V

    return-void
.end method

.method public static recallTokenFromPGS(Landroid/app/Activity;Lcom/beetalk/sdk/GGPlatform$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/beetalk/sdk/GGPlatform$Callback<",
            "Lcom/garena/android/model/Result<",
            "Lcom/beetalk/sdk/networking/model/RecallTokenResponse;",
            ">;>;)V"
        }
    .end annotation

    .line 1710
    invoke-static {p0, p1}, Lcom/beetalk/sdk/pgs/PlayGamesService;->recall(Landroid/app/Activity;Lcom/beetalk/sdk/GGPlatform$Callback;)V

    return-void
.end method

.method public static restoreLoginSession(Landroid/app/Activity;Lcom/beetalk/sdk/networking/model/RecallToken;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V
    .locals 0

    .line 1715
    invoke-static {p0, p1, p2}, Lcom/beetalk/sdk/pgs/PlayGamesService;->restoreToken(Landroid/app/Activity;Lcom/beetalk/sdk/networking/model/RecallToken;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V

    return-void
.end method

.method public static restoreSwapSession()Lcom/beetalk/sdk/GGLoginSession;
    .locals 6

    .line 896
    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSwapSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 897
    invoke-virtual {v0}, Lcom/beetalk/sdk/GGLoginSession;->getSessionStatus()Lcom/beetalk/sdk/SessionStatus;

    move-result-object v1

    sget-object v2, Lcom/beetalk/sdk/SessionStatus;->TOKEN_AVAILABLE:Lcom/beetalk/sdk/SessionStatus;

    if-ne v1, v2, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 900
    invoke-static {v0}, Lcom/beetalk/sdk/GGLoginSession;->setCurrentSwapSession(Lcom/beetalk/sdk/GGLoginSession;)V

    .line 901
    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getAppId()Ljava/lang/String;

    move-result-object v1

    .line 902
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 903
    const-string v1, "Invalid appId, do you forget to invoke GGPlatform.setAppId() ? "

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 907
    :cond_1
    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getAppKey()Ljava/lang/String;

    move-result-object v2

    .line 908
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 909
    const-string v1, "Invalid appKey, do you forget to invoke GGPlatform.setAppKey() ? "

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 913
    :cond_2
    invoke-static {}, Lcom/beetalk/sdk/cache/SharedPrefStorage;->createForSwap()Lcom/beetalk/sdk/cache/SharedPrefStorage;

    move-result-object v3

    .line 914
    invoke-virtual {v3}, Lcom/beetalk/sdk/cache/SharedPrefStorage;->getToken()Lcom/beetalk/sdk/data/AuthToken;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 915
    invoke-virtual {v4}, Lcom/beetalk/sdk/data/AuthToken;->hasAllFields()Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_0

    .line 919
    :cond_3
    invoke-virtual {v4}, Lcom/beetalk/sdk/data/AuthToken;->getLoginPlatform()I

    move-result v4

    .line 920
    invoke-static {v4}, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->obtainFromPlatformType(I)Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    move-result-object v4

    if-nez v4, :cond_4

    .line 922
    invoke-virtual {v3}, Lcom/beetalk/sdk/cache/SharedPrefStorage;->clearSession()V

    return-object v0

    .line 926
    :cond_4
    new-instance v5, Lcom/beetalk/sdk/GGLoginSession$Builder;

    invoke-direct {v5}, Lcom/beetalk/sdk/GGLoginSession$Builder;-><init>()V

    .line 927
    invoke-virtual {v5, v1}, Lcom/beetalk/sdk/GGLoginSession$Builder;->setApplicationId(Ljava/lang/String;)Lcom/beetalk/sdk/GGLoginSession$Builder;

    move-result-object v1

    .line 928
    invoke-virtual {v1, v2}, Lcom/beetalk/sdk/GGLoginSession$Builder;->setApplicationKey(Ljava/lang/String;)Lcom/beetalk/sdk/GGLoginSession$Builder;

    move-result-object v1

    .line 929
    invoke-virtual {v1, v3}, Lcom/beetalk/sdk/GGLoginSession$Builder;->setCache(Lcom/beetalk/sdk/cache/StorageCache;)Lcom/beetalk/sdk/GGLoginSession$Builder;

    move-result-object v1

    sget-object v2, Lcom/beetalk/sdk/AuthMode;->LEGACY_ENABLED:Lcom/beetalk/sdk/AuthMode;

    .line 930
    invoke-virtual {v1, v2}, Lcom/beetalk/sdk/GGLoginSession$Builder;->setAuthMode(Lcom/beetalk/sdk/AuthMode;)Lcom/beetalk/sdk/GGLoginSession$Builder;

    move-result-object v1

    .line 931
    invoke-virtual {v1, v4}, Lcom/beetalk/sdk/GGLoginSession$Builder;->setSessionProvider(Lcom/beetalk/sdk/GGLoginSession$SessionProvider;)Lcom/beetalk/sdk/GGLoginSession$Builder;

    move-result-object v1

    .line 932
    invoke-virtual {v1}, Lcom/beetalk/sdk/GGLoginSession$Builder;->build()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v1

    .line 934
    invoke-virtual {v1}, Lcom/beetalk/sdk/GGLoginSession;->getSessionStatus()Lcom/beetalk/sdk/SessionStatus;

    move-result-object v2

    sget-object v3, Lcom/beetalk/sdk/SessionStatus;->TOKEN_AVAILABLE:Lcom/beetalk/sdk/SessionStatus;

    if-ne v2, v3, :cond_5

    .line 935
    invoke-static {v1}, Lcom/beetalk/sdk/GGLoginSession;->setCurrentSwapSession(Lcom/beetalk/sdk/GGLoginSession;)V

    return-object v1

    :cond_5
    :goto_0
    return-object v0
.end method

.method public static retrieveBoundMobileNumInfo(Landroid/app/Activity;Lcom/beetalk/sdk/GGPlatform$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/beetalk/sdk/GGPlatform$Callback<",
            "Lcom/garena/android/model/Result<",
            "Lcom/beetalk/sdk/networking/model/BoundMobileNumberResponse;",
            ">;>;)V"
        }
    .end annotation

    .line 1783
    invoke-static {p0, p1}, Lcom/beetalk/sdk/account/ParentalController;->retrievePhoneNum(Landroid/app/Activity;Lcom/beetalk/sdk/GGPlatform$Callback;)V

    return-void
.end method

.method public static saveTokenToPGS(Landroid/app/Activity;Lcom/beetalk/sdk/GGPlatform$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/beetalk/sdk/GGPlatform$Callback<",
            "Lcom/garena/android/model/Result<",
            "Lcom/beetalk/sdk/networking/model/SaveTokenResponse;",
            ">;>;)V"
        }
    .end annotation

    .line 1705
    invoke-static {p0, p1}, Lcom/beetalk/sdk/pgs/PlayGamesService;->save(Landroid/app/Activity;Lcom/beetalk/sdk/GGPlatform$Callback;)V

    return-void
.end method

.method private static secondRoundLogin(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V
    .locals 3

    .line 169
    invoke-virtual {p1}, Lcom/beetalk/sdk/GGLoginSession;->getSessionStatus()Lcom/beetalk/sdk/SessionStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beetalk/sdk/SessionStatus;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "ndk_login_auth_callback error %s"

    invoke-static {v0, v1}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    new-instance v0, Lcom/beetalk/sdk/GGLoginSession$Builder;

    invoke-direct {v0, p0}, Lcom/beetalk/sdk/GGLoginSession$Builder;-><init>(Landroid/content/Context;)V

    .line 172
    invoke-virtual {p1}, Lcom/beetalk/sdk/GGLoginSession;->getApplicationKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/beetalk/sdk/GGLoginSession$Builder;->setApplicationKey(Ljava/lang/String;)Lcom/beetalk/sdk/GGLoginSession$Builder;

    move-result-object v1

    .line 173
    invoke-virtual {p1}, Lcom/beetalk/sdk/GGLoginSession;->getMode()Lcom/beetalk/sdk/AuthMode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/beetalk/sdk/GGLoginSession$Builder;->setAuthMode(Lcom/beetalk/sdk/AuthMode;)Lcom/beetalk/sdk/GGLoginSession$Builder;

    move-result-object v1

    .line 174
    invoke-virtual {p1}, Lcom/beetalk/sdk/GGLoginSession;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/beetalk/sdk/GGLoginSession$Builder;->setApplicationId(Ljava/lang/String;)Lcom/beetalk/sdk/GGLoginSession$Builder;

    move-result-object v1

    .line 175
    invoke-virtual {p1}, Lcom/beetalk/sdk/GGLoginSession;->getSessionProvider()Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/beetalk/sdk/GGLoginSession$Builder;->setSessionProvider(Lcom/beetalk/sdk/GGLoginSession$SessionProvider;)Lcom/beetalk/sdk/GGLoginSession$Builder;

    move-result-object v1

    .line 176
    invoke-virtual {p1}, Lcom/beetalk/sdk/GGLoginSession;->getRequestCode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/beetalk/sdk/GGLoginSession$Builder;->setRequestCode(I)Lcom/beetalk/sdk/GGLoginSession$Builder;

    .line 177
    invoke-virtual {v0}, Lcom/beetalk/sdk/GGLoginSession$Builder;->build()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    .line 178
    invoke-static {v0}, Lcom/beetalk/sdk/GGLoginSession;->setCurrentSession(Lcom/beetalk/sdk/GGLoginSession;)V

    .line 179
    invoke-virtual {p1}, Lcom/beetalk/sdk/GGLoginSession;->getLoginScenario()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p2, p1}, Lcom/beetalk/sdk/GGLoginSession;->forceOpenSession(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;Ljava/lang/String;)Lcom/beetalk/sdk/GGLoginSession;

    return-void
.end method

.method public static setAppId(Ljava/lang/String;)V
    .locals 0

    .line 298
    sput-object p0, Lcom/beetalk/sdk/GGPlatform;->appId:Ljava/lang/String;

    return-void
.end method

.method public static setAppKey(Ljava/lang/String;)V
    .locals 0

    .line 302
    sput-object p0, Lcom/beetalk/sdk/GGPlatform;->appKey:Ljava/lang/String;

    return-void
.end method

.method public static setGOPDeviceIDEnabled(Z)V
    .locals 0

    .line 1811
    invoke-static {p0}, Lcom/beetalk/sdk/deviceId/DeviceIdManager;->setEnable(Z)V

    return-void
.end method

.method public static setGarenaLoginTitle(Ljava/lang/String;)V
    .locals 0

    .line 1541
    sput-object p0, Lcom/beetalk/sdk/GGPlatform;->garenaLoginTitle:Ljava/lang/String;

    return-void
.end method

.method public static setGuestUidAndPwd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 341
    invoke-static {}, Lcom/beetalk/sdk/cache/AccountManagerHelper;->getInstance()Lcom/beetalk/sdk/cache/AccountManagerHelper;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/beetalk/sdk/cache/AccountManagerHelper;->putGuestInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setLoginSessionCallback(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V
    .locals 0

    .line 346
    invoke-static {p0, p1}, Lcom/beetalk/sdk/GGPlatform;->wrapCallback(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)Lcom/beetalk/sdk/GGLoginSession$SessionCallback;

    move-result-object p1

    .line 347
    invoke-static {p0, p1}, Lcom/beetalk/sdk/GGLoginSession;->setCallback(Landroid/content/Context;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V

    return-void
.end method

.method public static unBindMobileNum(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/beetalk/sdk/GGPlatform$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/beetalk/sdk/GGPlatform$Callback<",
            "Lcom/garena/android/model/Result<",
            "Lcom/beetalk/sdk/networking/model/UnBindMobileNumberResponse;",
            ">;>;)V"
        }
    .end annotation

    .line 1772
    invoke-static {p0, p1, p2, p3}, Lcom/beetalk/sdk/account/ParentalController;->removeBoundPhoneNum(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/beetalk/sdk/GGPlatform$Callback;)V

    return-void
.end method

.method public static verifyOTP(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/beetalk/sdk/GGPlatform$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/beetalk/sdk/GGPlatform$Callback<",
            "Lcom/garena/android/model/Result<",
            "Lcom/beetalk/sdk/networking/model/VerifyOTPResponse;",
            ">;>;)V"
        }
    .end annotation

    .line 1746
    invoke-static {p0, p1, p2, p3}, Lcom/beetalk/sdk/account/ParentalController;->verifyBindInfoOTP(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/beetalk/sdk/GGPlatform$Callback;)V

    return-void
.end method

.method private static wrapCallback(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)Lcom/beetalk/sdk/GGLoginSession$SessionCallback;
    .locals 1

    .line 762
    const-string v0, "Session Callback to be wrapped cannot be null"

    invoke-static {p1, v0}, Lcom/beetalk/sdk/helper/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 763
    invoke-static {p0, p1, v0}, Lcom/beetalk/sdk/GGPlatform;->wrapCallback(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;Z)Lcom/beetalk/sdk/GGLoginSession$SessionCallback;

    move-result-object p0

    return-object p0
.end method

.method private static wrapCallback(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;Z)Lcom/beetalk/sdk/GGLoginSession$SessionCallback;
    .locals 1

    .line 773
    const-string v0, "Session Callback to be wrapped cannot be null"

    invoke-static {p1, v0}, Lcom/beetalk/sdk/helper/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 774
    new-instance v0, Lcom/beetalk/sdk/GGPlatform$3;

    invoke-direct {v0, p2, p0, p1}, Lcom/beetalk/sdk/GGPlatform$3;-><init>(ZLandroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V

    return-object v0
.end method

.method private static wrapCallbackWithoutLoginAgain(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)Lcom/beetalk/sdk/GGLoginSession$SessionCallback;
    .locals 1

    .line 767
    const-string v0, "Session Callback to be wrapped cannot be null"

    invoke-static {p1, v0}, Lcom/beetalk/sdk/helper/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 768
    invoke-static {p0, p1, v0}, Lcom/beetalk/sdk/GGPlatform;->wrapCallback(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;Z)Lcom/beetalk/sdk/GGLoginSession$SessionCallback;

    move-result-object p0

    return-object p0
.end method
