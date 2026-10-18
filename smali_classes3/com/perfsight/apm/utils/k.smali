.class Lcom/perfsight/apm/utils/k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perfsight/apm/utils/l;->onPixelCopyFinished(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/perfsight/apm/utils/l;


# direct methods
.method constructor <init>(Lcom/perfsight/apm/utils/l;)V
    .locals 0

    iput-object p1, p0, Lcom/perfsight/apm/utils/k;->a:Lcom/perfsight/apm/utils/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "saveBitmapToFile"

    invoke-static {v0}, Lcom/perfsight/apm/utils/p;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/perfsight/apm/utils/k;->a:Lcom/perfsight/apm/utils/l;

    iget-object v1, v0, Lcom/perfsight/apm/utils/l;->a:Landroid/graphics/Bitmap;

    iget-object v0, v0, Lcom/perfsight/apm/utils/l;->b:Lcom/perfsight/apm/utils/m;

    iget-object v0, v0, Lcom/perfsight/apm/utils/m;->d:Lcom/perfsight/apm/utils/ScreenCapture$a;

    invoke-static {v0}, Lcom/perfsight/apm/utils/ScreenCapture$a;->b(Lcom/perfsight/apm/utils/ScreenCapture$a;)I

    move-result v0

    invoke-static {v1, v0}, Lcom/perfsight/apm/utils/ScreenCapture;->access$200(Landroid/graphics/Bitmap;I)V

    const-string v0, "saveBitmapToFile Fin"

    invoke-static {v0}, Lcom/perfsight/apm/utils/p;->c(Ljava/lang/String;)V

    return-void
.end method
