.class public final Lcom/ihoc/mgpa/vendor/utils/w$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/game/gamelibnew/GameServiceHelper$BindListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ihoc/mgpa/vendor/utils/w;->checkVendorServer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/ihoc/mgpa/vendor/utils/w;


# direct methods
.method public constructor <init>(Lcom/ihoc/mgpa/vendor/utils/w;)V
    .locals 0

    iput-object p1, p0, Lcom/ihoc/mgpa/vendor/utils/w$a;->a:Lcom/ihoc/mgpa/vendor/utils/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bindCallBack()V
    .locals 4

    iget-object v0, p0, Lcom/ihoc/mgpa/vendor/utils/w$a;->a:Lcom/ihoc/mgpa/vendor/utils/w;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/vendor/utils/w;->isAvailable()Lcom/ihoc/mgpa/vendor/VendorErrCode;

    move-result-object v0

    sget-object v1, Lcom/ihoc/mgpa/vendor/VendorErrCode;->SUCCESS:Lcom/ihoc/mgpa/vendor/VendorErrCode;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "samsung scenesdk is available. version: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ihoc/mgpa/vendor/utils/w$a;->a:Lcom/ihoc/mgpa/vendor/utils/w;

    iget-object v1, v1, Lcom/ihoc/mgpa/vendor/utils/w;->c:Lcom/samsung/android/game/gamelibnew/GameServiceHelper;

    invoke-virtual {v1}, Lcom/samsung/android/game/gamelibnew/GameServiceHelper;->getVersion()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ihoc/mgpa/vendor/utils/w$a;->a:Lcom/ihoc/mgpa/vendor/utils/w;

    iget-object v1, v0, Lcom/ihoc/mgpa/vendor/utils/b;->a:Lcom/ihoc/mgpa/vendor/utils/a0;

    invoke-interface {v1, v0}, Lcom/ihoc/mgpa/vendor/utils/a0;->onConnectSuccess(Lcom/ihoc/mgpa/vendor/IVendorBridge;)V

    iget-object v0, p0, Lcom/ihoc/mgpa/vendor/utils/w$a;->a:Lcom/ihoc/mgpa/vendor/utils/w;

    .line 1
    iget-object v1, v0, Lcom/ihoc/mgpa/vendor/utils/w;->c:Lcom/samsung/android/game/gamelibnew/GameServiceHelper;

    .line 2
    new-instance v3, Lcom/ihoc/mgpa/vendor/utils/x;

    invoke-direct {v3, v0}, Lcom/ihoc/mgpa/vendor/utils/x;-><init>(Lcom/ihoc/mgpa/vendor/utils/w;)V

    invoke-virtual {v1, v3}, Lcom/samsung/android/game/gamelibnew/GameServiceHelper;->registerListener(Lcom/samsung/android/game/gamelibnew/GameServiceHelper$Listener;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "samsung scenesdk register callback success."

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "samsung scenesdk register callback failed."

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/ihoc/mgpa/vendor/utils/w$a;->a:Lcom/ihoc/mgpa/vendor/utils/w;

    .line 4
    iget-boolean v0, v0, Lcom/ihoc/mgpa/vendor/utils/w;->e:Z

    if-eqz v0, :cond_3

    .line 5
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "samsung scenesdk spa is available. "

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ihoc/mgpa/vendor/utils/w$a;->a:Lcom/ihoc/mgpa/vendor/utils/w;

    .line 6
    iget-boolean v1, v0, Lcom/ihoc/mgpa/vendor/utils/w;->e:Z

    if-nez v1, :cond_1

    .line 7
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "samsung scenesdk: sdk is not support or spa not support. "

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-object v1, v0, Lcom/ihoc/mgpa/vendor/utils/w;->c:Lcom/samsung/android/game/gamelibnew/GameServiceHelper;

    new-instance v3, Lcom/ihoc/mgpa/vendor/utils/y;

    invoke-direct {v3, v0}, Lcom/ihoc/mgpa/vendor/utils/y;-><init>(Lcom/ihoc/mgpa/vendor/utils/w;)V

    const/high16 v0, 0x42700000    # 60.0f

    invoke-virtual {v1, v3, v0}, Lcom/samsung/android/game/gamelibnew/GameServiceHelper;->registerToTGPACallback(Lcom/samsung/android/game/gamelibnew/GameServiceHelper$ToTGPACallback;F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    const-string v0, "samsung scenesdk: spa register callback result: %d"

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 8
    :cond_2
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "samsung scenesdk is not available. "

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/ihoc/mgpa/vendor/utils/w$a;->a:Lcom/ihoc/mgpa/vendor/utils/w;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/vendor/utils/b;->checkSuccessor()V

    return-void
.end method
