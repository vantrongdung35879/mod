.class public final Lcom/tencent/gsdk/p;
.super Ljava/lang/Object;
.source "ConfigUrlManager.java"


# static fields
.field private static a:Lcom/tencent/gsdk/b0; = null

.field private static b:Ljava/lang/String; = "NULL"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 2

    .line 4
    sget-object v0, Lcom/tencent/gsdk/p;->a:Lcom/tencent/gsdk/b0;

    if-nez v0, :cond_0

    .line 5
    const-string v0, ""

    return-object v0

    .line 7
    :cond_0
    sget-object v1, Lcom/tencent/gsdk/p;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/tencent/gsdk/b0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/tencent/gsdk/t;->a(I)Lcom/tencent/gsdk/b0;

    move-result-object p0

    sput-object p0, Lcom/tencent/gsdk/p;->a:Lcom/tencent/gsdk/b0;

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 3
    sput-object p1, Lcom/tencent/gsdk/p;->b:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static b()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/tencent/gsdk/p;->a:Lcom/tencent/gsdk/b0;

    if-nez v0, :cond_0

    .line 2
    const-string v0, ""

    return-object v0

    .line 4
    :cond_0
    sget-object v1, Lcom/tencent/gsdk/p;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/tencent/gsdk/b0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/tencent/gsdk/p;->a:Lcom/tencent/gsdk/b0;

    if-nez v0, :cond_0

    .line 2
    const-string v0, ""

    return-object v0

    .line 4
    :cond_0
    sget-object v1, Lcom/tencent/gsdk/p;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/tencent/gsdk/b0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
