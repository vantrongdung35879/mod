.class public final Lcom/tencent/itop/httpdns/a/c/b;
.super Ljava/lang/Object;
.source "DnsStatWrapper.java"

# interfaces
.implements Lcom/tencent/itop/httpdns/a/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/tencent/itop/httpdns/a/b/c/a;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/tencent/itop/httpdns/a/b/a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public a:I

.field private b:Lcom/tencent/itop/httpdns/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/itop/httpdns/a/b/a<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tencent/itop/httpdns/a/b/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/itop/httpdns/a/b/a<",
            "TT;>;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/tencent/itop/httpdns/a/c/b;->a:I

    if-eqz p1, :cond_0

    .line 22
    iput-object p1, p0, Lcom/tencent/itop/httpdns/a/c/b;->b:Lcom/tencent/itop/httpdns/a/b/a;

    return-void

    .line 20
    :cond_0
    new-instance p1, Lcom/tencent/itop/httpdns/base/a;

    const-string v0, "realDns == null"

    invoke-direct {p1, v0}, Lcom/tencent/itop/httpdns/base/a;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/tencent/itop/httpdns/a/b/c/a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 28
    iget-object v2, p0, Lcom/tencent/itop/httpdns/a/c/b;->b:Lcom/tencent/itop/httpdns/a/b/a;

    invoke-interface {v2, p1}, Lcom/tencent/itop/httpdns/a/b/a;->a(Ljava/lang/String;)Lcom/tencent/itop/httpdns/a/b/c/a;

    move-result-object p1

    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    long-to-int v0, v2

    iput v0, p0, Lcom/tencent/itop/httpdns/a/c/b;->a:I

    return-object p1
.end method
