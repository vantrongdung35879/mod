.class Lcom/perfsight/apm/utils/n;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perfsight/apm/utils/o;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/perfsight/apm/utils/o;


# direct methods
.method constructor <init>(Lcom/perfsight/apm/utils/o;)V
    .locals 0

    iput-object p1, p0, Lcom/perfsight/apm/utils/n;->a:Lcom/perfsight/apm/utils/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 1

    const-string p1, "doFrame"

    invoke-static {p1}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    iget-object p1, p0, Lcom/perfsight/apm/utils/n;->a:Lcom/perfsight/apm/utils/o;

    iget-object p1, p1, Lcom/perfsight/apm/utils/o;->a:Landroid/app/Activity;

    invoke-static {p1}, Lcom/perfsight/apm/utils/ScreenCapture;->access$400(Landroid/app/Activity;)Landroid/view/SurfaceView;

    move-result-object p1

    iget-object p2, p0, Lcom/perfsight/apm/utils/n;->a:Lcom/perfsight/apm/utils/o;

    iget-object p2, p2, Lcom/perfsight/apm/utils/o;->b:Lcom/perfsight/apm/utils/ScreenCapture$a;

    invoke-static {p1, p2}, Lcom/perfsight/apm/utils/ScreenCapture;->access$500(Landroid/view/SurfaceView;Lcom/perfsight/apm/utils/ScreenCapture$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "doFrame "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V

    :goto_0
    const-string p1, "doFrame Fin"

    invoke-static {p1}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V

    return-void
.end method
