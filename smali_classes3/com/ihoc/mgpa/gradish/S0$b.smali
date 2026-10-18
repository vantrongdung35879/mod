.class Lcom/ihoc/mgpa/gradish/S0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ihoc/mgpa/gradish/S0;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ihoc/mgpa/gradish/S0$b;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

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

    if-eqz v0, :cond_1

    .line 10
    invoke-static {}, Lcom/ihoc/mgpa/gradish/S0;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/ihoc/mgpa/toolkit/util/Reflect;->on(Ljava/lang/Object;)Lcom/ihoc/mgpa/toolkit/util/Reflect;

    move-result-object v0

    const-string v1, "closeRoundView"

    iget-object v2, p0, Lcom/ihoc/mgpa/gradish/S0$b;->a:Landroid/app/Activity;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-virtual {v0, v1, v3}, Lcom/ihoc/mgpa/toolkit/util/Reflect;->call(Ljava/lang/String;[Ljava/lang/Object;)Lcom/ihoc/mgpa/toolkit/util/Reflect;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
