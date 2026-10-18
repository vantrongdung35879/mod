.class public Lcom/ihoc/mgpa/deviceid/base/a;
.super Lcom/ihoc/mgpa/deviceid/base/v;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ihoc/mgpa/deviceid/IDeviceIDGetter;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ihoc/mgpa/deviceid/base/v;-><init>(Landroid/content/Context;Lcom/ihoc/mgpa/deviceid/IDeviceIDGetter;)V

    return-void
.end method

.method private a(Landroid/os/IBinder;)V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/ihoc/mgpa/deviceid/base/b$a;->a(Landroid/os/IBinder;)Lcom/ihoc/mgpa/deviceid/base/b;

    move-result-object p1

    invoke-interface {p1}, Lcom/ihoc/mgpa/deviceid/base/b;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/ihoc/mgpa/deviceid/base/u;->b:Lcom/ihoc/mgpa/deviceid/IDeviceIDGetter;

    sget-object v1, Lcom/ihoc/mgpa/deviceid/DeviceIDResult;->OAID_GET_NULL:Lcom/ihoc/mgpa/deviceid/DeviceIDResult;

    invoke-interface {p1, v1, v0}, Lcom/ihoc/mgpa/deviceid/IDeviceIDGetter;->onComplete(Lcom/ihoc/mgpa/deviceid/DeviceIDResult;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/ihoc/mgpa/deviceid/base/u;->b:Lcom/ihoc/mgpa/deviceid/IDeviceIDGetter;

    sget-object v2, Lcom/ihoc/mgpa/deviceid/DeviceIDResult;->SUCCESS:Lcom/ihoc/mgpa/deviceid/DeviceIDResult;

    invoke-interface {v1, v2, p1}, Lcom/ihoc/mgpa/deviceid/IDeviceIDGetter;->onComplete(Lcom/ihoc/mgpa/deviceid/DeviceIDResult;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "get device id exception!"

    invoke-static {v1, p1}, Lcom/ihoc/mgpa/deviceid/utils/LogUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/ihoc/mgpa/deviceid/base/u;->b:Lcom/ihoc/mgpa/deviceid/IDeviceIDGetter;

    sget-object v1, Lcom/ihoc/mgpa/deviceid/DeviceIDResult;->OAID_GET_EXCEPTION:Lcom/ihoc/mgpa/deviceid/DeviceIDResult;

    invoke-interface {p1, v1, v0}, Lcom/ihoc/mgpa/deviceid/IDeviceIDGetter;->onComplete(Lcom/ihoc/mgpa/deviceid/DeviceIDResult;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/ihoc/mgpa/deviceid/base/a;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ihoc/mgpa/deviceid/base/a;->a(Landroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.asus.msa.SupplementaryDID"

    const-string v3, "com.asus.msa.SupplementaryDID.SupplementaryDIDService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "com.asus.msa.action.ACCESS_DID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Lcom/ihoc/mgpa/deviceid/base/a$a;

    invoke-direct {v1, p0}, Lcom/ihoc/mgpa/deviceid/base/a$a;-><init>(Lcom/ihoc/mgpa/deviceid/base/a;)V

    invoke-virtual {p0, v0, v1}, Lcom/ihoc/mgpa/deviceid/base/a;->a(Landroid/content/Intent;Lcom/ihoc/mgpa/deviceid/base/v$b;)V

    return-void
.end method

.method public bridge synthetic a(Landroid/content/Intent;Lcom/ihoc/mgpa/deviceid/base/v$b;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/ihoc/mgpa/deviceid/base/v;->a(Landroid/content/Intent;Lcom/ihoc/mgpa/deviceid/base/v$b;)V

    return-void
.end method
