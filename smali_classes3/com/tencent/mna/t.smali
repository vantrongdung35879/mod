.class Lcom/tencent/mna/t;
.super Ljava/lang/Object;
.source "CloudHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/mna/t$b;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String; = "0.0.0.0"

.field private static b:Ljava/lang/String; = "0.0.0.0"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method static a(Lcom/tencent/mna/t$b;Ljava/lang/String;)Lcom/tencent/mna/base/jni/entity/CloudRet;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0, v0}, Lcom/tencent/mna/t;->a(Lcom/tencent/mna/t$b;Ljava/lang/String;II)Lcom/tencent/mna/base/jni/entity/CloudRet;

    move-result-object p0

    return-object p0
.end method

.method static a(Lcom/tencent/mna/t$b;Ljava/lang/String;II)Lcom/tencent/mna/base/jni/entity/CloudRet;
    .locals 8

    .line 2
    sget-object v0, Lcom/tencent/mna/t$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x3

    goto :goto_1

    :cond_1
    const/4 v3, 0x2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-eqz p3, :cond_4

    .line 17
    sget-object p0, Lcom/tencent/mna/w;->j:Ljava/lang/String;

    invoke-static {p0, p3}, Lcom/tencent/mna/n1;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 18
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 19
    sput-object p0, Lcom/tencent/mna/t;->b:Ljava/lang/String;

    .line 22
    :cond_3
    sget-object p0, Lcom/tencent/mna/t;->b:Ljava/lang/String;

    goto :goto_2

    .line 25
    :cond_4
    sget-object p0, Lcom/tencent/mna/w;->j:Ljava/lang/String;

    invoke-static {p0}, Lcom/tencent/mna/n1;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 26
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    .line 27
    sput-object p0, Lcom/tencent/mna/t;->a:Ljava/lang/String;

    .line 30
    :cond_5
    sget-object p0, Lcom/tencent/mna/t;->a:Ljava/lang/String;

    :goto_2
    move-object v4, p0

    .line 33
    invoke-static {v4}, Lcom/tencent/mna/n1;->n(Ljava/lang/String;)Z

    move-result v2

    .line 34
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "request to "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", useIpv6:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", netId:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 35
    sget v5, Lcom/tencent/mna/w;->k:I

    move-object v6, p1

    move v7, p2

    invoke-static/range {v2 .. v7}, Lcom/tencent/mna/base/jni/e;->a(ZILjava/lang/String;ILjava/lang/String;I)Lcom/tencent/mna/base/jni/entity/CloudRet;

    move-result-object p0

    return-object p0
.end method

.method static a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 36
    sget-object v0, Lcom/tencent/mna/w;->j:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mna/n1;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static b()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/mna/t;->a:Ljava/lang/String;

    return-object v0
.end method
