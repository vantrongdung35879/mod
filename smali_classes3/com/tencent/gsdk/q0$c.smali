.class public Lcom/tencent/gsdk/q0$c;
.super Lcom/tencent/gsdk/q0;
.source "Platform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/gsdk/q0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# static fields
.field private static c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static d:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    :try_start_0
    const-string v0, "com.unity3d.player.UnityPlayer"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/tencent/gsdk/q0$c;->c:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 3
    sput-object v0, Lcom/tencent/gsdk/q0$c;->c:Ljava/lang/Class;

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/tencent/gsdk/q0;-><init>(Lcom/tencent/gsdk/q0$a;)V

    return-void
.end method

.method static e()Lcom/tencent/gsdk/q0;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/gsdk/q0$c;->c:Ljava/lang/Class;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Lcom/tencent/gsdk/q0$c;

    invoke-direct {v0}, Lcom/tencent/gsdk/q0$c;-><init>()V

    return-object v0
.end method

.method private static f()Ljava/lang/reflect/Method;
    .locals 6

    .line 1
    sget-object v0, Lcom/tencent/gsdk/q0$c;->d:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 5
    :try_start_0
    sget-object v1, Lcom/tencent/gsdk/q0$c;->c:Ljava/lang/Class;

    const-string v2, "UnitySendMessage"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v0

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v5, 0x2

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/tencent/gsdk/q0$c;->d:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 8
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "Get UnitySendMessage Method failed"

    invoke-static {v1, v2, v0}, Lcom/tencent/gsdk/x;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    :goto_0
    sget-object v0, Lcom/tencent/gsdk/q0$c;->d:Ljava/lang/reflect/Method;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/tencent/gsdk/n0;)V
    .locals 5

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tencent/gsdk/q0$c;->f()Ljava/lang/reflect/Method;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3
    const-string p1, "Send message to Unity failed, since get UnitySendMessage Method failed"

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/tencent/gsdk/x;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 7
    :cond_0
    invoke-static {}, Lcom/tencent/gsdk/q0;->a()Lcom/tencent/gsdk/d0;

    move-result-object v2

    invoke-interface {v2}, Lcom/tencent/gsdk/d0;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/tencent/gsdk/n0;->a:Ljava/lang/String;

    iget-object p1, p1, Lcom/tencent/gsdk/n0;->b:Ljava/lang/String;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v0

    const/4 v2, 0x1

    aput-object v3, v4, v2

    const/4 v2, 0x2

    aput-object p1, v4, v2

    const/4 p1, 0x0

    .line 8
    invoke-virtual {v1, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 12
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Send message to Unity failed"

    invoke-static {p1, v1, v0}, Lcom/tencent/gsdk/x;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    .line 13
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "msg can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d()Landroid/app/Activity;
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Lcom/tencent/gsdk/q0$c;->c:Ljava/lang/Class;

    const-string v2, "currentActivity"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    const/4 v2, 0x0

    .line 4
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Get Activity failed"

    invoke-static {v1, v3, v2}, Lcom/tencent/gsdk/x;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method
