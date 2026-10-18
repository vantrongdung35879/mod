.class public Lcom/tencent/qmsp/sdk/d/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qmsp/sdk/d/c$c;
    }
.end annotation


# instance fields
.field private a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/tencent/qmsp/sdk/b/b;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/os/Handler;

.field final c:Ljava/lang/Object;

.field private d:I

.field private e:Lcom/tencent/qmsp/sdk/d/d$b;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Landroid/content/SharedPreferences;

.field private i:Lcom/tencent/qmsp/sdk/d/b;

.field private j:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/qmsp/sdk/d/c;->a:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/qmsp/sdk/d/c;->c:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qmsp/sdk/d/c;->d:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/qmsp/sdk/d/c;->e:Lcom/tencent/qmsp/sdk/d/d$b;

    const-string v2, ""

    iput-object v2, p0, Lcom/tencent/qmsp/sdk/d/c;->f:Ljava/lang/String;

    iput-object v2, p0, Lcom/tencent/qmsp/sdk/d/c;->g:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/qmsp/sdk/d/c;->h:Landroid/content/SharedPreferences;

    iput-object v1, p0, Lcom/tencent/qmsp/sdk/d/c;->i:Lcom/tencent/qmsp/sdk/d/b;

    iput v0, p0, Lcom/tencent/qmsp/sdk/d/c;->j:I

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Lcom/tencent/qmsp/sdk/app/b;->e()Lcom/tencent/qmsp/sdk/app/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/qmsp/sdk/app/b;->b()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/tencent/qmsp/sdk/d/c;->b:Landroid/os/Handler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tencent/qmsp/sdk/c/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/tencent/qmsp/sdk/d/d;->b:[B

    invoke-direct {p0, v2}, Lcom/tencent/qmsp/sdk/d/c;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/qmsp/sdk/d/c;->h:Landroid/content/SharedPreferences;

    new-instance p1, Lcom/tencent/qmsp/sdk/d/b;

    invoke-direct {p1}, Lcom/tencent/qmsp/sdk/d/b;-><init>()V

    iput-object p1, p0, Lcom/tencent/qmsp/sdk/d/c;->i:Lcom/tencent/qmsp/sdk/d/b;

    return-void
.end method

.method private a(ILjava/lang/String;)I
    .locals 5

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-nez p1, :cond_0

    const-string p1, "Qp.QUM"

    const-string p2, "No matched update from server."

    :try_start_0
    invoke-static {p1, v1, p2}, Lcom/tencent/qmsp/sdk/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    return v0

    :cond_0
    iget-object v2, p0, Lcom/tencent/qmsp/sdk/d/c;->h:Landroid/content/SharedPreferences;

    sget-object v3, Lcom/tencent/qmsp/sdk/d/d;->d:[B

    invoke-direct {p0, v3}, Lcom/tencent/qmsp/sdk/d/c;->a([B)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ge v2, p1, :cond_1

    return v4

    :cond_1
    invoke-direct {p0}, Lcom/tencent/qmsp/sdk/d/c;->c()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    return v4

    :cond_2
    invoke-static {p1}, Lcom/tencent/qmsp/sdk/d/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_5

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_5

    return v1

    :cond_4
    :goto_0
    return v4

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    return v0
.end method

.method private a([B)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/tencent/qmsp/sdk/f/h;->a([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(II)V
    .locals 17

    move-object/from16 v7, p0

    const-string v0, "Qp.QUM"

    const-string v1, "[SFU] request : "

    const/4 v8, 0x2

    :try_start_0
    invoke-static {v8}, Lcom/tencent/qmsp/sdk/a/d;->a(I)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const/16 v4, 0x14

    invoke-static {v4}, Lcom/tencent/qmsp/sdk/a/e;->a(I)Ljava/lang/String;

    move-result-object v4

    move/from16 v9, p1

    invoke-virtual {v3, v4, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/16 v4, 0x15

    invoke-static {v4}, Lcom/tencent/qmsp/sdk/a/e;->a(I)Ljava/lang/String;

    move-result-object v4

    move/from16 v10, p2

    invoke-virtual {v3, v4, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V

    const/16 v4, 0xf

    invoke-static {v4}, Lcom/tencent/qmsp/sdk/a/e;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/16 v2, 0x10

    invoke-static {v2}, Lcom/tencent/qmsp/sdk/a/e;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    invoke-static {v0, v6, v1}, Lcom/tencent/qmsp/sdk/f/g;->d(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {}, Lcom/tencent/qmsp/sdk/b/g;->b()Lcom/tencent/qmsp/sdk/b/g;

    move-result-object v11

    invoke-static {}, Lcom/tencent/qmsp/sdk/app/QmspSDK;->getAppID()Ljava/lang/String;

    move-result-object v13

    new-instance v1, Lcom/tencent/qmsp/sdk/d/c$b;

    invoke-direct {v1, v7}, Lcom/tencent/qmsp/sdk/d/c$b;-><init>(Lcom/tencent/qmsp/sdk/d/c;)V

    const/4 v12, 0x2

    const/4 v14, 0x2

    move-object/from16 v16, v1

    invoke-virtual/range {v11 .. v16}, Lcom/tencent/qmsp/sdk/b/g;->a(ILjava/lang/String;ILorg/json/JSONObject;Lcom/tencent/qmsp/sdk/b/e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "0X80078AA"

    :try_start_1
    iget v4, v7, Lcom/tencent/qmsp/sdk/d/c;->j:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v5, ""

    const-string v11, ""

    move-object/from16 v1, p0

    move/from16 v3, p1

    const/4 v12, 0x0

    move-object v6, v11

    :try_start_2
    invoke-direct/range {v1 .. v6}, Lcom/tencent/qmsp/sdk/d/c;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v1, "[SFU] send update query: fileid=%d, localversion=%d"

    :try_start_3
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v2, v4, v12

    const/4 v2, 0x1

    aput-object v3, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/tencent/qmsp/sdk/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const-string p2, "%d"

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/tencent/qmsp/sdk/d/c;->e:Lcom/tencent/qmsp/sdk/d/d$b;

    if-eqz v3, :cond_0

    iget-wide v3, v3, Lcom/tencent/qmsp/sdk/d/d$b;->b:J

    long-to-int v4, v3

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    iget-object v3, p0, Lcom/tencent/qmsp/sdk/d/c;->e:Lcom/tencent/qmsp/sdk/d/d$b;

    const-string v5, ""

    if-eqz v3, :cond_1

    iget-wide v6, v3, Lcom/tencent/qmsp/sdk/d/d$b;->a:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-array v6, v0, [Ljava/lang/Object;

    aput-object v3, v6, v2

    invoke-static {p2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_1
    move-object p2, v5

    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lcom/tencent/qmsp/sdk/d/c;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v6, 0x8

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v2

    aput-object p1, v6, v0

    const/4 v7, 0x2

    aput-object v3, v6, v7

    const/4 v3, 0x3

    aput-object v4, v6, v3

    const/4 v3, 0x4

    aput-object p2, v6, v3

    const/4 v3, 0x5

    aput-object v1, v6, v3

    const/4 v3, 0x6

    aput-object v5, v6, v3

    const/4 v3, 0x7

    aput-object v5, v6, v3

    const-string v3, "[SFU] report: actiontype=%s, actionname=%s, actionfrom=%d, actionresult=%d, sectionId=%s, reportId=%s, fileInfo: %s"

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Qp.QUM"

    invoke-static {v4, v0, v3}, Lcom/tencent/qmsp/sdk/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lcom/tencent/qmsp/sdk/a/g;

    invoke-direct {v0}, Lcom/tencent/qmsp/sdk/a/g;-><init>()V

    :try_start_0
    invoke-virtual {v0, p1}, Lcom/tencent/qmsp/sdk/a/g;->a(Ljava/lang/String;)Lcom/tencent/qmsp/sdk/a/g;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/tencent/qmsp/sdk/a/g;->a(Ljava/lang/String;)Lcom/tencent/qmsp/sdk/a/g;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/tencent/qmsp/sdk/a/g;->a(Ljava/lang/String;)Lcom/tencent/qmsp/sdk/a/g;

    move-result-object p1

    iget p2, p0, Lcom/tencent/qmsp/sdk/d/c;->d:I

    invoke-virtual {p1, p2}, Lcom/tencent/qmsp/sdk/a/g;->a(I)Lcom/tencent/qmsp/sdk/a/g;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/tencent/qmsp/sdk/a/g;->a(I)Lcom/tencent/qmsp/sdk/a/g;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/tencent/qmsp/sdk/a/g;->a(Ljava/lang/String;)Lcom/tencent/qmsp/sdk/a/g;

    move-result-object p1

    invoke-virtual {p1, p5}, Lcom/tencent/qmsp/sdk/a/g;->a(Ljava/lang/String;)Lcom/tencent/qmsp/sdk/a/g;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Lcom/tencent/qmsp/sdk/a/g;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v7}, Lcom/tencent/qmsp/sdk/a/f;->a(Ljava/lang/String;I)V

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    sget-object p1, Lcom/tencent/qmsp/sdk/f/g;->a:Ljava/lang/String;

    const-string p2, "onReport error! <JsonObject userData>!"

    invoke-static {p1, v2, p2}, Lcom/tencent/qmsp/sdk/f/g;->b(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private a(ZLcom/tencent/qmsp/sdk/b/b;)V
    .locals 10

    const/4 v0, 0x3

    if-eqz p1, :cond_7

    if-nez p2, :cond_0

    goto/16 :goto_3

    :cond_0
    new-instance p1, Ljava/io/File;

    iget-object v1, p2, Lcom/tencent/qmsp/sdk/b/b;->b:Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/tencent/qmsp/sdk/b/b;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qmsp/sdk/d/c$c;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_6

    if-nez v1, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object p1, p2, Lcom/tencent/qmsp/sdk/b/b;->b:Ljava/lang/String;

    iget-object v0, v1, Lcom/tencent/qmsp/sdk/d/c$c;->e:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 p1, 0x1

    aput-object v0, v3, p1

    const-string v0, "[SFU] http download complete: %s, %s"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Qp.QUM"

    invoke-static {v3, p1, v0}, Lcom/tencent/qmsp/sdk/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    iget v0, v1, Lcom/tencent/qmsp/sdk/d/c$c;->a:I

    if-eq v0, p1, :cond_3

    if-eq v0, v2, :cond_2

    goto/16 :goto_1

    :cond_2
    iget v6, v1, Lcom/tencent/qmsp/sdk/d/c$c;->g:I

    iget v7, p0, Lcom/tencent/qmsp/sdk/d/c;->j:I

    const-string v8, ""

    const-string v9, ""

    const-string v5, "0X80078AE"

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/tencent/qmsp/sdk/d/c;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x7

    :goto_0
    invoke-direct {p0, p1}, Lcom/tencent/qmsp/sdk/d/c;->b(I)V

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/tencent/qmsp/sdk/d/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    iget-object p2, p2, Lcom/tencent/qmsp/sdk/b/b;->b:Ljava/lang/String;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    iget v6, v1, Lcom/tencent/qmsp/sdk/d/c$c;->g:I

    iget v7, p0, Lcom/tencent/qmsp/sdk/d/c;->j:I

    const-string v8, ""

    const-string v9, ""

    const-string v5, "0X80078AC"

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/tencent/qmsp/sdk/d/c;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/tencent/qmsp/sdk/d/c;->i:Lcom/tencent/qmsp/sdk/d/b;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/tencent/qmsp/sdk/d/b;->a(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/tencent/qmsp/sdk/d/c;->h:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    sget-object v0, Lcom/tencent/qmsp/sdk/d/d;->d:[B

    invoke-direct {p0, v0}, Lcom/tencent/qmsp/sdk/d/c;->a([B)Ljava/lang/String;

    move-result-object v0

    iget v1, v1, Lcom/tencent/qmsp/sdk/d/c$c;->g:I

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object p2, p0, Lcom/tencent/qmsp/sdk/d/c;->i:Lcom/tencent/qmsp/sdk/d/b;

    invoke-virtual {p2}, Lcom/tencent/qmsp/sdk/d/b;->a()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "[SFU] config ok but without any sections"

    invoke-static {v3, p1, p2}, Lcom/tencent/qmsp/sdk/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    const/16 p1, 0x10

    goto :goto_0

    :cond_4
    const/4 p1, 0x5

    goto :goto_0

    :cond_5
    iget v6, v1, Lcom/tencent/qmsp/sdk/d/c$c;->g:I

    iget v7, p0, Lcom/tencent/qmsp/sdk/d/c;->j:I

    iget-object v8, v1, Lcom/tencent/qmsp/sdk/d/c$c;->d:Ljava/lang/String;

    iget-object v9, v1, Lcom/tencent/qmsp/sdk/d/c$c;->e:Ljava/lang/String;

    const-string v5, "0X80078AD"

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/tencent/qmsp/sdk/d/c;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    const-string p2, "[SFU] invalid config (sig not accepted)"

    invoke-static {v3, p1, p2}, Lcom/tencent/qmsp/sdk/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/qmsp/sdk/d/c;->a(I)V

    :goto_1
    return-void

    :cond_6
    :goto_2
    invoke-virtual {p0, v0}, Lcom/tencent/qmsp/sdk/d/c;->a(I)V

    return-void

    :cond_7
    :goto_3
    invoke-virtual {p0, v0}, Lcom/tencent/qmsp/sdk/d/c;->a(I)V

    return-void
.end method

.method private a(Lcom/tencent/qmsp/sdk/d/c$c;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget v1, p1, Lcom/tencent/qmsp/sdk/d/c$c;->a:I

    const/4 v2, 0x2

    const-string v3, "Qp.QUM"

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-ne v1, v2, :cond_1

    iget v1, p1, Lcom/tencent/qmsp/sdk/d/c$c;->k:I

    if-eq v1, v5, :cond_1

    invoke-static {}, Lcom/tencent/qmsp/sdk/app/QmspSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/qmsp/sdk/f/f;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string p1, "[SFU] donot download file because not using wifi"

    invoke-static {v3, v5, p1}, Lcom/tencent/qmsp/sdk/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v4, v4}, Lcom/tencent/qmsp/sdk/a/a;->a(II)V

    return v0

    :cond_1
    iget v1, p1, Lcom/tencent/qmsp/sdk/d/c$c;->i:I

    if-ge v1, v4, :cond_2

    iget-object v1, p0, Lcom/tencent/qmsp/sdk/d/c;->a:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p1, Lcom/tencent/qmsp/sdk/d/c$c;->f:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    :cond_2
    new-instance v1, Lcom/tencent/qmsp/sdk/b/b;

    invoke-direct {v1}, Lcom/tencent/qmsp/sdk/b/b;-><init>()V

    iget-object v2, p1, Lcom/tencent/qmsp/sdk/d/c$c;->e:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/qmsp/sdk/b/b;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/tencent/qmsp/sdk/d/c$c;->c:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/tencent/qmsp/sdk/d/c$c;->d:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/qmsp/sdk/b/b;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/qmsp/sdk/d/c$c;->d:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/qmsp/sdk/b/b;->d:Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/qmsp/sdk/d/c$c;->c:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/qmsp/sdk/b/b;->c:Ljava/lang/String;

    iget v2, p1, Lcom/tencent/qmsp/sdk/d/c$c;->i:I

    add-int/2addr v2, v5

    iput v2, p1, Lcom/tencent/qmsp/sdk/d/c$c;->i:I

    invoke-virtual {v1, p1}, Lcom/tencent/qmsp/sdk/b/b;->a(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/tencent/qmsp/sdk/d/c;->a:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v4, p1, Lcom/tencent/qmsp/sdk/d/c$c;->f:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-static {v1}, Lcom/tencent/qmsp/sdk/b/d;->a(Lcom/tencent/qmsp/sdk/b/b;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    iget-object p1, p1, Lcom/tencent/qmsp/sdk/d/c$c;->e:Ljava/lang/String;

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p1, v1, v0

    const-string p1, "[SFU] begin http download %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, v5, p1}, Lcom/tencent/qmsp/sdk/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    return v5
.end method

.method private a(Lcom/tencent/qmsp/sdk/d/d$b;)Z
    .locals 10

    const-string v0, "Qp.QUM"

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    iget-wide v3, p1, Lcom/tencent/qmsp/sdk/d/d$b;->a:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v3, v4, v2

    const-string v3, "[SFU] backup: sid=%d"

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/tencent/qmsp/sdk/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    iget-wide v3, p1, Lcom/tencent/qmsp/sdk/d/d$b;->r:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    const-string p1, "[SFU] no files need to backup"

    invoke-static {v0, v1, p1}, Lcom/tencent/qmsp/sdk/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_2

    :cond_0
    if-lez v7, :cond_3

    invoke-direct {p0, p1}, Lcom/tencent/qmsp/sdk/d/c;->f(Lcom/tencent/qmsp/sdk/d/d$b;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    :goto_1
    iget-object v7, p1, Lcom/tencent/qmsp/sdk/d/d$b;->q:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_2

    iget-object v7, p1, Lcom/tencent/qmsp/sdk/d/d$b;->q:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tencent/qmsp/sdk/d/d$a;

    iget v8, v7, Lcom/tencent/qmsp/sdk/d/d$a;->j:I

    if-ne v1, v8, :cond_1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v7, Lcom/tencent/qmsp/sdk/d/d$a;->c:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/io/File;

    iget-object v7, v7, Lcom/tencent/qmsp/sdk/d/d$a;->f:Ljava/lang/String;

    invoke-direct {v9, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v9, v7}, Lcom/tencent/qmsp/sdk/d/c;->a(Ljava/io/File;Ljava/io/File;)Z

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, p1, Lcom/tencent/qmsp/sdk/d/d$b;->q:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v3, v7, v2

    aput-object v4, v7, v1

    const-string v3, "[SFU] backup %d files of %d"

    invoke-static {v3, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/tencent/qmsp/sdk/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    iget-wide v3, p1, Lcom/tencent/qmsp/sdk/d/d$b;->r:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v3, v4, v2

    const-string v2, "[SFU] backup result: %b"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/tencent/qmsp/sdk/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    return p1
.end method

.method private a(Ljava/io/File;Ljava/io/File;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance p2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {}, Lcom/tencent/qmsp/sdk/f/a;->a()Lcom/tencent/qmsp/sdk/f/a;

    move-result-object p1

    const/16 v1, 0x1000

    invoke-virtual {p1, v1}, Lcom/tencent/qmsp/sdk/f/a;->a(I)[B

    move-result-object p1

    :goto_0
    invoke-virtual {p2, p1}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    invoke-virtual {v2, p1, v0, v1}, Ljava/io/FileOutputStream;->write([BII)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/tencent/qmsp/sdk/f/a;->a()Lcom/tencent/qmsp/sdk/f/a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/tencent/qmsp/sdk/f/a;->a([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    :try_start_4
    invoke-virtual {p2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_2
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_5

    :catch_3
    move-exception p1

    move-object p2, v1

    :goto_1
    move-object v1, v2

    goto :goto_2

    :catchall_2
    move-exception p1

    move-object p2, v1

    goto :goto_6

    :catch_4
    move-exception p1

    move-object p2, v1

    :goto_2
    :try_start_5
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v1, :cond_3

    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_3

    :catch_5
    nop

    :cond_3
    :goto_3
    if-eqz p2, :cond_4

    :try_start_7
    invoke-virtual {p2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    :catch_6
    :cond_4
    return v0

    :catchall_3
    move-exception p1

    move-object v2, v1

    :goto_4
    move-object v1, p2

    :goto_5
    move-object p2, v1

    move-object v1, v2

    :goto_6
    if-eqz v1, :cond_5

    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_7

    :catch_7
    nop

    :cond_5
    :goto_7
    if-eqz p2, :cond_6

    :try_start_9
    invoke-virtual {p2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    :catch_8
    :cond_6
    throw p1
.end method

.method private b()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/tencent/qmsp/sdk/d/c;->h:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/tencent/qmsp/sdk/d/d;->c:[B

    invoke-direct {p0, v1}, Lcom/tencent/qmsp/sdk/d/c;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/tencent/qmsp/sdk/d/c;->b(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private b(I)V
    .locals 11

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "[SFU] update event: %d"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Qp.QUM"

    const/4 v4, 0x2

    invoke-static {v2, v4, v0}, Lcom/tencent/qmsp/sdk/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0x11

    if-eq p1, v1, :cond_d

    if-eq p1, v4, :cond_c

    const/4 v1, 0x6

    const/4 v2, 0x5

    const/16 v4, 0xa

    const/16 v5, 0x9

    const/16 v6, 0x8

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    :try_start_0
    invoke-direct {p0}, Lcom/tencent/qmsp/sdk/d/c;->h()V

    goto/16 :goto_4

    :pswitch_1
    invoke-direct {p0}, Lcom/tencent/qmsp/sdk/d/c;->g()V

    goto/16 :goto_3

    :pswitch_2
    iget-object p1, p0, Lcom/tencent/qmsp/sdk/d/c;->e:Lcom/tencent/qmsp/sdk/d/d$b;

    invoke-direct {p0, p1}, Lcom/tencent/qmsp/sdk/d/c;->i(Lcom/tencent/qmsp/sdk/d/d$b;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tencent/qmsp/sdk/d/c;->e:Lcom/tencent/qmsp/sdk/d/d$b;

    invoke-direct {p0}, Lcom/tencent/qmsp/sdk/d/c;->f()Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x5

    goto/16 :goto_3

    :pswitch_3
    iget-object p1, p0, Lcom/tencent/qmsp/sdk/d/c;->e:Lcom/tencent/qmsp/sdk/d/d$b;

    if-eqz p1, :cond_9

    invoke-direct {p0, p1}, Lcom/tencent/qmsp/sdk/d/c;->b(Lcom/tencent/qmsp/sdk/d/d$b;)V

    goto/16 :goto_1

    :pswitch_4
    iget-object p1, p0, Lcom/tencent/qmsp/sdk/d/c;->e:Lcom/tencent/qmsp/sdk/d/d$b;

    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Lcom/tencent/qmsp/sdk/d/c;->j(Lcom/tencent/qmsp/sdk/d/d$b;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    goto/16 :goto_0

    :cond_1
    const-string v6, "0X80078B3"

    :try_start_1
    iget v8, p0, Lcom/tencent/qmsp/sdk/d/c;->j:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v9, ""

    const-string v10, ""

    const/4 v7, 0x0

    move-object v5, p0

    :try_start_2
    invoke-direct/range {v5 .. v10}, Lcom/tencent/qmsp/sdk/d/c;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xa

    goto/16 :goto_0

    :pswitch_5
    iget-object p1, p0, Lcom/tencent/qmsp/sdk/d/c;->e:Lcom/tencent/qmsp/sdk/d/d$b;

    if-eqz p1, :cond_2

    invoke-direct {p0, p1}, Lcom/tencent/qmsp/sdk/d/c;->c(Lcom/tencent/qmsp/sdk/d/d$b;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v3, 0x9

    goto/16 :goto_0

    :pswitch_6
    iget-object p1, p0, Lcom/tencent/qmsp/sdk/d/c;->e:Lcom/tencent/qmsp/sdk/d/d$b;

    if-eqz p1, :cond_4

    invoke-direct {p0, p1}, Lcom/tencent/qmsp/sdk/d/c;->m(Lcom/tencent/qmsp/sdk/d/d$b;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/16 v0, 0xc

    goto/16 :goto_3

    :pswitch_7
    iget-object p1, p0, Lcom/tencent/qmsp/sdk/d/c;->e:Lcom/tencent/qmsp/sdk/d/d$b;

    if-eqz p1, :cond_3

    invoke-direct {p0, p1}, Lcom/tencent/qmsp/sdk/d/c;->l(Lcom/tencent/qmsp/sdk/d/d$b;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/16 v0, 0xb

    goto/16 :goto_3

    :cond_3
    const/4 v6, 0x7

    :cond_4
    invoke-direct {p0, v6}, Lcom/tencent/qmsp/sdk/d/c;->c(I)V

    const/16 v0, 0xd

    goto/16 :goto_3

    :pswitch_8
    iget-object p1, p0, Lcom/tencent/qmsp/sdk/d/c;->e:Lcom/tencent/qmsp/sdk/d/d$b;

    if-eqz p1, :cond_5

    invoke-direct {p0, p1}, Lcom/tencent/qmsp/sdk/d/c;->a(Lcom/tencent/qmsp/sdk/d/d$b;)Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_5

    const/16 v0, 0xa

    goto/16 :goto_3

    :cond_5
    const-string v3, "0X80078B1"

    :try_start_3
    iget v5, p0, Lcom/tencent/qmsp/sdk/d/c;->j:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v6, ""

    const-string v7, ""

    const/4 v4, 0x0

    move-object v2, p0

    :try_start_4
    invoke-direct/range {v2 .. v7}, Lcom/tencent/qmsp/sdk/d/c;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x6

    goto :goto_0

    :pswitch_9
    iget-object p1, p0, Lcom/tencent/qmsp/sdk/d/c;->e:Lcom/tencent/qmsp/sdk/d/d$b;

    if-eqz p1, :cond_6

    invoke-direct {p0, p1}, Lcom/tencent/qmsp/sdk/d/c;->k(Lcom/tencent/qmsp/sdk/d/d$b;)Z

    move-result p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz p1, :cond_6

    const/16 v0, 0x9

    goto/16 :goto_3

    :cond_6
    const-string v4, "0X80078B0"

    :try_start_5
    iget v6, p0, Lcom/tencent/qmsp/sdk/d/c;->j:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const-string v7, ""

    const-string v8, ""

    const/4 v5, 0x0

    move-object v3, p0

    :try_start_6
    invoke-direct/range {v3 .. v8}, Lcom/tencent/qmsp/sdk/d/c;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x5

    goto :goto_0

    :pswitch_a
    iget-object p1, p0, Lcom/tencent/qmsp/sdk/d/c;->e:Lcom/tencent/qmsp/sdk/d/d$b;

    if-eqz p1, :cond_7

    invoke-direct {p0, p1}, Lcom/tencent/qmsp/sdk/d/c;->n(Lcom/tencent/qmsp/sdk/d/d$b;)Z

    move-result p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz p1, :cond_7

    const/16 v0, 0x8

    goto :goto_3

    :cond_7
    const-string v1, "0X80078AF"

    :try_start_7
    iget v3, p0, Lcom/tencent/qmsp/sdk/d/c;->j:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const-string v4, ""

    const-string v5, ""

    const/4 v2, 0x0

    move-object v0, p0

    :try_start_8
    invoke-direct/range {v0 .. v5}, Lcom/tencent/qmsp/sdk/d/c;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x4

    goto :goto_0

    :pswitch_b
    iget-object p1, p0, Lcom/tencent/qmsp/sdk/d/c;->e:Lcom/tencent/qmsp/sdk/d/d$b;

    if-eqz p1, :cond_8

    invoke-direct {p0, p1}, Lcom/tencent/qmsp/sdk/d/c;->d(Lcom/tencent/qmsp/sdk/d/d$b;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_4

    :cond_8
    const/4 v3, 0x3

    :goto_0
    invoke-virtual {p0, v3}, Lcom/tencent/qmsp/sdk/d/c;->a(I)V

    goto :goto_4

    :pswitch_c
    invoke-direct {p0}, Lcom/tencent/qmsp/sdk/d/c;->d()Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/tencent/qmsp/sdk/d/c;->e:Lcom/tencent/qmsp/sdk/d/d$b;

    if-eqz p1, :cond_b

    invoke-direct {p0, p1}, Lcom/tencent/qmsp/sdk/d/c;->e(Lcom/tencent/qmsp/sdk/d/d$b;)Z

    move-result p1

    if-nez p1, :cond_a

    :cond_9
    :goto_1
    const/16 v0, 0xf

    goto :goto_3

    :cond_a
    const/4 v0, 0x6

    goto :goto_3

    :cond_b
    :goto_2
    const/16 v0, 0x10

    goto :goto_3

    :cond_c
    invoke-direct {p0}, Lcom/tencent/qmsp/sdk/d/c;->i()V

    goto :goto_4

    :cond_d
    iget p1, p0, Lcom/tencent/qmsp/sdk/d/c;->d:I

    if-ne p1, v1, :cond_e

    goto :goto_3

    :cond_e
    const/16 v0, 0xe

    :goto_3
    invoke-direct {p0, v0}, Lcom/tencent/qmsp/sdk/d/c;->b(I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private b(Lcom/tencent/qmsp/sdk/b/c;)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p1, Lcom/tencent/qmsp/sdk/b/c;->a:I

    const-string v1, "Qp.QUM"

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v2, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v0, v4, [Ljava/lang/Object;

    aput-object p1, v0, v3

    const-string p1, "[SFU] http download error=%d"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v4, p1}, Lcom/tencent/qmsp/sdk/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p1, Lcom/tencent/qmsp/sdk/b/c;->b:Lcom/tencent/qmsp/sdk/b/b;

    invoke-virtual {v0}, Lcom/tencent/qmsp/sdk/b/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qmsp/sdk/d/c$c;

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget v5, p1, Lcom/tencent/qmsp/sdk/b/c;->a:I

    if-nez v5, :cond_3

    const/4 v5, 0x1

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    :goto_0
    if-nez v5, :cond_5

    :try_start_0
    iget v6, v0, Lcom/tencent/qmsp/sdk/d/c$c;->i:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v7, 0x3

    if-ge v6, v7, :cond_4

    const-string p1, "[SFU] retried to download, retry=%d, result=%b, url=%s"

    :try_start_1
    iget v6, v0, Lcom/tencent/qmsp/sdk/d/c$c;->i:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-object v8, v0, Lcom/tencent/qmsp/sdk/d/c$c;->e:Ljava/lang/String;

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v6, v7, v3

    aput-object v5, v7, v4

    aput-object v8, v7, v2

    invoke-static {p1, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v4, p1}, Lcom/tencent/qmsp/sdk/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/tencent/qmsp/sdk/d/c;->a(Lcom/tencent/qmsp/sdk/d/c$c;)Z

    return-void

    :cond_4
    new-instance v1, Ljava/io/File;

    iget-object v2, p1, Lcom/tencent/qmsp/sdk/b/c;->b:Lcom/tencent/qmsp/sdk/b/b;

    iget-object v2, v2, Lcom/tencent/qmsp/sdk/b/b;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_5
    iget-object v1, p0, Lcom/tencent/qmsp/sdk/d/c;->a:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v0, v0, Lcom/tencent/qmsp/sdk/d/c$c;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Lcom/tencent/qmsp/sdk/b/c;->b:Lcom/tencent/qmsp/sdk/b/b;

    invoke-direct {p0, v5, p1}, Lcom/tencent/qmsp/sdk/d/c;->a(ZLcom/tencent/qmsp/sdk/b/b;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private b(Lcom/tencent/qmsp/sdk/d/d$b;)V
    .locals 4

    if-eqz p1, :cond_0

    iget-wide v0, p1, Lcom/tencent/qmsp/sdk/d/d$b;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "[SFU] cleanup: sid=%d"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Qp.QUM"

    invoke-static {v2, v1, v0}, Lcom/tencent/qmsp/sdk/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/tencent/qmsp/sdk/d/c;->g(Lcom/tencent/qmsp/sdk/d/d$b;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lcom/tencent/qmsp/sdk/f/d;->a(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method private c()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/tencent/qmsp/sdk/d/c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/tencent/qmsp/sdk/d/d;->a:[B

    invoke-direct {p0, v1}, Lcom/tencent/qmsp/sdk/d/c;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qmsp/sdk/d/c;->d:I

    return-void
.end method

.method private c(Lcom/tencent/qmsp/sdk/d/d$b;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method private d()Z
    .locals 11

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qmsp/sdk/d/c;->e:Lcom/tencent/qmsp/sdk/d/d$b;

    iget-object v0, p0, Lcom/tencent/qmsp/sdk/d/c;->i:Lcom/tencent/qmsp/sdk/d/b;

    invoke-virtual {v0}, Lcom/tencent/qmsp/sdk/d/b;->a()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const-string v4, "Qp.QUM"

    const/4 v5, 0x1

    if-ge v2, v3, :cond_3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/qmsp/sdk/d/d$b;

    invoke-virtual {v3}, Lcom/tencent/qmsp/sdk/d/d$b;->a()Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_2

    :cond_0
    iget-boolean v6, v3, Lcom/tencent/qmsp/sdk/d/d$b;->m:Z

    if-eqz v6, :cond_2

    iget-boolean v6, v3, Lcom/tencent/qmsp/sdk/d/d$b;->l:Z

    if-eqz v6, :cond_2

    iget-boolean v6, v3, Lcom/tencent/qmsp/sdk/d/d$b;->n:Z

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    iput-object v3, p0, Lcom/tencent/qmsp/sdk/d/c;->e:Lcom/tencent/qmsp/sdk/d/d$b;

    invoke-direct {p0, v1}, Lcom/tencent/qmsp/sdk/d/c;->c(I)V

    iget-object v0, p0, Lcom/tencent/qmsp/sdk/d/c;->e:Lcom/tencent/qmsp/sdk/d/d$b;

    iget-wide v2, v0, Lcom/tencent/qmsp/sdk/d/d$b;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v0, v2, v1

    const-string v0, "[SFU] next update: sid=%d"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v5, v0}, Lcom/tencent/qmsp/sdk/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_3

    :cond_2
    :goto_1
    iget-wide v6, v3, Lcom/tencent/qmsp/sdk/d/d$b;->a:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-boolean v7, v3, Lcom/tencent/qmsp/sdk/d/d$b;->m:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iget-boolean v8, v3, Lcom/tencent/qmsp/sdk/d/d$b;->l:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iget-boolean v9, v3, Lcom/tencent/qmsp/sdk/d/d$b;->n:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v6, v10, v1

    aput-object v7, v10, v5

    const/4 v6, 0x2

    aput-object v8, v10, v6

    const/4 v6, 0x3

    aput-object v9, v10, v6

    const-string v6, "[SFU] not matched section: sid=%d, os: %b, qq:%b, cpu:%b"

    invoke-static {v6, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/tencent/qmsp/sdk/f/g;->d(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v3}, Lcom/tencent/qmsp/sdk/d/d$b;->b()V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v2, v3, v1

    const-string v1, "[SFU] get next section result? %b"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v5, v1}, Lcom/tencent/qmsp/sdk/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    return v0
.end method

.method private d(Lcom/tencent/qmsp/sdk/d/d$b;)Z
    .locals 17

    move-object/from16 v0, p1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-wide v2, v0, Lcom/tencent/qmsp/sdk/d/d$b;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    aput-object v2, v4, v1

    const-string v1, "[SFU] download package: sid=%d"

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Qp.QUM"

    invoke-static {v2, v3, v1}, Lcom/tencent/qmsp/sdk/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v1, Lcom/tencent/qmsp/sdk/d/c$c;

    invoke-direct/range {p0 .. p1}, Lcom/tencent/qmsp/sdk/d/c;->g(Lcom/tencent/qmsp/sdk/d/d$b;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lcom/tencent/qmsp/sdk/d/d$b;->c:Ljava/lang/String;

    iget-object v9, v0, Lcom/tencent/qmsp/sdk/d/d$b;->e:Ljava/lang/String;

    iget-object v10, v0, Lcom/tencent/qmsp/sdk/d/d$b;->d:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    iget v0, v0, Lcom/tencent/qmsp/sdk/d/d$b;->u:I

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v11, 0x0

    move-object v4, v1

    move/from16 v16, v0

    invoke-direct/range {v4 .. v16}, Lcom/tencent/qmsp/sdk/d/c$c;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZIJI)V

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/tencent/qmsp/sdk/d/c;->a(Lcom/tencent/qmsp/sdk/d/c$c;)Z

    move-result v1

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    :goto_0
    return v1
.end method

.method private e()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/tencent/qmsp/sdk/a/b;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-object v0
.end method

.method private e(Lcom/tencent/qmsp/sdk/d/d$b;)Z
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    iget-wide v1, p1, Lcom/tencent/qmsp/sdk/d/d$b;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    aput-object v1, v3, v0

    const-string v1, "[SFU] get different: sid=%d"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "Qp.QUM"

    invoke-static {v3, v2, v1}, Lcom/tencent/qmsp/sdk/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v1, p1, Lcom/tencent/qmsp/sdk/d/d$b;->o:Ljava/util/List;

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x2

    if-ge v4, v5, :cond_4

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tencent/qmsp/sdk/d/d$a;

    new-instance v7, Ljava/io/File;

    iget-object v8, v5, Lcom/tencent/qmsp/sdk/d/d$a;->f:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    iput v6, v5, Lcom/tencent/qmsp/sdk/d/d$a;->j:I

    iget-object v6, p1, Lcom/tencent/qmsp/sdk/d/d$b;->q:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    iget-object v6, v5, Lcom/tencent/qmsp/sdk/d/d$a;->f:Ljava/lang/String;

    invoke-static {v6}, Lcom/tencent/qmsp/sdk/d/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v7, v5, Lcom/tencent/qmsp/sdk/d/d$a;->b:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    :cond_1
    iput v2, v5, Lcom/tencent/qmsp/sdk/d/d$a;->j:I

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    const-string v6, ""

    :goto_1
    iput-object v6, v5, Lcom/tencent/qmsp/sdk/d/d$a;->c:Ljava/lang/String;

    iget-object v6, p1, Lcom/tencent/qmsp/sdk/d/d$b;->q:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-wide v5, p1, Lcom/tencent/qmsp/sdk/d/d$b;->r:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    iput-wide v5, p1, Lcom/tencent/qmsp/sdk/d/d$b;->r:J

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    iget-object v1, p1, Lcom/tencent/qmsp/sdk/d/d$b;->q:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v4, p1, Lcom/tencent/qmsp/sdk/d/d$b;->o:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v1, v5, v0

    aput-object v4, v5, v2

    const-string v0, "[SFU] need to update %d files of %d"

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v2, v0}, Lcom/tencent/qmsp/sdk/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    iget-object p1, p1, Lcom/tencent/qmsp/sdk/d/d$b;->q:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    return p1

    :cond_5
    return v0
.end method

.method private f(Lcom/tencent/qmsp/sdk/d/d$b;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/tencent/qmsp/sdk/d/c;->g(Lcom/tencent/qmsp/sdk/d/d$b;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "bak"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-object p1
.end method

.method private f()Z
    .locals 5

    iget-object v0, p0, Lcom/tencent/qmsp/sdk/d/c;->i:Lcom/tencent/qmsp/sdk/d/b;

    invoke-virtual {v0}, Lcom/tencent/qmsp/sdk/d/b;->a()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/qmsp/sdk/d/d$b;

    invoke-virtual {v3}, Lcom/tencent/qmsp/sdk/d/d$b;->a()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    const-string/jumbo v2, "yes"

    goto :goto_2

    :cond_2
    const-string v2, "no"

    :goto_2
    new-array v3, v4, [Ljava/lang/Object;

    aput-object v2, v3, v1

    const-string v1, "[SFU] all complete: %s"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Qp.QUM"

    invoke-static {v2, v4, v1}, Lcom/tencent/qmsp/sdk/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    return v0
.end method

.method private g(Lcom/tencent/qmsp/sdk/d/d$b;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/tencent/qmsp/sdk/d/c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lcom/tencent/qmsp/sdk/d/d$b;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-object p1
.end method

.method private g()V
    .locals 9

    const-string v0, "[SFU] all sections update complete"

    const-string v1, "Qp.QUM"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/tencent/qmsp/sdk/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/tencent/qmsp/sdk/d/c;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tencent/qmsp/sdk/c/f;->i()Lcom/tencent/qmsp/sdk/c/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qmsp/sdk/c/f;->e()V

    iget-object v0, p0, Lcom/tencent/qmsp/sdk/d/c;->h:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v3, Lcom/tencent/qmsp/sdk/d/d;->e:[B

    invoke-direct {p0, v3}, Lcom/tencent/qmsp/sdk/d/c;->a([B)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/qmsp/sdk/d/c;->f:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v3, Lcom/tencent/qmsp/sdk/d/d;->f:[B

    invoke-direct {p0, v3}, Lcom/tencent/qmsp/sdk/d/c;->a([B)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/qmsp/sdk/d/c;->g:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, "0X80078B6"

    :try_start_1
    iget v6, p0, Lcom/tencent/qmsp/sdk/d/c;->j:I

    iget-object v7, p0, Lcom/tencent/qmsp/sdk/d/c;->f:Ljava/lang/String;

    iget-object v8, p0, Lcom/tencent/qmsp/sdk/d/c;->g:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/tencent/qmsp/sdk/d/c;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    const-string v0, "[SFU] notify update complete: %s"

    :try_start_2
    iget-object v3, p0, Lcom/tencent/qmsp/sdk/d/c;->f:Ljava/lang/String;

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/tencent/qmsp/sdk/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private h(Lcom/tencent/qmsp/sdk/d/d$b;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/tencent/qmsp/sdk/d/c;->g(Lcom/tencent/qmsp/sdk/d/d$b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/tencent/qmsp/sdk/d/d$b;->c:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private h()V
    .locals 7

    iget-object v0, p0, Lcom/tencent/qmsp/sdk/d/c;->c:Ljava/lang/Object;

    monitor-enter v0

    const-string v2, "0X80078B5"

    :try_start_0
    iget v4, p0, Lcom/tencent/qmsp/sdk/d/c;->j:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, ""

    const-string v6, ""

    const/4 v3, 0x0

    move-object v1, p0

    :try_start_1
    invoke-direct/range {v1 .. v6}, Lcom/tencent/qmsp/sdk/d/c;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/qmsp/sdk/d/c;->e:Lcom/tencent/qmsp/sdk/d/d$b;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v1, "Qp.QUM"

    const-string v2, "[SFU] update ended"

    const/4 v3, 0x1

    :try_start_2
    invoke-static {v1, v3, v2}, Lcom/tencent/qmsp/sdk/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private i()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/qmsp/sdk/d/c;->h:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/tencent/qmsp/sdk/d/d;->d:[B

    invoke-direct {p0, v1}, Lcom/tencent/qmsp/sdk/d/c;->a([B)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/tencent/qmsp/sdk/d/c;->a(II)V

    iget-object v0, p0, Lcom/tencent/qmsp/sdk/d/c;->h:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/tencent/qmsp/sdk/d/d;->e:[B

    invoke-direct {p0, v1}, Lcom/tencent/qmsp/sdk/d/c;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private i(Lcom/tencent/qmsp/sdk/d/d$b;)V
    .locals 6

    if-eqz p1, :cond_1

    iget-wide v0, p1, Lcom/tencent/qmsp/sdk/d/d$b;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "[SFU] update complete: sid=%d"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Qp.QUM"

    invoke-static {v2, v1, v0}, Lcom/tencent/qmsp/sdk/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p1}, Lcom/tencent/qmsp/sdk/d/d$b;->b()V

    invoke-direct {p0}, Lcom/tencent/qmsp/sdk/d/c;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tencent/qmsp/sdk/d/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p1, Lcom/tencent/qmsp/sdk/d/d$b;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v2, v4, v3

    const-string v2, "#%d#"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qmsp/sdk/d/c;->f:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/tencent/qmsp/sdk/d/c;->g:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p1, Lcom/tencent/qmsp/sdk/d/d$b;->a:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/qmsp/sdk/d/c;->g:Ljava/lang/String;

    :cond_0
    iget v3, p0, Lcom/tencent/qmsp/sdk/d/c;->j:I

    const-string v4, ""

    const-string v5, ""

    const-string v1, "0X80078B4"

    const/4 v2, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/qmsp/sdk/d/c;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private j()Z
    .locals 1

    iget v0, p0, Lcom/tencent/qmsp/sdk/d/c;->d:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private j(Lcom/tencent/qmsp/sdk/d/d$b;)Z
    .locals 13

    const-string v0, "Qp.QUM"

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_7

    iget-wide v3, p1, Lcom/tencent/qmsp/sdk/d/d$b;->a:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v3, v4, v2

    const-string v3, "[SFU] rollback: sid=%d"

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/tencent/qmsp/sdk/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v3, p1, Lcom/tencent/qmsp/sdk/d/d$b;->p:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string p1, "[SFU] no files need to rollback"

    invoke-static {v0, v1, p1}, Lcom/tencent/qmsp/sdk/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    :goto_0
    const/4 p1, 0x1

    goto/16 :goto_2

    :cond_0
    invoke-direct {p0, p1}, Lcom/tencent/qmsp/sdk/d/c;->f(Lcom/tencent/qmsp/sdk/d/d$b;)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    :goto_1
    iget-object v7, p1, Lcom/tencent/qmsp/sdk/d/d$b;->p:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_6

    iget-object v7, p1, Lcom/tencent/qmsp/sdk/d/d$b;->p:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tencent/qmsp/sdk/d/d$a;

    new-instance v8, Ljava/io/File;

    iget-object v9, v7, Lcom/tencent/qmsp/sdk/d/d$a;->f:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/io/File;

    iget-object v10, v7, Lcom/tencent/qmsp/sdk/d/d$a;->g:Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    const-wide/16 v11, 0x1

    if-eqz v10, :cond_2

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    move-result v10

    if-nez v10, :cond_1

    invoke-virtual {v9}, Ljava/io/File;->deleteOnExit()V

    :cond_1
    add-long/2addr v4, v11

    :cond_2
    iget v9, v7, Lcom/tencent/qmsp/sdk/d/d$a;->j:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_4

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    move-result v9

    if-nez v9, :cond_3

    invoke-virtual {v8}, Ljava/io/File;->deleteOnExit()V

    :cond_3
    add-long/2addr v4, v11

    :cond_4
    new-instance v9, Ljava/io/File;

    iget-object v7, v7, Lcom/tencent/qmsp/sdk/d/d$a;->c:Ljava/lang/String;

    invoke-direct {v9, v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v9}, Ljava/io/File;->canRead()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v8}, Ljava/io/File;->canWrite()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-direct {p0, v9, v8}, Lcom/tencent/qmsp/sdk/d/c;->a(Ljava/io/File;Ljava/io/File;)Z

    add-long/2addr v4, v11

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_6
    iget-object p1, p1, Lcom/tencent/qmsp/sdk/d/d$b;->p:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    int-to-long v6, p1

    cmp-long p1, v4, v6

    if-nez p1, :cond_7

    goto/16 :goto_0

    :cond_7
    const/4 p1, 0x0

    :goto_2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v3, v4, v2

    const-string v2, "[SFU] rollback result: %b"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/tencent/qmsp/sdk/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    return p1
.end method

.method private k(Lcom/tencent/qmsp/sdk/d/d$b;)Z
    .locals 6

    const-string v0, "Qp.QUM"

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    iget-wide v3, p1, Lcom/tencent/qmsp/sdk/d/d$b;->a:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v3, v4, v2

    const-string v3, "[SFU] unzip package: sid=%d"

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/tencent/qmsp/sdk/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/tencent/qmsp/sdk/d/c;->g(Lcom/tencent/qmsp/sdk/d/d$b;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    :cond_0
    invoke-direct {p0, p1}, Lcom/tencent/qmsp/sdk/d/c;->h(Lcom/tencent/qmsp/sdk/d/d$b;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lcom/tencent/qmsp/sdk/f/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v3, v4, v2

    const-string v2, "[SFU] unzip result: %b"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/tencent/qmsp/sdk/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    return p1
.end method

.method private l(Lcom/tencent/qmsp/sdk/d/d$b;)Z
    .locals 12

    const-string v0, "Qp.QUM"

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_5

    iget-object v3, p1, Lcom/tencent/qmsp/sdk/d/d$b;->q:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    iget-wide v3, p1, Lcom/tencent/qmsp/sdk/d/d$b;->a:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v3, v4, v2

    const-string v3, "[SFU] do update files: sid=%d"

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/tencent/qmsp/sdk/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/tencent/qmsp/sdk/d/c;->g(Lcom/tencent/qmsp/sdk/d/d$b;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    iget-object v5, p1, Lcom/tencent/qmsp/sdk/d/d$b;->q:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    iget-object v5, p1, Lcom/tencent/qmsp/sdk/d/d$b;->q:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tencent/qmsp/sdk/d/d$a;

    new-instance v6, Ljava/io/File;

    iget-object v7, v5, Lcom/tencent/qmsp/sdk/d/d$a;->b:Ljava/lang/String;

    invoke-direct {v6, v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/io/File;

    iget-object v8, v5, Lcom/tencent/qmsp/sdk/d/d$a;->f:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v6}, Ljava/io/File;->canRead()Z

    move-result v8

    if-nez v8, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-direct {p0, v6, v7}, Lcom/tencent/qmsp/sdk/d/c;->a(Ljava/io/File;Ljava/io/File;)Z

    move-result v7

    if-nez v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v5, Lcom/tencent/qmsp/sdk/d/d$a;->f:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".1"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x3

    iput v9, v5, Lcom/tencent/qmsp/sdk/d/d$a;->j:I

    iput-object v7, v5, Lcom/tencent/qmsp/sdk/d/d$a;->g:Ljava/lang/String;

    invoke-direct {p0, v6, v8}, Lcom/tencent/qmsp/sdk/d/c;->a(Ljava/io/File;Ljava/io/File;)Z

    move-result v7

    iget-object v6, v5, Lcom/tencent/qmsp/sdk/d/d$a;->g:Ljava/lang/String;

    new-array v8, v1, [Ljava/lang/Object;

    aput-object v6, v8, v2

    const-string v6, "[SFU] copied failed, renamed to: %s"

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v1, v6}, Lcom/tencent/qmsp/sdk/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    if-eqz v7, :cond_1

    iget-object v6, p0, Lcom/tencent/qmsp/sdk/d/c;->h:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    iget-object v8, v5, Lcom/tencent/qmsp/sdk/d/d$a;->f:Ljava/lang/String;

    iget-object v9, v5, Lcom/tencent/qmsp/sdk/d/d$a;->g:Ljava/lang/String;

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    if-eqz v7, :cond_2

    iget-object v6, v5, Lcom/tencent/qmsp/sdk/d/d$a;->f:Ljava/lang/String;

    new-array v7, v1, [Ljava/lang/Object;

    aput-object v6, v7, v2

    const-string v6, "[SFU] success copied: %s"

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v1, v6}, Lcom/tencent/qmsp/sdk/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v6, p1, Lcom/tencent/qmsp/sdk/d/d$b;->p:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-wide v5, p1, Lcom/tencent/qmsp/sdk/d/d$b;->s:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    iput-wide v5, p1, Lcom/tencent/qmsp/sdk/d/d$b;->s:J

    goto :goto_2

    :cond_2
    iget-wide v3, v5, Lcom/tencent/qmsp/sdk/d/d$a;->h:J

    long-to-int v8, v3

    iget v9, p0, Lcom/tencent/qmsp/sdk/d/c;->j:I

    iget-object v10, v5, Lcom/tencent/qmsp/sdk/d/d$a;->a:Ljava/lang/String;

    iget-object v11, v5, Lcom/tencent/qmsp/sdk/d/d$a;->b:Ljava/lang/String;

    const-string v7, "0X80078B2"

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/tencent/qmsp/sdk/d/c;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    iget-object v3, v5, Lcom/tencent/qmsp/sdk/d/d$a;->f:Ljava/lang/String;

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v3, v4, v2

    const-string v3, "[SFU] failed copied: %s"

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/tencent/qmsp/sdk/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_3

    :cond_3
    :goto_1
    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v5, v6, v2

    const-string v5, "[SFU] copied failed, src not existed or cannot read: %s"

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v1, v5}, Lcom/tencent/qmsp/sdk/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_4
    :goto_3
    iget-wide v3, p1, Lcom/tencent/qmsp/sdk/d/d$b;->s:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, p1, Lcom/tencent/qmsp/sdk/d/d$b;->q:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v2

    aput-object v4, v5, v1

    const-string v3, "[SFU] update %d files of %d"

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/tencent/qmsp/sdk/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    iget-wide v3, p1, Lcom/tencent/qmsp/sdk/d/d$b;->s:J

    iget-object p1, p1, Lcom/tencent/qmsp/sdk/d/d$b;->q:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    int-to-long v5, p1

    cmp-long p1, v3, v5

    if-nez p1, :cond_5

    const/4 p1, 0x1

    goto :goto_4

    :cond_5
    const/4 p1, 0x0

    :goto_4
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v3, v4, v2

    const-string v2, "[SFU] update result: %b"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/tencent/qmsp/sdk/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    return p1
.end method

.method private m(Lcom/tencent/qmsp/sdk/d/d$b;)Z
    .locals 8

    const-string v0, "Qp.QUM"

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_5

    iget-wide v3, p1, Lcom/tencent/qmsp/sdk/d/d$b;->a:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v3, v4, v2

    const-string v3, "[SFU] verify: sid=%d"

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/tencent/qmsp/sdk/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v3, p1, Lcom/tencent/qmsp/sdk/d/d$b;->q:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-wide v3, p1, Lcom/tencent/qmsp/sdk/d/d$b;->a:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p1, v3, v2

    const-string p1, "[SFU] no diff: sid=%d"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/tencent/qmsp/sdk/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    const/4 p1, 0x1

    goto :goto_3

    :cond_1
    const/4 v3, 0x0

    :goto_0
    iget-object v4, p1, Lcom/tencent/qmsp/sdk/d/d$b;->q:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    iget-object v4, p1, Lcom/tencent/qmsp/sdk/d/d$b;->q:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/qmsp/sdk/d/d$a;

    iget-object v5, v4, Lcom/tencent/qmsp/sdk/d/d$a;->g:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v4, Lcom/tencent/qmsp/sdk/d/d$a;->f:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object v5, v4, Lcom/tencent/qmsp/sdk/d/d$a;->g:Ljava/lang/String;

    :goto_1
    invoke-static {v5}, Lcom/tencent/qmsp/sdk/d/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object v6, v4, Lcom/tencent/qmsp/sdk/d/d$a;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    iget-object v3, v4, Lcom/tencent/qmsp/sdk/d/d$a;->b:Ljava/lang/String;

    iget-wide v6, p1, Lcom/tencent/qmsp/sdk/d/d$b;->a:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v5, v4, v2

    aput-object v3, v4, v1

    const/4 v3, 0x2

    aput-object p1, v4, v3

    const-string p1, "[SFU] not matched: %s!=%s, sid=%d"

    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/tencent/qmsp/sdk/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    :cond_5
    const/4 p1, 0x0

    :goto_3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v3, v4, v2

    const-string v2, "[SFU] verify result: %b"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/tencent/qmsp/sdk/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    return p1
.end method

.method private n(Lcom/tencent/qmsp/sdk/d/d$b;)Z
    .locals 5

    const-string v0, "Qp.QUM"

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    iget-wide v3, p1, Lcom/tencent/qmsp/sdk/d/d$b;->a:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v3, v4, v2

    const-string v3, "[SFU] verify package: sid=%d"

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/tencent/qmsp/sdk/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/tencent/qmsp/sdk/d/c;->h(Lcom/tencent/qmsp/sdk/d/d$b;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/qmsp/sdk/d/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    return v2

    :cond_0
    iget-object p1, p1, Lcom/tencent/qmsp/sdk/d/d$b;->d:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v3, v4, v2

    const-string v2, "[SFU] verify result: %b"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/tencent/qmsp/sdk/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    return p1
.end method


# virtual methods
.method public a()V
    .locals 11

    invoke-static {}, Lcom/tencent/qmsp/sdk/app/QmspSDK;->getTaskStatus()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "Qp.QUM"

    if-nez v0, :cond_0

    const-string v0, "[SFU] Plugin Update Task Finish\uff01"

    invoke-static {v2, v1, v0}, Lcom/tencent/qmsp/sdk/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/tencent/qmsp/sdk/c/f;->i()Lcom/tencent/qmsp/sdk/c/f;

    move-result-object v0

    const/16 v3, 0x3e9

    invoke-virtual {v0, v3}, Lcom/tencent/qmsp/sdk/c/f;->a(I)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/tencent/qmsp/sdk/app/QmspSDK;->getAtomUpdateInterval()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/tencent/qmsp/sdk/d/c;->a(J)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/qmsp/sdk/d/c;->h:Landroid/content/SharedPreferences;

    sget-object v3, Lcom/tencent/qmsp/sdk/d/d;->c:[B

    invoke-direct {p0, v3}, Lcom/tencent/qmsp/sdk/d/c;->a([B)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v6

    cmp-long v0, v8, v4

    if-gez v0, :cond_2

    goto :goto_0

    :cond_2
    move-wide v4, v8

    :goto_0
    invoke-static {}, Lcom/tencent/qmsp/sdk/app/QmspSDK;->getAtomUpdateInterval()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    int-to-long v8, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v0, v7, v10

    aput-object v3, v7, v1

    const-string v0, "[SFU] startSFU last time: %d, interval: %d"

    invoke-static {v0, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v6, v0}, Lcom/tencent/qmsp/sdk/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {}, Lcom/tencent/qmsp/sdk/app/QmspSDK;->getAtomUpdateInterval()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    int-to-long v0, v0

    cmp-long v3, v4, v0

    if-ltz v3, :cond_3

    invoke-direct {p0}, Lcom/tencent/qmsp/sdk/d/c;->b()V

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/tencent/qmsp/sdk/app/QmspSDK;->getAtomUpdateInterval()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    int-to-long v0, v0

    sub-long v8, v0, v4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[SFU] next time: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v10, v0}, Lcom/tencent/qmsp/sdk/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    :goto_1
    invoke-virtual {p0, v8, v9}, Lcom/tencent/qmsp/sdk/d/c;->a(J)V

    return-void
.end method

.method protected a(I)V
    .locals 4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "[SFU] update error: %d"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Qp.QUM"

    const/4 v3, 0x2

    invoke-static {v2, v3, v0}, Lcom/tencent/qmsp/sdk/f/g;->b(Ljava/lang/String;ILjava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/tencent/qmsp/sdk/d/c;->c(I)V

    goto :goto_0

    :pswitch_2
    new-instance p1, Ljava/io/File;

    invoke-direct {p0}, Lcom/tencent/qmsp/sdk/d/c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_0
    :goto_0
    invoke-direct {p0, v1}, Lcom/tencent/qmsp/sdk/d/c;->b(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(ILjava/lang/Object;)V
    .locals 26

    move-object/from16 v7, p0

    move-object/from16 v0, p2

    const-string v8, "Qp.QUM"

    const-string v1, "[SFU] rcv : "

    const/16 v9, 0x11

    :try_start_0
    move-object v10, v0

    check-cast v10, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v11, 0x0

    invoke-static {v8, v11, v0}, Lcom/tencent/qmsp/sdk/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v10, :cond_5

    const-string v0, "st"

    :try_start_1
    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string/jumbo v1, "tsi"

    :try_start_2
    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v7, Lcom/tencent/qmsp/sdk/d/c;->j:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v2, "0X80078B8"

    const-string v5, ""

    const-string v6, ""

    move-object/from16 v1, p0

    move v3, v0

    :try_start_3
    invoke-direct/range {v1 .. v6}, Lcom/tencent/qmsp/sdk/d/c;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const/4 v12, 0x1

    if-nez v0, :cond_4

    const-string v1, "sc"

    :try_start_4
    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const-string v2, "fi"

    :try_start_5
    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v15
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    const-string v2, "fv"

    :try_start_6
    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v14
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    const-string v2, "fh"

    :try_start_7
    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    const-string v2, "fu"

    :try_start_8
    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    const-string/jumbo v2, "zf"

    :try_start_9
    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v12, :cond_0

    const/16 v21, 0x1

    goto :goto_0

    :cond_0
    const/16 v21, 0x0

    :goto_0
    invoke-direct {v7, v14, v13}, Lcom/tencent/qmsp/sdk/d/c;->a(ILjava/lang/String;)I

    move-result v3
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    const-string v4, "[SFU] resp: cmd=%d, status=%d, fileid=%d, fileversion=%d, md5=%s, url=%s, zipped: %d"

    :try_start_a
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v10, 0x7

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v1, v10, v11

    aput-object v0, v10, v12

    const/4 v0, 0x2

    aput-object v5, v10, v0

    const/4 v0, 0x3

    aput-object v6, v10, v0

    const/4 v0, 0x4

    aput-object v13, v10, v0

    const/4 v0, 0x5

    aput-object v18, v10, v0

    const/4 v1, 0x6

    aput-object v2, v10, v1

    invoke-static {v4, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v12, v1}, Lcom/tencent/qmsp/sdk/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    if-nez v3, :cond_1

    const-string v2, "0X80078AB"

    :try_start_b
    iget v4, v7, Lcom/tencent/qmsp/sdk/d/c;->j:I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    const-string v5, ""

    const-string v6, ""

    move-object/from16 v1, p0

    move v3, v15

    :try_start_c
    invoke-direct/range {v1 .. v6}, Lcom/tencent/qmsp/sdk/d/c;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    const-string v0, "Need to update config file, fileid=%d"

    :try_start_d
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v12, [Ljava/lang/Object;

    aput-object v1, v2, v11

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v12, v0}, Lcom/tencent/qmsp/sdk/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lcom/tencent/qmsp/sdk/d/c$c;

    invoke-direct/range {p0 .. p0}, Lcom/tencent/qmsp/sdk/d/c;->e()Ljava/lang/String;

    move-result-object v16

    sget-object v1, Lcom/tencent/qmsp/sdk/d/d;->a:[B

    invoke-direct {v7, v1}, Lcom/tencent/qmsp/sdk/d/c;->a([B)Ljava/lang/String;

    move-result-object v17

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    const/4 v1, 0x1

    const/16 v22, 0x0

    const/16 v25, 0x1

    move-object v2, v13

    move-object v13, v0

    move v3, v14

    move v14, v1

    move-object/from16 v19, v2

    move/from16 v20, v3

    invoke-direct/range {v13 .. v25}, Lcom/tencent/qmsp/sdk/d/c$c;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZIJI)V

    invoke-direct {v7, v0}, Lcom/tencent/qmsp/sdk/d/c;->a(Lcom/tencent/qmsp/sdk/d/c$c;)Z

    move-result v11

    goto :goto_2

    :cond_1
    if-ne v3, v12, :cond_3

    new-instance v1, Ljava/io/File;

    invoke-direct/range {p0 .. p0}, Lcom/tencent/qmsp/sdk/d/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v2, v7, Lcom/tencent/qmsp/sdk/d/c;->i:Lcom/tencent/qmsp/sdk/d/b;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/tencent/qmsp/sdk/d/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, v7, Lcom/tencent/qmsp/sdk/d/c;->i:Lcom/tencent/qmsp/sdk/d/b;

    invoke-virtual {v1}, Lcom/tencent/qmsp/sdk/d/b;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x10

    :cond_2
    invoke-direct {v7, v0}, Lcom/tencent/qmsp/sdk/d/c;->b(I)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    const/4 v11, 0x1

    goto :goto_2

    :cond_3
    const-string v0, "[SFU] NO Need UPDATE"

    goto :goto_1

    :cond_4
    const-string v1, "[SFU] Server replied with error, status=%d"

    :try_start_e
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v2, v12, [Ljava/lang/Object;

    aput-object v0, v2, v11

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v8, v12, v0}, Lcom/tencent/qmsp/sdk/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    :cond_5
    :goto_2
    if-nez v11, :cond_6

    invoke-direct {v7, v9}, Lcom/tencent/qmsp/sdk/d/c;->b(I)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-direct {v7, v9}, Lcom/tencent/qmsp/sdk/d/c;->b(I)V

    :cond_6
    :goto_3
    return-void
.end method

.method public a(J)V
    .locals 2

    invoke-static {}, Lcom/tencent/qmsp/sdk/c/f;->i()Lcom/tencent/qmsp/sdk/c/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qmsp/sdk/c/f;->c()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/tencent/qmsp/sdk/d/c$a;

    invoke-direct {v1, p0}, Lcom/tencent/qmsp/sdk/d/c$a;-><init>(Lcom/tencent/qmsp/sdk/d/c;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public a(Lcom/tencent/qmsp/sdk/b/c;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qmsp/sdk/d/c;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const v1, 0x101010

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x101010

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/tencent/qmsp/sdk/b/c;

    invoke-direct {p0, p1}, Lcom/tencent/qmsp/sdk/d/c;->b(Lcom/tencent/qmsp/sdk/b/c;)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method
