.class Lcom/xiaomi/boostersdk/GameHandleController$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/boostersdk/GameHandleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "action_thermal_control_change"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "cur_level"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {}, Lcom/xiaomi/boostersdk/GameHandleController;->access$000()Lcom/xiaomi/boostersdk/GameBoosterEngineCallback;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/xiaomi/boostersdk/GameHandleController;->access$100()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/xiaomi/boostersdk/GameHandleController;->access$000()Lcom/xiaomi/boostersdk/GameBoosterEngineCallback;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/xiaomi/boostersdk/GameBoosterEngineCallback;->onThermalControlChanged(I)V

    :cond_0
    return-void
.end method
