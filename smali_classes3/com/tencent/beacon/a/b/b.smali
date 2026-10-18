.class Lcom/tencent/beacon/a/b/b;
.super Ljava/lang/Object;
.source "AbstractAttaReport.java"

# interfaces
.implements Lcom/tencent/beacon/base/net/call/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/beacon/a/b/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/beacon/base/net/call/Callback<",
        "Lcom/tencent/beacon/base/net/BResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/Throwable;

.field final synthetic d:Lcom/tencent/beacon/a/b/g;


# direct methods
.method constructor <init>(Lcom/tencent/beacon/a/b/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/beacon/a/b/b;->d:Lcom/tencent/beacon/a/b/g;

    iput-object p2, p0, Lcom/tencent/beacon/a/b/b;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/beacon/a/b/b;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/beacon/a/b/b;->c:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/beacon/base/net/BResponse;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "net ret: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tencent/beacon/base/net/BResponse;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AttaReport"

    invoke-static {v1, p1, v0}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onFailure(Lcom/tencent/beacon/base/net/d;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/tencent/beacon/a/b/b;->d:Lcom/tencent/beacon/a/b/g;

    iget-object v0, p0, Lcom/tencent/beacon/a/b/b;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/beacon/a/b/b;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/beacon/a/b/b;->c:Ljava/lang/Throwable;

    invoke-static {p1, v0, v1, v2}, Lcom/tencent/beacon/a/b/g;->a(Lcom/tencent/beacon/a/b/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/beacon/base/net/NetException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/tencent/beacon/base/net/BResponse;

    invoke-virtual {p0, p1}, Lcom/tencent/beacon/a/b/b;->a(Lcom/tencent/beacon/base/net/BResponse;)V

    return-void
.end method
