.class final Lcom/tencent/itop/httpdns/base/b/a;
.super Ljava/lang/Object;
.source "BeaconReporter.java"

# interfaces
.implements Lcom/tencent/itop/httpdns/base/b/b;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/util/Map;Lcom/tencent/itop/httpdns/base/b/b$a;)Z
    .locals 8
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
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v4, -0x1

    const/4 v7, 0x1

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    move-object v0, p1

    move-object v6, p2

    .line 14
    invoke-static/range {v0 .. v7}, Lcom/tencent/itop/httpdns/base/b/f;->a(Ljava/lang/String;ZJJLjava/util/Map;Z)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
