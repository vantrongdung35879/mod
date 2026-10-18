.class public Lcom/tencent/tme/live/z0/b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tme/live/z0/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/tme/live/z0/b$a;->a:I

    iput v0, p0, Lcom/tencent/tme/live/z0/b$a;->b:I

    iput v0, p0, Lcom/tencent/tme/live/z0/b$a;->c:I

    iput v0, p0, Lcom/tencent/tme/live/z0/b$a;->d:I

    return-void
.end method

.method public static synthetic a(Lcom/tencent/tme/live/z0/b$a;)I
    .locals 0

    iget p0, p0, Lcom/tencent/tme/live/z0/b$a;->a:I

    return p0
.end method

.method public static synthetic b(Lcom/tencent/tme/live/z0/b$a;)I
    .locals 0

    iget p0, p0, Lcom/tencent/tme/live/z0/b$a;->b:I

    return p0
.end method

.method public static synthetic c(Lcom/tencent/tme/live/z0/b$a;)I
    .locals 0

    iget p0, p0, Lcom/tencent/tme/live/z0/b$a;->c:I

    return p0
.end method

.method public static synthetic d(Lcom/tencent/tme/live/z0/b$a;)I
    .locals 0

    iget p0, p0, Lcom/tencent/tme/live/z0/b$a;->d:I

    return p0
.end method
