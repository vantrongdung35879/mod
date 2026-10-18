.class public final Lcom/tencent/itop/httpdns/base/log/c;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/itop/httpdns/base/log/ILogNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/itop/httpdns/base/log/c;->a:Ljava/util/List;

    .line 11
    new-instance v1, Lcom/tencent/itop/httpdns/base/log/a;

    invoke-direct {v1}, Lcom/tencent/itop/httpdns/base/log/a;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 21
    sget-object v0, Lcom/tencent/itop/httpdns/base/log/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/itop/httpdns/base/log/ILogNode;

    .line 22
    invoke-interface {v1, p0, p1, p2, p3}, Lcom/tencent/itop/httpdns/base/log/ILogNode;->println(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static a(Lcom/tencent/itop/httpdns/base/log/ILogNode;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 16
    sget-object v0, Lcom/tencent/itop/httpdns/base/log/c;->a:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
