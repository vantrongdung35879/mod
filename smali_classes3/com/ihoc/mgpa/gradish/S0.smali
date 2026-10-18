.class public abstract Lcom/ihoc/mgpa/gradish/S0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/Object;


# direct methods
.method static synthetic a()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/gradish/S0;->a:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    sput-object p0, Lcom/ihoc/mgpa/gradish/S0;->a:Ljava/lang/Object;

    return-object p0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    .line 3
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/EngineUtil;->getGameMainActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    new-instance v1, Lcom/ihoc/mgpa/gradish/S0$a;

    invoke-direct {v1, v0, p0}, Lcom/ihoc/mgpa/gradish/S0$a;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static b()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/EngineUtil;->getGameMainActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Lcom/ihoc/mgpa/gradish/S0$b;

    invoke-direct {v1, v0}, Lcom/ihoc/mgpa/gradish/S0$b;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 22
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "MGPA_[StreamLine] get game main activity failed for streamline!"

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
