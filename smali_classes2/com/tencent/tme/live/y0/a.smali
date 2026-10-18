.class public Lcom/tencent/tme/live/y0/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(IIZZ)V
    .locals 6

    invoke-static {}, Lcom/tencent/tme/live/y0/c;->a()Lcom/tencent/tme/live/y0/c;

    move-result-object v0

    new-instance v1, Lcom/tencent/tme/live/z0/a$a;

    invoke-direct {v1}, Lcom/tencent/tme/live/z0/a$a;-><init>()V

    .line 59
    new-instance v2, Lcom/tencent/tme/live/z0/a;

    invoke-direct {v2, v1}, Lcom/tencent/tme/live/z0/a;-><init>(Lcom/tencent/tme/live/z0/a$a;)V

    .line 60
    new-instance v1, Lcom/tencent/tme/live/z0/c$a;

    invoke-direct {v1}, Lcom/tencent/tme/live/z0/c$a;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    .line 61
    iput-object p0, v1, Lcom/tencent/tme/live/z0/c$a;->a:Ljava/lang/String;

    .line 62
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    .line 63
    iput-object p0, v1, Lcom/tencent/tme/live/z0/c$a;->b:Ljava/lang/String;

    .line 64
    new-instance v3, Lcom/tencent/tme/live/z0/c;

    invoke-direct {v3, v1}, Lcom/tencent/tme/live/z0/c;-><init>(Lcom/tencent/tme/live/z0/c$a;)V

    .line 65
    new-instance p0, Lcom/tencent/tme/live/z0/b$a;

    invoke-direct {p0}, Lcom/tencent/tme/live/z0/b$a;-><init>()V

    const/4 p1, 0x2

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 66
    :goto_0
    iput p2, p0, Lcom/tencent/tme/live/z0/b$a;->a:I

    if-eqz p3, :cond_1

    const/4 p1, 0x1

    .line 67
    :cond_1
    iput p1, p0, Lcom/tencent/tme/live/z0/b$a;->b:I

    .line 68
    new-instance v4, Lcom/tencent/tme/live/z0/b;

    invoke-direct {v4, p0}, Lcom/tencent/tme/live/z0/b;-><init>(Lcom/tencent/tme/live/z0/b$a;)V

    .line 69
    new-instance p0, Lcom/tencent/tme/live/z0/d$a;

    invoke-direct {p0}, Lcom/tencent/tme/live/z0/d$a;-><init>()V

    .line 70
    new-instance v5, Lcom/tencent/tme/live/z0/d;

    invoke-direct {v5, p0}, Lcom/tencent/tme/live/z0/d;-><init>(Lcom/tencent/tme/live/z0/d$a;)V

    .line 71
    const-string v1, "RedPacketOpenResult_aov"

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/tme/live/y0/c;->a(Ljava/lang/String;Lcom/tencent/tme/live/z0/a;Lcom/tencent/tme/live/z0/c;Lcom/tencent/tme/live/z0/b;Lcom/tencent/tme/live/z0/d;)V

    return-void
.end method

