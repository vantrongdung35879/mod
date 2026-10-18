.class public Lcom/perfsight/apm/apm/l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/perfsight/apm/apm/a;


# instance fields
.field private a:Landroid/telephony/TelephonyManager;

.field private b:Landroid/telephony/PhoneStateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/perfsight/apm/cloudcontrol/APMCCStrategy;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perfsight/apm/apm/l;->a:Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/perfsight/apm/apm/l;->b:Landroid/telephony/PhoneStateListener;

    const-string v0, "FEATURE_CELL_SIGNAL"

    invoke-virtual {p2, v0}, Lcom/perfsight/apm/cloudcontrol/APMCCStrategy;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string p2, "phone"

    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/perfsight/apm/apm/l;->a:Landroid/telephony/TelephonyManager;

    new-instance p1, Lcom/perfsight/apm/apm/k;

    invoke-direct {p1, p0}, Lcom/perfsight/apm/apm/k;-><init>(Lcom/perfsight/apm/apm/l;)V

    iput-object p1, p0, Lcom/perfsight/apm/apm/l;->b:Landroid/telephony/PhoneStateListener;

    iget-object p2, p0, Lcom/perfsight/apm/apm/l;->a:Landroid/telephony/TelephonyManager;

    const/16 v0, 0x100

    invoke-virtual {p2, p1, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "register CellularMgr "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/perfsight/apm/utils/p;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 3

    iget-object v0, p0, Lcom/perfsight/apm/apm/l;->a:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/perfsight/apm/apm/l;->b:Landroid/telephony/PhoneStateListener;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_1
    return-void
.end method
