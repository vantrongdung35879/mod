.class public final Lcom/huawei/game/gamekit/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/huawei/game/gamekit/a/e;


# static fields
.field private static a:Lcom/huawei/game/gamekit/a/c;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/huawei/game/gamekit/a/c;
    .locals 2

    const-class v0, Lcom/huawei/game/gamekit/a/c;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/huawei/game/gamekit/a/c;->a:Lcom/huawei/game/gamekit/a/c;

    if-nez v1, :cond_0

    new-instance v1, Lcom/huawei/game/gamekit/a/c;

    invoke-direct {v1}, Lcom/huawei/game/gamekit/a/c;-><init>()V

    sput-object v1, Lcom/huawei/game/gamekit/a/c;->a:Lcom/huawei/game/gamekit/a/c;

    :cond_0
    sget-object v1, Lcom/huawei/game/gamekit/a/c;->a:Lcom/huawei/game/gamekit/a/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p2
.end method
