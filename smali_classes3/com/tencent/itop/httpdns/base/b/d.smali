.class final Lcom/tencent/itop/httpdns/base/b/d;
.super Ljava/lang/Object;
.source "TDMReporter.java"

# interfaces
.implements Lcom/tencent/itop/httpdns/base/b/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/itop/httpdns/base/b/d$a;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/util/Map;Lcom/tencent/itop/httpdns/base/b/b$a;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/itop/httpdns/base/b/b$a;",
            ")Z"
        }
    .end annotation

    .line 11
    instance-of v0, p3, Lcom/tencent/itop/httpdns/base/b/d$a;

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    check-cast p3, Lcom/tencent/itop/httpdns/base/b/d$a;

    iget p3, p3, Lcom/tencent/itop/httpdns/base/b/d$a;->b:I

    invoke-static {p3, p1, p2}, Lcom/tencent/itop/httpdns/base/b/e;->a(ILjava/lang/String;Ljava/util/Map;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
