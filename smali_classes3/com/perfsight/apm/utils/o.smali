.class final Lcom/perfsight/apm/utils/o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perfsight/apm/utils/ScreenCapture;->captureNextFrame(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/perfsight/apm/utils/ScreenCapture$a;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/perfsight/apm/utils/ScreenCapture$a;)V
    .locals 0

    iput-object p1, p0, Lcom/perfsight/apm/utils/o;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/perfsight/apm/utils/o;->b:Lcom/perfsight/apm/utils/ScreenCapture$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    new-instance v1, Lcom/perfsight/apm/utils/n;

    invoke-direct {v1, p0}, Lcom/perfsight/apm/utils/n;-><init>(Lcom/perfsight/apm/utils/o;)V

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
