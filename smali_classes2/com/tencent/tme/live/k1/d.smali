.class public Lcom/tencent/tme/live/k1/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/tencent/tme/live/k1/e;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/k1/e;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/k1/d;->a:Lcom/tencent/tme/live/k1/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/k1/d;->a:Lcom/tencent/tme/live/k1/e;

    .line 1
    invoke-virtual {v0}, Lcom/tencent/tme/live/k1/e;->i()V

    return-void
.end method
