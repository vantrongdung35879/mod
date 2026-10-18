.class public final Lcom/ihoc/mgpa/vendor/utils/i0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ihoc/mgpa/vendorsdk/v2_0/ServerBindCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ihoc/mgpa/vendor/utils/i0;->checkVendorServer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/ihoc/mgpa/vendor/utils/i0;


# direct methods
.method public constructor <init>(Lcom/ihoc/mgpa/vendor/utils/i0;)V
    .locals 0

    iput-object p1, p0, Lcom/ihoc/mgpa/vendor/utils/i0$a;->a:Lcom/ihoc/mgpa/vendor/utils/i0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bindCallBack()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "binder protocol v2, register callback success."

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ihoc/mgpa/vendor/utils/i0$a;->a:Lcom/ihoc/mgpa/vendor/utils/i0;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/vendor/utils/i0;->isAvailable()Lcom/ihoc/mgpa/vendor/VendorErrCode;

    move-result-object v0

    sget-object v1, Lcom/ihoc/mgpa/vendor/VendorErrCode;->SUCCESS:Lcom/ihoc/mgpa/vendor/VendorErrCode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ihoc/mgpa/vendor/utils/i0$a;->a:Lcom/ihoc/mgpa/vendor/utils/i0;

    iget-object v1, v0, Lcom/ihoc/mgpa/vendor/utils/b;->a:Lcom/ihoc/mgpa/vendor/utils/a0;

    invoke-interface {v1, v0}, Lcom/ihoc/mgpa/vendor/utils/a0;->onConnectSuccess(Lcom/ihoc/mgpa/vendor/IVendorBridge;)V

    iget-object v0, p0, Lcom/ihoc/mgpa/vendor/utils/i0$a;->a:Lcom/ihoc/mgpa/vendor/utils/i0;

    .line 1
    iget-object v1, v0, Lcom/ihoc/mgpa/vendor/utils/i0;->c:Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;

    .line 2
    new-instance v2, Lcom/ihoc/mgpa/vendor/utils/j0;

    invoke-direct {v2, v0}, Lcom/ihoc/mgpa/vendor/utils/j0;-><init>(Lcom/ihoc/mgpa/vendor/utils/i0;)V

    invoke-virtual {v1, v2}, Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;->registerGameCallback(Lcom/ihoc/mgpa/vendorsdk/v2_0/ICallBack;)V

    .line 3
    iget-object v0, p0, Lcom/ihoc/mgpa/vendor/utils/i0$a;->a:Lcom/ihoc/mgpa/vendor/utils/i0;

    iget-object v1, v0, Lcom/ihoc/mgpa/vendor/utils/b;->a:Lcom/ihoc/mgpa/vendor/utils/a0;

    sget-object v2, Lcom/ihoc/mgpa/vendor/VendorKey;->STRATEGY_SUPPORT:Lcom/ihoc/mgpa/vendor/VendorKey;

    .line 4
    iget-object v0, v0, Lcom/ihoc/mgpa/vendor/utils/i0;->c:Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;

    .line 5
    invoke-virtual {v0}, Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;->getSupportStrategy()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/ihoc/mgpa/vendor/utils/a0;->onUpdatePhoneInfo(Lcom/ihoc/mgpa/vendor/VendorKey;Ljava/lang/String;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/ihoc/mgpa/vendor/utils/i0$a;->a:Lcom/ihoc/mgpa/vendor/utils/i0;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/vendor/utils/b;->checkSuccessor()V

    return-void
.end method
