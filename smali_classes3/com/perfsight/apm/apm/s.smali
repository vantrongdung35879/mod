.class Lcom/perfsight/apm/apm/s;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/PowerManager$OnThermalStatusChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perfsight/apm/apm/t;-><init>(Landroid/content/Context;Lcom/perfsight/apm/cloudcontrol/APMCCStrategy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/perfsight/apm/apm/t;


# direct methods
.method constructor <init>(Lcom/perfsight/apm/apm/t;)V
    .locals 0

    iput-object p1, p0, Lcom/perfsight/apm/apm/s;->a:Lcom/perfsight/apm/apm/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onThermalStatusChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/perfsight/apm/apm/s;->a:Lcom/perfsight/apm/apm/t;

    invoke-static {v0}, Lcom/perfsight/apm/apm/t;->a(Lcom/perfsight/apm/apm/t;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/perfsight/apm/jni/TApmNativeHelper;->postThermalStatus(I)V

    :cond_0
    return-void
.end method
