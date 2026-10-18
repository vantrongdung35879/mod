.class public final Lcom/tencent/qimei/ax/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final l:Ljava/util/concurrent/ConcurrentHashMap;


# instance fields
.field public final a:Ljava/lang/String;

.field public b:I

.field public c:I

.field public d:I

.field public e:Z

.field public f:Z

.field public g:Landroid/content/Context;

.field public h:Lcom/tencent/qimei/ax/e;

.field public i:Z

.field public volatile j:Lcom/tencent/qimei/ax/l;

.field public volatile k:Lcom/tencent/qimei/ax/o;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/tencent/qimei/ax/e;->l:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/tencent/qimei/ax/e;->a:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized a(Ljava/lang/String;)Lcom/tencent/qimei/ax/e;
    .locals 3

    const-class v0, Lcom/tencent/qimei/ax/e;

    monitor-enter v0

    .line 62
    :try_start_0
    sget-object v1, Lcom/tencent/qimei/ax/e;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/qimei/ax/e;

    if-nez v2, :cond_0

    .line 64
    new-instance v2, Lcom/tencent/qimei/ax/e;

    invoke-direct {v2, p0}, Lcom/tencent/qimei/ax/e;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v1, p0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static a(Lcom/tencent/qimei/ax/e;)V
    .locals 4

    .line 145
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 146
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qimei/ab/a$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/Looper;)Landroid/os/MessageQueue;

    move-result-object v0

    new-instance v1, Lcom/tencent/qimei/ax/c;

    invoke-direct {v1, p0}, Lcom/tencent/qimei/ax/c;-><init>(Lcom/tencent/qimei/ax/e;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 158
    :cond_0
    invoke-static {}, Lcom/tencent/qimei/u/a;->a()Lcom/tencent/qimei/u/a;

    move-result-object v0

    new-instance v1, Lcom/tencent/qimei/ax/d;

    invoke-direct {v1, p0}, Lcom/tencent/qimei/ax/d;-><init>(Lcom/tencent/qimei/ax/e;)V

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v2, v3, v1}, Lcom/tencent/qimei/u/a;->a(JLjava/lang/Runnable;)V

    return-void
.end method

