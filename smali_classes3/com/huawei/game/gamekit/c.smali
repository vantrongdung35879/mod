.class public final Lcom/huawei/game/gamekit/c;
.super Lcom/huawei/game/gamekit/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/game/gamekit/c$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "GameKit"

.field private static final b:I = 0xbbd

.field private static final c:I = 0x1

.field private static final d:I = 0x3

.field private static e:Lcom/huawei/game/gamekit/c; = null

.field private static final f:Ljava/lang/Object;

.field private static g:I = 0x1

.field private static h:I = 0x4


# instance fields
.field private i:Lcom/huawei/game/gamekit/a/g;

.field private j:Lcom/huawei/game/gamekit/a/g;

.field private k:Lcom/huawei/game/gamekit/GameManager$GameCallBack;

.field private l:Lcom/huawei/game/gamekit/c$a;

.field private m:Ljava/lang/String;

.field private n:I

.field private o:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/game/gamekit/c;->f:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/huawei/game/gamekit/a;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/game/gamekit/c;->k:Lcom/huawei/game/gamekit/GameManager$GameCallBack;

    iput-object v0, p0, Lcom/huawei/game/gamekit/c;->l:Lcom/huawei/game/gamekit/c$a;

    const-string v0, ""

    iput-object v0, p0, Lcom/huawei/game/gamekit/c;->m:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/game/gamekit/c;->n:I

    new-instance v0, Lcom/huawei/game/gamekit/a/h;

    invoke-direct {v0}, Lcom/huawei/game/gamekit/a/h;-><init>()V

    iput-object v0, p0, Lcom/huawei/game/gamekit/c;->i:Lcom/huawei/game/gamekit/a/g;

    new-instance v0, Lcom/huawei/game/gamekit/a/b;

    invoke-direct {v0}, Lcom/huawei/game/gamekit/a/b;-><init>()V

    iput-object v0, p0, Lcom/huawei/game/gamekit/c;->j:Lcom/huawei/game/gamekit/a/g;

    return-void
.end method

.method public static synthetic a(Lcom/huawei/game/gamekit/c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/huawei/game/gamekit/c;->o:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic a(Lcom/huawei/game/gamekit/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/huawei/game/gamekit/c;->o:Ljava/lang/String;

    return-object p1
.end method

.method private static a(Ljava/lang/String;Lcom/huawei/game/gamekit/c$a;)Z
    .locals 2

    .line 5
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    invoke-virtual {v0, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    sget p0, Lcom/huawei/game/gamekit/c;->h:I

    invoke-static {p0, v0, v1}, Landroid/rms/iaware/IAwareSdkCore;->handleEvent(ILandroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p0

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "remote registerSdkCallback return:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "reply:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GameKit"

    invoke-static {v1, v0}, Lcom/huawei/game/gamekit/b/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-lez p1, :cond_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic b(Lcom/huawei/game/gamekit/c;)Lcom/huawei/game/gamekit/a/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/huawei/game/gamekit/c;->i:Lcom/huawei/game/gamekit/a/g;

    return-object p0
.end method

.method public static declared-synchronized b()Lcom/huawei/game/gamekit/a;
    .locals 2

    const-class v0, Lcom/huawei/game/gamekit/c;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/huawei/game/gamekit/c;->e:Lcom/huawei/game/gamekit/c;

    if-nez v1, :cond_0

    new-instance v1, Lcom/huawei/game/gamekit/c;

    invoke-direct {v1}, Lcom/huawei/game/gamekit/c;-><init>()V

    sput-object v1, Lcom/huawei/game/gamekit/c;->e:Lcom/huawei/game/gamekit/c;

    :cond_0
    sget-object v1, Lcom/huawei/game/gamekit/c;->e:Lcom/huawei/game/gamekit/c;
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

.method public static synthetic c()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lcom/huawei/game/gamekit/c;->f:Ljava/lang/Object;

    return-object v0
.end method

.method public static synthetic c(Lcom/huawei/game/gamekit/c;)Ljava/lang/String;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/huawei/game/gamekit/c;->m:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic d(Lcom/huawei/game/gamekit/c;)Lcom/huawei/game/gamekit/GameManager$GameCallBack;
    .locals 0

    iget-object p0, p0, Lcom/huawei/game/gamekit/c;->k:Lcom/huawei/game/gamekit/GameManager$GameCallBack;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 4

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "reportData package:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/huawei/game/gamekit/c;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GameKit"

    invoke-static {v1, v0}, Lcom/huawei/game/gamekit/b/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/huawei/game/gamekit/c;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/huawei/game/gamekit/c;->o:Ljava/lang/String;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/huawei/game/gamekit/c;->j:Lcom/huawei/game/gamekit/a/g;

    invoke-interface {v0, p1, v1}, Lcom/huawei/game/gamekit/a/g;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/game/gamekit/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/game/gamekit/c;->m:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/huawei/game/gamekit/a/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "1&&"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/huawei/game/gamekit/c;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/huawei/game/gamekit/c;->n:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "&&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0xbbd

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    sget p1, Lcom/huawei/game/gamekit/c;->g:I

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1}, Landroid/rms/iaware/IAwareSdkCore;->handleEvent(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "reportData result: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "GameKit"

    invoke-static {v1, p1}, Lcom/huawei/game/gamekit/b/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final a(Ljava/lang/String;Lcom/huawei/game/gamekit/GameManager$GameCallBack;)Z
    .locals 4

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "GameKit"

    if-nez v0, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/huawei/game/gamekit/c;->k:Lcom/huawei/game/gamekit/GameManager$GameCallBack;

    iput-object p1, p0, Lcom/huawei/game/gamekit/c;->m:Ljava/lang/String;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p2

    iput p2, p0, Lcom/huawei/game/gamekit/c;->n:I

    iget-object p2, p0, Lcom/huawei/game/gamekit/c;->l:Lcom/huawei/game/gamekit/c$a;

    if-nez p2, :cond_1

    new-instance p2, Lcom/huawei/game/gamekit/c$a;

    invoke-direct {p2, p0}, Lcom/huawei/game/gamekit/c$a;-><init>(Lcom/huawei/game/gamekit/c;)V

    iput-object p2, p0, Lcom/huawei/game/gamekit/c;->l:Lcom/huawei/game/gamekit/c$a;

    const-string p2, "need create SdkCallback"

    invoke-static {v2, p2}, Lcom/huawei/game/gamekit/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object p2, p0, Lcom/huawei/game/gamekit/c;->l:Lcom/huawei/game/gamekit/c$a;

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    sget p1, Lcom/huawei/game/gamekit/c;->h:I

    invoke-static {p1, v0, v3}, Landroid/rms/iaware/IAwareSdkCore;->handleEvent(ILandroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "remote registerSdkCallback return:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "reply:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/huawei/game/gamekit/b/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-lez p2, :cond_2

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1

    :cond_3
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "package "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " register failed: invalid params"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/huawei/game/gamekit/b/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method
