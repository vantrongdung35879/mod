.class public Lcom/tencent/itop/httpdns/a/b/c/a;
.super Ljava/lang/Object;
.source "DnsResponse.java"


# instance fields
.field protected c:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/itop/httpdns/a/b/c/a;->c:[Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 17
    iput-object p1, p0, Lcom/tencent/itop/httpdns/a/b/c/a;->c:[Ljava/lang/String;

    :cond_0
    return-void
.end method
