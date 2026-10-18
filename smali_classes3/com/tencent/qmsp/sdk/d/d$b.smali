.class public Lcom/tencent/qmsp/sdk/d/d$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qmsp/sdk/d/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:J

.field public b:J

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:J

.field public g:J

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/qmsp/sdk/d/d$a;",
            ">;"
        }
    .end annotation
.end field

.field public p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/qmsp/sdk/d/d$a;",
            ">;"
        }
    .end annotation
.end field

.field public q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/qmsp/sdk/d/d$a;",
            ">;"
        }
    .end annotation
.end field

.field public r:J

.field public s:J

.field public t:I

.field public u:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/qmsp/sdk/d/d$b;->o:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/qmsp/sdk/d/d$b;->p:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/qmsp/sdk/d/d$b;->q:Ljava/util/List;

    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/qmsp/sdk/d/d$b;->t:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/qmsp/sdk/d/d$b;->r:J

    iput-wide v0, p0, Lcom/tencent/qmsp/sdk/d/d$b;->s:J

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qmsp/sdk/d/d$b;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/qmsp/sdk/d/d$b;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/qmsp/sdk/d/d$b;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/qmsp/sdk/d/d$b;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/qmsp/sdk/d/d$b;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/qmsp/sdk/d/d$b;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/qmsp/sdk/d/d$b;->k:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qmsp/sdk/d/d$b;->u:I

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    iget v0, p0, Lcom/tencent/qmsp/sdk/d/d$b;->t:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x6

    iput v0, p0, Lcom/tencent/qmsp/sdk/d/d$b;->t:I

    return-void
.end method
