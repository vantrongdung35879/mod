.class Lcom/perfsight/apm/apm/k;
.super Landroid/telephony/PhoneStateListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perfsight/apm/apm/l;-><init>(Landroid/content/Context;Lcom/perfsight/apm/cloudcontrol/APMCCStrategy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/perfsight/apm/apm/l;


# direct methods
.method constructor <init>(Lcom/perfsight/apm/apm/l;)V
    .locals 0

    iput-object p1, p0, Lcom/perfsight/apm/apm/k;->a:Lcom/perfsight/apm/apm/l;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    invoke-static {p1}, Lcom/tencent/qimei/ab/a$$ExternalSyntheticApiModelOutline0;->m(Landroid/telephony/SignalStrength;)I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Current cellular signal level: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/perfsight/apm/apm/c;->a()Lcom/perfsight/apm/apm/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/perfsight/apm/apm/c;->b(I)V

    :cond_0
    return-void
.end method
