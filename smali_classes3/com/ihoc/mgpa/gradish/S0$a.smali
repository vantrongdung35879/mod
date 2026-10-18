.class Lcom/ihoc/mgpa/gradish/S0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ihoc/mgpa/gradish/S0;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ihoc/mgpa/gradish/S0$a;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/ihoc/mgpa/gradish/S0$a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    :try_start_0
    invoke-static {}, Lcom/ihoc/mgpa/gradish/S0;->a()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    const-string v0, "com.ihoc.mgpa.streamline.levitatedsphere.ui.RoundView"

    invoke-static {v0}, Lcom/ihoc/mgpa/toolkit/util/Reflect;->onClass(Ljava/lang/String;)Lcom/ihoc/mgpa/toolkit/util/Reflect;

    move-result-object v0

    const-string v1, "getInstance"

    .line 3
    invoke-virtual {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/Reflect;->call(Ljava/lang/String;)Lcom/ihoc/mgpa/toolkit/util/Reflect;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/ihoc/mgpa/toolkit/util/Reflect;->get()Ljava/lang/Object;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/ihoc/mgpa/gradish/S0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :cond_0
    invoke-static {}, Lcom/ihoc/mgpa/gradish/S0;->a()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 10
    invoke-static {}, Lcom/ihoc/mgpa/gradish/S0;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/ihoc/mgpa/toolkit/util/Reflect;->on(Ljava/lang/Object;)Lcom/ihoc/mgpa/toolkit/util/Reflect;

    move-result-object v0

    const-string v2, "showRoundView"

    iget-object v3, p0, Lcom/ihoc/mgpa/gradish/S0$a;->a:Landroid/app/Activity;

    iget-object v4, p0, Lcom/ihoc/mgpa/gradish/S0$a;->b:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v1

    const/4 v1, 0x1

    aput-object v4, v5, v1

    invoke-virtual {v0, v2, v5}, Lcom/ihoc/mgpa/toolkit/util/Reflect;->call(Ljava/lang/String;[Ljava/lang/Object;)Lcom/ihoc/mgpa/toolkit/util/Reflect;

    goto :goto_0

    .line 12
    :cond_1
    const-string v0, "MGPA_[StreamLine] get game main activity failed for streamline!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
