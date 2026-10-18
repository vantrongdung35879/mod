.class public final Lcom/tencent/itop/httpdns/a/a/b;
.super Ljava/lang/Object;
.source "ConfigManager.java"


# direct methods
.method public static a()Ljava/lang/String;
    .locals 1

    .line 21
    sget-object v0, Lcom/tencent/itop/httpdns/a/a/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static a(I)V
    .locals 0

    if-lez p0, :cond_0

    .line 30
    sput p0, Lcom/tencent/itop/httpdns/a/a/a;->b:I

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    .line 15
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 16
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/tencent/itop/httpdns/a/a/a;->a:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .line 25
    invoke-static {}, Lcom/tencent/itop/httpdns/a/a/a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    .line 39
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/tencent/itop/httpdns/a/a/a;->c:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static c()I
    .locals 1

    .line 35
    sget v0, Lcom/tencent/itop/httpdns/a/a/a;->b:I

    return v0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 51
    const-string v0, "1"

    invoke-static {p0, v0}, Lcom/tencent/itop/httpdns/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    .line 45
    sget-object v0, Lcom/tencent/itop/httpdns/a/a/a;->c:Ljava/lang/String;

    return-object v0
.end method
