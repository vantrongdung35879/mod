.class public Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks$Listener;
    }
.end annotation


# static fields
.field public static final CHECK_DELAY:J = 0x1f4L

.field private static final TAG:Ljava/lang/String; = "MGPA-ForegroundCallbacks"

.field private static instance:Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks;


# instance fields
.field private check:Ljava/lang/Runnable;

.field private foreground:Z

.field private final handler:Landroid/os/Handler;

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private paused:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks;->foreground:Z

    .line 12
    iput-boolean v0, p0, Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks;->paused:Z

    .line 13
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks;->handler:Landroid/os/Handler;

    .line 14
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks;->listeners:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks;->foreground:Z

    return p0
.end method

.method static synthetic access$002(Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks;->foreground:Z

    return p1
.end method

.method static synthetic access$100(Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks;->paused:Z

    return p0
.end method

.method static synthetic access$200(Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks;->listeners:Ljava/util/List;

    return-object p0
.end method

.method public static destroy(Landroid/app/Application;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks;->instance:Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 3
    sget-object p0, Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks;->instance:Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks;

    iget-object p0, p0, Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks;->listeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public static destroy(Landroid/content/Context;)V
    .locals 1

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 5
    instance-of v0, p0, Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 6
    check-cast p0, Landroid/app/Application;

    invoke-static {p0}, Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks;->destroy(Landroid/app/Application;)V

    :cond_0
    return-void
.end method

.method public static get(Landroid/app/Application;)Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks;
    .locals 1

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks;->instance:Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks;->init(Landroid/app/Application;)Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks;

    .line 4
    :cond_0
    sget-object p0, Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks;->instance:Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks;

    return-object p0
.end method

.method public static get(Landroid/content/Context;)Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks;
    .locals 1

    .line 5
    sget-object v0, Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks;->instance:Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks;

    if-nez v0, :cond_1

    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 7
    instance-of v0, p0, Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 8
    check-cast p0, Landroid/app/Application;

    invoke-static {p0}, Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks;->init(Landroid/app/Application;)Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks;

    goto :goto_0

    .line 10
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Foreground is not initialised and cannot obtain the Application object"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 15
    :cond_1
    :goto_0
    sget-object p0, Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks;->instance:Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks;

    return-object p0
.end method

.method public static init(Landroid/app/Application;)Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks;
    .locals 1

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks;->instance:Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks;

    invoke-direct {v0}, Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks;-><init>()V

    sput-object v0, Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks;->instance:Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks;

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 5
    :cond_0
    sget-object p0, Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks;->instance:Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks;

    return-object p0
.end method


# virtual methods
.method public addListener(Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks$Listener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public isBackground()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks;->foreground:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isForeground()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks;->foreground:Z

    return v0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 3

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks;->paused:Z

    .line 2
    iget-object p1, p0, Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks;->check:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks$1;

    invoke-direct {v0, p0}, Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks$1;-><init>(Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks;)V

    iput-object v0, p0, Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks;->check:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 4

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks;->paused:Z

    .line 2
    iget-boolean p1, p0, Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks;->foreground:Z

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks;->foreground:Z

    .line 4
    iget-object v0, p0, Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks;->check:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 5
    iget-object v1, p0, Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    const-string v0, "MGPA-ForegroundCallbacks"

    if-nez p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks;->listeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks$Listener;

    .line 9
    :try_start_0
    invoke-interface {v1}, Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks$Listener;->onBecameForeground()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Listener threw exception!:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_1
    const-string/jumbo p1, "still foreground"

    invoke-static {v0, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public removeListener(Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks$Listener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
