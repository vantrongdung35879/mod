.class public Lcom/tencent/gsdk/q0$b;
.super Lcom/tencent/gsdk/q0;
.source "Platform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/gsdk/q0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field private static d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static e:Ljava/lang/reflect/Method;


# instance fields
.field private c:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    :try_start_0
    const-string v0, "org.cocos2dx.lib.Cocos2dxActivity"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/tencent/gsdk/q0$b;->d:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 3
    sput-object v0, Lcom/tencent/gsdk/q0$b;->d:Ljava/lang/Class;

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/tencent/gsdk/q0;-><init>(Lcom/tencent/gsdk/q0$a;)V

    .line 7
    iput-object v0, p0, Lcom/tencent/gsdk/q0$b;->c:Landroid/app/Activity;

    return-void
.end method

.method static e()Lcom/tencent/gsdk/q0;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/gsdk/q0$b;->d:Ljava/lang/Class;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Lcom/tencent/gsdk/q0$b;

    invoke-direct {v0}, Lcom/tencent/gsdk/q0$b;-><init>()V

    return-object v0
.end method

.method private static f()Ljava/lang/reflect/Method;
    .locals 5

    .line 1
    sget-object v0, Lcom/tencent/gsdk/q0$b;->e:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 5
    :try_start_0
    sget-object v1, Lcom/tencent/gsdk/q0$b;->d:Ljava/lang/Class;

    const-string v2, "runOnGLThread"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Runnable;

    aput-object v4, v3, v0

    .line 6
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/tencent/gsdk/q0$b;->e:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 8
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "Get runOnGLThread Method failed"

    invoke-static {v1, v2, v0}, Lcom/tencent/gsdk/x;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    :goto_0
    sget-object v0, Lcom/tencent/gsdk/q0$b;->e:Ljava/lang/reflect/Method;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/tencent/gsdk/n0;)V
    .locals 7

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/gsdk/q0$b;->d()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3
    const-string p1, "Send message to Cocos failed, since get Activity failed"

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/tencent/gsdk/x;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 7
    :cond_0
    invoke-static {}, Lcom/tencent/gsdk/q0;->a()Lcom/tencent/gsdk/d0;

    move-result-object v2

    invoke-interface {v2}, Lcom/tencent/gsdk/d0;->a()Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p1, Lcom/tencent/gsdk/n0;->a:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v0

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 8
    iget-boolean v3, p1, Lcom/tencent/gsdk/n0;->c:Z

    if-nez v3, :cond_1

    .line 9
    iget-object p1, p1, Lcom/tencent/gsdk/n0;->b:Ljava/lang/String;

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v0

    const/4 p1, 0x0

    invoke-virtual {v2, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 11
    :cond_1
    invoke-static {}, Lcom/tencent/gsdk/q0$b;->f()Ljava/lang/reflect/Method;

    move-result-object v3

    if-nez v3, :cond_2

    .line 13
    const-string p1, "Send message to Cocos failed, since get runOnGLThread Method failed"

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/tencent/gsdk/x;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 16
    :cond_2
    new-instance v5, Lcom/tencent/gsdk/q0$b$a;

    invoke-direct {v5, p0, v2, p1}, Lcom/tencent/gsdk/q0$b$a;-><init>(Lcom/tencent/gsdk/q0$b;Ljava/lang/reflect/Method;Lcom/tencent/gsdk/n0;)V

    new-array p1, v4, [Ljava/lang/Object;

    aput-object v5, p1, v0

    invoke-virtual {v3, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 28
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Send message to Cocos failed"

    invoke-static {p1, v1, v0}, Lcom/tencent/gsdk/x;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    .line 29
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "msg can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d()Landroid/app/Activity;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/gsdk/q0$b;->c:Landroid/app/Activity;

    if-eqz v0, :cond_0

    return-object v0

    .line 6
    :cond_0
    :try_start_0
    sget-object v0, Lcom/tencent/gsdk/q0$b;->d:Ljava/lang/Class;

    const-string v1, "getContext"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 7
    invoke-virtual {v0, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 8
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 9
    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/tencent/gsdk/q0$b;->c:Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 12
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Get Activity failed"

    invoke-static {v0, v2, v1}, Lcom/tencent/gsdk/x;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/tencent/gsdk/q0$b;->c:Landroid/app/Activity;

    return-object v0
.end method
