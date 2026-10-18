.class public Lcom/perfsight/apm/reporter/a;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:J

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perfsight/apm/reporter/a;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfsight/apm/reporter/a;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfsight/apm/reporter/a;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfsight/apm/reporter/a;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfsight/apm/reporter/a;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfsight/apm/reporter/a;->f:Ljava/lang/String;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/perfsight/apm/reporter/a;->g:J

    iput-object v0, p0, Lcom/perfsight/apm/reporter/a;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfsight/apm/reporter/a;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfsight/apm/reporter/a;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfsight/apm/reporter/a;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfsight/apm/reporter/a;->l:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OPE_BIN: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/perfsight/apm/reporter/a;->a:Ljava/lang/String;

    const-string v2, "null"

    if-nez v1, :cond_0

    move-object v1, v2

    :cond_0
    iget-object v3, p0, Lcom/perfsight/apm/reporter/a;->b:Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v3, v2

    :cond_1
    iget-object v4, p0, Lcom/perfsight/apm/reporter/a;->c:Ljava/lang/String;

    if-nez v4, :cond_2

    move-object v4, v2

    :cond_2
    iget-object v5, p0, Lcom/perfsight/apm/reporter/a;->d:Ljava/lang/String;

    if-nez v5, :cond_3

    move-object v5, v2

    :cond_3
    iget-object v6, p0, Lcom/perfsight/apm/reporter/a;->e:Ljava/lang/String;

    if-nez v6, :cond_4

    move-object v6, v2

    :cond_4
    iget-object v7, p0, Lcom/perfsight/apm/reporter/a;->f:Ljava/lang/String;

    if-nez v7, :cond_5

    move-object v7, v2

    :cond_5
    iget-object v8, p0, Lcom/perfsight/apm/reporter/a;->l:Ljava/lang/String;

    if-nez v8, :cond_6

    goto :goto_0

    :cond_6
    move-object v2, v8

    :goto_0
    const/4 v8, 0x7

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    const/4 v1, 0x1

    aput-object v3, v8, v1

    const/4 v1, 0x2

    aput-object v4, v8, v1

    const/4 v1, 0x3

    aput-object v5, v8, v1

    const/4 v1, 0x4

    aput-object v6, v8, v1

    const/4 v1, 0x5

    aput-object v7, v8, v1

    const/4 v1, 0x6

    aput-object v2, v8, v1

    const-string v1, "[attach]CosTokenBean\nbucket:[%s]\nregion:[%s]\ndomain:[%s]\ntmpSecretId:[%s]\ntmpSecretKey:[%s]\nsessionToken:[%s]\nstorage:[%s]\n"

    invoke-static {v1, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
