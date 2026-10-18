.class public Lcom/tencent/tme/live/i/i;
.super Lcom/tencent/tme/live/i/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tme/live/i/i$a;,
        Lcom/tencent/tme/live/i/i$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/tme/live/i/f<",
        "Lcom/tencent/tme/live/i/i$b;",
        ">;"
    }
.end annotation


# instance fields
.field public volatile g:Lorg/json/JSONObject;

.field public h:Lcom/tencent/tme/live/i/i$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/tme/live/i/f;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/tencent/tme/live/i/i;->g:Lorg/json/JSONObject;

    return-void
.end method

.method public static synthetic a(Lcom/tencent/tme/live/i/i$a;Ljava/lang/String;ILjava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    if-eqz p0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p4, v0, p1

    const-string p1, "[%s]rsp=%s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "TMEHttpProxy"

    invoke-static {v0, p1}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, p2, p3, p4}, Lcom/tencent/tme/live/i/i$a;->a(ILjava/lang/String;Lorg/json/JSONObject;)V

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/tencent/tme/live/i/i$b;Lcom/tencent/tme/live/i/i$a;)V
    .locals 5

    new-instance v0, Lcom/tencent/tme/live/i/i;

    invoke-direct {v0}, Lcom/tencent/tme/live/i/i;-><init>()V

    iput-object p1, v0, Lcom/tencent/tme/live/i/i;->h:Lcom/tencent/tme/live/i/i$b;

    new-instance p1, Lcom/tencent/tme/live/i/i$$ExternalSyntheticLambda0;

    invoke-direct {p1, p2, p0}, Lcom/tencent/tme/live/i/i$$ExternalSyntheticLambda0;-><init>(Lcom/tencent/tme/live/i/i$a;Ljava/lang/String;)V

    .line 1
    sget-object p0, Lcom/tencent/tme/live/e/a;->a:Landroid/content/Context;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/tencent/tme/live/i/h;

    invoke-direct {p2, v0, p1}, Lcom/tencent/tme/live/i/h;-><init>(Lcom/tencent/tme/live/i/i;Lcom/tencent/tme/live/i/i$a;)V

    iget-object p1, v0, Lcom/tencent/tme/live/i/i;->h:Lcom/tencent/tme/live/i/i$b;

    .line 2
    const-class v1, Lcom/tencent/tme/live/i/j;

    monitor-enter v1

    .line 3
    :try_start_0
    sget-object v2, Lcom/tencent/tme/live/i/j;->b:Lcom/tencent/tme/live/i/j;

    if-nez v2, :cond_1

    new-instance v2, Lcom/tencent/tme/live/i/j;

    const/4 v3, 0x3

    const/16 v4, 0xa

    invoke-direct {v2, v3, v4}, Lcom/tencent/tme/live/i/j;-><init>(II)V

    sput-object v2, Lcom/tencent/tme/live/i/j;->b:Lcom/tencent/tme/live/i/j;

    :cond_1
    sget-object v2, Lcom/tencent/tme/live/i/j;->b:Lcom/tencent/tme/live/i/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 4
    new-instance v1, Lcom/tencent/tme/live/i/d;

    invoke-direct {v1, v0, p0, p2, p1}, Lcom/tencent/tme/live/i/d;-><init>(Lcom/tencent/tme/live/i/f;Landroid/content/Context;Lcom/tencent/tme/live/i/f$a;Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    :try_start_1
    iget-object p0, v2, Lcom/tencent/tme/live/i/a;->a:Ljava/util/concurrent/ExecutorService;

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    iget-object p0, v2, Lcom/tencent/tme/live/i/a;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    .line 6
    monitor-exit v1

    throw p0
.end method

.method public static a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/tencent/tme/live/i/i$a;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string v1, "[%s]req=%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TMEHttpProxy"

    invoke-static {v1, v0}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/tencent/tme/live/i/i$b;

    invoke-direct {v0}, Lcom/tencent/tme/live/i/i$b;-><init>()V

    :try_start_0
    const-string v1, "tme_stoken"

    sget-object v2, Lcom/tencent/tme/live/e/a;->l:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    iput-object p0, v0, Lcom/tencent/tme/live/i/i$b;->a:Ljava/lang/String;

    iput-object p1, v0, Lcom/tencent/tme/live/i/i$b;->b:Ljava/lang/Object;

    invoke-static {p0, v0, p2}, Lcom/tencent/tme/live/i/i;->a(Ljava/lang/String;Lcom/tencent/tme/live/i/i$b;Lcom/tencent/tme/live/i/i$a;)V

    return-void
.end method
