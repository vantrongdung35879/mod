.class public Lcom/tencent/beacon/a/b/h;
.super Lcom/tencent/beacon/a/b/g;
.source "AttaAggregateReport.java"


# static fields
.field private static volatile e:Lcom/tencent/beacon/a/b/h;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tencent/beacon/a/b/g;-><init>()V

    return-void
.end method

.method public static e()Lcom/tencent/beacon/a/b/h;
    .locals 2

    .line 1
    sget-object v0, Lcom/tencent/beacon/a/b/h;->e:Lcom/tencent/beacon/a/b/h;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/tencent/beacon/a/b/h;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/tencent/beacon/a/b/h;->e:Lcom/tencent/beacon/a/b/h;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/tencent/beacon/a/b/h;

    invoke-direct {v1}, Lcom/tencent/beacon/a/b/h;-><init>()V

    sput-object v1, Lcom/tencent/beacon/a/b/h;->e:Lcom/tencent/beacon/a/b/h;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/tencent/beacon/a/b/h;->e:Lcom/tencent/beacon/a/b/h;

    return-object v0
.end method


# virtual methods
.method b()Ljava/lang/String;
    .locals 1

    const-string v0, "03300051017"

    return-object v0
.end method

.method c()Ljava/lang/String;
    .locals 1

    const-string v0, "9462881773"

    return-object v0
.end method
