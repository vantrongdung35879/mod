.class final Lcom/tencent/itop/httpdns/a/d$1;
.super Ljava/lang/Object;
.source "HttpDnsCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/itop/httpdns/a/d;->a(Ljava/lang/String;Lcom/tencent/itop/httpdns/a/b/a/b;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/itop/httpdns/a/d$a;


# direct methods
.method constructor <init>(Lcom/tencent/itop/httpdns/a/d$a;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/tencent/itop/httpdns/a/d$1;->a:Lcom/tencent/itop/httpdns/a/d$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 36
    invoke-static {}, Lcom/tencent/itop/httpdns/a/d;->b()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/itop/httpdns/a/d$1;->a:Lcom/tencent/itop/httpdns/a/d$a;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
