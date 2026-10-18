.class public final Lcom/tencent/itop/httpdns/base/b/c;
.super Ljava/lang/Object;
.source "ReportManager.java"


# static fields
.field private static a:I = -0x1

.field private static b:Lcom/tencent/itop/httpdns/base/b/b;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(II)V
    .locals 5

    .line 18
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const-string v0, "ReportManager.init(%d, %d) called."

    invoke-static {v0, v3}, Lcom/tencent/itop/httpdns/base/log/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    if-ne v2, p0, :cond_0

    .line 20
    new-instance p0, Lcom/tencent/itop/httpdns/base/b/d;

    invoke-direct {p0}, Lcom/tencent/itop/httpdns/base/b/d;-><init>()V

    sput-object p0, Lcom/tencent/itop/httpdns/base/b/c;->b:Lcom/tencent/itop/httpdns/base/b/b;

    .line 21
    sput p1, Lcom/tencent/itop/httpdns/base/b/c;->a:I

    goto :goto_0

    .line 23
    :cond_0
    new-instance p0, Lcom/tencent/itop/httpdns/base/b/a;

    invoke-direct {p0}, Lcom/tencent/itop/httpdns/base/b/a;-><init>()V

    sput-object p0, Lcom/tencent/itop/httpdns/base/b/c;->b:Lcom/tencent/itop/httpdns/base/b/b;

    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 28
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string v1, "ReportManager.report(%s) called."

    invoke-static {v1, v0}, Lcom/tencent/itop/httpdns/base/log/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    sget-object v0, Lcom/tencent/itop/httpdns/base/b/c;->b:Lcom/tencent/itop/httpdns/base/b/b;

    instance-of v1, v0, Lcom/tencent/itop/httpdns/base/b/d;

    if-eqz v1, :cond_0

    .line 30
    new-instance v1, Lcom/tencent/itop/httpdns/base/b/d$a;

    sget v2, Lcom/tencent/itop/httpdns/base/b/c;->a:I

    invoke-direct {v1, v2}, Lcom/tencent/itop/httpdns/base/b/d$a;-><init>(I)V

    invoke-interface {v0, p0, p1, v1}, Lcom/tencent/itop/httpdns/base/b/b;->a(Ljava/lang/String;Ljava/util/Map;Lcom/tencent/itop/httpdns/base/b/b$a;)Z

    goto :goto_0

    .line 32
    :cond_0
    sget-object v1, Lcom/tencent/itop/httpdns/base/b/b$a;->a:Lcom/tencent/itop/httpdns/base/b/b$a;

    invoke-interface {v0, p0, p1, v1}, Lcom/tencent/itop/httpdns/base/b/b;->a(Ljava/lang/String;Ljava/util/Map;Lcom/tencent/itop/httpdns/base/b/b$a;)Z

    :goto_0
    return-void
.end method
