.class Lcom/perfsight/apm/apm/x;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perfsight/apm/apm/y;-><init>(Landroid/content/Context;Lcom/perfsight/apm/cloudcontrol/APMCCStrategy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/perfsight/apm/apm/y;


# direct methods
.method constructor <init>(Lcom/perfsight/apm/apm/y;)V
    .locals 0

    iput-object p1, p0, Lcom/perfsight/apm/apm/x;->a:Lcom/perfsight/apm/apm/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 1

    iget-object v0, p0, Lcom/perfsight/apm/apm/x;->a:Lcom/perfsight/apm/apm/y;

    invoke-static {v0}, Lcom/perfsight/apm/apm/y;->a(Lcom/perfsight/apm/apm/y;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/perfsight/apm/apm/x;->a:Lcom/perfsight/apm/apm/y;

    invoke-static {v0}, Lcom/perfsight/apm/apm/y;->b(Lcom/perfsight/apm/apm/y;)Landroid/hardware/display/DisplayManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/perfsight/apm/apm/y$a;->a:Lcom/perfsight/apm/apm/y$a;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-static {p1, v0}, Lcom/perfsight/apm/jni/TApmNativeHelper;->postDisplayChange(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/perfsight/apm/utils/p;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 0

    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 1

    iget-object v0, p0, Lcom/perfsight/apm/apm/x;->a:Lcom/perfsight/apm/apm/y;

    invoke-static {v0}, Lcom/perfsight/apm/apm/y;->a(Lcom/perfsight/apm/apm/y;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/perfsight/apm/apm/x;->a:Lcom/perfsight/apm/apm/y;

    invoke-static {v0}, Lcom/perfsight/apm/apm/y;->b(Lcom/perfsight/apm/apm/y;)Landroid/hardware/display/DisplayManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/perfsight/apm/apm/y$a;->b:Lcom/perfsight/apm/apm/y$a;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-static {p1, v0}, Lcom/perfsight/apm/jni/TApmNativeHelper;->postDisplayChange(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/perfsight/apm/utils/p;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
