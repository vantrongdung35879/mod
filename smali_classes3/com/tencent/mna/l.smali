.class public final Lcom/tencent/mna/l;
.super Ljava/lang/Object;
.source "BatteryListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/mna/l$b;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/tencent/mna/l;->a:I

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/tencent/mna/l;->b:I

    return-void
.end method

.method static synthetic a(Lcom/tencent/mna/l;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/tencent/mna/l;->b:I

    return p0
.end method

.method static synthetic a(Lcom/tencent/mna/l;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/tencent/mna/l;->b:I

    return p1
.end method

.method static synthetic b(Lcom/tencent/mna/l;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/tencent/mna/l;->a:I

    return p0
.end method

.method static synthetic b(Lcom/tencent/mna/l;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/tencent/mna/l;->a:I

    return p1
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/tencent/mna/l$b;)V
    .locals 2

    if-nez p1, :cond_0

    .line 3
    const-string p1, "startBatteryListener context null"

    invoke-static {p1}, Lcom/tencent/mna/v1;->b(Ljava/lang/String;)V

    return-void

    .line 7
    :cond_0
    :try_start_0
    new-instance v0, Lcom/tencent/mna/l$a;

    invoke-direct {v0, p0, p2}, Lcom/tencent/mna/l$a;-><init>(Lcom/tencent/mna/l;Lcom/tencent/mna/l$b;)V

    new-instance p2, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {p2, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 25
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "startBatteryListener "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
