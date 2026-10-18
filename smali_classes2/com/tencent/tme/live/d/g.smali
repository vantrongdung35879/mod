.class public Lcom/tencent/tme/live/d/g;
.super Lcom/tencent/tme/live/e0/d;


# static fields
.field public static e:Lcom/tencent/tme/live/d/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tme/live/e0/d;-><init>()V

    return-void
.end method

.method public static f()Lcom/tencent/tme/live/d/g;
    .locals 2

    sget-object v0, Lcom/tencent/tme/live/d/g;->e:Lcom/tencent/tme/live/d/g;

    if-nez v0, :cond_1

    const-class v0, Lcom/tencent/tme/live/c/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/tme/live/d/g;->e:Lcom/tencent/tme/live/d/g;

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/tme/live/d/g;

    invoke-direct {v1}, Lcom/tencent/tme/live/d/g;-><init>()V

    sput-object v1, Lcom/tencent/tme/live/d/g;->e:Lcom/tencent/tme/live/d/g;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/tencent/tme/live/d/g;->e:Lcom/tencent/tme/live/d/g;

    return-object v0
.end method


# virtual methods
.method public b()V
    .locals 1

    invoke-super {p0}, Lcom/tencent/tme/live/e0/d;->b()V

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/tme/live/d/g;->e:Lcom/tencent/tme/live/d/g;

    return-void
.end method
