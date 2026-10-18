.class public Lcom/tencent/gcloud/msdk/api/tools/MSDKTools;
.super Ljava/lang/Object;
.source "MSDKTools.java"


# static fields
.field public static final EXTERNAL_PROVIDER_PATH:Ljava/lang/String; = "content://com.android.externalstorage.documents/document/primary:"

.field public static final GUEST_ID_LENGTH:I = 0x24

.field public static final KEY_AUTHORIZED_URI:Ljava/lang/String; = "authorizedUri"

.field public static final KEY_GUEST_ID:Ljava/lang/String; = "guestId"

.field public static final TOOLS_GUEST_METHOID_ID:I = 0x392

.field public static final TOOLS_OBSERVER_ID:I = 0x385


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetConfig(Ljava/lang/String;I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "defValue"
        }
    .end annotation

    .line 50
    invoke-static {p0, p1}, Lcom/tencent/gcloud/msdk/tools/IT;->getConfig(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static GetConfig(Ljava/lang/String;J)J
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "defValue"
        }
    .end annotation

    .line 55
    invoke-static {p0, p1, p2}, Lcom/tencent/gcloud/msdk/tools/IT;->getConfig(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static GetConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "defValue"
        }
    .end annotation

    .line 40
    invoke-static {p0, p1}, Lcom/tencent/gcloud/msdk/tools/IT;->getConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static GetConfig(Ljava/lang/String;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "defValue"
        }
    .end annotation

    .line 45
    invoke-static {p0, p1}, Lcom/tencent/gcloud/msdk/tools/IT;->getConfig(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static native convertShortUrl(Ljava/lang/String;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "url",
            "typeMark"
        }
    .end annotation
.end method

.method public static native getGuestId()Ljava/lang/String;
.end method

.method public static native getLoginChannelOpenID(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "Channel"
        }
    .end annotation
.end method

.method public static native isAppInstalled(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageName"
        }
    .end annotation
.end method

.method public static native openDeepLink(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "link"
        }
    .end annotation
.end method

.method public static native openPrajnaWebView(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "jsonStr"
        }
    .end annotation
.end method

.method public static native reportPrajna(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "jsonStr"
        }
    .end annotation
.end method

.method public static requestDirectoryPermission(Ljava/lang/String;Lcom/tencent/gcloud/msdk/api/tools/MSDKToolsObserver;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "initPath",
            "observer"
        }
    .end annotation

    const-string v0, "content://com.android.externalstorage.documents/document/primary:"

    .line 156
    invoke-static {}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->getActivityCur()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 157
    const-string p0, "Need active activity"

    invoke-static {p0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 158
    new-instance p0, Lcom/tencent/gcloud/msdk/api/tools/MSDKToolsRet;

    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/tencent/gcloud/msdk/api/tools/MSDKToolsRet;-><init>(I)V

    invoke-interface {p1, p0}, Lcom/tencent/gcloud/msdk/api/tools/MSDKToolsObserver;->onToolsRetNotify(Lcom/tencent/gcloud/msdk/api/tools/MSDKToolsRet;)V

    return-void

    .line 161
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_1

    .line 162
    const-string p0, "os not support"

    invoke-static {p0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 163
    new-instance p0, Lcom/tencent/gcloud/msdk/api/tools/MSDKToolsRet;

    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/tencent/gcloud/msdk/api/tools/MSDKToolsRet;-><init>(I)V

    invoke-interface {p1, p0}, Lcom/tencent/gcloud/msdk/api/tools/MSDKToolsObserver;->onToolsRetNotify(Lcom/tencent/gcloud/msdk/api/tools/MSDKToolsRet;)V

    return-void

    .line 166
    :cond_1
    const-class v1, Lcom/tencent/gcloud/msdk/core/lifecycle/LifeCycleManager;

    invoke-static {v1}, Lcom/tencent/gcloud/msdk/tools/Singleton;->getSingleton(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/gcloud/msdk/core/lifecycle/LifeCycleManager;

    if-nez v1, :cond_2

    .line 168
    const-string p0, "error with lifecycle instance"

    invoke-static {p0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 169
    new-instance p0, Lcom/tencent/gcloud/msdk/api/tools/MSDKToolsRet;

    const/16 v0, 0x11

    invoke-direct {p0, v0}, Lcom/tencent/gcloud/msdk/api/tools/MSDKToolsRet;-><init>(I)V

    invoke-interface {p1, p0}, Lcom/tencent/gcloud/msdk/api/tools/MSDKToolsObserver;->onToolsRetNotify(Lcom/tencent/gcloud/msdk/api/tools/MSDKToolsRet;)V

    return-void

    .line 172
    :cond_2
    new-instance v2, Lcom/tencent/gcloud/msdk/api/tools/MSDKTools$2;

    invoke-direct {v2, v1, p1}, Lcom/tencent/gcloud/msdk/api/tools/MSDKTools$2;-><init>(Lcom/tencent/gcloud/msdk/core/lifecycle/LifeCycleManager;Lcom/tencent/gcloud/msdk/api/tools/MSDKToolsObserver;)V

    invoke-virtual {v1, v2}, Lcom/tencent/gcloud/msdk/core/lifecycle/LifeCycleManager;->addActivityLifeMonitor(Lcom/tencent/gcloud/msdk/core/interfaces/ILifeCycle;)V

    .line 200
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 201
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPEN_DOCUMENT_TREE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 202
    const-string v1, "android.provider.extra.INITIAL_URI"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 203
    invoke-static {}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->getActivityCur()Landroid/app/Activity;

    move-result-object p0

    const/16 v1, 0x7e5

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 205
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 206
    new-instance p0, Lcom/tencent/gcloud/msdk/api/tools/MSDKToolsRet;

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/tencent/gcloud/msdk/api/tools/MSDKToolsRet;-><init>(I)V

    invoke-interface {p1, p0}, Lcom/tencent/gcloud/msdk/api/tools/MSDKToolsObserver;->onToolsRetNotify(Lcom/tencent/gcloud/msdk/api/tools/MSDKToolsRet;)V

    :goto_0
    return-void
.end method

.method public static requestRecoverGuest()V
    .locals 2

    .line 105
    invoke-static {}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKDeviceInfo;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 106
    new-instance v1, Lcom/tencent/gcloud/msdk/api/tools/MSDKTools$1;

    invoke-direct {v1}, Lcom/tencent/gcloud/msdk/api/tools/MSDKTools$1;-><init>()V

    invoke-static {v0, v1}, Lcom/tencent/gcloud/msdk/api/tools/MSDKTools;->requestDirectoryPermission(Ljava/lang/String;Lcom/tencent/gcloud/msdk/api/tools/MSDKToolsObserver;)V

    return-void
.end method

.method public static native setGuestId(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "guestId"
        }
    .end annotation
.end method

.method public static native setToolsObserver(Lcom/tencent/gcloud/msdk/api/tools/MSDKToolsObserver;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "observer"
        }
    .end annotation
.end method
