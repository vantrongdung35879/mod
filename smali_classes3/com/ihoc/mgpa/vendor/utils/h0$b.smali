.class public final Lcom/ihoc/mgpa/vendor/utils/h0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ihoc/mgpa/vendor/utils/h0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lcom/ihoc/mgpa/vendor/utils/h0;


# direct methods
.method public constructor <init>(Lcom/ihoc/mgpa/vendor/utils/h0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ihoc/mgpa/vendor/utils/h0$b;->a:Lcom/ihoc/mgpa/vendor/utils/h0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ihoc/mgpa/vendor/utils/h0;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/ihoc/mgpa/vendor/utils/h0$b;-><init>(Lcom/ihoc/mgpa/vendor/utils/h0;)V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    iget-object p1, p0, Lcom/ihoc/mgpa/vendor/utils/h0$b;->a:Lcom/ihoc/mgpa/vendor/utils/h0;

    .line 1
    iget-object v0, p1, Lcom/ihoc/mgpa/vendor/utils/h0;->b:Ljava/lang/String;

    .line 2
    sput-object v0, Lcom/ihoc/mgpa/vendor/utils/e0$a;->a:Ljava/lang/String;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/ihoc/mgpa/vendor/utils/e0;

    if-eqz v1, :cond_1

    move-object p2, v0

    check-cast p2, Lcom/ihoc/mgpa/vendor/utils/e0;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/ihoc/mgpa/vendor/utils/e0$a$a;

    invoke-direct {v0, p2}, Lcom/ihoc/mgpa/vendor/utils/e0$a$a;-><init>(Landroid/os/IBinder;)V

    move-object p2, v0

    .line 4
    :goto_0
    iput-object p2, p1, Lcom/ihoc/mgpa/vendor/utils/h0;->e:Lcom/ihoc/mgpa/vendor/utils/e0;

    .line 5
    iget-object p1, p0, Lcom/ihoc/mgpa/vendor/utils/h0$b;->a:Lcom/ihoc/mgpa/vendor/utils/h0;

    .line 6
    iget-object p2, p1, Lcom/ihoc/mgpa/vendor/utils/h0;->e:Lcom/ihoc/mgpa/vendor/utils/e0;

    if-eqz p2, :cond_2

    .line 7
    :try_start_0
    const-string v0, "binder action: %s , aidl version: %s"

    .line 8
    iget-object p1, p1, Lcom/ihoc/mgpa/vendor/utils/h0;->a:Ljava/lang/String;

    .line 9
    invoke-interface {p2}, Lcom/ihoc/mgpa/vendor/utils/e0;->getInterfaceVersion()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->print(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/ihoc/mgpa/vendor/utils/h0$b;->a:Lcom/ihoc/mgpa/vendor/utils/h0;

    .line 10
    iget-object v0, p2, Lcom/ihoc/mgpa/vendor/utils/h0;->e:Lcom/ihoc/mgpa/vendor/utils/e0;

    .line 11
    iget-object p2, p2, Lcom/ihoc/mgpa/vendor/utils/h0;->f:Landroid/os/Binder;

    .line 12
    invoke-interface {v0, p2}, Lcom/ihoc/mgpa/vendor/utils/e0;->a(Landroid/os/Binder;)V

    iget-object p2, p0, Lcom/ihoc/mgpa/vendor/utils/h0$b;->a:Lcom/ihoc/mgpa/vendor/utils/h0;

    .line 13
    iget-object p2, p2, Lcom/ihoc/mgpa/vendor/utils/h0;->e:Lcom/ihoc/mgpa/vendor/utils/e0;

    .line 14
    invoke-interface {p2, p1}, Lcom/ihoc/mgpa/vendor/utils/e0;->setForeground(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string/jumbo p1, "vendor binder run remote exception!"

    invoke-static {p1}, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->error(Ljava/lang/String;)V

    :goto_1
    iget-object p1, p0, Lcom/ihoc/mgpa/vendor/utils/h0$b;->a:Lcom/ihoc/mgpa/vendor/utils/h0;

    .line 15
    iget-object p2, p1, Lcom/ihoc/mgpa/vendor/utils/h0;->c:Landroid/app/Application;

    .line 16
    iget-object p1, p1, Lcom/ihoc/mgpa/vendor/utils/h0;->h:Lcom/ihoc/mgpa/vendor/utils/h0$a;

    .line 17
    invoke-virtual {p2, p1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iget-object p1, p0, Lcom/ihoc/mgpa/vendor/utils/h0$b;->a:Lcom/ihoc/mgpa/vendor/utils/h0;

    .line 18
    iget-object p1, p1, Lcom/ihoc/mgpa/vendor/utils/h0;->d:Lcom/ihoc/mgpa/vendor/utils/z;

    if-eqz p1, :cond_2

    .line 19
    invoke-interface {p1}, Lcom/ihoc/mgpa/vendor/utils/z;->bindCallBack()V

    :cond_2
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string/jumbo v0, "vendor binder ipc disconnected!"

    invoke-static {v0, p1}, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->print(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/ihoc/mgpa/vendor/utils/h0$b;->a:Lcom/ihoc/mgpa/vendor/utils/h0;

    const/4 v0, 0x0

    .line 1
    iput-object v0, p1, Lcom/ihoc/mgpa/vendor/utils/h0;->e:Lcom/ihoc/mgpa/vendor/utils/e0;

    .line 2
    iget-object v0, p1, Lcom/ihoc/mgpa/vendor/utils/h0;->c:Landroid/app/Application;

    .line 3
    iget-object p1, p1, Lcom/ihoc/mgpa/vendor/utils/h0;->h:Lcom/ihoc/mgpa/vendor/utils/h0$a;

    .line 4
    invoke-virtual {v0, p1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method
