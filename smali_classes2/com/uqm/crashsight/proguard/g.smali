.class public final Lcom/uqm/crashsight/proguard/g;
.super Lcom/uqm/crashsight/proguard/f;
.source "CrashSight"


# direct methods
.method public constructor <init>(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/uqm/crashsight/proguard/f;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 50
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 51
    new-instance v1, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    add-long/2addr v2, p6

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 52
    iget-object p6, p0, Lcom/uqm/crashsight/proguard/g;->e:Ljava/text/SimpleDateFormat;

    invoke-virtual {p6, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p6

    .line 55
    const-string p7, "x-amz-date"

    invoke-interface {p1, p7, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object p7, p0, Lcom/uqm/crashsight/proguard/g;->a:Ljava/net/URL;

    invoke-virtual {p7}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p7

    .line 58
    iget-object v0, p0, Lcom/uqm/crashsight/proguard/g;->a:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v0

    if-ltz v0, :cond_0

    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p7, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    :cond_0
    const-string v0, "Host"

    invoke-interface {p1, v0, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    invoke-static {p1}, Lcom/uqm/crashsight/proguard/g;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p7

    .line 67
    invoke-static {p1}, Lcom/uqm/crashsight/proguard/g;->b(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    .line 70
    invoke-static {p2}, Lcom/uqm/crashsight/proguard/g;->c(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    .line 73
    iget-object v2, p0, Lcom/uqm/crashsight/proguard/g;->a:Ljava/net/URL;

    iget-object v3, p0, Lcom/uqm/crashsight/proguard/g;->b:Ljava/lang/String;

    move-object v5, p7

    move-object v7, p3

    invoke-static/range {v2 .. v7}, Lcom/uqm/crashsight/proguard/g;->a(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 78
    iget-object p2, p0, Lcom/uqm/crashsight/proguard/g;->f:Ljava/text/SimpleDateFormat;

    invoke-virtual {p2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    .line 79
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/uqm/crashsight/proguard/g;->d:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/uqm/crashsight/proguard/g;->c:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/aws4_request"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1203
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AWS4-HMAC-SHA256\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p6, "\n"

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1207
    invoke-static {p1}, Lcom/uqm/crashsight/proguard/f;->a(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lcom/uqm/crashsight/CrashSightStrategy$a;->toHex([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 83
    new-instance p6, Ljava/lang/StringBuilder;

    const-string v1, "AWS4"

    invoke-direct {p6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/String;->getBytes()[B

    move-result-object p5

    .line 84
    const-string p6, "HmacSHA256"

    invoke-static {p2, p5, p6}, Lcom/uqm/crashsight/proguard/g;->a(Ljava/lang/String;[BLjava/lang/String;)[B

    move-result-object p2

    .line 85
    iget-object p5, p0, Lcom/uqm/crashsight/proguard/g;->d:Ljava/lang/String;

    invoke-static {p5, p2, p6}, Lcom/uqm/crashsight/proguard/g;->a(Ljava/lang/String;[BLjava/lang/String;)[B

    move-result-object p2

    .line 86
    iget-object p5, p0, Lcom/uqm/crashsight/proguard/g;->c:Ljava/lang/String;

    invoke-static {p5, p2, p6}, Lcom/uqm/crashsight/proguard/g;->a(Ljava/lang/String;[BLjava/lang/String;)[B

    move-result-object p2

    .line 87
    const-string p5, "aws4_request"

    invoke-static {p5, p2, p6}, Lcom/uqm/crashsight/proguard/g;->a(Ljava/lang/String;[BLjava/lang/String;)[B

    move-result-object p2

    .line 88
    invoke-static {p1, p2, p6}, Lcom/uqm/crashsight/proguard/g;->a(Ljava/lang/String;[BLjava/lang/String;)[B

    move-result-object p1

    .line 90
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p5, "Credential="

    invoke-direct {p2, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 92
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "SignedHeaders="

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 94
    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "Signature="

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    invoke-static {p1}, Lcom/uqm/crashsight/CrashSightStrategy$a;->toHex([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 97
    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "AWS4-HMAC-SHA256 "

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
