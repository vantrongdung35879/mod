.class Lcom/tencent/gsdk/s$a;
.super Ljava/lang/Object;
.source "DevicesInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/gsdk/s;->g(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/gsdk/s$a;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lcom/tencent/gsdk/s$b;

    invoke-direct {v0}, Lcom/tencent/gsdk/s$b;-><init>()V

    invoke-static {v0}, Lcom/tencent/gsdk/s;->a(Lcom/tencent/gsdk/s$b;)Lcom/tencent/gsdk/s$b;

    .line 2
    iget-object v0, p0, Lcom/tencent/gsdk/s$a;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 3
    const-string/jumbo v0, "startMobileSignalListener 2"

    invoke-static {v0}, Lcom/tencent/gsdk/utils/Logger;->d(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/tencent/gsdk/s$a;->a:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 5
    invoke-static {}, Lcom/tencent/gsdk/s;->a()Lcom/tencent/gsdk/s$b;

    move-result-object v1

    const/16 v2, 0x100

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
