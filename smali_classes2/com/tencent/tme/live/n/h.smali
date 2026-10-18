.class public Lcom/tencent/tme/live/n/h;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/tme/live/n/h;->a:I

    iput v0, p0, Lcom/tencent/tme/live/n/h;->b:I

    iput v0, p0, Lcom/tencent/tme/live/n/h;->c:I

    iput v0, p0, Lcom/tencent/tme/live/n/h;->d:I

    iput v0, p0, Lcom/tencent/tme/live/n/h;->e:I

    iput v0, p0, Lcom/tencent/tme/live/n/h;->f:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget v0, p0, Lcom/tencent/tme/live/n/h;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/tme/live/n/h;->c:I

    return-void
.end method

.method public b()V
    .locals 1

    iget v0, p0, Lcom/tencent/tme/live/n/h;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/tme/live/n/h;->a:I

    return-void
.end method

.method public c()V
    .locals 1

    iget v0, p0, Lcom/tencent/tme/live/n/h;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/tme/live/n/h;->b:I

    return-void
.end method
