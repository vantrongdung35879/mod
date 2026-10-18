.class public Lcom/tencent/tme/live/c/c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tme/live/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:Z

.field public c:Z


# direct methods
.method public constructor <init>(IZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/tencent/tme/live/c/c$a;->a:I

    iput-boolean p2, p0, Lcom/tencent/tme/live/c/c$a;->b:Z

    iput-boolean p3, p0, Lcom/tencent/tme/live/c/c$a;->c:Z

    return-void
.end method
