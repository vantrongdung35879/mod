.class public final Lcom/huawei/game/gamekit/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final c:Ljava/lang/String; = "HapticsUtil"

.field private static final d:Ljava/lang/Object;

.field private static e:Lcom/huawei/game/gamekit/b/b;


# instance fields
.field public a:Lcom/huawei/devices/hapticskit/a;

.field public b:Lcom/huawei/devices/hapticskit/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/game/gamekit/b/b;->d:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/huawei/game/gamekit/b/b;
    .locals 2

    .line 1
    sget-object v0, Lcom/huawei/game/gamekit/b/b;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/huawei/game/gamekit/b/b;->e:Lcom/huawei/game/gamekit/b/b;

    if-nez v1, :cond_0

    new-instance v1, Lcom/huawei/game/gamekit/b/b;

    invoke-direct {v1}, Lcom/huawei/game/gamekit/b/b;-><init>()V

    sput-object v1, Lcom/huawei/game/gamekit/b/b;->e:Lcom/huawei/game/gamekit/b/b;

    :cond_0
    sget-object v1, Lcom/huawei/game/gamekit/b/b;->e:Lcom/huawei/game/gamekit/b/b;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .line 2
    const-string v0, "HapticsUtil"

    const-string v1, "init Haptics Util"

    invoke-static {v0, v1}, Lcom/huawei/game/gamekit/b/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/huawei/devices/hapticskit/a;

    invoke-direct {v0, p1}, Lcom/huawei/devices/hapticskit/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/huawei/game/gamekit/b/b;->a:Lcom/huawei/devices/hapticskit/a;

    invoke-virtual {v0}, Lcom/huawei/devices/hapticskit/a;->a()Lcom/huawei/devices/hapticskit/b;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/game/gamekit/b/b;->b:Lcom/huawei/devices/hapticskit/b;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/huawei/game/gamekit/b/b;->b:Lcom/huawei/devices/hapticskit/b;

    const-string v1, "HapticsUtil"

    if-nez v0, :cond_0

    const-string p1, "HapticsUtil mHapticsAdapter is null"

    invoke-static {v1, p1}, Lcom/huawei/game/gamekit/b/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/huawei/devices/hapticskit/b;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "setVibrationLevel Success:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/huawei/game/gamekit/b/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
