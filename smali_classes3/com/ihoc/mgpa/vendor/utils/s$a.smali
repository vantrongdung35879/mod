.class public final Lcom/ihoc/mgpa/vendor/utils/s$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ihoc/mgpa/vendor/utils/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ihoc/mgpa/vendor/utils/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/ihoc/mgpa/vendor/utils/s;


# direct methods
.method public constructor <init>(Lcom/ihoc/mgpa/vendor/utils/s;)V
    .locals 0

    iput-object p1, p0, Lcom/ihoc/mgpa/vendor/utils/s$a;->a:Lcom/ihoc/mgpa/vendor/utils/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "bind cosa service failed, service is not available."

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ihoc/mgpa/vendor/utils/s$a;->a:Lcom/ihoc/mgpa/vendor/utils/s;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/vendor/utils/b;->checkSuccessor()V

    return-void
.end method

.method public final b()V
    .locals 7

    sget-object v0, Lcom/ihoc/mgpa/vendor/VendorErrCode;->SUCCESS:Lcom/ihoc/mgpa/vendor/VendorErrCode;

    iget-object v1, p0, Lcom/ihoc/mgpa/vendor/utils/s$a;->a:Lcom/ihoc/mgpa/vendor/utils/s;

    invoke-virtual {v1}, Lcom/ihoc/mgpa/vendor/utils/s;->isAvailable()Lcom/ihoc/mgpa/vendor/VendorErrCode;

    move-result-object v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "bind cosa service success, service is available."

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ihoc/mgpa/vendor/utils/s$a;->a:Lcom/ihoc/mgpa/vendor/utils/s;

    .line 1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "oppo sdk should register callback timely after bind success, the app\'s certify will be done."

    invoke-static {v2, v1}, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/ihoc/mgpa/vendor/utils/s;->d:Lcom/ihoc/mgpa/vendor/utils/h;

    new-instance v2, Lcom/ihoc/mgpa/vendor/utils/t;

    invoke-direct {v2, v0}, Lcom/ihoc/mgpa/vendor/utils/t;-><init>(Lcom/ihoc/mgpa/vendor/utils/s;)V

    .line 3
    iget-object v0, v1, Lcom/ihoc/mgpa/vendor/utils/h;->a:Lcom/ihoc/mgpa/vendor/utils/a;

    const-string v3, "game service is not available"

    const-string v4, "GameManager"

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, v1, Lcom/ihoc/mgpa/vendor/utils/h;->b:Lcom/ihoc/mgpa/vendor/utils/c;

    sget-object v5, Lcom/ihoc/mgpa/vendor/utils/c;->a:Lcom/ihoc/mgpa/vendor/utils/c;

    if-eq v1, v5, :cond_0

    invoke-virtual {v0, v2}, Lcom/ihoc/mgpa/vendor/utils/a;->a(Lcom/ihoc/mgpa/vendor/utils/k;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/ihoc/mgpa/vendor/utils/s$a;->a:Lcom/ihoc/mgpa/vendor/utils/s;

    iget-object v1, v0, Lcom/ihoc/mgpa/vendor/utils/b;->a:Lcom/ihoc/mgpa/vendor/utils/a0;

    invoke-interface {v1, v0}, Lcom/ihoc/mgpa/vendor/utils/a0;->onConnectSuccess(Lcom/ihoc/mgpa/vendor/IVendorBridge;)V

    iget-object v0, p0, Lcom/ihoc/mgpa/vendor/utils/s$a;->a:Lcom/ihoc/mgpa/vendor/utils/s;

    iget-object v1, v0, Lcom/ihoc/mgpa/vendor/utils/b;->a:Lcom/ihoc/mgpa/vendor/utils/a0;

    sget-object v2, Lcom/ihoc/mgpa/vendor/VendorKey;->STRATEGY_SUPPORT:Lcom/ihoc/mgpa/vendor/VendorKey;

    .line 7
    iget-object v0, v0, Lcom/ihoc/mgpa/vendor/utils/s;->d:Lcom/ihoc/mgpa/vendor/utils/h;

    .line 8
    iget-object v5, v0, Lcom/ihoc/mgpa/vendor/utils/h;->a:Lcom/ihoc/mgpa/vendor/utils/a;

    if-eqz v5, :cond_1

    .line 9
    iget-object v0, v0, Lcom/ihoc/mgpa/vendor/utils/h;->b:Lcom/ihoc/mgpa/vendor/utils/c;

    sget-object v6, Lcom/ihoc/mgpa/vendor/utils/c;->a:Lcom/ihoc/mgpa/vendor/utils/c;

    if-eq v0, v6, :cond_1

    invoke-virtual {v5}, Lcom/ihoc/mgpa/vendor/utils/a;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 10
    :cond_1
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 11
    :goto_1
    invoke-interface {v1, v2, v0}, Lcom/ihoc/mgpa/vendor/utils/a0;->onUpdatePhoneInfo(Lcom/ihoc/mgpa/vendor/VendorKey;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "cosa service is not available."

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    iget-object v0, p0, Lcom/ihoc/mgpa/vendor/utils/s$a;->a:Lcom/ihoc/mgpa/vendor/utils/s;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/vendor/utils/b;->checkSuccessor()V

    return-void
.end method
