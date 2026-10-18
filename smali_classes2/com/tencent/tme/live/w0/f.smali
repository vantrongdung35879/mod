.class public Lcom/tencent/tme/live/w0/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/tencent/tme/live/w0/f;",
        ">;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/tencent/tme/live/w0/f;->a:I

    iput-object p3, p0, Lcom/tencent/tme/live/w0/f;->c:Ljava/lang/String;

    iput p2, p0, Lcom/tencent/tme/live/w0/f;->b:I

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/tencent/tme/live/w0/f;

    .line 1
    iget v0, p0, Lcom/tencent/tme/live/w0/f;->b:I

    iget p1, p1, Lcom/tencent/tme/live/w0/f;->b:I

    sub-int/2addr v0, p1

    return v0
.end method
