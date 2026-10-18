.class public Lcom/perfsight/apm/g/c;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:I

.field public d:I

.field public e:Ljava/lang/String;

.field public f:I

.field public g:J

.field public h:J

.field public i:I

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/perfsight/apm/g/c;->a()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/perfsight/apm/g/c;->n:Z

    const-string v1, "_DEFAULT_"

    iput-object v1, p0, Lcom/perfsight/apm/g/c;->a:Ljava/lang/String;

    iput v0, p0, Lcom/perfsight/apm/g/c;->b:I

    iput v0, p0, Lcom/perfsight/apm/g/c;->c:I

    iput v0, p0, Lcom/perfsight/apm/g/c;->d:I

    const-string v1, ""

    iput-object v1, p0, Lcom/perfsight/apm/g/c;->e:Ljava/lang/String;

    iput v0, p0, Lcom/perfsight/apm/g/c;->f:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/perfsight/apm/g/c;->g:J

    iput-wide v2, p0, Lcom/perfsight/apm/g/c;->h:J

    iput v0, p0, Lcom/perfsight/apm/g/c;->i:I

    iput-object v1, p0, Lcom/perfsight/apm/g/c;->j:Ljava/lang/String;

    iput-object v1, p0, Lcom/perfsight/apm/g/c;->l:Ljava/lang/String;

    iput-object v1, p0, Lcom/perfsight/apm/g/c;->m:Ljava/lang/String;

    iput-object v1, p0, Lcom/perfsight/apm/g/c;->k:Ljava/lang/String;

    return-void
.end method
