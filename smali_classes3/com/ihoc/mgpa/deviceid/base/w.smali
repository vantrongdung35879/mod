.class public Lcom/ihoc/mgpa/deviceid/base/w;
.super Lcom/ihoc/mgpa/deviceid/base/u;
.source "SourceFile"


# instance fields
.field private c:Ljava/lang/Class;

.field private d:Ljava/lang/Object;

.field private e:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ihoc/mgpa/deviceid/IDeviceIDGetter;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ihoc/mgpa/deviceid/base/u;-><init>(Landroid/content/Context;Lcom/ihoc/mgpa/deviceid/IDeviceIDGetter;)V

    invoke-direct {p0}, Lcom/ihoc/mgpa/deviceid/base/w;->a()V

    return-void
.end method

.method private a()V
    .locals 5

    :try_start_0
    const-string v0, "com.android.id.impl.IdProviderImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/ihoc/mgpa/deviceid/base/w;->c:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/ihoc/mgpa/deviceid/base/w;->d:Ljava/lang/Object;

    iget-object v0, p0, Lcom/ihoc/mgpa/deviceid/base/w;->c:Ljava/lang/Class;

    const-string v1, "getOAID"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/ihoc/mgpa/deviceid/base/w;->e:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "This device is not support for getting xiaomi device id."

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/deviceid/utils/LogUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private b()Z
    .locals 1

    iget-object v0, p0, Lcom/ihoc/mgpa/deviceid/base/w;->c:Ljava/lang/Class;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ihoc/mgpa/deviceid/base/w;->d:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ihoc/mgpa/deviceid/base/w;->e:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public c()V
    .locals 7

    invoke-direct {p0}, Lcom/ihoc/mgpa/deviceid/base/w;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ihoc/mgpa/deviceid/base/u;->b:Lcom/ihoc/mgpa/deviceid/IDeviceIDGetter;

    sget-object v2, Lcom/ihoc/mgpa/deviceid/DeviceIDResult;->VENDOR_NOT_SUPPORT:Lcom/ihoc/mgpa/deviceid/DeviceIDResult;

    invoke-interface {v0, v2, v1}, Lcom/ihoc/mgpa/deviceid/IDeviceIDGetter;->onComplete(Lcom/ihoc/mgpa/deviceid/DeviceIDResult;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x1

    :try_start_0
    iget-object v3, p0, Lcom/ihoc/mgpa/deviceid/base/w;->e:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/ihoc/mgpa/deviceid/base/w;->d:Ljava/lang/Object;

    iget-object v5, p0, Lcom/ihoc/mgpa/deviceid/base/u;->a:Landroid/content/Context;

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v5, v6, v0

    invoke-virtual {v3, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v3, p0, Lcom/ihoc/mgpa/deviceid/base/u;->b:Lcom/ihoc/mgpa/deviceid/IDeviceIDGetter;

    sget-object v4, Lcom/ihoc/mgpa/deviceid/DeviceIDResult;->OAID_GET_NULL:Lcom/ihoc/mgpa/deviceid/DeviceIDResult;

    invoke-interface {v3, v4, v1}, Lcom/ihoc/mgpa/deviceid/IDeviceIDGetter;->onComplete(Lcom/ihoc/mgpa/deviceid/DeviceIDResult;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v4, p0, Lcom/ihoc/mgpa/deviceid/base/u;->b:Lcom/ihoc/mgpa/deviceid/IDeviceIDGetter;

    sget-object v5, Lcom/ihoc/mgpa/deviceid/DeviceIDResult;->SUCCESS:Lcom/ihoc/mgpa/deviceid/DeviceIDResult;

    invoke-interface {v4, v5, v3}, Lcom/ihoc/mgpa/deviceid/IDeviceIDGetter;->onComplete(Lcom/ihoc/mgpa/deviceid/DeviceIDResult;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v0

    const-string v0, "get device id exception!"

    invoke-static {v0, v2}, Lcom/ihoc/mgpa/deviceid/utils/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ihoc/mgpa/deviceid/base/u;->b:Lcom/ihoc/mgpa/deviceid/IDeviceIDGetter;

    sget-object v2, Lcom/ihoc/mgpa/deviceid/DeviceIDResult;->OAID_GET_EXCEPTION:Lcom/ihoc/mgpa/deviceid/DeviceIDResult;

    invoke-interface {v0, v2, v1}, Lcom/ihoc/mgpa/deviceid/IDeviceIDGetter;->onComplete(Lcom/ihoc/mgpa/deviceid/DeviceIDResult;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
