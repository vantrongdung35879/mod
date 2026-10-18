.class public Lcom/tencent/tme/live/v0/f;
.super Ljava/lang/Object;


# static fields
.field public static a:Landroid/app/Application; = null

.field public static volatile b:Lcom/tencent/tme/live/framework/common/b; = null

.field public static volatile c:Lcom/tencent/tme/live/w0/d; = null

.field public static d:Lcom/tencent/tme/live/framework/model/PopTVCfgBean; = null

.field public static e:Lcom/tencent/tme/live/w0/o$a; = null

.field public static f:Lcom/tencent/tme/live/l2/b; = null

.field public static g:Z = false


# direct methods
.method public static a()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/tencent/tme/live/v0/f;->a:Landroid/app/Application;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static b()Lcom/tencent/tme/live/w0/o$a;
    .locals 1

    sget-object v0, Lcom/tencent/tme/live/v0/f;->e:Lcom/tencent/tme/live/w0/o$a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/tme/live/w0/o$a;

    invoke-direct {v0}, Lcom/tencent/tme/live/w0/o$a;-><init>()V

    :cond_0
    return-object v0
.end method

.method public static c()Lcom/tencent/tme/live/framework/common/b;
    .locals 1

    sget-object v0, Lcom/tencent/tme/live/v0/f;->b:Lcom/tencent/tme/live/framework/common/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/tme/live/framework/common/b;

    invoke-direct {v0}, Lcom/tencent/tme/live/framework/common/b;-><init>()V

    return-object v0

    :cond_0
    sget-object v0, Lcom/tencent/tme/live/v0/f;->b:Lcom/tencent/tme/live/framework/common/b;

    return-object v0
.end method

.method public static d()Lcom/tencent/tme/live/w0/d;
    .locals 1

    sget-object v0, Lcom/tencent/tme/live/v0/f;->c:Lcom/tencent/tme/live/w0/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/tme/live/w0/d;

    invoke-direct {v0}, Lcom/tencent/tme/live/w0/d;-><init>()V

    return-object v0

    :cond_0
    sget-object v0, Lcom/tencent/tme/live/v0/f;->c:Lcom/tencent/tme/live/w0/d;

    return-object v0
.end method
