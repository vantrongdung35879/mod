.class public interface abstract Lcom/centauri/http/core/HttpHandler;
.super Ljava/lang/Object;
.source "HttpHandler.java"


# virtual methods
.method public abstract onHttpEnd(Lcom/centauri/http/core/Request;Lcom/centauri/http/core/Response;)V
.end method

.method public abstract onHttpRetry(IILcom/centauri/http/core/Request;Lcom/centauri/http/core/Response;)V
.end method

.method public abstract onHttpStart(Lcom/centauri/http/core/Request;)V
.end method
