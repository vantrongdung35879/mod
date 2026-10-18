.class public final synthetic Lcom/tencent/tme/live/i/e$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/tencent/tme/live/i/f$a;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/tencent/tme/live/i/f$a;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/tme/live/i/e$$ExternalSyntheticLambda0;->f$0:Lcom/tencent/tme/live/i/f$a;

    iput p2, p0, Lcom/tencent/tme/live/i/e$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/tencent/tme/live/i/e$$ExternalSyntheticLambda0;->f$0:Lcom/tencent/tme/live/i/f$a;

    iget v1, p0, Lcom/tencent/tme/live/i/e$$ExternalSyntheticLambda0;->f$1:I

    invoke-static {v0, v1}, Lcom/tencent/tme/live/i/e;->a(Lcom/tencent/tme/live/i/f$a;I)V

    return-void
.end method
