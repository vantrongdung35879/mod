.class Lcom/tencent/mna/j$b;
.super Ljava/lang/Object;
.source "AccelerateTesterFacade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/mna/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field e:I

.field f:D

.field g:D

.field h:I

.field i:Ljava/lang/String;

.field j:I


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/tencent/mna/j$b;->a:I

    .line 3
    iput v0, p0, Lcom/tencent/mna/j$b;->b:I

    .line 4
    iput v0, p0, Lcom/tencent/mna/j$b;->c:I

    .line 5
    iput v0, p0, Lcom/tencent/mna/j$b;->d:I

    .line 6
    iput v0, p0, Lcom/tencent/mna/j$b;->e:I

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    .line 7
    iput-wide v1, p0, Lcom/tencent/mna/j$b;->f:D

    .line 8
    iput-wide v1, p0, Lcom/tencent/mna/j$b;->g:D

    const v1, 0xffff

    .line 9
    iput v1, p0, Lcom/tencent/mna/j$b;->h:I

    .line 10
    const-string v1, "-1"

    iput-object v1, p0, Lcom/tencent/mna/j$b;->i:Ljava/lang/String;

    .line 11
    iput v0, p0, Lcom/tencent/mna/j$b;->j:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/mna/j$a;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/tencent/mna/j$b;-><init>()V

    return-void
.end method