.method public static b(Lcom/tencent/qimei/ax/e;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/qimei/ax/e;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    goto :goto_0

    .line 5
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/tencent/qimei/u/a;->a()Lcom/tencent/qimei/u/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/qimei/u/a;->a(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/tencent/qimei/ax/e;->i:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 7

    .line 66
    iget-object v0, p0, Lcom/tencent/qimei/ax/e;->h:Lcom/tencent/qimei/ax/e;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 68
    new-array v1, v0, [Ljava/lang/Class;

    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "isTbsCoreInited"

    const-string v4, "com.tencent.smtt.sdk.QbSdk"

    invoke-static {v4, v3, v1, v2}, Lcom/tencent/qimei/ad/h;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    .line 70
    new-array v3, v2, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v0

    iget-object v5, p0, Lcom/tencent/qimei/ax/e;->g:Landroid/content/Context;

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v5, v6, v0

    .line 71
    const-string v5, "getTbsVersion"

    invoke-static {v4, v5, v3, v6}, Lcom/tencent/qimei/ad/h;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "e"

    if-nez v3, :cond_0

    .line 73
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Qbsdk not install"

    invoke-static {v4, v1, v0}, Lcom/tencent/qimei/af/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 76
    :cond_0
    move-object v5, v3

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v1, :cond_1

    .line 80
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    .line 81
    :cond_1
    invoke-static {}, Lcom/tencent/qimei/webview/util/X5StateController;->getInstance()Lcom/tencent/qimei/webview/util/X5StateController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/qimei/webview/util/X5StateController;->getController()Lcom/tencent/qimei/webview/util/X5StateController$X5Controller;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 82
    invoke-interface {v1}, Lcom/tencent/qimei/webview/util/X5StateController$X5Controller;->detectX5InitFinished()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_6

    if-nez v5, :cond_3

    goto :goto_1

    .line 83
    :cond_3
    iget v0, p0, Lcom/tencent/qimei/ax/e;->b:I

    if-nez v0, :cond_4

    goto/16 :goto_3

    .line 87
    :cond_4
    iput-boolean v2, p0, Lcom/tencent/qimei/ax/e;->e:Z

    .line 89
    iget-object v0, p0, Lcom/tencent/qimei/ax/e;->h:Lcom/tencent/qimei/ax/e;

    .line 90
    iget-object v1, v0, Lcom/tencent/qimei/ax/e;->k:Lcom/tencent/qimei/ax/o;

    if-nez v1, :cond_5

    .line 91
    new-instance v1, Lcom/tencent/qimei/ax/o;

    iget-object v2, v0, Lcom/tencent/qimei/ax/e;->g:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/tencent/qimei/ax/o;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/tencent/qimei/ax/e;->k:Lcom/tencent/qimei/ax/o;

    .line 94
    :cond_5
    iget-object v1, v0, Lcom/tencent/qimei/ax/e;->k:Lcom/tencent/qimei/ax/o;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/tencent/qimei/ax/n;

    invoke-direct {v3, v1}, Lcom/tencent/qimei/ax/n;-><init>(Lcom/tencent/qimei/ax/o;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 106
    iget-object v1, v1, Lcom/tencent/qimei/ax/o;->c:Lcom/tencent/qimei/ax/g;

    invoke-virtual {v1}, Lcom/tencent/qimei/ax/g;->a()V

    .line 107
    iget-object v0, v0, Lcom/tencent/qimei/ax/e;->k:Lcom/tencent/qimei/ax/o;

    .line 108
    iget-object v0, v0, Lcom/tencent/qimei/ax/o;->c:Lcom/tencent/qimei/ax/g;

    .line 109
    iget-object v0, v0, Lcom/tencent/qimei/ax/g;->c:Lcom/tencent/qimei/ax/h;

    .line 110
    invoke-virtual {p0, v0}, Lcom/tencent/qimei/ax/e;->a(Lcom/tencent/qimei/ax/h;)V

    goto :goto_3

    .line 111
    :cond_6
    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v0

    aput-object v3, v5, v2

    const-string/jumbo v0, "x5 not ready,isInited: %b x5Version: %d"

    invoke-static {v4, v0, v5}, Lcom/tencent/qimei/af/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    :goto_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_7

    const/16 v1, 0x1c

    if-le v0, v1, :cond_a

    .line 113
    :cond_7
    iget v0, p0, Lcom/tencent/qimei/ax/e;->c:I

    if-nez v0, :cond_8

    goto :goto_3

    .line 117
    :cond_8
    iput-boolean v2, p0, Lcom/tencent/qimei/ax/e;->f:Z

    .line 118
    iget-object v0, p0, Lcom/tencent/qimei/ax/e;->j:Lcom/tencent/qimei/ax/l;

    if-nez v0, :cond_9

    .line 119
    new-instance v0, Lcom/tencent/qimei/ax/l;

    iget-object v1, p0, Lcom/tencent/qimei/ax/e;->g:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/qimei/ax/l;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/qimei/ax/e;->j:Lcom/tencent/qimei/ax/l;

    .line 122
    :cond_9
    iget-object v0, p0, Lcom/tencent/qimei/ax/e;->j:Lcom/tencent/qimei/ax/l;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/tencent/qimei/ax/k;

    invoke-direct {v2, v0}, Lcom/tencent/qimei/ax/k;-><init>(Lcom/tencent/qimei/ax/l;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 134
    iget-object v0, v0, Lcom/tencent/qimei/ax/l;->c:Lcom/tencent/qimei/ax/g;

    invoke-virtual {v0}, Lcom/tencent/qimei/ax/g;->a()V

    .line 135
    iget-object v0, p0, Lcom/tencent/qimei/ax/e;->j:Lcom/tencent/qimei/ax/l;

    .line 136
    iget-object v0, v0, Lcom/tencent/qimei/ax/l;->c:Lcom/tencent/qimei/ax/g;

    .line 137
    iget-object v0, v0, Lcom/tencent/qimei/ax/g;->c:Lcom/tencent/qimei/ax/h;

    .line 138
    invoke-virtual {p0, v0}, Lcom/tencent/qimei/ax/e;->a(Lcom/tencent/qimei/ax/h;)V

    .line 139
    :cond_a
    :goto_3
    invoke-static {}, Lcom/tencent/qimei/u/a;->a()Lcom/tencent/qimei/u/a;

    move-result-object v0

    .line 140
    iget-boolean v1, p0, Lcom/tencent/qimei/ax/e;->e:Z

    if-eqz v1, :cond_b

    .line 141
    iget v1, p0, Lcom/tencent/qimei/ax/e;->b:I

    goto :goto_4

    .line 142
    :cond_b
    iget-boolean v1, p0, Lcom/tencent/qimei/ax/e;->f:Z

    if-eqz v1, :cond_c

    .line 143
    iget v1, p0, Lcom/tencent/qimei/ax/e;->c:I

    goto :goto_4

    :cond_c
    const/16 v1, 0x258

    :goto_4
    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    .line 144
    invoke-virtual {v0, v1, v2, p0}, Lcom/tencent/qimei/u/a;->a(JLjava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/tencent/qimei/ax/h;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    if-nez v0, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v2, v0, Lcom/tencent/qimei/ax/h;->a:Ljava/lang/String;

    .line 2
    iget-object v3, v0, Lcom/tencent/qimei/ax/h;->b:Ljava/lang/String;

    .line 3
    iget-object v4, v0, Lcom/tencent/qimei/ax/h;->c:Ljava/lang/String;

    .line 4
    iget-object v5, v0, Lcom/tencent/qimei/ax/h;->d:Ljava/lang/String;

    .line 5
    iget-object v0, v0, Lcom/tencent/qimei/ax/h;->e:Ljava/lang/String;

    .line 6
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const-string v7, "e"

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-nez v6, :cond_7

    .line 7
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 8
    const-string v6, "null"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 9
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v10, 0x20

    if-eq v6, v10, :cond_1

    goto/16 :goto_6

    .line 11
    :cond_1
    iget-object v6, v1, Lcom/tencent/qimei/ax/e;->a:Ljava/lang/String;

    invoke-static {v6}, Lcom/tencent/qimei/ac/m;->a(Ljava/lang/String;)Lcom/tencent/qimei/ac/m;

    move-result-object v6

    const-string v10, "h_s_t"

    invoke-virtual {v10, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Lcom/tencent/qimei/ac/m;->b(Ljava/lang/String;)J

    move-result-wide v11

    const-wide/16 v13, 0x18

    .line 12
    invoke-static {v11, v12, v13, v14}, Lcom/tencent/qimei/ad/e;->a(JJ)Z

    move-result v6

    const-string v11, "hi"

    if-eqz v6, :cond_2

    goto :goto_0

    .line 13
    :cond_2
    iget-object v6, v1, Lcom/tencent/qimei/ax/e;->a:Ljava/lang/String;

    invoke-static {v6}, Lcom/tencent/qimei/ac/m;->a(Ljava/lang/String;)Lcom/tencent/qimei/ac/m;

    move-result-object v6

    invoke-virtual {v11, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Lcom/tencent/qimei/ac/m;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 14
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 15
    :goto_0
    iget-object v6, v1, Lcom/tencent/qimei/ax/e;->a:Ljava/lang/String;

    invoke-static {v6}, Lcom/tencent/qimei/ac/m;->a(Ljava/lang/String;)Lcom/tencent/qimei/ac/m;

    move-result-object v6

    invoke-virtual {v11, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11, v4}, Lcom/tencent/qimei/ac/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object v6, v1, Lcom/tencent/qimei/ax/e;->a:Ljava/lang/String;

    invoke-static {v6}, Lcom/tencent/qimei/ac/m;->a(Ljava/lang/String;)Lcom/tencent/qimei/ac/m;

    move-result-object v6

    invoke-virtual {v10, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual {v6, v10, v11, v12}, Lcom/tencent/qimei/ac/m;->a(Ljava/lang/String;J)V

    .line 17
    sget-object v6, Lcom/tencent/qimei/ax/f;->b:Lcom/tencent/qimei/ax/f;

    .line 19
    iget-object v10, v6, Lcom/tencent/qimei/ax/f;->a:Ljava/util/HashMap;

    .line 20
    const-string v11, "5"

    invoke-virtual {v10, v11, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-object v5, v6, Lcom/tencent/qimei/ax/f;->a:Ljava/util/HashMap;

    const-string v10, "6"

    invoke-virtual {v5, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object v5, v6, Lcom/tencent/qimei/ax/f;->a:Ljava/util/HashMap;

    const-string v12, "7"

    invoke-virtual {v5, v12, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object v3, v6, Lcom/tencent/qimei/ax/f;->a:Ljava/util/HashMap;

    const-string v5, "8"

    invoke-virtual {v3, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object v2, v6, Lcom/tencent/qimei/ax/f;->a:Ljava/util/HashMap;

    const-string v3, "9"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object v0, v1, Lcom/tencent/qimei/ax/e;->a:Ljava/lang/String;

    .line 30
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 33
    invoke-static {}, Lcom/tencent/qimei/uin/U;->e()Z

    move-result v13

    const-string v14, ""

    if-nez v13, :cond_3

    .line 34
    invoke-static {v0}, Lcom/tencent/qimei/ag/o;->a(Ljava/lang/String;)Lcom/tencent/qimei/ag/o;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lcom/tencent/qimei/ag/o;->a()Ljava/lang/String;

    move-result-object v13

    .line 36
    invoke-virtual {v0}, Lcom/tencent/qimei/ag/o;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v0, v14

    move-object v13, v0

    .line 40
    :goto_1
    :try_start_0
    const-string v15, "1"

    invoke-virtual {v2, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    const-string v0, "2"

    invoke-virtual {v2, v0, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    iget-object v0, v6, Lcom/tencent/qimei/ax/f;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v11, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    iget-object v0, v6, Lcom/tencent/qimei/ax/f;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v10, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    iget-object v0, v6, Lcom/tencent/qimei/ax/f;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v12, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45
    iget-object v0, v6, Lcom/tencent/qimei/ax/f;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
    iget-object v0, v6, Lcom/tencent/qimei/ax/f;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v15
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 48
    :try_start_1
    const-string v0, "f"

    const-string v2, "H5ID data assembly is complete,%s"

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v15, v3, v9

    invoke-static {v0, v2, v3}, Lcom/tencent/qimei/af/c;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    const/4 v15, 0x0

    .line 50
    :goto_2
    invoke-static {v0}, Lcom/tencent/qimei/af/c;->a(Ljava/lang/Throwable;)V

    :goto_3
    if-nez v15, :cond_4

    goto :goto_4

    :cond_4
    move-object v14, v15

    .line 54
    :goto_4
    iget-object v0, v1, Lcom/tencent/qimei/ax/e;->a:Ljava/lang/String;

    sget-object v2, Lcom/tencent/qimei/foundation/net/protocol/CMD;->H5_BIND:Lcom/tencent/qimei/foundation/net/protocol/CMD;

    invoke-virtual {v2}, Lcom/tencent/qimei/foundation/net/protocol/CMD;->b()I

    move-result v3

    invoke-virtual {v2}, Lcom/tencent/qimei/foundation/net/protocol/CMD;->a()I

    move-result v2

    invoke-static {v0, v14, v3, v2}, Lcom/tencent/qimei/uin/U;->a(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 55
    new-instance v2, Lcom/tencent/qimei/y/d;

    invoke-direct {v2, v0}, Lcom/tencent/qimei/y/d;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v2}, Lcom/tencent/qimei/y/d;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 57
    new-array v0, v8, [Ljava/lang/Object;

    aput-object v4, v0, v9

    const-string v2, "H5ID has been reported over,h5id = %s"

    invoke-static {v7, v2, v0}, Lcom/tencent/qimei/af/c;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    .line 59
    :cond_5
    invoke-virtual {v2}, Lcom/tencent/qimei/y/d;->a()Ljava/lang/String;

    move-result-object v0

    new-array v2, v8, [Ljava/lang/Object;

    aput-object v0, v2, v9

    const-string v0, "H5ID report error,errCode = %s"

    invoke-static {v7, v0, v2}, Lcom/tencent/qimei/af/c;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_5
    return-void

    .line 60
    :cond_6
    new-array v0, v8, [Ljava/lang/Object;

    aput-object v3, v0, v9

    const-string v2, "%s hid same and in 24h"

    invoke-static {v7, v2, v0}, Lcom/tencent/qimei/af/c;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 61
    :cond_7
    :goto_6
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v9

    aput-object v0, v2, v8

    const-string v0, "%s hid is invalid, len = %d"

    invoke-static {v7, v0, v2}, Lcom/tencent/qimei/af/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final run()V
    .locals 9

    .line 1
    new-instance v0, Lcom/tencent/qimei/ay/d;

    iget-object v1, p0, Lcom/tencent/qimei/ax/e;->g:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/qimei/ax/e;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p0}, Lcom/tencent/qimei/ay/d;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/qimei/ax/e;)V

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/tencent/qimei/ay/d;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "tun-cos-1258344701.html"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/tencent/qimei/ay/d;->c:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "tun-cos-1258344701.js"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 11
    iget-object v1, p0, Lcom/tencent/qimei/ax/e;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/qimei/ac/m;->a(Ljava/lang/String;)Lcom/tencent/qimei/ac/m;

    move-result-object v1

    const-string v5, "lc_fe_tm"

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/tencent/qimei/ac/m;->b(Ljava/lang/String;)J

    move-result-wide v5

    const-wide/16 v7, 0x18

    .line 12
    invoke-static {v5, v6, v7, v8}, Lcom/tencent/qimei/ad/e;->a(JJ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 14
    iget-object v1, v0, Lcom/tencent/qimei/ay/d;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/tencent/qimei/ad/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 15
    invoke-static {v1}, Lcom/tencent/qimei/ad/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 16
    iget-object v2, v0, Lcom/tencent/qimei/ay/d;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/qimei/ac/m;->a(Ljava/lang/String;)Lcom/tencent/qimei/ac/m;

    move-result-object v2

    const-string v5, "lc_fe_st_hm"

    invoke-virtual {v2, v5}, Lcom/tencent/qimei/ac/m;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 19
    iget-object v2, v0, Lcom/tencent/qimei/ay/d;->c:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/tencent/qimei/ad/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 20
    invoke-static {v2}, Lcom/tencent/qimei/ad/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 21
    iget-object v4, v0, Lcom/tencent/qimei/ay/d;->b:Ljava/lang/String;

    invoke-static {v4}, Lcom/tencent/qimei/ac/m;->a(Ljava/lang/String;)Lcom/tencent/qimei/ac/m;

    move-result-object v4

    const-string v5, "lc_fe_st_js"

    invoke-virtual {v4, v5}, Lcom/tencent/qimei/ac/m;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 22
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    .line 23
    invoke-virtual {v0, v1}, Lcom/tencent/qimei/ay/d;->a(Z)V

    .line 24
    invoke-virtual {v0, v1}, Lcom/tencent/qimei/ay/d;->b(Z)V

    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {v0, v3}, Lcom/tencent/qimei/ay/d;->a(Z)V

    .line 26
    invoke-virtual {v0, v3}, Lcom/tencent/qimei/ay/d;->b(Z)V

    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/qimei/ax/e;->a()V

    goto :goto_0

    .line 35
    :cond_2
    invoke-virtual {v0, v3}, Lcom/tencent/qimei/ay/d;->a(Z)V

    .line 36
    invoke-virtual {v0, v3}, Lcom/tencent/qimei/ay/d;->b(Z)V

    :goto_0
    return-void
.end method
