.class Lcom/ihoc/mgpa/deviceid/base/v;
.super Lcom/ihoc/mgpa/deviceid/base/u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ihoc/mgpa/deviceid/base/v$b;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ihoc/mgpa/deviceid/IDeviceIDGetter;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ihoc/mgpa/deviceid/base/u;-><init>(Landroid/content/Context;Lcom/ihoc/mgpa/deviceid/IDeviceIDGetter;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;Lcom/ihoc/mgpa/deviceid/base/v$b;)V
    .locals 3

    new-instance v0, Lcom/ihoc/mgpa/deviceid/base/v$a;

    invoke-direct {v0, p0, p2}, Lcom/ihoc/mgpa/deviceid/base/v$a;-><init>(Lcom/ihoc/mgpa/deviceid/base/v;Lcom/ihoc/mgpa/deviceid/base/v$b;)V

    const/4 p2, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/ihoc/mgpa/deviceid/base/u;->a:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "bind vendor service success!"

    invoke-static {p1}, Lcom/ihoc/mgpa/deviceid/utils/LogUtil;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "bind vendor service failed! maybe this device is not support to get device id."

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/ihoc/mgpa/deviceid/utils/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/ihoc/mgpa/deviceid/base/u;->b:Lcom/ihoc/mgpa/deviceid/IDeviceIDGetter;

    sget-object v0, Lcom/ihoc/mgpa/deviceid/DeviceIDResult;->OAID_SERVICE_BIND_FAILED:Lcom/ihoc/mgpa/deviceid/DeviceIDResult;

    invoke-interface {p1, v0, p2}, Lcom/ihoc/mgpa/deviceid/IDeviceIDGetter;->onComplete(Lcom/ihoc/mgpa/deviceid/DeviceIDResult;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "bind oaid service exception!"

    invoke-static {v0, p1}, Lcom/ihoc/mgpa/deviceid/utils/LogUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/ihoc/mgpa/deviceid/base/u;->b:Lcom/ihoc/mgpa/deviceid/IDeviceIDGetter;

    sget-object v0, Lcom/ihoc/mgpa/deviceid/DeviceIDResult;->OAID_SERVICE_BIND_EXCEPTION:Lcom/ihoc/mgpa/deviceid/DeviceIDResult;

    invoke-interface {p1, v0, p2}, Lcom/ihoc/mgpa/deviceid/IDeviceIDGetter;->onComplete(Lcom/ihoc/mgpa/deviceid/DeviceIDResult;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
