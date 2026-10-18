.class public Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$a;->a:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$a;->a:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;

    sget-object v1, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;->b:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;

    const/4 v2, 0x0

    new-array v2, v2, [Z

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->a(Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;[Z)V

    return-void
.end method
