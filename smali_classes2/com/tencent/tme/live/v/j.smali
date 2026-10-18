.class public Lcom/tencent/tme/live/v/j;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/v/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    return-void
.end method
