.class public Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;
.super Ljava/lang/Object;
.source "EmbedWebViewManager.java"

# interfaces
.implements Lcom/tencent/gcloud/msdk/core/webview/WebViewInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager$EmbedToolBarListener;
    }
.end annotation


# static fields
.field public static final KEY_WEBVIEW_BACKGROUND_COLOR:Ljava/lang/String; = "bgColor"

.field public static final KEY_WEBVIEW_BACKGROUND_PATH:Ljava/lang/String; = "bgPath"

.field public static final KEY_WEBVIEW_CAN_BACKPRESSED:Ljava/lang/String; = "canBackPressed"

.field public static final KEY_WEBVIEW_IS_EMBED:Ljava/lang/String; = "isEmbedWebView"

.field public static final KEY_WEBVIEW_WITH_DIALOG:Ljava/lang/String; = "withDialog"

.field private static volatile instance:Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;

.field private static mFrameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;


# instance fields
.field private backgroundImagePath:Ljava/lang/String;

.field private currentActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mJsBridge:Lcom/tencent/gcloud/msdk/embedwebview/EmbedJsProcessor;

.field private mObserverId:I

.field private toolBarWebView:Lcom/tencent/gcloud/msdk/view/ToolBarWebView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 48
    iput v0, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->mObserverId:I

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->toolBarWebView:Lcom/tencent/gcloud/msdk/view/ToolBarWebView;

    .line 64
    iput-object v0, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->mJsBridge:Lcom/tencent/gcloud/msdk/embedwebview/EmbedJsProcessor;

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;)Lcom/tencent/gcloud/msdk/view/ToolBarWebView;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->toolBarWebView:Lcom/tencent/gcloud/msdk/view/ToolBarWebView;

    return-object p0
.end method

.method static synthetic access$002(Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;Lcom/tencent/gcloud/msdk/view/ToolBarWebView;)Lcom/tencent/gcloud/msdk/view/ToolBarWebView;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->toolBarWebView:Lcom/tencent/gcloud/msdk/view/ToolBarWebView;

    return-object p1
.end method

.method static synthetic access$100()Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    .line 38
    sget-object v0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->mFrameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    return-object v0
.end method

