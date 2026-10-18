.class final Lcom/perfsight/apm/utils/m;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perfsight/apm/utils/ScreenCapture;->captureSurfaceView(Landroid/view/SurfaceView;Lcom/perfsight/apm/utils/ScreenCapture$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Landroid/view/SurfaceView;

.field final synthetic d:Lcom/perfsight/apm/utils/ScreenCapture$a;


# direct methods
.method constructor <init>(IILandroid/view/SurfaceView;Lcom/perfsight/apm/utils/ScreenCapture$a;)V
    .locals 0

    iput p1, p0, Lcom/perfsight/apm/utils/m;->a:I

    iput p2, p0, Lcom/perfsight/apm/utils/m;->b:I

    iput-object p3, p0, Lcom/perfsight/apm/utils/m;->c:Landroid/view/SurfaceView;

    iput-object p4, p0, Lcom/perfsight/apm/utils/m;->d:Lcom/perfsight/apm/utils/ScreenCapture$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    iget v0, p0, Lcom/perfsight/apm/utils/m;->a:I

    iget v1, p0, Lcom/perfsight/apm/utils/m;->b:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "captureSurfaceView in executorService"

    :try_start_1
    invoke-static {v1}, Lcom/perfsight/apm/utils/p;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/perfsight/apm/utils/m;->c:Landroid/view/SurfaceView;

    new-instance v2, Lcom/perfsight/apm/utils/l;

    invoke-direct {v2, p0, v0}, Lcom/perfsight/apm/utils/l;-><init>(Lcom/perfsight/apm/utils/m;Landroid/graphics/Bitmap;)V

    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {v1, v0, v2, v3}, Lcom/tencent/qimei/ab/a$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/SurfaceView;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V

    :goto_0
    const-string v0, "PixelCopy.request Fin"

    invoke-static {v0}, Lcom/perfsight/apm/utils/p;->c(Ljava/lang/String;)V

    return-void
.end method
