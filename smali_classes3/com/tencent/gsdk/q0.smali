.class public Lcom/tencent/gsdk/q0;
.super Ljava/lang/Object;
.source "Platform.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/gsdk/q0$d;,
        Lcom/tencent/gsdk/q0$c;,
        Lcom/tencent/gsdk/q0$b;
    }
.end annotation


# static fields
.field private static a:Lcom/tencent/gsdk/q0;

.field private static b:Lcom/tencent/gsdk/d0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/gsdk/q0;->b()Lcom/tencent/gsdk/q0;

    move-result-object v0

    sput-object v0, Lcom/tencent/gsdk/q0;->a:Lcom/tencent/gsdk/q0;

    const/4 v0, 0x0

    .line 2
    sput-object v0, Lcom/tencent/gsdk/q0;->b:Lcom/tencent/gsdk/d0;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/gsdk/q0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tencent/gsdk/q0;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/tencent/gsdk/d0;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/gsdk/q0;->b:Lcom/tencent/gsdk/d0;

    return-object v0
.end method

.method public static a(Lcom/tencent/gsdk/d0;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 2
    sput-object p0, Lcom/tencent/gsdk/q0;->b:Lcom/tencent/gsdk/d0;

    return-void

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "messageChannelConfig can not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static b()Lcom/tencent/gsdk/q0;
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/gsdk/q0$b;->e()Lcom/tencent/gsdk/q0;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 6
    :cond_0
    invoke-static {}, Lcom/tencent/gsdk/q0$c;->e()Lcom/tencent/gsdk/q0;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 11
    :cond_1
    invoke-static {}, Lcom/tencent/gsdk/q0$d;->e()Lcom/tencent/gsdk/q0;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    .line 16
    :cond_2
    new-instance v0, Lcom/tencent/gsdk/q0;

    invoke-direct {v0}, Lcom/tencent/gsdk/q0;-><init>()V

    return-object v0
.end method

.method public static c()Lcom/tencent/gsdk/q0;
    .locals 2

    .line 1
    sget-object v0, Lcom/tencent/gsdk/q0;->b:Lcom/tencent/gsdk/d0;

    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lcom/tencent/gsdk/q0;->a:Lcom/tencent/gsdk/q0;

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MessageChannelConfig has not installed yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(Lcom/tencent/gsdk/n0;)V
    .locals 6

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 4
    :try_start_0
    sget-object v1, Lcom/tencent/gsdk/q0;->b:Lcom/tencent/gsdk/d0;

    .line 5
    invoke-interface {v1}, Lcom/tencent/gsdk/d0;->a()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p1, Lcom/tencent/gsdk/n0;->a:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v0

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 6
    iget-object p1, p1, Lcom/tencent/gsdk/n0;->b:Ljava/lang/String;

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v0

    const/4 p1, 0x0

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Send message failed"

    invoke-static {p1, v1, v0}, Lcom/tencent/gsdk/x;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "msg can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d()Landroid/app/Activity;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
