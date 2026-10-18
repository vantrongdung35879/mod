.class public Lcom/perfsight/apm/c/q;
.super Lcom/perfsight/apm/c/p;
.source ""


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/perfsight/apm/utils/d;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/perfsight/apm/c/p;-><init>(Landroid/content/Context;Lcom/perfsight/apm/utils/d;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/perfsight/apm/c/p;->a:Landroid/content/Context;

    if-nez v0, :cond_1

    const-string p1, "Context not set "

    invoke-static {p1}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V

    const/16 p2, 0x3ec

    const-string p3, "Qcc"

    invoke-static {p2, p3}, Lcom/perfsight/apm/c/b;->a(ILjava/lang/String;)V

    invoke-static {}, Lcom/perfsight/apm/utils/p;->c()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, -0x1

    invoke-static {p2, p1}, Lcom/perfsight/apm/utils/p;->a(ILjava/lang/String;)V

    :cond_0
    const/16 p1, -0x3ee

    return p1

    :cond_1
    invoke-virtual {p0, p2, p3}, Lcom/perfsight/apm/c/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance p3, Lcom/perfsight/apm/c/s;

    invoke-direct {p3}, Lcom/perfsight/apm/c/s;-><init>()V

    invoke-virtual {p3, p2}, Lcom/perfsight/apm/c/s;->a(Ljava/io/InputStream;)Z

    move-result p4

    if-eqz p4, :cond_2

    iget-object p4, p0, Lcom/perfsight/apm/c/p;->c:Lcom/perfsight/apm/c/s$a;

    invoke-virtual {p3, p4, p1}, Lcom/perfsight/apm/c/s;->a(Lcom/perfsight/apm/c/s$a;Ljava/lang/String;)I

    move-result p1

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "checkDCLSByString : "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/16 p1, -0x3f0

    :goto_0
    :try_start_0
    invoke-virtual {p2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "checkDCLSByString "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V

    :goto_1
    return p1
.end method
