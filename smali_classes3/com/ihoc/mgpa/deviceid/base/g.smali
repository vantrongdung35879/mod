.class public Lcom/ihoc/mgpa/deviceid/base/g;
.super Lcom/ihoc/mgpa/deviceid/base/v;
.source "SourceFile"


# instance fields
.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ihoc/mgpa/deviceid/IDeviceIDGetter;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ihoc/mgpa/deviceid/base/v;-><init>(Landroid/content/Context;Lcom/ihoc/mgpa/deviceid/IDeviceIDGetter;)V

    const-string p1, ""

    iput-object p1, p0, Lcom/ihoc/mgpa/deviceid/base/g;->c:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/ihoc/mgpa/deviceid/base/g;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/ihoc/mgpa/deviceid/base/g;->c:Ljava/lang/String;

    return-object p1
.end method

.method private a(Landroid/os/IBinder;)V
    .locals 2

    :try_start_0
    invoke-static {p1}, Lcom/ihoc/mgpa/deviceid/base/h;->a(Landroid/os/IBinder;)Lcom/ihoc/mgpa/deviceid/base/h$a;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/ihoc/mgpa/deviceid/base/u;->b:Lcom/ihoc/mgpa/deviceid/IDeviceIDGetter;

    sget-object v0, Lcom/ihoc/mgpa/deviceid/DeviceIDResult;->OAID_SERVICE_BIND_EXCEPTION:Lcom/ihoc/mgpa/deviceid/DeviceIDResult;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/ihoc/mgpa/deviceid/IDeviceIDGetter;->onComplete(Lcom/ihoc/mgpa/deviceid/DeviceIDResult;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lcom/ihoc/mgpa/deviceid/base/g$b;

    invoke-direct {v0, p0}, Lcom/ihoc/mgpa/deviceid/base/g$b;-><init>(Lcom/ihoc/mgpa/deviceid/base/g;)V

    invoke-virtual {p1, v0}, Lcom/ihoc/mgpa/deviceid/base/h$a;->a(Lcom/ihoc/mgpa/deviceid/base/i$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/ihoc/mgpa/deviceid/base/g;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ihoc/mgpa/deviceid/base/g;->a(Landroid/os/IBinder;)V

    return-void
.end method

.method private a()Z
    .locals 5

    const-string v0, "com.hihonor.id"

    iget-object v1, p0, Lcom/ihoc/mgpa/deviceid/base/u;->a:Landroid/content/Context;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.hihonor.id.HnOaIdService"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v3, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const-string v1, " [isSupport]: "

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/deviceid/utils/LogUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    return v2
.end method

.method private b()V
    .locals 4

    const-string v0, "oaid"

    const-string v1, "oa_id_limit_state"

    const-string v2, ""

    :try_start_0
    iget-object v3, p0, Lcom/ihoc/mgpa/deviceid/base/u;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    iget-object v3, p0, Lcom/ihoc/mgpa/deviceid/base/u;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/ihoc/mgpa/deviceid/base/u;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/ihoc/mgpa/deviceid/base/u;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    iput-object v2, p0, Lcom/ihoc/mgpa/deviceid/base/g;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/content/Intent;Lcom/ihoc/mgpa/deviceid/base/v$b;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/ihoc/mgpa/deviceid/base/v;->a(Landroid/content/Intent;Lcom/ihoc/mgpa/deviceid/base/v$b;)V

    return-void
.end method

.method public c()V
    .locals 3

    invoke-direct {p0}, Lcom/ihoc/mgpa/deviceid/base/g;->b()V

    iget-object v0, p0, Lcom/ihoc/mgpa/deviceid/base/g;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, " get device token success from honor provider."

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/deviceid/utils/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ihoc/mgpa/deviceid/base/u;->b:Lcom/ihoc/mgpa/deviceid/IDeviceIDGetter;

    sget-object v1, Lcom/ihoc/mgpa/deviceid/DeviceIDResult;->SUCCESS:Lcom/ihoc/mgpa/deviceid/DeviceIDResult;

    iget-object v2, p0, Lcom/ihoc/mgpa/deviceid/base/g;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/ihoc/mgpa/deviceid/IDeviceIDGetter;->onComplete(Lcom/ihoc/mgpa/deviceid/DeviceIDResult;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/ihoc/mgpa/deviceid/base/g;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.hihonor.id.HnOaIdService"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.hihonor.id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Lcom/ihoc/mgpa/deviceid/base/g$a;

    invoke-direct {v1, p0}, Lcom/ihoc/mgpa/deviceid/base/g$a;-><init>(Lcom/ihoc/mgpa/deviceid/base/g;)V

    invoke-virtual {p0, v0, v1}, Lcom/ihoc/mgpa/deviceid/base/g;->a(Landroid/content/Intent;Lcom/ihoc/mgpa/deviceid/base/v$b;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/ihoc/mgpa/deviceid/base/e;

    iget-object v1, p0, Lcom/ihoc/mgpa/deviceid/base/u;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/ihoc/mgpa/deviceid/base/u;->b:Lcom/ihoc/mgpa/deviceid/IDeviceIDGetter;

    invoke-direct {v0, v1, v2}, Lcom/ihoc/mgpa/deviceid/base/e;-><init>(Landroid/content/Context;Lcom/ihoc/mgpa/deviceid/IDeviceIDGetter;)V

    invoke-virtual {v0}, Lcom/ihoc/mgpa/deviceid/base/e;->c()V

    :goto_0
    return-void
.end method
