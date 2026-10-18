.class public Lcom/tencent/tme/live/n/n$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tme/live/n/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:F

.field public b:F


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/n/n;FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/tencent/tme/live/n/n$b;->a:F

    iput p3, p0, Lcom/tencent/tme/live/n/n$b;->b:F

    return-void
.end method
