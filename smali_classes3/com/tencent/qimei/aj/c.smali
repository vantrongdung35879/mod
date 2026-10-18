.class public abstract Lcom/tencent/qimei/aj/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/tencent/qimei/aj/c;->a:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/tencent/qimei/report/beat/BeatType;Ljava/lang/String;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/tencent/qimei/report/beat/BeatType;->NET_CHANGE:Lcom/tencent/qimei/report/beat/BeatType;

    if-ne p1, v0, :cond_0

    const-class v1, Lcom/tencent/qimei/v/c;

    monitor-enter v1

    .line 2
    :try_start_0
    sget-object v2, Lcom/tencent/qimei/v/c;->p:Lcom/tencent/qimei/v/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 3
    invoke-virtual {v2}, Lcom/tencent/qimei/v/c;->s()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0

    .line 10
    :cond_0
    sget-object v1, Lcom/tencent/qimei/aj/c;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    const/4 v3, 0x1

    if-nez v2, :cond_2

    .line 11
    invoke-static {p0}, Lcom/tencent/qimei/ac/m;->a(Ljava/lang/String;)Lcom/tencent/qimei/ac/m;

    move-result-object v2

    const-string v4, "is_first"

    invoke-virtual {v2, v4}, Lcom/tencent/qimei/ac/m;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 13
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 14
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, p0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    goto :goto_0

    .line 17
    :cond_1
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, p0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 18
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 22
    :cond_2
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 23
    :cond_3
    invoke-static {p0}, Lcom/tencent/qimei/at/a;->a(Ljava/lang/String;)Lcom/tencent/qimei/at/a;

    move-result-object v1

    .line 24
    iget-object v1, v1, Lcom/tencent/qimei/at/a;->b:Lcom/tencent/qimei/av/a;

    .line 25
    sget-object v2, Lcom/tencent/qimei/au/b;->D:Lcom/tencent/qimei/aa/c;

    .line 26
    iget-object v1, v1, Lcom/tencent/qimei/av/a;->q:Ljava/lang/String;

    .line 27
    invoke-static {v2, v1}, Lcom/tencent/qimei/au/d;->a(Lcom/tencent/qimei/aa/c;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 28
    sget-object v2, Lcom/tencent/qimei/aj/b;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v2, v2, v4

    if-eq v2, v3, :cond_7

    const/4 v3, 0x2

    if-eq v2, v3, :cond_6

    const/4 v3, 0x3

    if-eq v2, v3, :cond_5

    const/4 v3, 0x4

    if-eq v2, v3, :cond_4

    goto :goto_2

    .line 45
    :cond_4
    invoke-virtual {v0}, Lcom/tencent/qimei/report/beat/BeatType;->a()I

    move-result v0

    and-int/2addr v1, v0

    if-ne v1, v0, :cond_8

    goto :goto_1

    .line 46
    :cond_5
    sget-object v0, Lcom/tencent/qimei/report/beat/BeatType;->AUDIT:Lcom/tencent/qimei/report/beat/BeatType;

    invoke-virtual {v0}, Lcom/tencent/qimei/report/beat/BeatType;->a()I

    move-result v0

    and-int/2addr v1, v0

    if-ne v1, v0, :cond_8

    goto :goto_1

    .line 47
    :cond_6
    sget-object v0, Lcom/tencent/qimei/report/beat/BeatType;->REGISTER:Lcom/tencent/qimei/report/beat/BeatType;

    invoke-virtual {v0}, Lcom/tencent/qimei/report/beat/BeatType;->a()I

    move-result v0

    and-int/2addr v1, v0

    if-ne v1, v0, :cond_8

    goto :goto_1

    .line 48
    :cond_7
    sget-object v0, Lcom/tencent/qimei/report/beat/BeatType;->INIT:Lcom/tencent/qimei/report/beat/BeatType;

    invoke-virtual {v0}, Lcom/tencent/qimei/report/beat/BeatType;->a()I

    move-result v0

    and-int/2addr v1, v0

    if-ne v1, v0, :cond_8

    .line 49
    :goto_1
    invoke-static {}, Lcom/tencent/qimei/u/a;->a()Lcom/tencent/qimei/u/a;

    move-result-object v0

    new-instance v1, Lcom/tencent/qimei/aj/a;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/qimei/aj/a;-><init>(Ljava/lang/String;Lcom/tencent/qimei/report/beat/BeatType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/qimei/u/a;->a(Ljava/lang/Runnable;)V

    :cond_8
    :goto_2
    return-void
.end method
