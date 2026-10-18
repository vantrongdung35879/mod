.class public final Lcom/ihoc/mgpa/vendor/utils/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ihoc/mgpa/vendor/utils/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/ihoc/mgpa/vendor/utils/e;


# direct methods
.method public constructor <init>(Lcom/ihoc/mgpa/vendor/utils/e;)V
    .locals 0

    iput-object p1, p0, Lcom/ihoc/mgpa/vendor/utils/e$b;->a:Lcom/ihoc/mgpa/vendor/utils/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBindingDied(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "CosaService"

    const-string v0, "game service onBindingDied"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/ihoc/mgpa/vendor/utils/e$b;->a:Lcom/ihoc/mgpa/vendor/utils/e;

    const/4 v0, 0x0

    .line 1
    iput-object v0, p1, Lcom/ihoc/mgpa/vendor/utils/e;->a:Lcom/ihoc/mgpa/vendor/utils/i;

    .line 2
    iget-object p1, p1, Lcom/ihoc/mgpa/vendor/utils/e;->b:Lcom/ihoc/mgpa/vendor/utils/l;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/ihoc/mgpa/vendor/utils/l;->a()V

    :cond_0
    return-void
.end method

.method public final onNullBinding(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "CosaService"

    const-string v0, "game service onNullBinding"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/ihoc/mgpa/vendor/utils/e$b;->a:Lcom/ihoc/mgpa/vendor/utils/e;

    const/4 v0, 0x0

    .line 1
    iput-object v0, p1, Lcom/ihoc/mgpa/vendor/utils/e;->a:Lcom/ihoc/mgpa/vendor/utils/i;

    .line 2
    iget-object p1, p1, Lcom/ihoc/mgpa/vendor/utils/e;->b:Lcom/ihoc/mgpa/vendor/utils/l;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/ihoc/mgpa/vendor/utils/l;->a()V

    :cond_0
    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const-string p1, "game service connect!"

    const-string v0, "CosaService"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/ihoc/mgpa/vendor/utils/e$b;->a:Lcom/ihoc/mgpa/vendor/utils/e;

    sget v1, Lcom/ihoc/mgpa/vendor/utils/i$a;->a:I

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 1
    :cond_0
    const-string v1, "com.oplus.cosa.gamemanagersdk.ICosaGameSdkService"

    invoke-interface {p2, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_1

    instance-of v2, v1, Lcom/ihoc/mgpa/vendor/utils/i;

    if-eqz v2, :cond_1

    move-object p2, v1

    check-cast p2, Lcom/ihoc/mgpa/vendor/utils/i;

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/ihoc/mgpa/vendor/utils/i$a$a;

    invoke-direct {v1, p2}, Lcom/ihoc/mgpa/vendor/utils/i$a$a;-><init>(Landroid/os/IBinder;)V

    move-object p2, v1

    .line 2
    :goto_0
    iput-object p2, p1, Lcom/ihoc/mgpa/vendor/utils/e;->a:Lcom/ihoc/mgpa/vendor/utils/i;

    .line 3
    iget-object p1, p0, Lcom/ihoc/mgpa/vendor/utils/e$b;->a:Lcom/ihoc/mgpa/vendor/utils/e;

    invoke-static {p1}, Lcom/ihoc/mgpa/vendor/utils/e;->a(Lcom/ihoc/mgpa/vendor/utils/e;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "game service register callback ok!"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object p1, p0, Lcom/ihoc/mgpa/vendor/utils/e$b;->a:Lcom/ihoc/mgpa/vendor/utils/e;

    .line 4
    iget-object p1, p1, Lcom/ihoc/mgpa/vendor/utils/e;->b:Lcom/ihoc/mgpa/vendor/utils/l;

    if-eqz p1, :cond_3

    .line 5
    invoke-interface {p1}, Lcom/ihoc/mgpa/vendor/utils/l;->b()V

    :cond_3
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "CosaService"

    const-string v0, "game service disconnect"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/ihoc/mgpa/vendor/utils/e$b;->a:Lcom/ihoc/mgpa/vendor/utils/e;

    const/4 v0, 0x0

    .line 1
    iput-object v0, p1, Lcom/ihoc/mgpa/vendor/utils/e;->a:Lcom/ihoc/mgpa/vendor/utils/i;

    .line 2
    iget-object p1, p1, Lcom/ihoc/mgpa/vendor/utils/e;->b:Lcom/ihoc/mgpa/vendor/utils/l;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/ihoc/mgpa/vendor/utils/l;->a()V

    :cond_0
    return-void
.end method
