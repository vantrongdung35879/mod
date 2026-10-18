.class public Lcom/tencent/edge/LKSdk;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static glk(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    sget-boolean v0, Lcom/tencent/qimei/uin/U;->a:Z

    const-string v1, ""

    if-nez v0, :cond_0

    const/4 p0, 0x0

    .line 2
    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "lkey"

    const-string v2, "query lkey error, init not finished, please try again"

    invoke-static {v0, v2, p0}, Lcom/tencent/qimei/af/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 5
    :cond_0
    invoke-static {p0}, Lcom/tencent/qimei/codez/jni/X;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 6
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    return-object v1
.end method
