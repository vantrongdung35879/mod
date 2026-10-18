.class public Lcom/tencent/qmsp/sdk/d/d$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qmsp/sdk/d/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:J

.field public i:Ljava/lang/String;

.field public j:I


# direct methods
.method constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qmsp/sdk/d/d$a;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/qmsp/sdk/d/d$a;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/qmsp/sdk/d/d$a;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/qmsp/sdk/d/d$a;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/qmsp/sdk/d/d$a;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/qmsp/sdk/d/d$a;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/qmsp/sdk/d/d$a;->g:Ljava/lang/String;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/tencent/qmsp/sdk/d/d$a;->h:J

    iput-object v0, p0, Lcom/tencent/qmsp/sdk/d/d$a;->i:Ljava/lang/String;

    const/4 v0, 0x4

    iput v0, p0, Lcom/tencent/qmsp/sdk/d/d$a;->j:I

    return-void
.end method
