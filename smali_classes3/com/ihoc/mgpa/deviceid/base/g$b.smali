.class Lcom/ihoc/mgpa/deviceid/base/g$b;
.super Lcom/ihoc/mgpa/deviceid/base/i$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ihoc/mgpa/deviceid/base/g;->a(Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ihoc/mgpa/deviceid/base/g;


# direct methods
.method constructor <init>(Lcom/ihoc/mgpa/deviceid/base/g;)V
    .locals 0

    iput-object p1, p0, Lcom/ihoc/mgpa/deviceid/base/g$b;->a:Lcom/ihoc/mgpa/deviceid/base/g;

    invoke-direct {p0}, Lcom/ihoc/mgpa/deviceid/base/i$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IJZFDLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public a(ILandroid/os/Bundle;)V
    .locals 2

    if-nez p1, :cond_1

    const/4 p1, 0x0

    :try_start_0
    const-string v0, "oa_id_flag"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ihoc/mgpa/deviceid/base/g$b;->a:Lcom/ihoc/mgpa/deviceid/base/g;

    invoke-static {v0, p2}, Lcom/ihoc/mgpa/deviceid/base/g;->a(Lcom/ihoc/mgpa/deviceid/base/g;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, " get device token success from honor service."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/deviceid/utils/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ihoc/mgpa/deviceid/base/g$b;->a:Lcom/ihoc/mgpa/deviceid/base/g;

    iget-object v0, v0, Lcom/ihoc/mgpa/deviceid/base/u;->b:Lcom/ihoc/mgpa/deviceid/IDeviceIDGetter;

    sget-object v1, Lcom/ihoc/mgpa/deviceid/DeviceIDResult;->SUCCESS:Lcom/ihoc/mgpa/deviceid/DeviceIDResult;

    invoke-interface {v0, v1, p2}, Lcom/ihoc/mgpa/deviceid/IDeviceIDGetter;->onComplete(Lcom/ihoc/mgpa/deviceid/DeviceIDResult;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/ihoc/mgpa/deviceid/base/g$b;->a:Lcom/ihoc/mgpa/deviceid/base/g;

    iget-object p2, p2, Lcom/ihoc/mgpa/deviceid/base/u;->b:Lcom/ihoc/mgpa/deviceid/IDeviceIDGetter;

    sget-object v0, Lcom/ihoc/mgpa/deviceid/DeviceIDResult;->OAID_GET_NULL:Lcom/ihoc/mgpa/deviceid/DeviceIDResult;

    invoke-interface {p2, v0, p1}, Lcom/ihoc/mgpa/deviceid/IDeviceIDGetter;->onComplete(Lcom/ihoc/mgpa/deviceid/DeviceIDResult;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object p2, p0, Lcom/ihoc/mgpa/deviceid/base/g$b;->a:Lcom/ihoc/mgpa/deviceid/base/g;

    iget-object p2, p2, Lcom/ihoc/mgpa/deviceid/base/u;->b:Lcom/ihoc/mgpa/deviceid/IDeviceIDGetter;

    sget-object v0, Lcom/ihoc/mgpa/deviceid/DeviceIDResult;->OAID_SERVICE_BIND_EXCEPTION:Lcom/ihoc/mgpa/deviceid/DeviceIDResult;

    invoke-interface {p2, v0, p1}, Lcom/ihoc/mgpa/deviceid/IDeviceIDGetter;->onComplete(Lcom/ihoc/mgpa/deviceid/DeviceIDResult;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
