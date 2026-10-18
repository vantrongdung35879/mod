.class public final Lcom/tencent/qimei/ak/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final i:Ljava/util/concurrent/ConcurrentHashMap;

.field public static j:Ljava/util/PriorityQueue;


# instance fields
.field public a:Lcom/tencent/qimei/ak/n;

.field public b:Lcom/tencent/qimei/t/b;

.field public final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public d:J

.field public e:J

.field public f:Z

.field public final g:Ljava/lang/String;

.field public final h:Lcom/tencent/qimei/ak/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/tencent/qimei/ak/g;->i:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 23
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/tencent/qimei/ak/g;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 26
    iput-boolean v1, p0, Lcom/tencent/qimei/ak/g;->f:Z

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qimei/ak/g;->g:Ljava/lang/String;

    .line 28
    new-instance v0, Lcom/tencent/qimei/ak/f;

    new-instance v2, Lcom/tencent/qimei/ak/e;

    invoke-direct {v2, p0}, Lcom/tencent/qimei/ak/e;-><init>(Lcom/tencent/qimei/ak/g;)V

    invoke-direct {v0, v2}, Lcom/tencent/qimei/ak/f;-><init>(Lcom/tencent/qimei/ak/e;)V

    iput-object v0, p0, Lcom/tencent/qimei/ak/g;->h:Lcom/tencent/qimei/ak/f;

    .line 29
    iput-object p1, p0, Lcom/tencent/qimei/ak/g;->g:Ljava/lang/String;

    .line 30
    new-instance p1, Ljava/util/PriorityQueue;

    invoke-direct {p1}, Ljava/util/PriorityQueue;-><init>()V

    .line 31
    new-instance v0, Ljava/util/Random;

    const-class v2, Lcom/tencent/qimei/ad/e;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    int-to-long v2, v2

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    const/4 v2, 0x5

    .line 34
    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 35
    :cond_0
    sput-object p1, Lcom/tencent/qimei/ak/g;->j:Ljava/util/PriorityQueue;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 16

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Lcom/tencent/qimei/ak/g;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v1, Lcom/tencent/qimei/ak/g;->g:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    const-string v0, "QM"

    const-string v3, "QM is requesting,cancel this request(appKey: %s)"

    invoke-static {v0, v3, v2}, Lcom/tencent/qimei/af/c;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 7
    :cond_0
    iget-object v0, v1, Lcom/tencent/qimei/ak/g;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 8
    invoke-static {}, Lcom/tencent/qimei/ab/a;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 9
    iget-object v0, v1, Lcom/tencent/qimei/ak/g;->g:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    const-string v0, "QM"

    const-string v4, "no network,cancel QM request(appKey: %s)"

    invoke-static {v0, v4, v2}, Lcom/tencent/qimei/af/c;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    iget-object v0, v1, Lcom/tencent/qimei/ak/g;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    .line 11
    :cond_1
    invoke-static {}, Lcom/tencent/qimei/v/a;->g()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, v1, Lcom/tencent/qimei/ak/g;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/qimei/v/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 12
    new-instance v0, Lcom/tencent/qimei/t/b;

    invoke-direct {v0, v1}, Lcom/tencent/qimei/t/b;-><init>(Lcom/tencent/qimei/ak/g;)V

    iput-object v0, v1, Lcom/tencent/qimei/ak/g;->b:Lcom/tencent/qimei/t/b;

    .line 13
    invoke-virtual {v0}, Lcom/tencent/qimei/t/b;->a()V

    .line 14
    iget-object v0, v1, Lcom/tencent/qimei/ak/g;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/qimei/ak/b;->a(Ljava/lang/String;)Lcom/tencent/qimei/ak/b;

    move-result-object v0

    iget-object v2, v1, Lcom/tencent/qimei/ak/g;->g:Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/qimei/ap/f;->c(Ljava/lang/String;)Lcom/tencent/qimei/sdk/Qimei;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/qimei/ak/b;->b(Lcom/tencent/qimei/sdk/Qimei;)V

    .line 15
    iget-object v0, v1, Lcom/tencent/qimei/ak/g;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/qimei/ak/b;->a(Ljava/lang/String;)Lcom/tencent/qimei/ak/b;

    move-result-object v0

    .line 16
    iget-object v0, v0, Lcom/tencent/qimei/ak/b;->b:Lcom/tencent/qimei/sdk/Qimei;

    if-eqz v0, :cond_2

    .line 17
    invoke-virtual {v0}, Lcom/tencent/qimei/sdk/Qimei;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 18
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 19
    new-instance v0, Lcom/tencent/qimei/ar/a;

    iget-object v2, v1, Lcom/tencent/qimei/ak/g;->g:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/tencent/qimei/ar/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/qimei/ar/a;->c()V

    .line 20
    iget-object v0, v1, Lcom/tencent/qimei/ak/g;->b:Lcom/tencent/qimei/t/b;

    if-eqz v0, :cond_2

    .line 21
    iget-object v2, v0, Lcom/tencent/qimei/t/b;->b:Landroid/content/Context;

    if-eqz v2, :cond_2

    .line 23
    :try_start_0
    invoke-virtual {v2, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 24
    invoke-static {}, Landroid/os/Process;->myPid()I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 26
    invoke-static {v0}, Lcom/tencent/qimei/af/c;->a(Ljava/lang/Throwable;)V

    .line 27
    :cond_2
    :goto_0
    iget-object v0, v1, Lcom/tencent/qimei/ak/g;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    .line 28
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/tencent/qimei/ak/g;->d:J

    .line 30
    iget-object v0, v1, Lcom/tencent/qimei/ak/g;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/qimei/ak/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 31
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 32
    iget-object v0, v1, Lcom/tencent/qimei/ak/g;->g:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    const-string v0, "QM"

    const-string v4, "The parameter to get the QM request is empty, cancel the QM request(appKey: %s)"

    invoke-static {v0, v4, v2}, Lcom/tencent/qimei/af/c;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    iget-object v0, v1, Lcom/tencent/qimei/ak/g;->g:Ljava/lang/String;

    .line 35
    invoke-static {}, Lcom/tencent/qimei/ai/h;->a()Lcom/tencent/qimei/ai/h;

    move-result-object v2

    .line 36
    invoke-static {v2}, Lcom/tencent/qimei/q/b;->a(Lcom/tencent/qimei/ai/h;)Lcom/tencent/qimei/ai/e;

    move-result-object v4

    .line 37
    const-string v5, "6"

    const-string v6, "1007"

    .line 38
    iget-object v7, v4, Lcom/tencent/qimei/ai/e;->a:Ljava/util/HashMap;

    invoke-virtual {v7, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string/jumbo v5, "v2"

    invoke-virtual {v2, v4, v5, v0}, Lcom/tencent/qimei/ai/h;->a(Lcom/tencent/qimei/ai/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-object v0, v1, Lcom/tencent/qimei/ak/g;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    .line 41
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/tencent/qimei/ak/g;->e:J

    .line 42
    iget-object v4, v1, Lcom/tencent/qimei/ak/g;->g:Ljava/lang/String;

    sget-object v5, Lcom/tencent/qimei/foundation/net/protocol/CMD;->REGISTER:Lcom/tencent/qimei/foundation/net/protocol/CMD;

    invoke-virtual {v5}, Lcom/tencent/qimei/foundation/net/protocol/CMD;->b()I

    move-result v6

    invoke-virtual {v5}, Lcom/tencent/qimei/foundation/net/protocol/CMD;->a()I

    move-result v5

    invoke-static {v4, v0, v6, v5}, Lcom/tencent/qimei/uin/U;->a(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 43
    new-instance v4, Lcom/tencent/qimei/y/d;

    invoke-direct {v4, v0}, Lcom/tencent/qimei/y/d;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v4}, Lcom/tencent/qimei/y/d;->b()Z

    move-result v0

    const/4 v7, 0x2

    if-eqz v0, :cond_15

    .line 49
    iget-object v0, v4, Lcom/tencent/qimei/y/d;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, ""

    goto :goto_1

    :cond_5
    iget-object v0, v4, Lcom/tencent/qimei/y/d;->d:Ljava/lang/String;

    :goto_1
    move-object v10, v0

    .line 50
    iget-object v0, v1, Lcom/tencent/qimei/ak/g;->g:Ljava/lang/String;

    new-array v11, v7, [Ljava/lang/Object;

    aput-object v0, v11, v3

    aput-object v10, v11, v2

    const-string v0, "QM"

    const-string v12, "(appKey: %s)QM response, %s"

    invoke-static {v0, v12, v11}, Lcom/tencent/qimei/af/c;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    iget-object v0, v1, Lcom/tencent/qimei/ak/g;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/qimei/ak/b;->a(Ljava/lang/String;)Lcom/tencent/qimei/ak/b;

    move-result-object v11

    .line 52
    iget-object v0, v11, Lcom/tencent/qimei/ak/b;->b:Lcom/tencent/qimei/sdk/Qimei;

    .line 53
    iget-object v12, v1, Lcom/tencent/qimei/ak/g;->g:Ljava/lang/String;

    invoke-static {v12, v10}, Lcom/tencent/qimei/ap/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/qimei/sdk/Qimei;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/tencent/qimei/ak/b;->b(Lcom/tencent/qimei/sdk/Qimei;)V

    .line 54
    iget-object v12, v11, Lcom/tencent/qimei/ak/b;->b:Lcom/tencent/qimei/sdk/Qimei;

    .line 55
    iget-boolean v13, v11, Lcom/tencent/qimei/ak/b;->f:Z

    if-eqz v0, :cond_c

    .line 56
    invoke-virtual {v0}, Lcom/tencent/qimei/sdk/Qimei;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_6

    goto/16 :goto_3

    .line 57
    :cond_6
    iget-object v14, v0, Lcom/tencent/qimei/sdk/Qimei;->b:Ljava/lang/String;

    .line 58
    iget-object v0, v0, Lcom/tencent/qimei/sdk/Qimei;->c:Ljava/lang/String;

    if-eqz v14, :cond_c

    if-nez v0, :cond_7

    goto :goto_3

    .line 59
    :cond_7
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_8

    goto :goto_3

    .line 60
    :cond_8
    iget-object v15, v12, Lcom/tencent/qimei/sdk/Qimei;->b:Ljava/lang/String;

    .line 61
    iget-object v8, v12, Lcom/tencent/qimei/sdk/Qimei;->c:Ljava/lang/String;

    .line 62
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_9

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_9

    goto :goto_3

    .line 66
    :cond_9
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    goto :goto_3

    .line 70
    :cond_a
    iget-object v9, v1, Lcom/tencent/qimei/ak/g;->g:Ljava/lang/String;

    .line 71
    invoke-static {}, Lcom/tencent/qimei/ai/h;->a()Lcom/tencent/qimei/ai/h;

    move-result-object v5

    .line 72
    invoke-static {v5}, Lcom/tencent/qimei/q/b;->a(Lcom/tencent/qimei/ai/h;)Lcom/tencent/qimei/ai/e;

    move-result-object v6

    .line 73
    const-string v2, "6"

    .line 74
    iget-object v3, v6, Lcom/tencent/qimei/ai/e;->a:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string v2, "7"

    .line 76
    iget-object v3, v6, Lcom/tencent/qimei/ai/e;->a:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string v0, "8"

    .line 78
    iget-object v2, v6, Lcom/tencent/qimei/ai/e;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v0, "9"

    .line 80
    iget-object v2, v6, Lcom/tencent/qimei/ai/e;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string v0, "10"

    if-eqz v13, :cond_b

    .line 82
    const-string v2, "1"

    goto :goto_2

    :cond_b
    const-string v2, "0"

    .line 83
    :goto_2
    iget-object v3, v6, Lcom/tencent/qimei/ai/e;->a:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string/jumbo v0, "v3"

    invoke-virtual {v5, v6, v0, v9}, Lcom/tencent/qimei/ai/h;->a(Lcom/tencent/qimei/ai/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :cond_c
    :goto_3
    const-string v0, "200"

    .line 86
    iget-object v2, v1, Lcom/tencent/qimei/ak/g;->g:Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/qimei/ak/b;->a(Ljava/lang/String;)Lcom/tencent/qimei/ak/b;

    move-result-object v2

    .line 87
    iget-object v2, v2, Lcom/tencent/qimei/ak/b;->b:Lcom/tencent/qimei/sdk/Qimei;

    if-eqz v2, :cond_d

    .line 88
    invoke-virtual {v2}, Lcom/tencent/qimei/sdk/Qimei;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d

    goto :goto_4

    .line 91
    :cond_d
    iget-object v2, v1, Lcom/tencent/qimei/ak/g;->g:Ljava/lang/String;

    .line 92
    invoke-static {}, Lcom/tencent/qimei/ai/h;->a()Lcom/tencent/qimei/ai/h;

    move-result-object v3

    .line 93
    invoke-static {v3}, Lcom/tencent/qimei/q/b;->a(Lcom/tencent/qimei/ai/h;)Lcom/tencent/qimei/ai/e;

    move-result-object v5

    .line 94
    const-string v6, "6"

    const-string v8, "1004"

    .line 95
    iget-object v9, v5, Lcom/tencent/qimei/ai/e;->a:Ljava/util/HashMap;

    invoke-virtual {v9, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string v6, "7"

    .line 97
    iget-object v8, v5, Lcom/tencent/qimei/ai/e;->a:Ljava/util/HashMap;

    invoke-virtual {v8, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string/jumbo v0, "v2"

    invoke-virtual {v3, v5, v0, v2}, Lcom/tencent/qimei/ai/h;->a(Lcom/tencent/qimei/ai/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :goto_4
    iget-object v0, v1, Lcom/tencent/qimei/ak/g;->g:Ljava/lang/String;

    new-array v2, v7, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v12, v2, v0

    const-string v0, "QM"

    const-string v3, "(appKey: %s)QM response, data decryption result: %s"

    invoke-static {v0, v3, v2}, Lcom/tencent/qimei/af/c;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    iget-object v0, v11, Lcom/tencent/qimei/ak/b;->b:Lcom/tencent/qimei/sdk/Qimei;

    if-eqz v0, :cond_11

    .line 101
    invoke-virtual {v0}, Lcom/tencent/qimei/sdk/Qimei;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    .line 102
    new-instance v0, Lcom/tencent/qimei/ar/a;

    iget-object v2, v1, Lcom/tencent/qimei/ak/g;->g:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/tencent/qimei/ar/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/qimei/ar/a;->c()V

    .line 103
    iget-object v0, v1, Lcom/tencent/qimei/ak/g;->b:Lcom/tencent/qimei/t/b;

    if-eqz v0, :cond_e

    .line 104
    iget-object v2, v0, Lcom/tencent/qimei/t/b;->b:Landroid/content/Context;

    if-eqz v2, :cond_e

    .line 106
    :try_start_1
    invoke-virtual {v2, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 107
    invoke-static {}, Landroid/os/Process;->myPid()I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    .line 109
    invoke-static {v0}, Lcom/tencent/qimei/af/c;->a(Ljava/lang/Throwable;)V

    .line 110
    :cond_e
    :goto_5
    iget-object v0, v1, Lcom/tencent/qimei/ak/g;->g:Ljava/lang/String;

    .line 111
    new-instance v2, Lcom/tencent/qimei/ap/b;

    invoke-direct {v2, v0, v10}, Lcom/tencent/qimei/ap/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "lccNoCN"

    invoke-static {v0, v3, v2}, Lcom/tencent/qimei/v/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/qimei/w/a;)V

    const-wide/16 v2, 0x0

    .line 112
    iput-wide v2, v11, Lcom/tencent/qimei/ak/b;->d:J

    .line 113
    iget-object v0, v11, Lcom/tencent/qimei/ak/b;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/qimei/ag/o;->a(Ljava/lang/String;)Lcom/tencent/qimei/ag/o;

    move-result-object v0

    .line 114
    iget-object v0, v0, Lcom/tencent/qimei/ag/o;->a:Ljava/lang/String;

    .line 115
    invoke-static {v0}, Lcom/tencent/qimei/at/a;->a(Ljava/lang/String;)Lcom/tencent/qimei/at/a;

    move-result-object v0

    .line 116
    iget-object v0, v0, Lcom/tencent/qimei/at/a;->b:Lcom/tencent/qimei/av/a;

    .line 117
    sget-object v5, Lcom/tencent/qimei/au/a;->l:Lcom/tencent/qimei/aa/b;

    iget-object v0, v0, Lcom/tencent/qimei/av/a;->q:Ljava/lang/String;

    invoke-static {v5, v0}, Lcom/tencent/qimei/au/d;->a(Lcom/tencent/qimei/aa/b;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_f

    .line 118
    const-string v0, ""

    goto :goto_6

    .line 120
    :cond_f
    invoke-static {}, Lcom/tencent/qimei/uin/U;->a()Ljava/lang/String;

    move-result-object v0

    :goto_6
    if-nez v0, :cond_10

    .line 121
    const-string v0, ""

    .line 122
    :cond_10
    iput-object v0, v11, Lcom/tencent/qimei/ak/b;->c:Ljava/lang/String;

    .line 123
    iget-object v0, v11, Lcom/tencent/qimei/ak/b;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/qimei/ac/m;->a(Ljava/lang/String;)Lcom/tencent/qimei/ac/m;

    move-result-object v0

    iget-object v5, v11, Lcom/tencent/qimei/ak/b;->c:Ljava/lang/String;

    const-string/jumbo v6, "tt"

    invoke-virtual {v0, v6, v5}, Lcom/tencent/qimei/ac/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v0, v1, Lcom/tencent/qimei/ak/g;->g:Ljava/lang/String;

    sget-object v5, Lcom/tencent/qimei/report/beat/BeatType;->REGISTER:Lcom/tencent/qimei/report/beat/BeatType;

    const-string v6, "0"

    invoke-static {v0, v5, v6}, Lcom/tencent/qimei/aj/c;->a(Ljava/lang/String;Lcom/tencent/qimei/report/beat/BeatType;Ljava/lang/String;)V

    goto :goto_7

    :cond_11
    const-wide/16 v2, 0x0

    .line 127
    iget-object v0, v1, Lcom/tencent/qimei/ak/g;->g:Ljava/lang/String;

    sget-object v5, Lcom/tencent/qimei/report/beat/BeatType;->REGISTER:Lcom/tencent/qimei/report/beat/BeatType;

    const-string v6, "402"

    invoke-static {v0, v5, v6}, Lcom/tencent/qimei/aj/c;->a(Ljava/lang/String;Lcom/tencent/qimei/report/beat/BeatType;Ljava/lang/String;)V

    .line 128
    :goto_7
    iget-object v0, v1, Lcom/tencent/qimei/ak/g;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 129
    iget-wide v4, v4, Lcom/tencent/qimei/y/d;->h:J

    .line 130
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 131
    iget-wide v8, v1, Lcom/tencent/qimei/ak/g;->e:J

    sub-long v8, v6, v8

    .line 132
    iget-wide v10, v1, Lcom/tencent/qimei/ak/g;->d:J

    sub-long/2addr v6, v10

    .line 133
    const-class v10, Lcom/tencent/qimei/v/c;

    monitor-enter v10

    .line 134
    :try_start_2
    sget-object v0, Lcom/tencent/qimei/v/c;->p:Lcom/tencent/qimei/v/c;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v10

    .line 135
    iget-wide v10, v0, Lcom/tencent/qimei/v/c;->c:J

    .line 137
    iget-object v0, v1, Lcom/tencent/qimei/ak/g;->a:Lcom/tencent/qimei/ak/n;

    if-eqz v0, :cond_12

    .line 138
    iget-wide v2, v0, Lcom/tencent/qimei/ak/n;->i:J

    :cond_12
    const-wide/16 v12, 0x2710

    cmp-long v0, v8, v12

    if-gez v0, :cond_14

    cmp-long v0, v6, v12

    if-gez v0, :cond_14

    cmp-long v0, v10, v12

    if-gez v0, :cond_14

    cmp-long v0, v2, v12

    if-gez v0, :cond_14

    cmp-long v0, v4, v12

    if-ltz v0, :cond_13

    goto :goto_8

    .line 139
    :cond_13
    iget-object v0, v1, Lcom/tencent/qimei/ak/g;->g:Ljava/lang/String;

    .line 140
    sget-object v12, Lcom/tencent/qimei/ap/g;->a:Ljava/util/Random;

    const/16 v13, 0x65

    invoke-virtual {v12, v13}, Ljava/util/Random;->nextInt(I)I

    move-result v12

    .line 141
    invoke-static {v0}, Lcom/tencent/qimei/at/a;->a(Ljava/lang/String;)Lcom/tencent/qimei/at/a;

    move-result-object v0

    .line 142
    iget-object v0, v0, Lcom/tencent/qimei/at/a;->b:Lcom/tencent/qimei/av/a;

    .line 143
    sget-object v13, Lcom/tencent/qimei/au/b;->y:Lcom/tencent/qimei/aa/c;

    .line 144
    iget-object v0, v0, Lcom/tencent/qimei/av/a;->q:Ljava/lang/String;

    .line 145
    invoke-static {v13, v0}, Lcom/tencent/qimei/au/d;->a(Lcom/tencent/qimei/aa/c;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gt v12, v0, :cond_1e

    .line 146
    :cond_14
    :goto_8
    iget-object v0, v1, Lcom/tencent/qimei/ak/g;->g:Ljava/lang/String;

    .line 147
    invoke-static {}, Lcom/tencent/qimei/ai/h;->a()Lcom/tencent/qimei/ai/h;

    move-result-object v12

    .line 148
    invoke-static {v12}, Lcom/tencent/qimei/q/b;->a(Lcom/tencent/qimei/ai/h;)Lcom/tencent/qimei/ai/e;

    move-result-object v13

    .line 149
    const-string v14, "6"

    .line 150
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    .line 151
    iget-object v9, v13, Lcom/tencent/qimei/ai/e;->a:Ljava/util/HashMap;

    invoke-virtual {v9, v14, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    const-string v8, "7"

    .line 153
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    .line 154
    iget-object v7, v13, Lcom/tencent/qimei/ai/e;->a:Ljava/util/HashMap;

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const-string v6, "8"

    .line 156
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    .line 157
    iget-object v8, v13, Lcom/tencent/qimei/ai/e;->a:Ljava/util/HashMap;

    invoke-virtual {v8, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const-string v6, "9"

    .line 159
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 160
    iget-object v3, v13, Lcom/tencent/qimei/ai/e;->a:Ljava/util/HashMap;

    invoke-virtual {v3, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const-string v2, "10"

    .line 162
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 163
    iget-object v4, v13, Lcom/tencent/qimei/ai/e;->a:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    const-string/jumbo v2, "v1"

    invoke-virtual {v12, v13, v2, v0}, Lcom/tencent/qimei/ai/h;->a(Lcom/tencent/qimei/ai/e;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 165
    monitor-exit v10

    throw v2

    :cond_15
    const-wide/16 v2, 0x0

    .line 166
    iget-boolean v0, v4, Lcom/tencent/qimei/y/d;->i:Z

    if-eqz v0, :cond_1d

    .line 167
    iget-object v0, v4, Lcom/tencent/qimei/y/d;->e:Ljava/lang/String;

    iget v5, v4, Lcom/tencent/qimei/y/d;->f:I

    iget-object v6, v4, Lcom/tencent/qimei/y/d;->g:Ljava/lang/String;

    .line 168
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v0, v9, v10

    const/4 v10, 0x1

    aput-object v8, v9, v10

    aput-object v6, v9, v7

    .line 169
    const-string v7, "QM"

    const-string v8, "onFailure msg: %s,%d,%s. Waiting next query."

    invoke-static {v7, v8, v9}, Lcom/tencent/qimei/af/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    iget-object v7, v1, Lcom/tencent/qimei/ak/g;->h:Lcom/tencent/qimei/ak/f;

    .line 173
    iget-object v8, v7, Lcom/tencent/qimei/ak/f;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 174
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v8

    iget v7, v7, Lcom/tencent/qimei/ak/f;->a:I

    sub-int/2addr v7, v10

    if-le v8, v7, :cond_17

    .line 175
    iget-object v7, v1, Lcom/tencent/qimei/ak/g;->g:Ljava/lang/String;

    .line 176
    const-string v8, "1000"

    .line 177
    const-string v9, "451"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 178
    const-string v8, "1001"

    .line 180
    :cond_16
    invoke-static {}, Lcom/tencent/qimei/ai/h;->a()Lcom/tencent/qimei/ai/h;

    move-result-object v0

    .line 181
    invoke-static {v0}, Lcom/tencent/qimei/q/b;->a(Lcom/tencent/qimei/ai/h;)Lcom/tencent/qimei/ai/e;

    move-result-object v9

    .line 182
    const-string v10, "6"

    .line 183
    iget-object v11, v9, Lcom/tencent/qimei/ai/e;->a:Ljava/util/HashMap;

    invoke-virtual {v11, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    const-string v8, "7"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "error code: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", msg:"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 185
    iget-object v6, v9, Lcom/tencent/qimei/ai/e;->a:Ljava/util/HashMap;

    invoke-virtual {v6, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    const-string/jumbo v5, "v2"

    invoke-virtual {v0, v9, v5, v7}, Lcom/tencent/qimei/ai/h;->a(Lcom/tencent/qimei/ai/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :cond_17
    iget-object v0, v1, Lcom/tencent/qimei/ak/g;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 188
    iget-boolean v0, v1, Lcom/tencent/qimei/ak/g;->f:Z

    if-eqz v0, :cond_18

    .line 189
    iput-boolean v5, v1, Lcom/tencent/qimei/ak/g;->f:Z

    goto/16 :goto_c

    .line 193
    :cond_18
    iget-object v0, v1, Lcom/tencent/qimei/ak/g;->h:Lcom/tencent/qimei/ak/f;

    .line 194
    iget-object v5, v0, Lcom/tencent/qimei/ak/f;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 195
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 196
    iget-object v5, v0, Lcom/tencent/qimei/ak/f;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    iget v6, v0, Lcom/tencent/qimei/ak/f;->a:I

    if-le v5, v6, :cond_19

    const/4 v5, 0x1

    goto :goto_9

    :cond_19
    const/4 v5, 0x0

    :goto_9
    if-eqz v5, :cond_1b

    .line 197
    iget-object v6, v0, Lcom/tencent/qimei/ak/f;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 198
    iget-object v0, v0, Lcom/tencent/qimei/ak/f;->b:Lcom/tencent/qimei/ak/e;

    if-eqz v0, :cond_1b

    .line 199
    iget-object v6, v0, Lcom/tencent/qimei/ak/e;->a:Lcom/tencent/qimei/ak/g;

    .line 200
    iget-object v6, v6, Lcom/tencent/qimei/ak/g;->g:Ljava/lang/String;

    .line 201
    invoke-static {v6}, Lcom/tencent/qimei/at/a;->a(Ljava/lang/String;)Lcom/tencent/qimei/at/a;

    move-result-object v6

    .line 202
    iget-object v6, v6, Lcom/tencent/qimei/at/a;->b:Lcom/tencent/qimei/av/a;

    .line 203
    sget-object v7, Lcom/tencent/qimei/au/c;->H:Lcom/tencent/qimei/aa/d;

    .line 204
    iget-object v6, v6, Lcom/tencent/qimei/av/a;->q:Ljava/lang/String;

    .line 205
    sget-object v8, Lcom/tencent/qimei/at/d;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 206
    invoke-virtual {v7, v6}, Lcom/tencent/qimei/aa/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 207
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1a

    goto :goto_a

    .line 210
    :cond_1a
    iget-object v6, v0, Lcom/tencent/qimei/ak/e;->a:Lcom/tencent/qimei/ak/g;

    const/4 v7, 0x1

    .line 211
    iput-boolean v7, v6, Lcom/tencent/qimei/ak/g;->f:Z

    .line 212
    invoke-static {}, Lcom/tencent/qimei/u/a;->a()Lcom/tencent/qimei/u/a;

    move-result-object v6

    iget-object v0, v0, Lcom/tencent/qimei/ak/e;->a:Lcom/tencent/qimei/ak/g;

    const-wide/16 v7, 0x2710

    invoke-virtual {v6, v7, v8, v0}, Lcom/tencent/qimei/u/a;->a(JLjava/lang/Runnable;)V

    :cond_1b
    :goto_a
    if-nez v5, :cond_1d

    .line 213
    sget-object v0, Lcom/tencent/qimei/ak/g;->j:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 214
    sget-object v0, Lcom/tencent/qimei/ak/g;->j:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->longValue()J

    move-result-wide v2

    const-wide/16 v5, 0x3e8

    mul-long v5, v5, v2

    goto :goto_b

    :cond_1c
    move-wide v5, v2

    .line 216
    :goto_b
    invoke-static {}, Lcom/tencent/qimei/u/a;->a()Lcom/tencent/qimei/u/a;

    move-result-object v0

    invoke-virtual {v0, v5, v6, v1}, Lcom/tencent/qimei/u/a;->a(JLjava/lang/Runnable;)V

    .line 217
    :cond_1d
    :goto_c
    invoke-virtual {v4}, Lcom/tencent/qimei/y/d;->a()Ljava/lang/String;

    move-result-object v0

    .line 219
    iget-object v2, v1, Lcom/tencent/qimei/ak/g;->g:Ljava/lang/String;

    sget-object v3, Lcom/tencent/qimei/report/beat/BeatType;->REGISTER:Lcom/tencent/qimei/report/beat/BeatType;

    invoke-static {v2, v3, v0}, Lcom/tencent/qimei/aj/c;->a(Ljava/lang/String;Lcom/tencent/qimei/report/beat/BeatType;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 220
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "QM"

    const-string v3, "register qm failed,response err code is %s"

    invoke-static {v0, v3, v2}, Lcom/tencent/qimei/af/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1e
    :goto_d
    return-void
.end method
