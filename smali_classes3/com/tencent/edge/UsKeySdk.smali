.class public Lcom/tencent/edge/UsKeySdk;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static getUsKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-boolean v0, Lcom/tencent/qimei/uin/U;->a:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    .line 2
    new-array p0, p0, [Ljava/lang/Object;

    const-string/jumbo p1, "uskey"

    const-string p2, "query uskey error, init not finished, please try again"

    invoke-static {p1, p2, p0}, Lcom/tencent/qimei/af/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    const-string p0, ""

    return-object p0

    .line 5
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/tencent/qimei/codez/jni/X;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
