.class public Lcom/tencent/tme/live/i/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tme/live/i/g$a;
    }
.end annotation


# static fields
.field public static e:Lcom/tencent/tme/live/i/g;

.field public static f:J


# instance fields
.field public a:Landroid/os/Handler;

.field public b:Lcom/tencent/tme/live/i/g$a;

.field public c:Z

.field public final d:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$8Eib-yODDDoGxnX2j4MMIGt1QPI(Lcom/tencent/tme/live/i/g;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/tme/live/i/g;->c(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$bh8SMob17XmFtIzZ-HA3dfD8Qqc(Lcom/tencent/tme/live/i/g;ILjava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/tme/live/i/g;->a(ILjava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uhy-YlpfZV1-KOSE9pUbzKHVmbM(Lcom/tencent/tme/live/i/g;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tme/live/i/g;->c()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tme/live/i/g;->c:Z

    new-instance v0, Lcom/tencent/tme/live/i/g$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/tencent/tme/live/i/g$$ExternalSyntheticLambda0;-><init>(Lcom/tencent/tme/live/i/g;)V

    iput-object v0, p0, Lcom/tencent/tme/live/i/g;->d:Ljava/lang/Runnable;

    return-void
.end method

.method private a(ILjava/lang/String;Lorg/json/JSONObject;)V
    .locals 3

    const-string p2, "[TME_NET_LINK]getHttpAuthKey onSuccess : "

    const/16 v0, 0xc8

    const-string v1, "HttpManager"

    const/4 v2, 0x2

    if-ne p1, v0, :cond_1

    :try_start_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "result"

    const/4 p2, -0x1

    invoke-virtual {p3, p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "data"

    invoke-virtual {p3, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/i/g;->a(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2}, Lcom/tencent/tme/live/i/g;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {p0, v2}, Lcom/tencent/tme/live/i/g;->a(I)V

    goto :goto_0

    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "getHttpAuthKey onFail code = "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 7
    invoke-static {v1, p1, p2}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    invoke-virtual {p0, v2}, Lcom/tencent/tme/live/i/g;->a(I)V

    :goto_0
    return-void
.end method

.method public static b(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "httpAuth is called:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HttpManager"

    invoke-static {v1, v0}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    .line 1
    invoke-static {}, Lcom/tencent/tme/live/o2/a;->a()Lcom/tencent/tme/live/o2/a;

    move-result-object v0

    const-string v1, "httpAuth"

    invoke-virtual {v0, v1, p0}, Lcom/tencent/tme/live/o2/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private synthetic c()V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/tme/live/i/g;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private synthetic c(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "doRefresh code : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HttpManager"

    invoke-static {v0, p1}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/tme/live/i/g;->d()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    const-string v0, "tme_rtoken"

    :try_start_0
    const-string v1, "HttpManager"

    const-string v2, "[TME_NET_LINK]getHttpAuthKey....."

    invoke-static {v1, v2}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "game_token"

    sget-object v3, Lcom/tencent/tme/live/e/a;->v:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "login_kit"

    sget-object v3, Lcom/tencent/tme/live/e/a;->w:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "msdk_url_param"

    sget-object v3, Lcom/tencent/tme/live/e/a;->y:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1
    invoke-static {v0}, Lcom/tencent/tme/live/l/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/tme/live/l/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "getTVToken"

    new-instance v2, Lcom/tencent/tme/live/i/g$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/tencent/tme/live/i/g$$ExternalSyntheticLambda1;-><init>(Lcom/tencent/tme/live/i/g;)V

    invoke-static {v0, v1, v2}, Lcom/tencent/tme/live/i/i;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/tencent/tme/live/i/i$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/i/g;->b:Lcom/tencent/tme/live/i/g$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/tencent/tme/live/i/g$a;->a(I)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/tencent/tme/live/i/g$a;)V
    .locals 2

    iget-boolean v0, p0, Lcom/tencent/tme/live/i/g;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tme/live/i/g;->c:Z

    :try_start_0
    iput-object p1, p0, Lcom/tencent/tme/live/i/g;->b:Lcom/tencent/tme/live/i/g$a;

    iget-object p1, p0, Lcom/tencent/tme/live/i/g;->a:Landroid/os/Handler;

    if-nez p1, :cond_1

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/tencent/tme/live/i/g;->a:Landroid/os/Handler;

    :cond_1
    sput-boolean v0, Lcom/tencent/tme/live/i/f;->e:Z

    const p1, 0xea60

    sput p1, Lcom/tencent/tme/live/i/f;->d:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/tencent/tme/live/i/f;->c:J

    new-instance p1, Lcom/tencent/tme/live/i/g$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/tencent/tme/live/i/g$$ExternalSyntheticLambda3;-><init>(Lcom/tencent/tme/live/i/g;)V

    sput-object p1, Lcom/tencent/tme/live/i/f;->f:Lcom/tencent/tme/live/i/f$b;

    invoke-virtual {p0}, Lcom/tencent/tme/live/i/g;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 6

    const-string v0, "doRefresh : "

    const-string v1, "tme_stoken"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "expire_in"

    const/4 v4, -0x1

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "tme_rtoken"

    invoke-virtual {p1, v4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {v4}, Lcom/tencent/tme/live/l/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/tencent/tme/live/l/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    if-lez v3, :cond_1

    mul-int/lit16 v3, v3, 0x3e8

    sput v3, Lcom/tencent/tme/live/i/f;->d:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sput-wide v4, Lcom/tencent/tme/live/i/f;->c:J

    sput-object v1, Lcom/tencent/tme/live/e/a;->l:Ljava/lang/String;

    int-to-long v1, v3

    .line 5
    :try_start_0
    const-string p1, "HttpManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tencent/tme/live/i/g;->a:Landroid/os/Handler;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/tencent/tme/live/i/g;->a:Landroid/os/Handler;

    iget-object v0, p0, Lcom/tencent/tme/live/i/g;->d:Ljava/lang/Runnable;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x2

    .line 6
    :goto_1
    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/i/g;->a(I)V

    return-void
.end method

.method public b()V
    .locals 1

    new-instance v0, Lcom/tencent/tme/live/i/g$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/tencent/tme/live/i/g$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p0, v0}, Lcom/tencent/tme/live/i/g;->a(Lcom/tencent/tme/live/i/g$a;)V

    return-void
.end method

.method public final d()V
    .locals 5

    :try_start_0
    const-string v0, "HttpManager"

    const-string v1, "refreshHttpAuth"

    invoke-static {v0, v1}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/tencent/tme/live/i/g;->f:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/tencent/tme/live/i/g;->f:J

    invoke-virtual {p0}, Lcom/tencent/tme/live/i/g;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public e()V
    .locals 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tme/live/i/g;->c:Z

    iget-object v0, p0, Lcom/tencent/tme/live/i/g;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/tencent/tme/live/i/g;->a:Landroid/os/Handler;

    :cond_0
    const-class v0, Lcom/tencent/tme/live/i/j;

    monitor-enter v0

    .line 1
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
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v0

    .line 2
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    :try_start_1
    iget-object v0, v2, Lcom/tencent/tme/live/i/a;->a:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    :cond_2
    iput-object v1, v2, Lcom/tencent/tme/live/i/a;->a:Ljava/util/concurrent/ExecutorService;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4
    :goto_0
    const-string v0, "HttpThreadPoolMgr"

    const-string v2, "HttpThreadPoolMgr unInit"

    invoke-static {v0, v2}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/tencent/tme/live/i/j;->b:Lcom/tencent/tme/live/i/j;

    .line 5
    const-class v0, Lcom/tencent/tme/live/i/k;

    monitor-enter v0

    .line 6
    :try_start_2
    sget-object v2, Lcom/tencent/tme/live/i/k;->b:Lcom/tencent/tme/live/i/k;

    if-nez v2, :cond_3

    new-instance v2, Lcom/tencent/tme/live/i/k;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v3}, Lcom/tencent/tme/live/i/k;-><init>(II)V

    sput-object v2, Lcom/tencent/tme/live/i/k;->b:Lcom/tencent/tme/live/i/k;

    :cond_3
    sget-object v2, Lcom/tencent/tme/live/i/k;->b:Lcom/tencent/tme/live/i/k;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    .line 7
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    :try_start_3
    iget-object v0, v2, Lcom/tencent/tme/live/i/a;->a:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    :cond_4
    iput-object v1, v2, Lcom/tencent/tme/live/i/a;->a:Ljava/util/concurrent/ExecutorService;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 9
    :goto_1
    sput-object v1, Lcom/tencent/tme/live/i/k;->b:Lcom/tencent/tme/live/i/k;

    const-string v0, "ReportThreadPoolMgr"

    const-string v1, "ReportThreadPoolMgr unInit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method