.method static synthetic access$102(Landroid/widget/FrameLayout$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 0

    .line 38
    sput-object p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->mFrameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    return-object p0
.end method

.method static synthetic access$200(Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;)Landroid/util/DisplayMetrics;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    return-object p0
.end method

.method static synthetic access$202(Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;Landroid/util/DisplayMetrics;)Landroid/util/DisplayMetrics;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    return-object p1
.end method

.method static synthetic access$302(Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->backgroundImagePath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;)Lcom/tencent/gcloud/msdk/embedwebview/EmbedJsProcessor;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->mJsBridge:Lcom/tencent/gcloud/msdk/embedwebview/EmbedJsProcessor;

    return-object p0
.end method

.method static synthetic access$402(Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;Lcom/tencent/gcloud/msdk/embedwebview/EmbedJsProcessor;)Lcom/tencent/gcloud/msdk/embedwebview/EmbedJsProcessor;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->mJsBridge:Lcom/tencent/gcloud/msdk/embedwebview/EmbedJsProcessor;

    return-object p1
.end method

.method static synthetic access$500(Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->currentActivity:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$502(Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->currentActivity:Ljava/lang/ref/WeakReference;

    return-object p1
.end method

.method static synthetic access$600(Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;)I
    .locals 0

    .line 38
    iget p0, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->mObserverId:I

    return p0
.end method

.method static synthetic access$700(Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;ILjava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->sendMessageToGame(ILjava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;
    .locals 2

    .line 53
    sget-object v0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->instance:Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;

    if-nez v0, :cond_1

    .line 54
    const-class v0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;

    monitor-enter v0

    .line 55
    :try_start_0
    sget-object v1, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->instance:Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;

    if-nez v1, :cond_0

    .line 56
    new-instance v1, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;

    invoke-direct {v1}, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;-><init>()V

    sput-object v1, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->instance:Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;

    .line 58
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 60
    :cond_1
    :goto_0
    sget-object v0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->instance:Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;

    return-object v0
.end method

.method private sendMessageToGame(ILjava/lang/String;)V
    .locals 3

    .line 416
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "what = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", parasJsonMsg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 417
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/tencent/gcloud/msdk/webview/WebViewIPCActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 418
    const-string v1, "ipc_webview_msg_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 419
    const-string p1, "ipc_webview_msg"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 420
    const-string/jumbo p1, "webview_key_observer_id"

    iget p2, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->mObserverId:I

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 421
    const-string/jumbo p1, "webview_key_seq_id"

    const-string p2, ""

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 422
    invoke-static {}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private setWebViewBackground(Ljava/lang/String;)V
    .locals 2

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setWebViewBackground\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 220
    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/IT;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->backgroundImagePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 223
    :cond_0
    new-instance v0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager$3;

    invoke-direct {v0, p0, p1}, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager$3;-><init>(Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;Ljava/lang/String;)V

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tencent/gcloud/msdk/tools/IT;->queryBitmap(Lcom/tencent/gcloud/msdk/core/MSDKInnerCallback;[Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public callJS(Ljava/lang/String;)V
    .locals 2

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "call js:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->currentActivity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->toolBarWebView:Lcom/tencent/gcloud/msdk/view/ToolBarWebView;

    if-nez v0, :cond_0

    goto :goto_0

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->currentActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager$4;

    invoke-direct {v1, p0, p1}, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager$4;-><init>(Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 251
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EmbedWebView is destroyed:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method public close()V
    .locals 2

    .line 292
    const-string v0, "close web view"

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->currentActivity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->currentActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager$6;

    invoke-direct {v1, p0}, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager$6;-><init>(Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 294
    :cond_1
    :goto_0
    const-string v0, "EmbedWebView is already destroyed"

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->toolBarWebView:Lcom/tencent/gcloud/msdk/view/ToolBarWebView;

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->toolBarWebView:Lcom/tencent/gcloud/msdk/view/ToolBarWebView;

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v0}, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->close()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->toolBarWebView:Lcom/tencent/gcloud/msdk/view/ToolBarWebView;

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v0}, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->onPause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->toolBarWebView:Lcom/tencent/gcloud/msdk/view/ToolBarWebView;

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v0}, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->onResume()V

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->mJsBridge:Lcom/tencent/gcloud/msdk/embedwebview/EmbedJsProcessor;

    if-eqz v0, :cond_1

    .line 89
    invoke-virtual {v0}, Lcom/tencent/gcloud/msdk/embedwebview/EmbedJsProcessor;->onResume()V

    :cond_1
    return-void
.end method

.method public onShareCallback(Ljava/lang/String;)V
    .locals 2

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onShareCallback:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->currentActivity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->toolBarWebView:Lcom/tencent/gcloud/msdk/view/ToolBarWebView;

    if-nez v0, :cond_0

    goto :goto_1

    .line 274
    :cond_0
    :try_start_0
    new-instance v0, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    invoke-direct {v0, p1}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 276
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 281
    :cond_1
    iget p1, v0, Lcom/tencent/gcloud/msdk/api/MSDKRet;->retCode:I

    .line 282
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->currentActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager$5;

    invoke-direct {v1, p0, p1}, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager$5;-><init>(Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->mJsBridge:Lcom/tencent/gcloud/msdk/embedwebview/EmbedJsProcessor;

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0}, Lcom/tencent/gcloud/msdk/embedwebview/EmbedJsProcessor;->onStop()V

    :cond_0
    return-void
.end method

.method public openUrl(Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewReqInfo;Ljava/lang/String;I)V
    .locals 7

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[ "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ] open url start, with observerId"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    if-eqz p1, :cond_5

    .line 124
    iget-object p2, p1, Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewReqInfo;->url:Ljava/lang/String;

    invoke-static {p2}, Lcom/tencent/gcloud/msdk/tools/IT;->isEmpty(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto/16 :goto_0

    .line 128
    :cond_0
    invoke-static {}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->getActivity()Landroid/app/Activity;

    move-result-object p2

    if-nez p2, :cond_1

    .line 129
    const-string p1, "activity can not be null"

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    return-void

    .line 132
    :cond_1
    iget-object p2, p1, Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewReqInfo;->extraJson:Ljava/lang/String;

    const-string p3, "MSDK_KEY_OBSERVER_ID"

    invoke-static {p2, p3}, Lcom/tencent/gcloud/msdk/tools/IT;->getJsonInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->mObserverId:I

    .line 133
    iget-object p2, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->currentActivity:Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->currentActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    invoke-static {}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->getActivity()Landroid/app/Activity;

    move-result-object p3

    if-eq p2, p3, :cond_3

    .line 134
    :cond_2
    invoke-static {}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->getActivity()Landroid/app/Activity;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 136
    invoke-virtual {p0}, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->close()V

    .line 137
    new-instance p2, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;

    invoke-static {}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object p3, p1, Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewReqInfo;->extraJson:Ljava/lang/String;

    .line 138
    invoke-static {p3}, Lcom/tencent/gcloud/msdk/view/ToolBarWebViewSetting;->getShareChannels(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object p3, p1, Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewReqInfo;->extraJson:Ljava/lang/String;

    .line 139
    invoke-static {p3}, Lcom/tencent/gcloud/msdk/view/ToolBarWebViewSetting;->isX5Enable(Ljava/lang/String;)Z

    move-result v3

    iget-object p3, p1, Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewReqInfo;->extraJson:Ljava/lang/String;

    .line 140
    invoke-static {p3}, Lcom/tencent/gcloud/msdk/view/ToolBarWebViewSetting;->isX5UploadEnable(Ljava/lang/String;)Z

    move-result v4

    iget-object p3, p1, Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewReqInfo;->extraJson:Ljava/lang/String;

    .line 141
    invoke-static {p3}, Lcom/tencent/gcloud/msdk/view/ToolBarWebViewSetting;->isPortraitBarEnable(Ljava/lang/String;)Z

    move-result v5

    iget-object p3, p1, Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewReqInfo;->extraJson:Ljava/lang/String;

    .line 142
    invoke-static {p3}, Lcom/tencent/gcloud/msdk/view/ToolBarWebViewSetting;->isLandscapeBarEnable(Ljava/lang/String;)Z

    move-result v6

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;-><init>(Landroid/app/Activity;Ljava/lang/String;ZZZZ)V

    iput-object p2, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->toolBarWebView:Lcom/tencent/gcloud/msdk/view/ToolBarWebView;

    .line 143
    iget-object p3, p1, Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewReqInfo;->extraJson:Ljava/lang/String;

    invoke-static {p3}, Lcom/tencent/gcloud/msdk/view/ToolBarWebViewSetting;->isToolBarEnable(Ljava/lang/String;)Z

    move-result p3

    invoke-virtual {p2, p3}, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->setToolBarEnable(Z)V

    .line 144
    new-instance p2, Lcom/tencent/gcloud/msdk/embedwebview/EmbedJsProcessor;

    iget-object p3, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->toolBarWebView:Lcom/tencent/gcloud/msdk/view/ToolBarWebView;

    invoke-direct {p2, p3}, Lcom/tencent/gcloud/msdk/embedwebview/EmbedJsProcessor;-><init>(Lcom/tencent/gcloud/msdk/view/ToolBarWebView;)V

    iput-object p2, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->mJsBridge:Lcom/tencent/gcloud/msdk/embedwebview/EmbedJsProcessor;

    .line 145
    iget-object p2, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->toolBarWebView:Lcom/tencent/gcloud/msdk/view/ToolBarWebView;

    new-instance p3, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager$EmbedToolBarListener;

    invoke-direct {p3, p0}, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager$EmbedToolBarListener;-><init>(Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;)V

    invoke-virtual {p2, p3}, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->setToolBarListener(Lcom/tencent/gcloud/msdk/view/ToolBarWebView$ToolBarListener;)V

    .line 146
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-static {}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->getActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->currentActivity:Ljava/lang/ref/WeakReference;

    .line 148
    :cond_3
    iget-object p2, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->currentActivity:Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 149
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "start "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->currentActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 150
    iget-object p2, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->currentActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/Activity;

    new-instance p3, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager$1;

    invoke-direct {p3, p0, p1}, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager$1;-><init>(Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewReqInfo;)V

    invoke-virtual {p2, p3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 177
    :cond_4
    iget-object p1, p1, Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewReqInfo;->extraJson:Ljava/lang/String;

    const-string p2, "bgPath"

    invoke-static {p1, p2}, Lcom/tencent/gcloud/msdk/tools/IT;->getJsonString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->setWebViewBackground(Ljava/lang/String;)V

    return-void

    .line 125
    :cond_5
    :goto_0
    const-string/jumbo p1, "url can not be null"

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method public sendJsToGame(Ljava/lang/String;)V
    .locals 2

    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sendJsToGame:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 427
    new-instance v0, Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewRet;

    invoke-direct {v0}, Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewRet;-><init>()V

    const/16 v1, 0x65

    .line 428
    iput v1, v0, Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewRet;->msgType:I

    .line 429
    iput-object p1, v0, Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewRet;->msgJsonData:Ljava/lang/String;

    const/4 p1, 0x0

    .line 430
    iput p1, v0, Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewRet;->retCode:I

    .line 431
    const-string p1, "js call webview nativie"

    iput-object p1, v0, Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewRet;->retMsg:Ljava/lang/String;

    const/16 p1, 0x19d

    .line 432
    iput p1, v0, Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewRet;->methodNameID:I

    .line 433
    iget p1, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->mObserverId:I

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    return-void
.end method

.method public setPosition(IIII)V
    .locals 8

    if-ltz p3, :cond_1

    if-gez p4, :cond_0

    goto :goto_0

    .line 185
    :cond_0
    invoke-static {}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v7, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager$2;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager$2;-><init>(Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;IIII)V

    invoke-virtual {v0, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 182
    :cond_1
    :goto_0
    const-string p1, "invalid parameters when set embedded webview position"

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    return-void
.end method
