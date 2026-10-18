.class public Lcom/ihoc/mgpa/deviceid/base/p;
.super Lcom/ihoc/mgpa/deviceid/base/v;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ihoc/mgpa/deviceid/IDeviceIDGetter;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ihoc/mgpa/deviceid/base/v;-><init>(Landroid/content/Context;Lcom/ihoc/mgpa/deviceid/IDeviceIDGetter;)V

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Lcom/ihoc/mgpa/deviceid/base/u;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/ihoc/mgpa/deviceid/base/u;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x40

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    array-length v2, v0

    if-lez v2, :cond_1

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    :try_start_1
    const-string v3, "SHA1"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    array-length v4, v0

    :goto_1
    if-ge v2, v4, :cond_0

    aget-byte v5, v0, v2

    and-int/lit16 v5, v5, 0xff

    or-int/lit16 v5, v5, 0x100

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    const/4 v7, 0x1

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_2
    return-object v1
.end method

.method private a(Landroid/os/IBinder;)V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/ihoc/mgpa/deviceid/base/q$a;->a(Landroid/os/IBinder;)Lcom/ihoc/mgpa/deviceid/base/q;

    move-result-object p1

    iget-object v1, p0, Lcom/ihoc/mgpa/deviceid/base/u;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/ihoc/mgpa/deviceid/base/p;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OUID"

    invoke-interface {p1, v1, v2, v3}, Lcom/ihoc/mgpa/deviceid/base/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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

.method static synthetic a(Lcom/ihoc/mgpa/deviceid/base/p;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ihoc/mgpa/deviceid/base/p;->a(Landroid/os/IBinder;)V

    return-void
.end method

.method private b()Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/ihoc/mgpa/deviceid/base/u;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    const-string v2, "com.heytap.openid"

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_2

    invoke-static {v1}, Lbq/log$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/pm/PackageInfo;)J

    move-result-wide v1

    goto :goto_0

    :cond_2
    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v1, v1

    :goto_0
    const-wide/16 v3, 0x1

    cmp-long v5, v1, v3

    if-ltz v5, :cond_3

    const/4 v0, 0x1

    :catch_0
    :cond_3
    return v0
.end method

.method private c()Landroid/content/Intent;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.heytap.openid"

    const-string v3, "com.heytap.openid.IdentifyService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "action.com.heytap.openid.OPEN_ID_SERVICE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic a(Landroid/content/Intent;Lcom/ihoc/mgpa/deviceid/base/v$b;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/ihoc/mgpa/deviceid/base/v;->a(Landroid/content/Intent;Lcom/ihoc/mgpa/deviceid/base/v$b;)V

    return-void
.end method

.method public d()V
    .locals 3

    invoke-direct {p0}, Lcom/ihoc/mgpa/deviceid/base/p;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "This device is not support for getting oppo device id."

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/deviceid/utils/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ihoc/mgpa/deviceid/base/u;->b:Lcom/ihoc/mgpa/deviceid/IDeviceIDGetter;

    sget-object v1, Lcom/ihoc/mgpa/deviceid/DeviceIDResult;->VENDOR_NOT_SUPPORT:Lcom/ihoc/mgpa/deviceid/DeviceIDResult;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/ihoc/mgpa/deviceid/IDeviceIDGetter;->onComplete(Lcom/ihoc/mgpa/deviceid/DeviceIDResult;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/ihoc/mgpa/deviceid/base/p;->c()Landroid/content/Intent;

    move-result-object v0

    new-instance v1, Lcom/ihoc/mgpa/deviceid/base/p$a;

    invoke-direct {v1, p0}, Lcom/ihoc/mgpa/deviceid/base/p$a;-><init>(Lcom/ihoc/mgpa/deviceid/base/p;)V

    invoke-virtual {p0, v0, v1}, Lcom/ihoc/mgpa/deviceid/base/p;->a(Landroid/content/Intent;Lcom/ihoc/mgpa/deviceid/base/v$b;)V

    return-void
.end method
