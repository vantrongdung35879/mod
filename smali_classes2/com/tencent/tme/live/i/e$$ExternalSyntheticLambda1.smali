.class public final synthetic Lcom/tencent/tme/live/i/e$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/tencent/tme/live/i/f$a;

.field public final synthetic f$1:Ljava/lang/Throwable;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/tencent/tme/live/i/f$a;Ljava/lang/Throwable;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/tme/live/i/e$$ExternalSyntheticLambda1;->f$0:Lcom/tencent/tme/live/i/f$a;

    iput-object p2, p0, Lcom/tencent/tme/live/i/e$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Throwable;

    iput p3, p0, Lcom/tencent/tme/live/i/e$$ExternalSyntheticLambda1;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/tencent/tme/live/i/e$$ExternalSyntheticLambda1;->f$0:Lcom/tencent/tme/live/i/f$a;

    iget-object v1, p0, Lcom/tencent/tme/live/i/e$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Throwable;

    iget v2, p0, Lcom/tencent/tme/live/i/e$$ExternalSyntheticLambda1;->f$2:I

    invoke-static {v0, v1, v2}, Lcom/tencent/tme/live/i/e;->a(Lcom/tencent/tme/live/i/f$a;Ljava/lang/Throwable;I)V

    return-void
.end method
