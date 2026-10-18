.class public Lcom/ihoc/mgpa/deviceid/base/o;
.super Lcom/ihoc/mgpa/deviceid/base/u;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ihoc/mgpa/deviceid/IDeviceIDGetter;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ihoc/mgpa/deviceid/base/u;-><init>(Landroid/content/Context;Lcom/ihoc/mgpa/deviceid/IDeviceIDGetter;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    const-string v0, "get device id failed, msg: "

    const/4 v1, 0x0

    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v3, "content://cn.nubia.identity/identity"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/ihoc/mgpa/deviceid/base/u;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    const-string/jumbo v0, "the device get id failed, uri get null."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/ihoc/mgpa/deviceid/utils/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ihoc/mgpa/deviceid/base/u;->b:Lcom/ihoc/mgpa/deviceid/IDeviceIDGetter;

    sget-object v2, Lcom/ihoc/mgpa/deviceid/DeviceIDResult;->VENDOR_NOT_SUPPORT:Lcom/ihoc/mgpa/deviceid/DeviceIDResult;

    invoke-interface {v0, v2, v1}, Lcom/ihoc/mgpa/deviceid/IDeviceIDGetter;->onComplete(Lcom/ihoc/mgpa/deviceid/DeviceIDResult;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v5, "getOAID"

    invoke-virtual {v3, v5, v1, v1}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5

    const/16 v6, 0x18

    invoke-virtual {v3}, Landroid/content/ContentProviderClient;->release()Z

    if-nez v5, :cond_1

    const-string v0, "get device id failed, bundle is null!."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/ihoc/mgpa/deviceid/utils/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ihoc/mgpa/deviceid/base/u;->b:Lcom/ihoc/mgpa/deviceid/IDeviceIDGetter;

    sget-object v2, Lcom/ihoc/mgpa/deviceid/DeviceIDResult;->OAID_GET_EXCEPTION:Lcom/ihoc/mgpa/deviceid/DeviceIDResult;

    invoke-interface {v0, v2, v1}, Lcom/ihoc/mgpa/deviceid/IDeviceIDGetter;->onComplete(Lcom/ihoc/mgpa/deviceid/DeviceIDResult;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v2, "code"

    const/4 v3, -0x1

    invoke-virtual {v5, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "message"

    invoke-virtual {v5, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/ihoc/mgpa/deviceid/utils/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ihoc/mgpa/deviceid/base/u;->b:Lcom/ihoc/mgpa/deviceid/IDeviceIDGetter;

    sget-object v2, Lcom/ihoc/mgpa/deviceid/DeviceIDResult;->OAID_GET_EXCEPTION:Lcom/ihoc/mgpa/deviceid/DeviceIDResult;

    invoke-interface {v0, v2, v1}, Lcom/ihoc/mgpa/deviceid/IDeviceIDGetter;->onComplete(Lcom/ihoc/mgpa/deviceid/DeviceIDResult;Ljava/lang/String;)V

    return-void

    :cond_2
    const-string v0, "id"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/ihoc/mgpa/deviceid/base/u;->b:Lcom/ihoc/mgpa/deviceid/IDeviceIDGetter;

    sget-object v2, Lcom/ihoc/mgpa/deviceid/DeviceIDResult;->OAID_GET_NULL:Lcom/ihoc/mgpa/deviceid/DeviceIDResult;

    invoke-interface {v0, v2, v1}, Lcom/ihoc/mgpa/deviceid/IDeviceIDGetter;->onComplete(Lcom/ihoc/mgpa/deviceid/DeviceIDResult;Ljava/lang/String;)V

    return-void

    :cond_3
    iget-object v2, p0, Lcom/ihoc/mgpa/deviceid/base/u;->b:Lcom/ihoc/mgpa/deviceid/IDeviceIDGetter;

    sget-object v3, Lcom/ihoc/mgpa/deviceid/DeviceIDResult;->SUCCESS:Lcom/ihoc/mgpa/deviceid/DeviceIDResult;

    invoke-interface {v2, v3, v0}, Lcom/ihoc/mgpa/deviceid/IDeviceIDGetter;->onComplete(Lcom/ihoc/mgpa/deviceid/DeviceIDResult;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "get device id exception."

    invoke-static {v2, v0}, Lcom/ihoc/mgpa/deviceid/utils/LogUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/ihoc/mgpa/deviceid/base/u;->b:Lcom/ihoc/mgpa/deviceid/IDeviceIDGetter;

    sget-object v2, Lcom/ihoc/mgpa/deviceid/DeviceIDResult;->OAID_GET_EXCEPTION:Lcom/ihoc/mgpa/deviceid/DeviceIDResult;

    invoke-interface {v0, v2, v1}, Lcom/ihoc/mgpa/deviceid/IDeviceIDGetter;->onComplete(Lcom/ihoc/mgpa/deviceid/DeviceIDResult;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
