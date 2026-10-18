.class public final Lcom/huawei/devices/hapticskit/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "HapticsKit"

.field private static final b:I = 0x1

.field private static final c:I = 0x2

.field private static final d:I = 0x18

.field private static final e:J = 0x36ee80L


# instance fields
.field private f:Landroid/os/HandlerThread;

.field private g:Landroid/os/Handler;

.field private h:J

.field private i:Ljava/lang/String;

.field private j:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/huawei/devices/hapticskit/a;->h:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/huawei/devices/hapticskit/a;->h:J

    iput-object p1, p0, Lcom/huawei/devices/hapticskit/a;->j:Landroid/content/Context;

    return-void
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/huawei/devices/hapticskit/a;->j:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/devices/hapticskit/a;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "HapticsKit"

    const-string v1, "Context.getPackageName is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/huawei/devices/hapticskit/c;

    invoke-direct {v0, v1}, Lcom/huawei/devices/hapticskit/c;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()Lcom/huawei/devices/hapticskit/b;
    .locals 3

    iget-object v0, p0, Lcom/huawei/devices/hapticskit/a;->j:Landroid/content/Context;

    const-string v1, "HapticsKit"

    if-eqz v0, :cond_1

    const-string v0, "HapticsKitAdapter initialize"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/huawei/devices/hapticskit/a;->j:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/devices/hapticskit/a;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/huawei/devices/hapticskit/d;

    iget-object v1, p0, Lcom/huawei/devices/hapticskit/a;->g:Landroid/os/Handler;

    iget-object v2, p0, Lcom/huawei/devices/hapticskit/a;->j:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/huawei/devices/hapticskit/d;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    return-object v0

    :cond_0
    const-string v0, "Context.getPackageName is null"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/huawei/devices/hapticskit/c;

    invoke-direct {v1, v0}, Lcom/huawei/devices/hapticskit/c;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string v0, "context values is NULL"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/huawei/devices/hapticskit/c;

    const-string v1, "NullPointerException"

    invoke-direct {v0, v1}, Lcom/huawei/devices/hapticskit/c;-><init>(Ljava/lang/String;)V

    throw v0
.end method
