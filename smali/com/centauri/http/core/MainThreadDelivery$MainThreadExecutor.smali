.class Lcom/centauri/http/core/MainThreadDelivery$MainThreadExecutor;
.super Ljava/lang/Object;
.source "MainThreadDelivery.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/centauri/http/core/MainThreadDelivery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MainThreadExecutor"
.end annotation


# instance fields
.field private final handler:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/centauri/http/core/MainThreadDelivery$MainThreadExecutor;->handler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/centauri/http/core/MainThreadDelivery$1;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/centauri/http/core/MainThreadDelivery$MainThreadExecutor;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/centauri/http/core/MainThreadDelivery$MainThreadExecutor;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
