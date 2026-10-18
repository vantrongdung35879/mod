.class public Lcom/tencent/gsdk/k;
.super Ljava/lang/Object;
.source "BatteryListener.java"


# static fields
.field private static a:I = 0x0

.field private static b:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a()I
    .locals 1

    .line 19
    sget v0, Lcom/tencent/gsdk/k;->a:I

    return v0
.end method

.method static synthetic a(I)I
    .locals 0

    .line 1
    sput p0, Lcom/tencent/gsdk/k;->a:I

    return p0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    if-nez p0, :cond_0

    .line 2
    const-string p0, "startBatteryListener context is null"

    invoke-static {p0}, Lcom/tencent/gsdk/utils/Logger;->d(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    :try_start_0
    new-instance v0, Lcom/tencent/gsdk/k$a;

    invoke-direct {v0}, Lcom/tencent/gsdk/k$a;-><init>()V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BatteryListener startBatteryListener: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/gsdk/utils/Logger;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static b()I
    .locals 1

    .line 1
    sget v0, Lcom/tencent/gsdk/k;->b:I

    return v0
.end method

.method public static b(I)V
    .locals 0

    .line 2
    sput p0, Lcom/tencent/gsdk/k;->b:I

    return-void
.end method
