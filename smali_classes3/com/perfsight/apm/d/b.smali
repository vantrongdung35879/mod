.class Lcom/perfsight/apm/d/b;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfsight/apm/d/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/perfsight/apm/d/c;


# direct methods
.method constructor <init>(Lcom/perfsight/apm/d/c;)V
    .locals 0

    iput-object p1, p0, Lcom/perfsight/apm/d/b;->a:Lcom/perfsight/apm/d/c;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17

    move-object/from16 v0, p2

    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v2, p0

    :try_start_1
    iget-object v3, v2, Lcom/perfsight/apm/d/b;->a:Lcom/perfsight/apm/d/c;

    invoke-static {v3}, Lcom/perfsight/apm/d/c;->a(Lcom/perfsight/apm/d/c;)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v3, :cond_2

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    :try_start_2
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/perfsight/apm/apm/e;->e()Lcom/perfsight/apm/apm/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/perfsight/apm/apm/e;->c()Z

    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v3, :cond_0

    const-string/jumbo v1, "status"

    const/4 v3, 0x0

    :try_start_3
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string v4, "health"

    :try_start_4
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const-string v4, "level"

    :try_start_5
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    const-string v4, "scale"

    :try_start_6
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    const-string v4, "plugged"

    :try_start_7
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    const-string/jumbo v4, "voltage"

    :try_start_8
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    const-string/jumbo v4, "temperature"

    :try_start_9
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Lcom/perfsight/apm/apm/c;->a()Lcom/perfsight/apm/apm/c;

    move-result-object v4

    invoke-virtual {v4, v15}, Lcom/perfsight/apm/apm/c;->d(I)V

    invoke-static {}, Lcom/perfsight/apm/apm/c;->a()Lcom/perfsight/apm/apm/c;

    move-result-object v4

    invoke-virtual {v4, v11}, Lcom/perfsight/apm/apm/c;->e(I)V

    invoke-static {}, Lcom/perfsight/apm/apm/c;->a()Lcom/perfsight/apm/apm/c;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/perfsight/apm/apm/c;->a(I)V

    const/4 v4, 0x1

    move v5, v1

    move v6, v12

    move v7, v13

    move v8, v14

    move v9, v15

    move v10, v11

    move/from16 v16, v11

    move v11, v0

    invoke-static/range {v4 .. v11}, Lcom/perfsight/apm/jni/TApmNativeHelper;->postBatteryInfo(IIIIIIII)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    const-string v4, "Receivce Battery msg: %d %d %d %d %d %d %d"

    :try_start_a
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v10, 0x7

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v1, v10, v3

    const/4 v1, 0x1

    aput-object v5, v10, v1

    const/4 v1, 0x2

    aput-object v6, v10, v1

    const/4 v1, 0x3

    aput-object v7, v10, v1

    const/4 v1, 0x4

    aput-object v8, v10, v1

    const/4 v1, 0x5

    aput-object v9, v10, v1

    const/4 v1, 0x6

    aput-object v0, v10, v1

    invoke-static {v4, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    goto :goto_0

    :cond_0
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    :try_start_b
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    if-eqz v0, :cond_3

    if-nez p1, :cond_1

    const-string v0, "Context is null, network type changed"

    :try_start_c
    invoke-static {v0}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/perfsight/apm/apm/p;->b(Landroid/content/Context;)Lcom/perfsight/apm/utils/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perfsight/apm/utils/g;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0}, Lcom/perfsight/apm/utils/g;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v1, v0}, Lcom/perfsight/apm/jni/TApmNativeHelper;->postNetworkState(IZ)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    goto :goto_2

    :cond_2
    const-string v0, "receive intent, but background"

    :goto_0
    :try_start_d
    invoke-static {v0}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object/from16 v2, p0

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Broadcast error: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void
.end method
