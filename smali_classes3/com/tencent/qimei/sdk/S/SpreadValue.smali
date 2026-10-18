.class public Lcom/tencent/qimei/sdk/S/SpreadValue;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private aid:Ljava/lang/String;

.field private appKey:Ljava/lang/String;

.field private firstTime:J

.field private fromKey:Ljava/lang/String;

.field private fromSource:Ljava/lang/String;

.field private oaid:Ljava/lang/String;

.field private q16:Ljava/lang/String;

.field private q36:Ljava/lang/String;

.field private source:Ljava/lang/String;

.field private updateTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)Lcom/tencent/qimei/sdk/S/SpreadValue;
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/tencent/qimei/sdk/S/SpreadValue;->firstTime:J

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/tencent/qimei/sdk/S/SpreadValue;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/qimei/sdk/S/SpreadValue;->aid:Ljava/lang/String;

    return-object p0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/tencent/qimei/sdk/S/SpreadValue;->aid:Ljava/lang/String;

    return-object v0
.end method

.method public final b(J)Lcom/tencent/qimei/sdk/S/SpreadValue;
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/tencent/qimei/sdk/S/SpreadValue;->updateTime:J

    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/tencent/qimei/sdk/S/SpreadValue;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/qimei/sdk/S/SpreadValue;->appKey:Ljava/lang/String;

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/tencent/qimei/sdk/S/SpreadValue;->appKey:Ljava/lang/String;

    return-object v0
.end method

.method public final c()J
    .locals 2

    .line 2
    iget-wide v0, p0, Lcom/tencent/qimei/sdk/S/SpreadValue;->firstTime:J

    return-wide v0
.end method

.method public final c(Ljava/lang/String;)Lcom/tencent/qimei/sdk/S/SpreadValue;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/qimei/sdk/S/SpreadValue;->fromKey:Ljava/lang/String;

    return-object p0
.end method

.method public final d(Ljava/lang/String;)Lcom/tencent/qimei/sdk/S/SpreadValue;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/qimei/sdk/S/SpreadValue;->fromSource:Ljava/lang/String;

    return-object p0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/tencent/qimei/sdk/S/SpreadValue;->fromKey:Ljava/lang/String;

    return-object v0
.end method

.method public final e(Ljava/lang/String;)Lcom/tencent/qimei/sdk/S/SpreadValue;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/qimei/sdk/S/SpreadValue;->oaid:Ljava/lang/String;

    return-object p0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/tencent/qimei/sdk/S/SpreadValue;->fromSource:Ljava/lang/String;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/tencent/qimei/sdk/S/SpreadValue;

    if-eqz v1, :cond_5

    .line 2
    check-cast p1, Lcom/tencent/qimei/sdk/S/SpreadValue;

    .line 3
    iget-object v1, p0, Lcom/tencent/qimei/sdk/S/SpreadValue;->oaid:Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/qimei/sdk/S/SpreadValue;->oaid:Ljava/lang/String;

    sget v3, Lcom/tencent/qimei/ad/b;->a:I

    .line 4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/tencent/qimei/sdk/S/SpreadValue;->aid:Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/qimei/sdk/S/SpreadValue;->aid:Ljava/lang/String;

    .line 6
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 7
    :cond_2
    iget-object v1, p0, Lcom/tencent/qimei/sdk/S/SpreadValue;->q16:Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/qimei/sdk/S/SpreadValue;->q16:Ljava/lang/String;

    .line 8
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 9
    :cond_3
    iget-object v1, p0, Lcom/tencent/qimei/sdk/S/SpreadValue;->q36:Ljava/lang/String;

    iget-object p1, p1, Lcom/tencent/qimei/sdk/S/SpreadValue;->q36:Ljava/lang/String;

    .line 10
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    const/4 v0, 0x1

    :cond_5
    return v0
.end method

.method public final f(Ljava/lang/String;)Lcom/tencent/qimei/sdk/S/SpreadValue;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/qimei/sdk/S/SpreadValue;->q16:Ljava/lang/String;

    return-object p0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/tencent/qimei/sdk/S/SpreadValue;->oaid:Ljava/lang/String;

    return-object v0
.end method

.method public final g(Ljava/lang/String;)Lcom/tencent/qimei/sdk/S/SpreadValue;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/qimei/sdk/S/SpreadValue;->q36:Ljava/lang/String;

    return-object p0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/tencent/qimei/sdk/S/SpreadValue;->q16:Ljava/lang/String;

    return-object v0
.end method

.method public final h(Ljava/lang/String;)Lcom/tencent/qimei/sdk/S/SpreadValue;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/qimei/sdk/S/SpreadValue;->source:Ljava/lang/String;

    return-object p0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/tencent/qimei/sdk/S/SpreadValue;->q36:Ljava/lang/String;

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/qimei/sdk/S/SpreadValue;->source:Ljava/lang/String;

    return-object v0
.end method

.method public final j()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/tencent/qimei/sdk/S/SpreadValue;->updateTime:J

    return-wide v0
.end method
