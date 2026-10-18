.class public Lcom/perfsight/apm/utils/ScreenCapture;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfsight/apm/utils/ScreenCapture$a;
    }
.end annotation


# static fields
.field private static final executorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/perfsight/apm/utils/ScreenCapture;->executorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200(Landroid/graphics/Bitmap;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/perfsight/apm/utils/ScreenCapture;->saveBitmapToFile(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method static synthetic access$300()Ljava/util/concurrent/ExecutorService;
    .locals 1

    sget-object v0, Lcom/perfsight/apm/utils/ScreenCapture;->executorService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$400(Landroid/app/Activity;)Landroid/view/SurfaceView;
    .locals 0

    invoke-static {p0}, Lcom/perfsight/apm/utils/ScreenCapture;->findSurfaceView(Landroid/app/Activity;)Landroid/view/SurfaceView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Landroid/view/SurfaceView;Lcom/perfsight/apm/utils/ScreenCapture$a;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/perfsight/apm/utils/ScreenCapture;->captureSurfaceView(Landroid/view/SurfaceView;Lcom/perfsight/apm/utils/ScreenCapture$a;)V

    return-void
.end method

.method public static captureNextFrame(II)V
    .locals 1

    new-instance v0, Lcom/perfsight/apm/utils/ScreenCapture$a;

    invoke-direct {v0, p0, p1}, Lcom/perfsight/apm/utils/ScreenCapture$a;-><init>(II)V

    invoke-static {}, Lcom/perfsight/apm/utils/a;->a()Landroid/app/Activity;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance p1, Lcom/perfsight/apm/utils/o;

    invoke-direct {p1, p0, v0}, Lcom/perfsight/apm/utils/o;-><init>(Landroid/app/Activity;Lcom/perfsight/apm/utils/ScreenCapture$a;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "captureNextFrame-runOnUiThread: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static captureSurfaceView(Landroid/view/SurfaceView;Lcom/perfsight/apm/utils/ScreenCapture$a;)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v0

    invoke-static {p1}, Lcom/perfsight/apm/utils/ScreenCapture$a;->a(Lcom/perfsight/apm/utils/ScreenCapture$a;)I

    move-result v1

    div-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v1

    invoke-static {p1}, Lcom/perfsight/apm/utils/ScreenCapture$a;->a(Lcom/perfsight/apm/utils/ScreenCapture$a;)I

    move-result v2

    div-int/2addr v1, v2

    const-string v2, "captureSurfaceView"

    invoke-static {v2}, Lcom/perfsight/apm/utils/p;->c(Ljava/lang/String;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-ge v2, v3, :cond_1

    return-void

    :cond_1
    :try_start_0
    sget-object v2, Lcom/perfsight/apm/utils/ScreenCapture;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/perfsight/apm/utils/m;

    invoke-direct {v3, v0, v1, p0, p1}, Lcom/perfsight/apm/utils/m;-><init>(IILandroid/view/SurfaceView;Lcom/perfsight/apm/utils/ScreenCapture$a;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "run PixelCopy "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static findSurfaceView(Landroid/app/Activity;)Landroid/view/SurfaceView;
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lcom/perfsight/apm/utils/ScreenCapture;->findSurfaceView(Landroid/view/View;)Landroid/view/SurfaceView;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V

    return-object v0
.end method

.method private static findSurfaceView(Landroid/view/View;)Landroid/view/SurfaceView;
    .locals 2

    instance-of v0, p0, Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/view/SurfaceView;

    return-object p0

    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/perfsight/apm/utils/ScreenCapture;->findSurfaceView(Landroid/view/View;)Landroid/view/SurfaceView;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static saveBitmapToFile(Landroid/graphics/Bitmap;I)V
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "Bitmap is null"

    invoke-static {p0}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v1, p1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lcom/perfsight/apm/jni/TApmNativeHelper;->saveScreenCapturePng([B)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "Error closing ByteArrayOutputStream"

    invoke-static {p0}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
