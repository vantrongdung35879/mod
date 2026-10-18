.class public Lcom/tencent/mna/g2$b;
.super Ljava/lang/Object;
.source "NetworkQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/mna/g2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:Ljava/lang/String;

.field public r:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mna/g2$b;->a:Ljava/lang/String;

    const/4 v1, -0x1

    .line 7
    iput v1, p0, Lcom/tencent/mna/g2$b;->b:I

    .line 8
    iput v1, p0, Lcom/tencent/mna/g2$b;->c:I

    .line 9
    iput v1, p0, Lcom/tencent/mna/g2$b;->d:I

    .line 10
    iput v1, p0, Lcom/tencent/mna/g2$b;->e:I

    .line 11
    iput v1, p0, Lcom/tencent/mna/g2$b;->f:I

    .line 12
    iput v1, p0, Lcom/tencent/mna/g2$b;->g:I

    .line 13
    iput v1, p0, Lcom/tencent/mna/g2$b;->h:I

    .line 14
    iput v1, p0, Lcom/tencent/mna/g2$b;->i:I

    .line 15
    iput v1, p0, Lcom/tencent/mna/g2$b;->j:I

    .line 16
    iput v1, p0, Lcom/tencent/mna/g2$b;->k:I

    .line 17
    iput v1, p0, Lcom/tencent/mna/g2$b;->l:I

    .line 18
    iput v1, p0, Lcom/tencent/mna/g2$b;->m:I

    .line 19
    iput v1, p0, Lcom/tencent/mna/g2$b;->n:I

    .line 20
    iput v1, p0, Lcom/tencent/mna/g2$b;->o:I

    .line 21
    iput v1, p0, Lcom/tencent/mna/g2$b;->p:I

    .line 22
    iput-object v0, p0, Lcom/tencent/mna/g2$b;->q:Ljava/lang/String;

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/tencent/mna/g2$b;->r:I

    return-void
.end method

.method public static a(I)I
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x4

    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x2

    return p0
.end method
