.class public Lcom/tencent/tme/live/g/a;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lcom/tencent/tme/live/g/b;

.field public final b:Lcom/tencent/tme/live/g/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tencent/tme/live/g/c;

    invoke-direct {v0}, Lcom/tencent/tme/live/g/c;-><init>()V

    iput-object v0, p0, Lcom/tencent/tme/live/g/a;->b:Lcom/tencent/tme/live/g/c;

    new-instance v0, Lcom/tencent/tme/live/g/b;

    invoke-direct {v0}, Lcom/tencent/tme/live/g/b;-><init>()V

    iput-object v0, p0, Lcom/tencent/tme/live/g/a;->a:Lcom/tencent/tme/live/g/b;

    return-void
.end method
