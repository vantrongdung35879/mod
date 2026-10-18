.class public Lcom/centauri/http/core/MainThreadDelivery;
.super Ljava/lang/Object;
.source "MainThreadDelivery.java"

# interfaces
.implements Lcom/centauri/http/core/Delivery;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/centauri/http/core/MainThreadDelivery$MainThreadExecutor;
    }
.end annotation


# instance fields
.field private executor:Lcom/centauri/http/core/MainThreadDelivery$MainThreadExecutor;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/centauri/http/core/MainThreadDelivery$MainThreadExecutor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/centauri/http/core/MainThreadDelivery$MainThreadExecutor;-><init>(Lcom/centauri/http/core/MainThreadDelivery$1;)V

    iput-object v0, p0, Lcom/centauri/http/core/MainThreadDelivery;->executor:Lcom/centauri/http/core/MainThreadDelivery$MainThreadExecutor;

    return-void
.end method


# virtual methods
.method public deliverResult(Lcom/centauri/http/core/Response;Lcom/centauri/http/core/Callback;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/centauri/http/core/MainThreadDelivery;->executor:Lcom/centauri/http/core/MainThreadDelivery$MainThreadExecutor;

    new-instance v1, Lcom/centauri/http/core/MainThreadDelivery$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/centauri/http/core/MainThreadDelivery$1;-><init>(Lcom/centauri/http/core/MainThreadDelivery;Lcom/centauri/http/core/Callback;Lcom/centauri/http/core/Response;)V

    invoke-virtual {v0, v1}, Lcom/centauri/http/core/MainThreadDelivery$MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
