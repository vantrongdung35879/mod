.class public Lcom/tencent/tme/live/i1/e$c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tme/live/i1/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/tencent/tme/live/i1/e;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/i1/e;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/i1/e$c;->a:Lcom/tencent/tme/live/i1/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/i1/e$c;->a:Lcom/tencent/tme/live/i1/e;

    const/4 v1, 0x0

    .line 1
    iput-object v1, v0, Lcom/tencent/tme/live/i1/e;->g:Ljava/lang/Runnable;

    .line 2
    invoke-virtual {v0}, Lcom/tencent/tme/live/i1/e;->b()V

    return-void
.end method
