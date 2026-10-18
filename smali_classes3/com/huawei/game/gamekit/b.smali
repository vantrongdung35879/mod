.class public final Lcom/huawei/game/gamekit/b;
.super Lcom/huawei/game/gamekit/GameManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/game/gamekit/b$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "GameKit"

.field private static final b:I = 0x1

.field private static final c:I = 0x800

.field private static d:Lcom/huawei/game/gamekit/b;

.field private static final e:Ljava/lang/Object;


# instance fields
.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Landroid/os/HandlerThread;

.field private i:Lcom/huawei/game/gamekit/b$a;

.field private j:Lcom/huawei/game/gamekit/a;

.field private k:Lcom/huawei/game/gamekit/GameManager$GameCallBack;

.field private l:Lcom/huawei/game/gamekit/GameManager$GameCallBack;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/game/gamekit/b;->e:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/huawei/game/gamekit/GameManager;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/huawei/game/gamekit/b;->f:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/game/gamekit/b;->g:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/game/gamekit/b;->j:Lcom/huawei/game/gamekit/a;

    iput-object v0, p0, Lcom/huawei/game/gamekit/b;->k:Lcom/huawei/game/gamekit/GameManager$GameCallBack;

    new-instance v0, Lcom/huawei/game/gamekit/b$1;

    invoke-direct {v0, p0}, Lcom/huawei/game/gamekit/b$1;-><init>(Lcom/huawei/game/gamekit/b;)V

    iput-object v0, p0, Lcom/huawei/game/gamekit/b;->l:Lcom/huawei/game/gamekit/GameManager$GameCallBack;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "GameKitWorkThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/huawei/game/gamekit/b;->h:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/huawei/game/gamekit/b;->h:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/huawei/game/gamekit/b$a;

    invoke-direct {v1, p0, v0}, Lcom/huawei/game/gamekit/b$a;-><init>(Lcom/huawei/game/gamekit/b;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/huawei/game/gamekit/b;->i:Lcom/huawei/game/gamekit/b$a;

    return-void

    :cond_0
    const-string v0, "GameKit"

    const-string v1, "GameKitWorkThread got null looper!"

    invoke-static {v0, v1}, Lcom/huawei/game/gamekit/b/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a()Lcom/huawei/game/gamekit/GameManager;
    .locals 2

    .line 1
    sget-object v0, Lcom/huawei/game/gamekit/b;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/huawei/game/gamekit/b;->d:Lcom/huawei/game/gamekit/b;

    if-nez v1, :cond_0

    new-instance v1, Lcom/huawei/game/gamekit/b;

    invoke-direct {v1}, Lcom/huawei/game/gamekit/b;-><init>()V

    sput-object v1, Lcom/huawei/game/gamekit/b;->d:Lcom/huawei/game/gamekit/b;

    :cond_0
    sget-object v1, Lcom/huawei/game/gamekit/b;->d:Lcom/huawei/game/gamekit/b;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static synthetic a(Lcom/huawei/game/gamekit/b;)Lcom/huawei/game/gamekit/b$a;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/huawei/game/gamekit/b;->i:Lcom/huawei/game/gamekit/b$a;

    return-object p0
.end method

.method public static synthetic a(Lcom/huawei/game/gamekit/b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/huawei/game/gamekit/b;->f:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic b(Lcom/huawei/game/gamekit/b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/huawei/game/gamekit/b;->f:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic c(Lcom/huawei/game/gamekit/b;)Lcom/huawei/game/gamekit/GameManager$GameCallBack;
    .locals 0

    iget-object p0, p0, Lcom/huawei/game/gamekit/b;->k:Lcom/huawei/game/gamekit/GameManager$GameCallBack;

    return-object p0
.end method


# virtual methods
.method public final getPhoneInfo()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "calling getPhoneInfo: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/huawei/game/gamekit/b;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GameKit"

    invoke-static {v1, v0}, Lcom/huawei/game/gamekit/b/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/huawei/game/gamekit/b;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final registerGame(Ljava/lang/String;Lcom/huawei/game/gamekit/GameManager$GameCallBack;)Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "registerGame, packageName:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " gameCallback:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GameKit"

    invoke-static {v1, v0}, Lcom/huawei/game/gamekit/b/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "register failed: invalid params: packageName:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/huawei/game/gamekit/b/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    iput-object p2, p0, Lcom/huawei/game/gamekit/b;->k:Lcom/huawei/game/gamekit/GameManager$GameCallBack;

    iget-object p2, p0, Lcom/huawei/game/gamekit/b;->j:Lcom/huawei/game/gamekit/a;

    if-nez p2, :cond_1

    invoke-static {}, Lcom/huawei/game/gamekit/a;->a()Lcom/huawei/game/gamekit/a;

    move-result-object p2

    iput-object p2, p0, Lcom/huawei/game/gamekit/b;->j:Lcom/huawei/game/gamekit/a;

    const-string p2, "It is the first time calling registerGame"

    invoke-static {v1, p2}, Lcom/huawei/game/gamekit/b/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-boolean p2, p0, Lcom/huawei/game/gamekit/b;->g:Z

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/huawei/game/gamekit/b;->j:Lcom/huawei/game/gamekit/a;

    iget-object v0, p0, Lcom/huawei/game/gamekit/b;->l:Lcom/huawei/game/gamekit/GameManager$GameCallBack;

    invoke-virtual {p2, p1, v0}, Lcom/huawei/game/gamekit/a;->a(Ljava/lang/String;Lcom/huawei/game/gamekit/GameManager$GameCallBack;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/huawei/game/gamekit/b;->g:Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/huawei/game/gamekit/b;->i:Lcom/huawei/game/gamekit/b$a;

    if-eqz p1, :cond_3

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iget-object p2, p0, Lcom/huawei/game/gamekit/b;->f:Ljava/lang/String;

    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p2, p0, Lcom/huawei/game/gamekit/b;->i:Lcom/huawei/game/gamekit/b$a;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_3
    const-string p1, "sendMessage failed: handler is null"

    invoke-static {v1, p1}, Lcom/huawei/game/gamekit/b/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-boolean p1, p0, Lcom/huawei/game/gamekit/b;->g:Z

    return p1
.end method

.method public final registerGame(Ljava/lang/String;Lcom/huawei/game/gamekit/GameManager$GameCallBack;Landroid/content/Context;)Z
    .locals 3

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "registerGame, packageName:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " gameCallback:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GameKit"

    invoke-static {v1, v0}, Lcom/huawei/game/gamekit/b/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/huawei/game/gamekit/b/b;->a()Lcom/huawei/game/gamekit/b/b;

    move-result-object v0

    const-string v1, "HapticsUtil"

    const-string v2, "init Haptics Util"

    invoke-static {v1, v2}, Lcom/huawei/game/gamekit/b/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/huawei/devices/hapticskit/a;

    invoke-direct {v1, p3}, Lcom/huawei/devices/hapticskit/a;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/huawei/game/gamekit/b/b;->a:Lcom/huawei/devices/hapticskit/a;

    invoke-virtual {v1}, Lcom/huawei/devices/hapticskit/a;->a()Lcom/huawei/devices/hapticskit/b;

    move-result-object p3

    iput-object p3, v0, Lcom/huawei/game/gamekit/b/b;->b:Lcom/huawei/devices/hapticskit/b;

    invoke-virtual {p0, p1, p2}, Lcom/huawei/game/gamekit/b;->registerGame(Ljava/lang/String;Lcom/huawei/game/gamekit/GameManager$GameCallBack;)Z

    move-result p1

    return p1
.end method

.method public final updateGameAppInfo(Ljava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lcom/huawei/game/gamekit/b;->g:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "GameKit"

    if-nez v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x800

    if-le v0, v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/huawei/game/gamekit/b;->j:Lcom/huawei/game/gamekit/a;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/huawei/game/gamekit/a;->a(Ljava/lang/String;)V

    return-void

    :cond_2
    const-string/jumbo p1, "updateGameAppInfo failed: did not register game"

    :goto_0
    invoke-static {v1, p1}, Lcom/huawei/game/gamekit/b/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    :goto_1
    const-string/jumbo p1, "updateGameAppInfo failed: illegal param"

    goto :goto_0
.end method
