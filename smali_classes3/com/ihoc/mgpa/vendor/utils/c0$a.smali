.class public final Lcom/ihoc/mgpa/vendor/utils/c0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ihoc/mgpa/vendor/utils/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ihoc/mgpa/vendor/utils/c0;->checkVendorServer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/ihoc/mgpa/vendor/utils/c0;


# direct methods
.method public constructor <init>(Lcom/ihoc/mgpa/vendor/utils/c0;)V
    .locals 0

    iput-object p1, p0, Lcom/ihoc/mgpa/vendor/utils/c0$a;->a:Lcom/ihoc/mgpa/vendor/utils/c0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bindCallBack()V
    .locals 4

    iget-object v0, p0, Lcom/ihoc/mgpa/vendor/utils/c0$a;->a:Lcom/ihoc/mgpa/vendor/utils/c0;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/vendor/utils/c0;->isAvailable()Lcom/ihoc/mgpa/vendor/VendorErrCode;

    move-result-object v0

    sget-object v1, Lcom/ihoc/mgpa/vendor/VendorErrCode;->SUCCESS:Lcom/ihoc/mgpa/vendor/VendorErrCode;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "standard binder v1, bind service success."

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ihoc/mgpa/vendor/utils/c0$a;->a:Lcom/ihoc/mgpa/vendor/utils/c0;

    iget-object v1, v0, Lcom/ihoc/mgpa/vendor/utils/b;->a:Lcom/ihoc/mgpa/vendor/utils/a0;

    invoke-interface {v1, v0}, Lcom/ihoc/mgpa/vendor/utils/a0;->onConnectSuccess(Lcom/ihoc/mgpa/vendor/IVendorBridge;)V

    iget-object v0, p0, Lcom/ihoc/mgpa/vendor/utils/c0$a;->a:Lcom/ihoc/mgpa/vendor/utils/c0;

    .line 1
    iget-object v1, v0, Lcom/ihoc/mgpa/vendor/utils/c0;->c:Lcom/ihoc/mgpa/vendor/utils/h0;

    .line 2
    new-instance v2, Lcom/ihoc/mgpa/vendor/utils/d0;

    invoke-direct {v2, v0}, Lcom/ihoc/mgpa/vendor/utils/d0;-><init>(Lcom/ihoc/mgpa/vendor/utils/c0;)V

    .line 3
    iget v0, v1, Lcom/ihoc/mgpa/vendor/utils/h0;->g:I

    if-nez v0, :cond_0

    .line 4
    iget-object v0, v1, Lcom/ihoc/mgpa/vendor/utils/h0;->e:Lcom/ihoc/mgpa/vendor/utils/e0;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, v2}, Lcom/ihoc/mgpa/vendor/utils/e0;->a(Lcom/ihoc/mgpa/vendor/utils/b0$a;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 5
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ihoc/mgpa/vendor/utils/c0$a;->a:Lcom/ihoc/mgpa/vendor/utils/c0;

    iget-object v1, v0, Lcom/ihoc/mgpa/vendor/utils/b;->a:Lcom/ihoc/mgpa/vendor/utils/a0;

    sget-object v2, Lcom/ihoc/mgpa/vendor/VendorKey;->STRATEGY_SUPPORT:Lcom/ihoc/mgpa/vendor/VendorKey;

    .line 6
    iget-object v0, v0, Lcom/ihoc/mgpa/vendor/utils/c0;->c:Lcom/ihoc/mgpa/vendor/utils/h0;

    .line 7
    iget v3, v0, Lcom/ihoc/mgpa/vendor/utils/h0;->g:I

    if-nez v3, :cond_1

    .line 8
    iget-object v0, v0, Lcom/ihoc/mgpa/vendor/utils/h0;->e:Lcom/ihoc/mgpa/vendor/utils/e0;

    if-eqz v0, :cond_1

    :try_start_1
    invoke-interface {v0}, Lcom/ihoc/mgpa/vendor/utils/e0;->getSupportStrategy()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    :cond_1
    const/4 v0, 0x0

    .line 9
    :goto_1
    invoke-interface {v1, v2, v0}, Lcom/ihoc/mgpa/vendor/utils/a0;->onUpdatePhoneInfo(Lcom/ihoc/mgpa/vendor/VendorKey;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "standard binder v1, bind service failed."

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    iget-object v0, p0, Lcom/ihoc/mgpa/vendor/utils/c0$a;->a:Lcom/ihoc/mgpa/vendor/utils/c0;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/vendor/utils/b;->checkSuccessor()V

    return-void
.end method
