.class public interface abstract Lcom/centauri/http/core/INetworkManager;
.super Ljava/lang/Object;
.source "INetworkManager.java"

# interfaces
.implements Lcom/centauri/http/core/Call$Factory;


# virtual methods
.method public abstract addFistInterceptor(Lcom/centauri/http/core/Interceptor;)V
.end method

.method public abstract addHttpHandler(Lcom/centauri/http/core/HttpHandler;)V
.end method

.method public abstract addLastInterceptor(Lcom/centauri/http/core/Interceptor;)V
.end method

.method public abstract cancelAllRequest()V
.end method

.method public abstract cancelRequestByName(Ljava/lang/String;)V
.end method

.method public abstract delivery()Lcom/centauri/http/core/Delivery;
.end method

.method public abstract dispatcher()Lcom/centauri/http/core/Dispatcher;
.end method

.method public abstract getAllInterceptors()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/centauri/http/core/Interceptor;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBuiltinInterceptors()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/centauri/http/core/Interceptor;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDefaultMaxRetryTimes()I
.end method

.method public abstract registerAsyncHttpCall(Lcom/centauri/http/core/ExecutableCall;)V
.end method

.method public abstract setDefaultMaxRetryTimes(I)V
.end method

.method public abstract setDelivery(Lcom/centauri/http/core/Delivery;)V
.end method

.method public abstract unregisterAsyncHttpCall(Lcom/centauri/http/core/ExecutableCall;)V
.end method
