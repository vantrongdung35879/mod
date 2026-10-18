.class final Lcom/huawei/game/gamekit/c$a;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/game/gamekit/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# static fields
.field private static final b:Ljava/lang/String; = "com.huawei.iaware.sdk.ISDKCallbak"

.field private static final c:I = 0x1

.field private static final d:I = 0x2

.field private static final e:I = 0x3


# instance fields
.field final synthetic a:Lcom/huawei/game/gamekit/c;


# direct methods
.method public constructor <init>(Lcom/huawei/game/gamekit/c;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/game/gamekit/c$a;->a:Lcom/huawei/game/gamekit/c;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string p1, "com.huawei.iaware.sdk.ISDKCallbak"

    invoke-virtual {p0, p0, p1}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Landroid/os/Parcel;)Z
    .locals 3

    :try_start_0
    const-string v0, "com.huawei.iaware.sdk.ISDKCallbak"

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Lcom/huawei/game/gamekit/b/b;->a()Lcom/huawei/game/gamekit/b/b;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    iget-object v0, v0, Lcom/huawei/game/gamekit/b/b;->b:Lcom/huawei/devices/hapticskit/b;

    const-string v1, "HapticsUtil"

    if-nez v0, :cond_0

    const-string p0, "HapticsUtil mHapticsAdapter is null"

    invoke-static {v1, p0}, Lcom/huawei/game/gamekit/b/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p0}, Lcom/huawei/devices/hapticskit/b;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "setVibrationLevel Success:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/huawei/game/gamekit/b/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    if-lez p1, :cond_5

    const v0, 0xffffff

    if-gt p1, v0, :cond_5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    return v1

    :cond_0
    invoke-static {p2}, Lcom/huawei/game/gamekit/c$a;->a(Landroid/os/Parcel;)Z

    goto/16 :goto_0

    :cond_1
    :try_start_0
    const-string p1, "com.huawei.iaware.sdk.ISDKCallbak"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Lcom/huawei/game/gamekit/c;->c()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_1
    iget-object p4, p0, Lcom/huawei/game/gamekit/c$a;->a:Lcom/huawei/game/gamekit/c;

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p4, p2}, Lcom/huawei/game/gamekit/c;->a(Lcom/huawei/game/gamekit/c;Ljava/lang/String;)Ljava/lang/String;

    const-string p2, "GameKit"

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v2, "SdkCallback IAware Version is "

    invoke-direct {p4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/huawei/game/gamekit/c$a;->a:Lcom/huawei/game/gamekit/c;

    invoke-static {v2}, Lcom/huawei/game/gamekit/c;->a(Lcom/huawei/game/gamekit/c;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p2, p4}, Lcom/huawei/game/gamekit/b/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p3, :cond_2

    const-string p1, "1.0.0.400"

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    :cond_2
    const-string p1, "GameKit"

    const-string p2, "SdkCallback cannot input kit version"

    invoke-static {p1, p2}, Lcom/huawei/game/gamekit/b/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :catchall_0
    move-exception p2

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p2

    :catch_0
    return v1

    :cond_3
    :try_start_3
    const-string p1, "com.huawei.iaware.sdk.ISDKCallbak"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/huawei/game/gamekit/c;->c()Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    :try_start_4
    iget-object p3, p0, Lcom/huawei/game/gamekit/c$a;->a:Lcom/huawei/game/gamekit/c;

    invoke-static {p3}, Lcom/huawei/game/gamekit/c;->a(Lcom/huawei/game/gamekit/c;)Ljava/lang/String;

    move-result-object p3

    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    iget-object p2, p0, Lcom/huawei/game/gamekit/c$a;->a:Lcom/huawei/game/gamekit/c;

    invoke-static {p2}, Lcom/huawei/game/gamekit/c;->b(Lcom/huawei/game/gamekit/c;)Lcom/huawei/game/gamekit/a/g;

    move-result-object p2

    invoke-interface {p2, p1, p3}, Lcom/huawei/game/gamekit/a/g;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/game/gamekit/a/e;

    move-result-object p2

    iget-object p3, p0, Lcom/huawei/game/gamekit/c$a;->a:Lcom/huawei/game/gamekit/c;

    invoke-static {p3}, Lcom/huawei/game/gamekit/c;->c(Lcom/huawei/game/gamekit/c;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3, p1}, Lcom/huawei/game/gamekit/a/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/huawei/game/gamekit/c$a;->a:Lcom/huawei/game/gamekit/c;

    invoke-static {p2}, Lcom/huawei/game/gamekit/c;->d(Lcom/huawei/game/gamekit/c;)Lcom/huawei/game/gamekit/GameManager$GameCallBack;

    move-result-object p2

    if-eqz p2, :cond_4

    const-string p2, "GameKit"

    const-string p3, "SdkCallback onPhoneInfoUpdated"

    invoke-static {p2, p3}, Lcom/huawei/game/gamekit/b/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/huawei/game/gamekit/c$a;->a:Lcom/huawei/game/gamekit/c;

    invoke-static {p2}, Lcom/huawei/game/gamekit/c;->d(Lcom/huawei/game/gamekit/c;)Lcom/huawei/game/gamekit/GameManager$GameCallBack;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/huawei/game/gamekit/GameManager$GameCallBack;->onPhoneInfoUpdated(Ljava/lang/String;)V

    :cond_4
    return v0

    :catchall_1
    move-exception p1

    :try_start_5
    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p1

    :catch_1
    return v1

    :cond_5
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1
.end method
