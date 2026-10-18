.class public Lcom/garena/game/kgtw/SGameRealActivity;
.super Lcom/unity3d/player/UnityPlayerActivity;
.source "SGameRealActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/garena/game/kgtw/SGameRealActivity$LockscreenReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SGameRealActivity"

.field private static isGCloudVoiceInstalled:Z

.field private static isINTLVideoSdkInstalled:Z

.field private static isTGPAInstalled:Z


# instance fields
.field private final SGAME_GAMEMODE_NOTIFY_METHOD_NAME:Ljava/lang/String;

.field private final SGAME_NATIVE_CALLBACK_OBJECT_NAME:Ljava/lang/String;

.field private final SGAME_PERMISSION_CALLBACK_METHOD_NAME:Ljava/lang/String;

.field private final SGAME_PERMISSION_CALLBACK_OBJECT_NAME:Ljava/lang/String;

.field private final initFeatureModuleSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mHideHandler:Landroid/os/Handler;

.field private mLastGameMode:I

.field private mLockscreenReceiver:Landroid/content/BroadcastReceiver;

.field private mLockscreenfilter:Landroid/content/IntentFilter;

.field private mQimei:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 79
    const-string v0, "TDataMaster"

    invoke-static {v0}, Lcom/garena/game/kgtw/SGameRealActivity;->loadPluginByReflection(Ljava/lang/String;)V

    .line 82
    const-string v0, "gcloud"

    invoke-static {v0}, Lcom/garena/game/kgtw/SGameRealActivity;->loadPluginByReflection(Ljava/lang/String;)V

    .line 83
    const-string v0, "MSDKCore"

    invoke-static {v0}, Lcom/garena/game/kgtw/SGameRealActivity;->loadPluginByReflection(Ljava/lang/String;)V

    .line 84
    const-string v0, "MSDKUnityAdapter"

    invoke-static {v0}, Lcom/garena/game/kgtw/SGameRealActivity;->loadPluginByReflection(Ljava/lang/String;)V

    .line 86
    const-string v0, "CrashSight"

    invoke-static {v0}, Lcom/garena/game/kgtw/SGameRealActivity;->loadPluginByReflection(Ljava/lang/String;)V

    .line 87
    const-string v0, "nettool"

    invoke-static {v0}, Lcom/garena/game/kgtw/SGameRealActivity;->loadPluginByReflection(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 69
    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayerActivity;-><init>()V

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lcom/garena/game/kgtw/SGameRealActivity;->mQimei:Ljava/lang/String;

    const/4 v0, -0x1

    .line 77
    iput v0, p0, Lcom/garena/game/kgtw/SGameRealActivity;->mLastGameMode:I

    .line 253
    new-instance v0, Lcom/garena/game/kgtw/SGameRealActivity$LockscreenReceiver;

    invoke-direct {v0, p0}, Lcom/garena/game/kgtw/SGameRealActivity$LockscreenReceiver;-><init>(Lcom/garena/game/kgtw/SGameRealActivity;)V

    iput-object v0, p0, Lcom/garena/game/kgtw/SGameRealActivity;->mLockscreenReceiver:Landroid/content/BroadcastReceiver;

    .line 254
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/garena/game/kgtw/SGameRealActivity;->mLockscreenfilter:Landroid/content/IntentFilter;

    .line 294
    new-instance v0, Lcom/garena/game/kgtw/SGameRealActivity$2;

    invoke-direct {v0, p0}, Lcom/garena/game/kgtw/SGameRealActivity$2;-><init>(Lcom/garena/game/kgtw/SGameRealActivity;)V

    iput-object v0, p0, Lcom/garena/game/kgtw/SGameRealActivity;->mHideHandler:Landroid/os/Handler;

    .line 363
    const-string v0, "BootObj"

    iput-object v0, p0, Lcom/garena/game/kgtw/SGameRealActivity;->SGAME_PERMISSION_CALLBACK_OBJECT_NAME:Ljava/lang/String;

    .line 364
    const-string v0, "NatviceCallbackUtilGameObject"

    iput-object v0, p0, Lcom/garena/game/kgtw/SGameRealActivity;->SGAME_NATIVE_CALLBACK_OBJECT_NAME:Ljava/lang/String;

    .line 365
    const-string v0, "OnRequestPermissionsResult"

    iput-object v0, p0, Lcom/garena/game/kgtw/SGameRealActivity;->SGAME_PERMISSION_CALLBACK_METHOD_NAME:Ljava/lang/String;

    .line 366
    const-string v0, "OnGameModeNofity"

    iput-object v0, p0, Lcom/garena/game/kgtw/SGameRealActivity;->SGAME_GAMEMODE_NOTIFY_METHOD_NAME:Ljava/lang/String;

    .line 675
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/garena/game/kgtw/SGameRealActivity;->initFeatureModuleSet:Ljava/util/HashSet;

    return-void
.end method

.method public static ExitCurrentProcess()V
    .locals 2

    .line 661
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 663
    const-string v1, "SGameActivity ExitCurrentProcess"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private _installFeatureSuccess(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "feature"
        }
    .end annotation

    .line 678
    iget-object v0, p0, Lcom/garena/game/kgtw/SGameRealActivity;->initFeatureModuleSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 679
    const-string p1, "SGameRealActivity"

    const-string v0, "feature module init"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 682
    :cond_0
    iget-object v0, p0, Lcom/garena/game/kgtw/SGameRealActivity;->initFeatureModuleSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 683
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "INTL_VIDEO"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_1
    const-string v0, "AOVAI"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_2
    const-string v0, "TGPA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v0, "INTL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_4
    const-string v0, "GCLOUD_VOICE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 686
    :pswitch_0
    invoke-direct {p0}, Lcom/garena/game/kgtw/SGameRealActivity;->initTGPA()V

    goto :goto_1

    .line 690
    :pswitch_1
    invoke-direct {p0}, Lcom/garena/game/kgtw/SGameRealActivity;->initINTL()V

    goto :goto_1

    .line 693
    :pswitch_2
    invoke-direct {p0}, Lcom/garena/game/kgtw/SGameRealActivity;->initGCloudVoice()V

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6d0b943f -> :sswitch_4
        0x225e5d -> :sswitch_3
        0x2743a4 -> :sswitch_2
        0x3b92c10 -> :sswitch_1
        0x4701e3f9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic access$002(Lcom/garena/game/kgtw/SGameRealActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/garena/game/kgtw/SGameRealActivity;->mQimei:Ljava/lang/String;

    return-object p1
.end method

.method private checkMRSettings()V
    .locals 5

    .line 111
    const-string v0, "SGameRealActivity"

    const-string v1, "checkMRSettings"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-virtual {p0}, Lcom/garena/game/kgtw/SGameRealActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/garena/game/kgtw/SGameRealActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 114
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 115
    const-string v3, "m_MobileMTRendering"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_4

    .line 124
    const-string v1, "AndriodMRStatus"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v4, 0x7

    if-eq v0, v4, :cond_4

    const/4 v4, 0x2

    if-eq v0, v4, :cond_3

    const/4 v4, 0x4

    if-ne v0, v4, :cond_0

    goto :goto_0

    :cond_0
    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 140
    :cond_2
    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 129
    :cond_3
    :goto_0
    const-string v0, "DisableMTR"

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 130
    const-string v1, "[MRFeature]:"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const-string v0, "OnMRStartUpExit"

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 142
    :goto_1
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_4
    return-void
.end method

.method private delayedHide(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "delayMillis"
        }
    .end annotation

    .line 302
    const-string v0, "SGameRealActivity"

    const-string v1, "delay hide system ui"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object v0, p0, Lcom/garena/game/kgtw/SGameRealActivity;->mHideHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 304
    iget-object v0, p0, Lcom/garena/game/kgtw/SGameRealActivity;->mHideHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public static facebookLogEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "eventName",
            "eventValues"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 620
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "facebookLogEvent ==> "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SGameRealActivity"

    invoke-static {v1, v0}, Lcom/tencent/ngame/utility/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    invoke-static {p0}, Lcom/facebook/appevents/AppEventsLogger;->newLogger(Landroid/content/Context;)Lcom/facebook/appevents/AppEventsLogger;

    move-result-object p0

    .line 623
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 624
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 625
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 626
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "    "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/tencent/ngame/utility/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 629
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static facebookLogPurchaseEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "productName",
            "expense",
            "currency",
            "eventValues"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 637
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "facebookLogPurchaseEvent ==> "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SGameRealActivity"

    invoke-static {v0, p1}, Lcom/tencent/ngame/utility/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    invoke-static {p0}, Lcom/facebook/appevents/AppEventsLogger;->newLogger(Landroid/content/Context;)Lcom/facebook/appevents/AppEventsLogger;

    move-result-object p0

    .line 640
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 641
    invoke-interface {p4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 642
    invoke-interface {p4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 643
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "    "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/tencent/ngame/utility/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 646
    :cond_0
    new-instance p4, Ljava/math/BigDecimal;

    invoke-direct {p4, p2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-static {p3}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object p2

    invoke-virtual {p0, p4, p2, p1}, Lcom/facebook/appevents/AppEventsLogger;->logPurchase(Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;)V

    return-void
.end method

.method public static firebaseLogEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "eventName",
            "eventValues"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 594
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "firebaseLogEvent ==> "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SGameRealActivity"

    invoke-static {v1, v0}, Lcom/tencent/ngame/utility/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 596
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 597
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 598
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "    "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/tencent/ngame/utility/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 601
    :cond_0
    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static getAppsFlyerDeviceID(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 651
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appsflyer/AppsFlyerLib;->getAppsFlyerUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 653
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AppsFlyer DeviceID: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SGameRealActivity"

    invoke-static {v1, v0}, Lcom/tencent/ngame/utility/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static getFacebookUserID(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 608
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 610
    invoke-virtual {p0}, Lcom/facebook/AccessToken;->getUserId()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 609
    :cond_0
    const-string p0, ""

    .line 613
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Facebook UserID: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SGameRealActivity"

    invoke-static {v1, v0}, Lcom/tencent/ngame/utility/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private getGameMode()I
    .locals 4

    const-string v0, "gameMode:"

    .line 553
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-lt v1, v2, :cond_1

    .line 555
    invoke-static {}, Lbq/log$$ExternalSyntheticApiModelOutline0;->m$2()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/garena/game/kgtw/SGameRealActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lbq/log$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/app/GameManager;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 558
    const-string v2, "SGameRealActivity"

    if-eqz v1, :cond_0

    .line 559
    :try_start_1
    invoke-static {v1}, Lbq/log$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/GameManager;)I

    move-result v1

    .line 560
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 563
    :cond_0
    const-string v0, "GameManager is null."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 568
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getPushExtraJsonStr()Ljava/lang/String;
    .locals 2

    .line 176
    invoke-static {}, Lcom/tencent/ngame/utility/SGameUtility;->getSavedIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 179
    const-string v1, "push_extra_json_str"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 181
    :cond_0
    const-string v0, "SGameRealActivity"

    const-string v1, "pushExtraJsonStr is null or empty, set default"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const-string/jumbo v0, "{\"pushId\":\"\",\"contentId\":\"\",\"adTag\":\"\",\"callbackData\":\"\"}"

    goto :goto_0

    .line 178
    :cond_1
    const-string v0, ""

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static getSystemVersion()I
    .locals 1

    .line 576
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method private initGCloudVoice()V
    .locals 2

    const/4 v0, 0x1

    .line 701
    sput-boolean v0, Lcom/garena/game/kgtw/SGameRealActivity;->isGCloudVoiceInstalled:Z

    .line 702
    const-string v0, "SGameRealActivity"

    const-string v1, "ApolloVoice onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    invoke-virtual {p0}, Lcom/garena/game/kgtw/SGameRealActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->ApolloVoiceDeviceInit(Landroid/content/Context;Landroid/app/Activity;)V

    return-void
.end method

.method private initINTL()V
    .locals 1

    const/4 v0, 0x1

    .line 708
    sput-boolean v0, Lcom/garena/game/kgtw/SGameRealActivity;->isINTLVideoSdkInstalled:Z

    .line 709
    invoke-static {p0}, Lcom/intlgame/video/INTLVideoSdk;->initialize(Landroid/app/Activity;)I

    return-void
.end method

.method private initQIMEI(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appkey"
        }
    .end annotation

    .line 727
    invoke-static {}, Lcom/tencent/beacon/event/open/BeaconReport;->getInstance()Lcom/tencent/beacon/event/open/BeaconReport;

    move-result-object v0

    new-instance v1, Lcom/garena/game/kgtw/SGameRealActivity$4;

    invoke-direct {v1, p0, p1}, Lcom/garena/game/kgtw/SGameRealActivity$4;-><init>(Lcom/garena/game/kgtw/SGameRealActivity;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p0, v1}, Lcom/tencent/beacon/event/open/BeaconReport;->getQimei(Ljava/lang/String;Landroid/content/Context;Lcom/tencent/qimei/sdk/IAsyncQimeiListener;)V

    return-void
.end method

.method private initTGPA()V
    .locals 1

    const/4 v0, 0x1

    .line 714
    sput-boolean v0, Lcom/garena/game/kgtw/SGameRealActivity;->isTGPAInstalled:Z

    .line 715
    const-string/jumbo v0, "tgpa"

    invoke-static {v0}, Lcom/garena/game/kgtw/SGameRealActivity;->loadPluginByReflection(Ljava/lang/String;)V

    return-void
.end method

.method public static loadPluginByReflection(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "libName"
        }
    .end annotation

    .line 93
    :try_start_0
    const-string v0, "com.gcore.gcloud.plugin.PluginUtils"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 94
    const-string v1, "loadLibrary"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 95
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 98
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 101
    :try_start_1
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 104
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public CheckIfHideSystemUI()V
    .locals 4

    .line 270
    invoke-static {}, Lcom/garena/game/kgtw/SGameRealActivity;->getSystemVersion()I

    move-result v0

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 272
    invoke-virtual {p0}, Lcom/garena/game/kgtw/SGameRealActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 275
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    .line 283
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cur visibility int: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SGameRealActivity"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    const-string v2, "options int: 5894"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x1706

    if-eq v1, v2, :cond_0

    .line 287
    const-string v1, "apply options 5894"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    return-void
.end method

.method public CheckSelfPermission(Ljava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "permission"
        }
    .end annotation

    .line 330
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public GetQimei()Ljava/lang/String;
    .locals 1

    .line 723
    iget-object v0, p0, Lcom/garena/game/kgtw/SGameRealActivity;->mQimei:Ljava/lang/String;

    return-object v0
.end method

.method public InitMsdk()V
    .locals 2

    .line 151
    const-string v0, "SGameRealActivity"

    const-string v1, "msdk-garena initialize"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-static {}, Lcom/garena/game/kgtw/util/MSDKEnvPreInit;->resetMSDKContext()V

    .line 154
    invoke-static {p0}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->initialize(Landroid/app/Activity;)Z

    .line 156
    invoke-static {}, Lcom/garena/game/kgtw/util/CrashSDKLauncher;->reRegistAllMonitors()V

    return-void
.end method

.method public InstallFeatureSuccess(Ljava/lang/String;)I
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "features"
        }
    .end annotation

    .line 668
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "InstallFeatureSuccess : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SGameRealActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    .line 670
    const-string v4, "Split_"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/garena/game/kgtw/SGameRealActivity;->_installFeatureSuccess(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public OpenAndroidSetting()V
    .locals 5

    .line 344
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    const-string v2, "package"

    .line 347
    invoke-virtual {p0}, Lcom/garena/game/kgtw/SGameRealActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 345
    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000000

    .line 350
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 351
    invoke-virtual {p0, v0}, Lcom/garena/game/kgtw/SGameRealActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 353
    const-string v1, "XXXX"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public RefeshPhoto(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filename"
        }
    .end annotation

    const-string v0, " RefeshPhoto java"

    const-string v1, "NGame_Share_"

    .line 310
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 311
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 314
    invoke-virtual {p0}, Lcom/garena/game/kgtw/SGameRealActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 315
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 313
    invoke-static {v2, v3, v1, v1}, Landroid/provider/MediaStore$Images$Media;->insertImage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 318
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 320
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 321
    invoke-virtual {p0}, Lcom/garena/game/kgtw/SGameRealActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 323
    const-string v1, "RefeshPhoto"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 325
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public RequestPermissions([Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "permissions",
            "requestCode"
        }
    .end annotation

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Request Permissions: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SGameRealActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    invoke-static {p0, p1, p2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method

.method public ShouldShowRequestPermissionRationale(Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "permission"
        }
    .end annotation

    .line 334
    invoke-static {p0, p1}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public ShowInstalledPackageNotIntect()V
    .locals 4

    const/4 v0, 0x0

    .line 408
    :try_start_0
    invoke-virtual {p0}, Lcom/garena/game/kgtw/SGameRealActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/garena/game/kgtw/SGameRealActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 409
    invoke-virtual {p0}, Lcom/garena/game/kgtw/SGameRealActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 411
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 v1, 0x0

    .line 413
    :goto_0
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz v1, :cond_0

    .line 415
    invoke-virtual {v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 417
    :cond_0
    sget v1, Lcom/garena/game/kgtw/R$string;->package_is_invaild_title:I

    invoke-virtual {v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 418
    sget v1, Lcom/garena/game/kgtw/R$string;->package_is_invaild:I

    invoke-virtual {v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 420
    sget v1, Lcom/garena/game/kgtw/R$string;->submit:I

    new-instance v3, Lcom/garena/game/kgtw/SGameRealActivity$3;

    invoke-direct {v3, p0}, Lcom/garena/game/kgtw/SGameRealActivity$3;-><init>(Lcom/garena/game/kgtw/SGameRealActivity;)V

    invoke-virtual {v2, v1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 427
    invoke-virtual {v2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 428
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 429
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 581
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    if-eq v0, v1, :cond_0

    .line 582
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 584
    :cond_0
    const-string v0, "SGameRealActivity"

    const-string v1, "dispatchKeyEvent CheckIfHideSystemUI"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    invoke-virtual {p0}, Lcom/garena/game/kgtw/SGameRealActivity;->CheckIfHideSystemUI()V

    .line 587
    :cond_1
    invoke-super {p0, p1}, Lcom/unity3d/player/UnityPlayerActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "resultCode",
            "data"
        }
    .end annotation

    .line 434
    const-string v0, "SGameActivity resultCode"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    invoke-super {p0, p1, p2, p3}, Lcom/unity3d/player/UnityPlayerActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 436
    sget-object v0, Lcom/gcore/gcloud/plugin/GCloudAppLifecycle;->Instance:Lcom/gcore/gcloud/plugin/GCloudAppLifecycle;

    invoke-virtual {v0, p1, p2, p3}, Lcom/gcore/gcloud/plugin/GCloudAppLifecycle;->onActivityResult(IILandroid/content/Intent;)V

    .line 438
    invoke-static {p1, p2, p3}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->onActivityResult(IILandroid/content/Intent;)V

    .line 440
    invoke-static {p1, p2, p3}, Lcom/tencent/ngame/utility/SGameUtility;->onActivityResult(IILandroid/content/Intent;)V

    .line 442
    sget-boolean v0, Lcom/garena/game/kgtw/SGameRealActivity;->isINTLVideoSdkInstalled:Z

    if-eqz v0, :cond_0

    .line 443
    invoke-static {p1, p2, p3}, Lcom/intlgame/video/INTLVideoSdk;->setActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 190
    invoke-super {p0, p1}, Lcom/unity3d/player/UnityPlayerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 191
    invoke-virtual {p0}, Lcom/garena/game/kgtw/SGameRealActivity;->CheckIfHideSystemUI()V

    .line 194
    invoke-static {}, Lcom/tencent/ngame/utility/AssetsPackManager;->isUseAAB()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/ngame/utility/AssetsPackManager;->isUseAAB()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tencent/ngame/utility/AssetsPackManager;->isDeliverysplitEnable()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 195
    sput-boolean v0, Lcom/garena/game/kgtw/SGameRealActivity;->isINTLVideoSdkInstalled:Z

    .line 196
    sput-boolean v0, Lcom/garena/game/kgtw/SGameRealActivity;->isGCloudVoiceInstalled:Z

    .line 197
    sput-boolean v0, Lcom/garena/game/kgtw/SGameRealActivity;->isTGPAInstalled:Z

    .line 200
    :cond_1
    sget-boolean v0, Lcom/garena/game/kgtw/SGameRealActivity;->isTGPAInstalled:Z

    if-eqz v0, :cond_2

    .line 201
    invoke-direct {p0}, Lcom/garena/game/kgtw/SGameRealActivity;->initTGPA()V

    .line 205
    :cond_2
    sget-object v0, Lcom/gcore/gcloud/plugin/GCloudAppLifecycle;->Instance:Lcom/gcore/gcloud/plugin/GCloudAppLifecycle;

    const-string v1, "com.gsdk.gcloud.GCloudAppLifecycleListener"

    invoke-virtual {v0, v1}, Lcom/gcore/gcloud/plugin/GCloudAppLifecycle;->addObserverByName(Ljava/lang/String;)V

    .line 207
    sget-object v0, Lcom/gcore/gcloud/plugin/GCloudAppLifecycle;->Instance:Lcom/gcore/gcloud/plugin/GCloudAppLifecycle;

    const-string v1, "com.tdatamaster.tdm.gcloud.lifecycle.PluginReportLifecycle"

    invoke-virtual {v0, v1}, Lcom/gcore/gcloud/plugin/GCloudAppLifecycle;->addObserverByName(Ljava/lang/String;)V

    .line 209
    sget-object v0, Lcom/gcore/gcloud/plugin/GCloudAppLifecycle;->Instance:Lcom/gcore/gcloud/plugin/GCloudAppLifecycle;

    const-string v1, "com.gcloud.nettool.plugin.NetToolAppLifecycleListener"

    invoke-virtual {v0, v1}, Lcom/gcore/gcloud/plugin/GCloudAppLifecycle;->addObserverByName(Ljava/lang/String;)V

    .line 210
    sget-object v0, Lcom/gcore/gcloud/plugin/GCloudAppLifecycle;->Instance:Lcom/gcore/gcloud/plugin/GCloudAppLifecycle;

    invoke-virtual {v0, p0, p1}, Lcom/gcore/gcloud/plugin/GCloudAppLifecycle;->onCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 212
    invoke-direct {p0}, Lcom/garena/game/kgtw/SGameRealActivity;->checkMRSettings()V

    .line 214
    invoke-static {}, Lcom/tencent/ngame/utility/SGameUtility;->asyncGetGAID()V

    .line 225
    invoke-virtual {p0}, Lcom/garena/game/kgtw/SGameRealActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/garena/game/kgtw/SGameRealActivity$1;

    invoke-direct {v0, p0}, Lcom/garena/game/kgtw/SGameRealActivity$1;-><init>(Lcom/garena/game/kgtw/SGameRealActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 238
    sget-boolean p1, Lcom/garena/game/kgtw/SGameRealActivity;->isINTLVideoSdkInstalled:Z

    if-eqz p1, :cond_3

    .line 239
    invoke-direct {p0}, Lcom/garena/game/kgtw/SGameRealActivity;->initINTL()V

    .line 244
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "|"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 245
    invoke-static {p0, p1}, Lcom/uqm/crashsight/crashreport/CrashReport;->setDeviceModel(Landroid/content/Context;Ljava/lang/String;)V

    .line 247
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1f

    if-lt p1, v0, :cond_4

    .line 248
    invoke-direct {p0}, Lcom/garena/game/kgtw/SGameRealActivity;->getGameMode()I

    move-result p1

    iput p1, p0, Lcom/garena/game/kgtw/SGameRealActivity;->mLastGameMode:I

    :cond_4
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 537
    sget-object v0, Lcom/gcore/gcloud/plugin/GCloudAppLifecycle;->Instance:Lcom/gcore/gcloud/plugin/GCloudAppLifecycle;

    invoke-virtual {v0}, Lcom/gcore/gcloud/plugin/GCloudAppLifecycle;->onDestroy()V

    .line 538
    const-string v0, "SGameRealActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    invoke-super {p0}, Lcom/unity3d/player/UnityPlayerActivity;->onDestroy()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 450
    sget-object v0, Lcom/gcore/gcloud/plugin/GCloudAppLifecycle;->Instance:Lcom/gcore/gcloud/plugin/GCloudAppLifecycle;

    invoke-virtual {v0, p1}, Lcom/gcore/gcloud/plugin/GCloudAppLifecycle;->onNewIntent(Landroid/content/Intent;)V

    .line 452
    :try_start_0
    const-string v0, "SGameRealActivity"

    const-string v1, "onNewIntent"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    invoke-super {p0, p1}, Lcom/unity3d/player/UnityPlayerActivity;->onNewIntent(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 455
    const-string v1, "SGameActivity onNewIntent"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :goto_0
    invoke-static {p1}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 470
    const-string v0, "SGameRealActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    invoke-super {p0}, Lcom/unity3d/player/UnityPlayerActivity;->onPause()V

    .line 472
    sget-object v0, Lcom/gcore/gcloud/plugin/GCloudAppLifecycle;->Instance:Lcom/gcore/gcloud/plugin/GCloudAppLifecycle;

    invoke-virtual {v0}, Lcom/gcore/gcloud/plugin/GCloudAppLifecycle;->onPause()V

    .line 475
    invoke-static {}, Lcom/garena/game/kgtw/SGameRealActivity;->getSystemVersion()I

    move-result v0

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_0

    .line 477
    iget-object v0, p0, Lcom/garena/game/kgtw/SGameRealActivity;->mLockscreenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/garena/game/kgtw/SGameRealActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "permissions",
            "grantResults"
        }
    .end annotation

    .line 370
    const-string v0, "SGameRealActivity"

    sget-object v1, Lcom/gcore/gcloud/plugin/GCloudAppLifecycle;->Instance:Lcom/gcore/gcloud/plugin/GCloudAppLifecycle;

    invoke-virtual {v1, p1, p2, p3}, Lcom/gcore/gcloud/plugin/GCloudAppLifecycle;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 371
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 373
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 374
    array-length v3, p2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_0

    aget-object v6, p2, v5

    .line 375
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 377
    :cond_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 378
    array-length v5, p3

    :goto_1
    if-ge v4, v5, :cond_1

    aget v6, p3, v4

    .line 379
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 381
    :cond_1
    const-string v4, "requestCode"

    invoke-virtual {v1, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 382
    const-string v4, "permissions"

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 383
    const-string v2, "grantResults"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    .line 386
    invoke-virtual {v2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 389
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Request Permissions Result: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    const-string v0, "BootObj"

    const-string v2, "OnRequestPermissionsResult"

    invoke-static {v0, v2, v1}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    invoke-static {p1, p2, p3}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 392
    invoke-static {p1, p2, p3}, Lcom/tencent/ngame/utility/SGameUtility;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 394
    invoke-super {p0, p1, p2, p3}, Lcom/unity3d/player/UnityPlayerActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 396
    sget-boolean v0, Lcom/garena/game/kgtw/SGameRealActivity;->isINTLVideoSdkInstalled:Z

    if-eqz v0, :cond_2

    .line 397
    invoke-static {p1, p2, p3}, Lcom/intlgame/video/INTLVideoSdk;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    :cond_2
    return-void
.end method

.method public onRestart()V
    .locals 1

    .line 544
    invoke-super {p0}, Lcom/unity3d/player/UnityPlayerActivity;->onRestart()V

    .line 545
    sget-object v0, Lcom/gcore/gcloud/plugin/GCloudAppLifecycle;->Instance:Lcom/gcore/gcloud/plugin/GCloudAppLifecycle;

    invoke-virtual {v0}, Lcom/gcore/gcloud/plugin/GCloudAppLifecycle;->onRestart()V

    return-void
.end method

.method protected onResume()V
    .locals 5

    .line 484
    const-string v0, "onResume"

    const-string v1, "SGameRealActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    invoke-super {p0}, Lcom/unity3d/player/UnityPlayerActivity;->onResume()V

    .line 486
    sget-object v0, Lcom/gcore/gcloud/plugin/GCloudAppLifecycle;->Instance:Lcom/gcore/gcloud/plugin/GCloudAppLifecycle;

    invoke-virtual {v0}, Lcom/gcore/gcloud/plugin/GCloudAppLifecycle;->onResume()V

    .line 489
    invoke-static {}, Lcom/garena/game/kgtw/SGameRealActivity;->getSystemVersion()I

    move-result v0

    const/16 v2, 0x1a

    if-ne v0, v2, :cond_0

    .line 491
    iget-object v0, p0, Lcom/garena/game/kgtw/SGameRealActivity;->mLockscreenReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/garena/game/kgtw/SGameRealActivity;->mLockscreenfilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v2}, Lcom/garena/game/kgtw/SGameRealActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 495
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-lt v0, v2, :cond_1

    .line 496
    invoke-direct {p0}, Lcom/garena/game/kgtw/SGameRealActivity;->getGameMode()I

    move-result v0

    .line 497
    iget v2, p0, Lcom/garena/game/kgtw/SGameRealActivity;->mLastGameMode:I

    if-eq v2, v0, :cond_1

    if-eqz v0, :cond_1

    .line 499
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 502
    :try_start_0
    const-string v3, "lastGameMode"

    iget v4, p0, Lcom/garena/game/kgtw/SGameRealActivity;->mLastGameMode:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 503
    const-string v3, "gamemode"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 506
    invoke-virtual {v3}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 509
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "UnitySend GameMode Result: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    const-string v1, "NatviceCallbackUtilGameObject"

    const-string v3, "OnGameModeNofity"

    invoke-static {v1, v3, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    iput v0, p0, Lcom/garena/game/kgtw/SGameRealActivity;->mLastGameMode:I

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 463
    invoke-super {p0}, Lcom/unity3d/player/UnityPlayerActivity;->onStart()V

    .line 465
    sget-object v0, Lcom/gcore/gcloud/plugin/GCloudAppLifecycle;->Instance:Lcom/gcore/gcloud/plugin/GCloudAppLifecycle;

    invoke-virtual {v0}, Lcom/gcore/gcloud/plugin/GCloudAppLifecycle;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 531
    invoke-super {p0}, Lcom/unity3d/player/UnityPlayerActivity;->onStop()V

    .line 532
    sget-object v0, Lcom/gcore/gcloud/plugin/GCloudAppLifecycle;->Instance:Lcom/gcore/gcloud/plugin/GCloudAppLifecycle;

    invoke-virtual {v0}, Lcom/gcore/gcloud/plugin/GCloudAppLifecycle;->onStop()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hasFocus"
        }
    .end annotation

    .line 518
    invoke-super {p0, p1}, Lcom/unity3d/player/UnityPlayerActivity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    .line 520
    const-string p1, "SGameRealActivity"

    const-string v0, "onWindowFocusChanged CheckIfHideSystemUI"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x3e8

    .line 522
    invoke-direct {p0, p1}, Lcom/garena/game/kgtw/SGameRealActivity;->delayedHide(I)V

    goto :goto_0

    .line 524
    :cond_0
    iget-object p1, p0, Lcom/garena/game/kgtw/SGameRealActivity;->mHideHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    :goto_0
    return-void
.end method
