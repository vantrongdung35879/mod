.class public Lcom/centauri/oversea/newnetwork/http/NewNetLog;
.super Ljava/lang/Object;
.source "NewNetLog.java"

# interfaces
.implements Lcom/centauri/http/core/IHttpLog;


# instance fields
.field private isLog:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/centauri/oversea/newnetwork/http/NewNetLog;->isLog:Z

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 20
    iget-boolean v0, p0, Lcom/centauri/oversea/newnetwork/http/NewNetLog;->isLog:Z

    if-eqz v0, :cond_0

    .line 21
    invoke-static {p1, p2}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-static {p1, p2}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 27
    iget-boolean v0, p0, Lcom/centauri/oversea/newnetwork/http/NewNetLog;->isLog:Z

    if-eqz v0, :cond_0

    .line 28
    invoke-static {p1, p2}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setLogEnable(Z)V
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/centauri/oversea/newnetwork/http/NewNetLog;->isLog:Z

    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 34
    iget-boolean v0, p0, Lcom/centauri/oversea/newnetwork/http/NewNetLog;->isLog:Z

    if-eqz v0, :cond_0

    .line 35
    invoke-static {p1, p2}, Lcom/centauri/comm/CTILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