.method public static a(ILjava/lang/String;ZZIZZ)V
    .locals 4

    invoke-static {}, Lcom/tencent/tme/live/y0/c;->a()Lcom/tencent/tme/live/y0/c;

    move-result-object v0

    new-instance v1, Lcom/tencent/tme/live/z0/a$a;

    invoke-direct {v1}, Lcom/tencent/tme/live/z0/a$a;-><init>()V

    .line 44
    new-instance v2, Lcom/tencent/tme/live/z0/a;

    invoke-direct {v2, v1}, Lcom/tencent/tme/live/z0/a;-><init>(Lcom/tencent/tme/live/z0/a$a;)V

    .line 45
    new-instance v1, Lcom/tencent/tme/live/z0/c$a;

    invoke-direct {v1}, Lcom/tencent/tme/live/z0/c$a;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    .line 46
    iput-object p0, v1, Lcom/tencent/tme/live/z0/c$a;->a:Ljava/lang/String;

    .line 47
    iput-object p1, v1, Lcom/tencent/tme/live/z0/c$a;->b:Ljava/lang/String;

    .line 48
    new-instance v3, Lcom/tencent/tme/live/z0/c;

    invoke-direct {v3, v1}, Lcom/tencent/tme/live/z0/c;-><init>(Lcom/tencent/tme/live/z0/c$a;)V

    .line 49
    new-instance p0, Lcom/tencent/tme/live/z0/b$a;

    invoke-direct {p0}, Lcom/tencent/tme/live/z0/b$a;-><init>()V

    const/4 p1, 0x2

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 50
    :goto_0
    iput p2, p0, Lcom/tencent/tme/live/z0/b$a;->a:I

    if-eqz p3, :cond_1

    const/4 p2, 0x2

    goto :goto_1

    :cond_1
    const/4 p2, 0x1

    .line 51
    :goto_1
    iput p2, p0, Lcom/tencent/tme/live/z0/b$a;->b:I

    .line 52
    iput p4, p0, Lcom/tencent/tme/live/z0/b$a;->c:I

    if-eqz p5, :cond_2

    goto :goto_2

    :cond_2
    const/4 p1, 0x1

    .line 53
    :goto_2
    iput p1, p0, Lcom/tencent/tme/live/z0/b$a;->d:I

    .line 54
    new-instance p4, Lcom/tencent/tme/live/z0/b;

    invoke-direct {p4, p0}, Lcom/tencent/tme/live/z0/b;-><init>(Lcom/tencent/tme/live/z0/b$a;)V

    .line 55
    new-instance p0, Lcom/tencent/tme/live/z0/d$a;

    invoke-direct {p0}, Lcom/tencent/tme/live/z0/d$a;-><init>()V

    if-eqz p6, :cond_3

    const-string p1, "single"

    goto :goto_3

    :cond_3
    const-string p1, "multiple"

    .line 56
    :goto_3
    iput-object p1, p0, Lcom/tencent/tme/live/z0/d$a;->a:Ljava/lang/String;

    .line 57
    new-instance p5, Lcom/tencent/tme/live/z0/d;

    invoke-direct {p5, p0}, Lcom/tencent/tme/live/z0/d;-><init>(Lcom/tencent/tme/live/z0/d$a;)V

    .line 58
    const-string p1, "RedPacketEntryShow_aov"

    move-object p0, v0

    move-object p2, v2

    move-object p3, v3

    invoke-virtual/range {p0 .. p5}, Lcom/tencent/tme/live/y0/c;->a(Ljava/lang/String;Lcom/tencent/tme/live/z0/a;Lcom/tencent/tme/live/z0/c;Lcom/tencent/tme/live/z0/b;Lcom/tencent/tme/live/z0/d;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 6

    invoke-static {}, Lcom/tencent/tme/live/y0/c;->a()Lcom/tencent/tme/live/y0/c;

    move-result-object v0

    new-instance v1, Lcom/tencent/tme/live/z0/a$a;

    invoke-direct {v1}, Lcom/tencent/tme/live/z0/a$a;-><init>()V

    .line 31
    new-instance v2, Lcom/tencent/tme/live/z0/a;

    invoke-direct {v2, v1}, Lcom/tencent/tme/live/z0/a;-><init>(Lcom/tencent/tme/live/z0/a$a;)V

    .line 32
    new-instance v1, Lcom/tencent/tme/live/z0/c$a;

    invoke-direct {v1}, Lcom/tencent/tme/live/z0/c$a;-><init>()V

    .line 33
    iput-object p0, v1, Lcom/tencent/tme/live/z0/c$a;->a:Ljava/lang/String;

    .line 34
    new-instance v3, Lcom/tencent/tme/live/z0/c;

    invoke-direct {v3, v1}, Lcom/tencent/tme/live/z0/c;-><init>(Lcom/tencent/tme/live/z0/c$a;)V

    .line 35
    new-instance p0, Lcom/tencent/tme/live/z0/b$a;

    invoke-direct {p0}, Lcom/tencent/tme/live/z0/b$a;-><init>()V

    .line 36
    iput p3, p0, Lcom/tencent/tme/live/z0/b$a;->a:I

    .line 37
    iput p2, p0, Lcom/tencent/tme/live/z0/b$a;->b:I

    .line 38
    new-instance v4, Lcom/tencent/tme/live/z0/b;

    invoke-direct {v4, p0}, Lcom/tencent/tme/live/z0/b;-><init>(Lcom/tencent/tme/live/z0/b$a;)V

    .line 39
    new-instance p0, Lcom/tencent/tme/live/z0/d$a;

    invoke-direct {p0}, Lcom/tencent/tme/live/z0/d$a;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/tencent/tme/live/z0/d$a;->a:Ljava/lang/String;

    .line 41
    iput-object p4, p0, Lcom/tencent/tme/live/z0/d$a;->c:Ljava/lang/String;

    .line 42
    new-instance v5, Lcom/tencent/tme/live/z0/d;

    invoke-direct {v5, p0}, Lcom/tencent/tme/live/z0/d;-><init>(Lcom/tencent/tme/live/z0/d$a;)V

    .line 43
    const-string v1, "InstantGuessBet_aov"

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/tme/live/y0/c;->a(Ljava/lang/String;Lcom/tencent/tme/live/z0/a;Lcom/tencent/tme/live/z0/c;Lcom/tencent/tme/live/z0/b;Lcom/tencent/tme/live/z0/d;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    invoke-static {}, Lcom/tencent/tme/live/y0/c;->a()Lcom/tencent/tme/live/y0/c;

    move-result-object v0

    new-instance v1, Lcom/tencent/tme/live/z0/a$a;

    invoke-direct {v1}, Lcom/tencent/tme/live/z0/a$a;-><init>()V

    .line 20
    new-instance v2, Lcom/tencent/tme/live/z0/a;

    invoke-direct {v2, v1}, Lcom/tencent/tme/live/z0/a;-><init>(Lcom/tencent/tme/live/z0/a$a;)V

    .line 21
    new-instance v1, Lcom/tencent/tme/live/z0/c$a;

    invoke-direct {v1}, Lcom/tencent/tme/live/z0/c$a;-><init>()V

    .line 22
    iput-object p0, v1, Lcom/tencent/tme/live/z0/c$a;->a:Ljava/lang/String;

    .line 23
    iput-object p1, v1, Lcom/tencent/tme/live/z0/c$a;->b:Ljava/lang/String;

    .line 24
    new-instance v3, Lcom/tencent/tme/live/z0/c;

    invoke-direct {v3, v1}, Lcom/tencent/tme/live/z0/c;-><init>(Lcom/tencent/tme/live/z0/c$a;)V

    .line 25
    new-instance p0, Lcom/tencent/tme/live/z0/b$a;

    invoke-direct {p0}, Lcom/tencent/tme/live/z0/b$a;-><init>()V

    .line 26
    iput p2, p0, Lcom/tencent/tme/live/z0/b$a;->a:I

    .line 27
    new-instance v4, Lcom/tencent/tme/live/z0/b;

    invoke-direct {v4, p0}, Lcom/tencent/tme/live/z0/b;-><init>(Lcom/tencent/tme/live/z0/b$a;)V

    .line 28
    new-instance p0, Lcom/tencent/tme/live/z0/d$a;

    invoke-direct {p0}, Lcom/tencent/tme/live/z0/d$a;-><init>()V

    .line 29
    new-instance v5, Lcom/tencent/tme/live/z0/d;

    invoke-direct {v5, p0}, Lcom/tencent/tme/live/z0/d;-><init>(Lcom/tencent/tme/live/z0/d$a;)V

    .line 30
    const-string v1, "DataEntryShow_aov"

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/tme/live/y0/c;->a(Ljava/lang/String;Lcom/tencent/tme/live/z0/a;Lcom/tencent/tme/live/z0/c;Lcom/tencent/tme/live/z0/b;Lcom/tencent/tme/live/z0/d;)V

    return-void
.end method

.method public static a(Z)V
    .locals 6

    invoke-static {}, Lcom/tencent/tme/live/y0/c;->a()Lcom/tencent/tme/live/y0/c;

    move-result-object v0

    new-instance v1, Lcom/tencent/tme/live/z0/a$a;

    invoke-direct {v1}, Lcom/tencent/tme/live/z0/a$a;-><init>()V

    .line 1
    new-instance v2, Lcom/tencent/tme/live/z0/a;

    invoke-direct {v2, v1}, Lcom/tencent/tme/live/z0/a;-><init>(Lcom/tencent/tme/live/z0/a$a;)V

    .line 2
    new-instance v1, Lcom/tencent/tme/live/z0/c$a;

    invoke-direct {v1}, Lcom/tencent/tme/live/z0/c$a;-><init>()V

    .line 3
    new-instance v3, Lcom/tencent/tme/live/z0/c;

    invoke-direct {v3, v1}, Lcom/tencent/tme/live/z0/c;-><init>(Lcom/tencent/tme/live/z0/c$a;)V

    .line 4
    new-instance v1, Lcom/tencent/tme/live/z0/b$a;

    invoke-direct {v1}, Lcom/tencent/tme/live/z0/b$a;-><init>()V

    .line 5
    iput p0, v1, Lcom/tencent/tme/live/z0/b$a;->a:I

    .line 6
    new-instance v4, Lcom/tencent/tme/live/z0/b;

    invoke-direct {v4, v1}, Lcom/tencent/tme/live/z0/b;-><init>(Lcom/tencent/tme/live/z0/b$a;)V

    .line 7
    new-instance p0, Lcom/tencent/tme/live/z0/d$a;

    invoke-direct {p0}, Lcom/tencent/tme/live/z0/d$a;-><init>()V

    .line 8
    new-instance v5, Lcom/tencent/tme/live/z0/d;

    invoke-direct {v5, p0}, Lcom/tencent/tme/live/z0/d;-><init>(Lcom/tencent/tme/live/z0/d$a;)V

    .line 9
    const-string v1, "EmojiEntryClick_aov"

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/tme/live/y0/c;->a(Ljava/lang/String;Lcom/tencent/tme/live/z0/a;Lcom/tencent/tme/live/z0/c;Lcom/tencent/tme/live/z0/b;Lcom/tencent/tme/live/z0/d;)V

    return-void
.end method

.method public static a(ZI)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "reportEmojLoadFailedExposure "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zq1234"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/tencent/tme/live/y0/c;->a()Lcom/tencent/tme/live/y0/c;

    move-result-object v2

    new-instance v0, Lcom/tencent/tme/live/z0/a$a;

    invoke-direct {v0}, Lcom/tencent/tme/live/z0/a$a;-><init>()V

    .line 10
    new-instance v4, Lcom/tencent/tme/live/z0/a;

    invoke-direct {v4, v0}, Lcom/tencent/tme/live/z0/a;-><init>(Lcom/tencent/tme/live/z0/a$a;)V

    .line 11
    new-instance v0, Lcom/tencent/tme/live/z0/c$a;

    invoke-direct {v0}, Lcom/tencent/tme/live/z0/c$a;-><init>()V

    .line 12
    new-instance v5, Lcom/tencent/tme/live/z0/c;

    invoke-direct {v5, v0}, Lcom/tencent/tme/live/z0/c;-><init>(Lcom/tencent/tme/live/z0/c$a;)V

    .line 13
    new-instance v0, Lcom/tencent/tme/live/z0/b$a;

    invoke-direct {v0}, Lcom/tencent/tme/live/z0/b$a;-><init>()V

    .line 14
    iput p0, v0, Lcom/tencent/tme/live/z0/b$a;->a:I

    .line 15
    new-instance v6, Lcom/tencent/tme/live/z0/b;

    invoke-direct {v6, v0}, Lcom/tencent/tme/live/z0/b;-><init>(Lcom/tencent/tme/live/z0/b$a;)V

    .line 16
    new-instance p0, Lcom/tencent/tme/live/z0/d$a;

    invoke-direct {p0}, Lcom/tencent/tme/live/z0/d$a;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/tencent/tme/live/z0/d$a;->a:Ljava/lang/String;

    .line 18
    new-instance v7, Lcom/tencent/tme/live/z0/d;

    invoke-direct {v7, p0}, Lcom/tencent/tme/live/z0/d;-><init>(Lcom/tencent/tme/live/z0/d$a;)V

    .line 19
    const-string v3, "EmojiLoadingResult_aov"

    invoke-virtual/range {v2 .. v7}, Lcom/tencent/tme/live/y0/c;->a(Ljava/lang/String;Lcom/tencent/tme/live/z0/a;Lcom/tencent/tme/live/z0/c;Lcom/tencent/tme/live/z0/b;Lcom/tencent/tme/live/z0/d;)V

    return-void
.end method
