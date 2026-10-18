.class public Lcom/centauri/http/core/HttpLog;
.super Ljava/lang/Object;
.source "HttpLog.java"


# static fields
.field static httpLogInterface:Lcom/centauri/http/core/IHttpLog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 20
    sget-object v0, Lcom/centauri/http/core/HttpLog;->httpLogInterface:Lcom/centauri/http/core/IHttpLog;

    if-eqz v0, :cond_0

    .line 21
    invoke-interface {v0, p0, p1}, Lcom/centauri/http/core/IHttpLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 14
    sget-object v0, Lcom/centauri/http/core/HttpLog;->httpLogInterface:Lcom/centauri/http/core/IHttpLog;

    if-eqz v0, :cond_0

    .line 15
    invoke-interface {v0, p0, p1}, Lcom/centauri/http/core/IHttpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 26
    sget-object v0, Lcom/centauri/http/core/HttpLog;->httpLogInterface:Lcom/centauri/http/core/IHttpLog;

    if-eqz v0, :cond_0

    .line 27
    invoke-interface {v0, p0, p1}, Lcom/centauri/http/core/IHttpLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 32
    sget-object v0, Lcom/centauri/http/core/HttpLog;->httpLogInterface:Lcom/centauri/http/core/IHttpLog;

    if-eqz v0, :cond_0

    .line 33
    invoke-interface {v0, p0, p1}, Lcom/centauri/http/core/IHttpLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
