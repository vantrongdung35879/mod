.class public Lcom/tencent/tme/live/i/c;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lcom/tencent/tme/live/v/m;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tencent/tme/live/v/m;

    const/16 v1, 0x50

    const/16 v2, 0x1bb

    const/4 v3, 0x1

    invoke-direct {v0, v3, v1, v2}, Lcom/tencent/tme/live/v/m;-><init>(ZII)V

    iput-object v0, p0, Lcom/tencent/tme/live/i/c;->a:Lcom/tencent/tme/live/v/m;

    const/4 v1, 0x2

    const/16 v2, 0x1388

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tme/live/v/a;->a(II)V

    return-void
.end method
