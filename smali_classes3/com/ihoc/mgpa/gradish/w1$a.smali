.class Lcom/ihoc/mgpa/gradish/w1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ihoc/mgpa/gradish/w1;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBecameBackground()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/gradish/w1;->a(J)J

    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lcom/ihoc/mgpa/gradish/w1;->a:Z

    return-void
.end method

.method public onBecameForeground()V
    .locals 5

    const/4 v0, 0x1

    .line 1
    sput-boolean v0, Lcom/ihoc/mgpa/gradish/w1;->a:Z

    .line 3
    invoke-static {}, Lcom/ihoc/mgpa/gradish/C0;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/AppUtil;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ihoc/mgpa/gradish/x1;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 4
    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "wifi is available, and app is in foreground, start to check router!"

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    invoke-static {}, Lcom/ihoc/mgpa/gradish/u1;->a()Lcom/ihoc/mgpa/gradish/u1;

    move-result-object v0

    const-string v1, ""

    const-wide/16 v2, 0x0

    const/4 v4, 0x4

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/ihoc/mgpa/gradish/u1;->a(ILjava/lang/String;J)V

    :cond_0
    return-void
.end method
