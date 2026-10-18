.class public Lcom/tencent/gcloud/msdk/core/popup/MSDKPopupHelper;
.super Ljava/lang/Object;
.source "MSDKPopupHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(JJILjava/lang/String;)V
    .locals 0

    .line 5
    invoke-static/range {p0 .. p5}, Lcom/tencent/gcloud/msdk/core/popup/MSDKPopupHelper;->popupCallback(JJILjava/lang/String;)V

    return-void
.end method

.method public static createPopupCallback(JJ)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "nativeMethod",
            "userData"
        }
    .end annotation

    const/4 v0, 0x0

    .line 10
    :try_start_0
    const-string v1, "com.itop.gcloud.msdk.popup.IMSDKPopupWindowCallback"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    move-object v1, v0

    :goto_0
    if-nez v1, :cond_0

    return-object v0

    .line 17
    :cond_0
    const-class v0, Lcom/tencent/gcloud/msdk/core/popup/MSDKPopupHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    new-instance v1, Lcom/tencent/gcloud/msdk/core/popup/MSDKPopupHelper$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/tencent/gcloud/msdk/core/popup/MSDKPopupHelper$1;-><init>(JJ)V

    invoke-static {v0, v2, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static native popupCallback(JJILjava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeMethod",
            "userData",
            "action",
            "message"
        }
    .end annotation
.end method
