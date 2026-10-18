.class public abstract Lcom/tencent/gcloud/msdk/core/popup/MSDKPopupCallbackProxy;
.super Ljava/lang/Object;
.source "MSDKPopupCallbackProxy.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# static fields
.field public static ACTION_CANCEL:I = 0x2

.field public static ACTION_COMMIT:I = 0x1

.field public static ACTION_ERROR:I = -0x1

.field public static ACTION_SKIP:I = 0x0

.field private static final METHOD_COMPLETE:Ljava/lang/String; = "onComplete"

.field private static actionClazz:Ljava/lang/Class;

.field private static idField:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    :try_start_0
    const-string v0, "com.itop.gcloud.msdk.popup.IMSDKPopupWindowCallback$Action"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/tencent/gcloud/msdk/core/popup/MSDKPopupCallbackProxy;->actionClazz:Ljava/lang/Class;

    .line 23
    const-string v1, "id"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/tencent/gcloud/msdk/core/popup/MSDKPopupCallbackProxy;->idField:Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 25
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "proxy",
            "method",
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 33
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string p2, "onComplete"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 35
    array-length p1, p3

    const/4 p2, 0x2

    if-lt p1, p2, :cond_1

    const/4 p1, 0x0

    .line 36
    aget-object p1, p3, p1

    .line 37
    sget-object p2, Lcom/tencent/gcloud/msdk/core/popup/MSDKPopupCallbackProxy;->idField:Ljava/lang/reflect/Field;

    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x1

    .line 38
    aget-object p2, p3, p2

    check-cast p2, Ljava/lang/String;

    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/tencent/gcloud/msdk/core/popup/MSDKPopupCallbackProxy;->onComplete(ILjava/lang/String;)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract onComplete(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "action",
            "message"
        }
    .end annotation
.end method
