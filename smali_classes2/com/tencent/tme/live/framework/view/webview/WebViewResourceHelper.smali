.class public Lcom/tencent/tme/live/framework/view/webview/WebViewResourceHelper;
.super Ljava/lang/Object;


# static fields
.field private static TAG:Ljava/lang/String; = "WebViewResourceHelper"

.field private static sInitialed:Z = false


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addChromeResourceIfNeeded(Landroid/content/Context;)Z
    .locals 5

    sget-boolean v0, Lcom/tencent/tme/live/framework/view/webview/WebViewResourceHelper;->sInitialed:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {p0}, Lcom/tencent/tme/live/framework/view/webview/WebViewResourceHelper;->getWebViewResourceDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    return v3

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/tencent/tme/live/framework/view/webview/WebViewResourceHelper;->getAddAssetPathMethod()Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v0, v4, v3

    invoke-virtual {v2, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-lez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    sput-boolean v1, Lcom/tencent/tme/live/framework/view/webview/WebViewResourceHelper;->sInitialed:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p0

    sget-object v0, Lcom/tencent/tme/live/framework/view/webview/WebViewResourceHelper;->TAG:Ljava/lang/String;

    const-string v1, "[init webview res] : invoke method error ! "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    return v3
.end method

.method private static getAddAssetPathMethod()Ljava/lang/reflect/Method;
    .locals 7

    const-class v0, Landroid/content/res/AssetManager;

    sget v1, Lcom/tencent/tme/live/b/a;->a:I

    const/16 v2, 0x18

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lt v1, v2, :cond_0

    :try_start_0
    const-string v1, "addAssetPathAsSharedLibrary"

    new-array v2, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :goto_0
    return-object v5

    :cond_0
    :try_start_1
    const-string v1, "addAssetPath"

    new-array v2, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :goto_1
    return-object v5
.end method

.method private static getWebViewPackageName()Ljava/lang/String;
    .locals 2

    sget v0, Lcom/tencent/tme/live/b/a;->a:I

    const/16 v1, 0x14

    if-gt v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lcom/tencent/tme/live/framework/view/webview/WebViewResourceHelper;->getWebViewPackageName4More()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    invoke-static {}, Lcom/tencent/tme/live/framework/view/webview/WebViewResourceHelper;->getWebViewPackageName4N()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-static {}, Lcom/tencent/tme/live/framework/view/webview/WebViewResourceHelper;->getWebViewPackageName4M()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_2
    invoke-static {}, Lcom/tencent/tme/live/framework/view/webview/WebViewResourceHelper;->getWebViewPackageName4Lollipop()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getWebViewPackageName4Lollipop()Ljava/lang/String;
    .locals 4

    :try_start_0
    const-string v0, "android.webkit.WebViewFactory"

    const-string v1, "getWebViewPackageName"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Lcom/tencent/tme/live/b1/k;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const-string v0, "com.google.android.webview"

    return-object v0
.end method

.method private static getWebViewPackageName4M()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/tencent/tme/live/framework/view/webview/WebViewResourceHelper;->getWebViewPackageName4Lollipop()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getWebViewPackageName4More()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/tencent/tme/live/framework/view/webview/WebViewResourceHelper;->getWebViewPackageName4N()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getWebViewPackageName4N()Ljava/lang/String;
    .locals 4

    :try_start_0
    const-string v0, "android.webkit.WebViewFactory"

    const-string v1, "getWebViewContextAndSetProvider"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Lcom/tencent/tme/live/b1/k;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const-string v0, "com.google.android.webview"

    return-object v0
.end method

.method private static getWebViewResourceDir(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/tencent/tme/live/framework/view/webview/WebViewResourceHelper;->getWebViewPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-static {}, Lcom/tencent/tme/live/framework/view/webview/WebViewResourceHelper;->getWebViewPackageName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x400

    invoke-virtual {p0, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/tencent/tme/live/framework/view/webview/WebViewResourceHelper;->TAG:Ljava/lang/String;

    const-string v2, "get webview application info failed! "

    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :catch_1
    return-object v1
.end method
