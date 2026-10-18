.class public Lcom/perfsight/apm/e/f;
.super Landroid/app/Service;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfsight/apm/e/f$a;
    }
.end annotation


# static fields
.field static a:Z = false


# instance fields
.field private b:Lcom/perfsight/apm/e/f$a;

.field private final c:Ljava/util/Random;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/perfsight/apm/e/f$a;

    invoke-direct {v0, p0}, Lcom/perfsight/apm/e/f$a;-><init>(Lcom/perfsight/apm/e/f;)V

    iput-object v0, p0, Lcom/perfsight/apm/e/f;->b:Lcom/perfsight/apm/e/f$a;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/perfsight/apm/e/f;->c:Ljava/util/Random;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "ResidentService -> onBind, Thread: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/perfsight/apm/utils/p;->c(Ljava/lang/String;)V

    sget-boolean p1, Lcom/perfsight/apm/e/f;->a:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    sput-boolean p1, Lcom/perfsight/apm/e/f;->a:Z

    new-instance p1, Lcom/perfsight/apm/e/e;

    invoke-direct {p1, p0, p0}, Lcom/perfsight/apm/e/e;-><init>(Lcom/perfsight/apm/e/f;Landroid/content/Context;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_0
    iget-object p1, p0, Lcom/perfsight/apm/e/f;->b:Lcom/perfsight/apm/e/f$a;

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ResidentService -> onCreate, Thread: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/perfsight/apm/utils/p;->c(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    const-string v0, "ResidentService onDestroy"

    invoke-static {v0}, Lcom/perfsight/apm/utils/p;->e(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const/4 p1, 0x2

    return p1
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 0

    const-string p1, "ResidentService onUnbind"

    invoke-static {p1}, Lcom/perfsight/apm/utils/p;->e(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
