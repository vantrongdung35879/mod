.class Lcom/centauri/http/core/MainThreadDelivery$1;
.super Ljava/lang/Object;
.source "MainThreadDelivery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/centauri/http/core/MainThreadDelivery;->deliverResult(Lcom/centauri/http/core/Response;Lcom/centauri/http/core/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/centauri/http/core/MainThreadDelivery;

.field final synthetic val$callback:Lcom/centauri/http/core/Callback;

.field final synthetic val$response:Lcom/centauri/http/core/Response;


# direct methods
.method constructor <init>(Lcom/centauri/http/core/MainThreadDelivery;Lcom/centauri/http/core/Callback;Lcom/centauri/http/core/Response;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/centauri/http/core/MainThreadDelivery$1;->this$0:Lcom/centauri/http/core/MainThreadDelivery;

    iput-object p2, p0, Lcom/centauri/http/core/MainThreadDelivery$1;->val$callback:Lcom/centauri/http/core/Callback;

    iput-object p3, p0, Lcom/centauri/http/core/MainThreadDelivery$1;->val$response:Lcom/centauri/http/core/Response;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/centauri/http/core/MainThreadDelivery$1;->val$callback:Lcom/centauri/http/core/Callback;

    iget-object v1, p0, Lcom/centauri/http/core/MainThreadDelivery$1;->val$response:Lcom/centauri/http/core/Response;

    invoke-interface {v0, v1}, Lcom/centauri/http/core/Callback;->onResponse(Lcom/centauri/http/core/Response;)V

    return-void
.end method
