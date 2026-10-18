.class public interface abstract Lcom/centauri/http/core/Call;
.super Ljava/lang/Object;
.source "Call.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/centauri/http/core/Call$Factory;
    }
.end annotation


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract enqueue(Lcom/centauri/http/core/Callback;)V
.end method

.method public abstract enqueueWithNoCustomInterceptor(Lcom/centauri/http/core/Callback;)V
.end method

.method public abstract execute()Lcom/centauri/http/core/Response;
.end method

.method public abstract executeWithAllCustomInterceptor()Lcom/centauri/http/core/Response;
.end method

.method public abstract executeWithNoCustomInterceptor()Lcom/centauri/http/core/Response;
.end method

.method public abstract isCanceled()Z
.end method

.method public abstract isExecuted()Z
.end method
