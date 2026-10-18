.class public abstract Lcom/ihoc/mgpa/gradish/y;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ihoc/mgpa/gradish/o;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_DeviceToken"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ihoc/mgpa/gradish/y;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    sput-boolean v0, Lcom/ihoc/mgpa/gradish/y;->b:Z

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/gradish/y;->a:Ljava/lang/String;

    return-object v0
.end method

.method static a(Landroid/content/Context;Lcom/ihoc/mgpa/gradish/i0;)V
    .locals 1

    .line 2
    invoke-static {}, Lcom/ihoc/mgpa/gradish/y;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    sget-object p0, Lcom/ihoc/mgpa/gradish/y;->a:Ljava/lang/String;

    const-string p1, "device token module is not available!"

    invoke-static {p0, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 7
    :cond_0
    :try_start_0
    new-instance v0, Lcom/ihoc/mgpa/gradish/y$c;

    invoke-direct {v0, p1}, Lcom/ihoc/mgpa/gradish/y$c;-><init>(Lcom/ihoc/mgpa/gradish/i0;)V

    .line 14
    invoke-static {p0, v0}, Lcom/ihoc/mgpa/gradish/y;->a(Landroid/content/Context;Lcom/ihoc/mgpa/reflectinterface/IDeviceTokenListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 16
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/ihoc/mgpa/reflectinterface/IDeviceTokenListener;)V
    .locals 3

    .line 20
    invoke-static {p1}, Lcom/ihoc/mgpa/toolkit/util/Reflect;->on(Ljava/lang/Object;)Lcom/ihoc/mgpa/toolkit/util/Reflect;

    move-result-object p1

    const-string v0, "com.ihoc.mgpa.deviceid.IDeviceIDGetter"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ihoc/mgpa/toolkit/util/Reflect;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    .line 21
    const-string v0, "com.ihoc.mgpa.deviceid.DeviceIDHelper"

    invoke-static {v0}, Lcom/ihoc/mgpa/toolkit/util/Reflect;->onClass(Ljava/lang/String;)Lcom/ihoc/mgpa/toolkit/util/Reflect;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const-string p0, "getOAID"

    invoke-virtual {v0, p0, v1}, Lcom/ihoc/mgpa/toolkit/util/Reflect;->call(Ljava/lang/String;[Ljava/lang/Object;)Lcom/ihoc/mgpa/toolkit/util/Reflect;

    return-void
.end method

.method private static a(Lcom/ihoc/mgpa/reflectinterface/IDeviceTokenLog;Lcom/ihoc/mgpa/reflectinterface/IDeviceTokenOS;)V
    .locals 3

    .line 17
    invoke-static {p0}, Lcom/ihoc/mgpa/toolkit/util/Reflect;->on(Ljava/lang/Object;)Lcom/ihoc/mgpa/toolkit/util/Reflect;

    move-result-object p0

    const-string v0, "com.ihoc.mgpa.deviceid.IDeviceIDGetter$LogTool"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ihoc/mgpa/toolkit/util/Reflect;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    .line 18
    invoke-static {p1}, Lcom/ihoc/mgpa/toolkit/util/Reflect;->on(Ljava/lang/Object;)Lcom/ihoc/mgpa/toolkit/util/Reflect;

    move-result-object p1

    const-string v0, "com.ihoc.mgpa.deviceid.IDeviceIDGetter$OSTool"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ihoc/mgpa/toolkit/util/Reflect;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    .line 19
    const-string v0, "com.ihoc.mgpa.deviceid.DeviceIDHelper"

    invoke-static {v0}, Lcom/ihoc/mgpa/toolkit/util/Reflect;->onClass(Ljava/lang/String;)Lcom/ihoc/mgpa/toolkit/util/Reflect;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const-string p0, "registerTool"

    invoke-virtual {v0, p0, v1}, Lcom/ihoc/mgpa/toolkit/util/Reflect;->call(Ljava/lang/String;[Ljava/lang/Object;)Lcom/ihoc/mgpa/toolkit/util/Reflect;

    return-void
.end method

.method public static b()Z
    .locals 6

    .line 1
    const-string v0, "device token module is available, version: "

    const/4 v1, 0x0

    :try_start_0
    sget-boolean v2, Lcom/ihoc/mgpa/gradish/y;->b:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    return v3

    .line 4
    :cond_0
    invoke-static {}, Lcom/ihoc/mgpa/gradish/y;->c()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6
    sput-boolean v1, Lcom/ihoc/mgpa/gradish/y;->b:Z

    .line 7
    sget-object v0, Lcom/ihoc/mgpa/gradish/y;->a:Ljava/lang/String;

    const-string v2, "device token module is not available!"

    invoke-static {v0, v2}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_1
    sget-object v4, Lcom/ihoc/mgpa/gradish/y;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    sput-boolean v3, Lcom/ihoc/mgpa/gradish/y;->b:Z

    .line 12
    :goto_0
    sget-boolean v0, Lcom/ihoc/mgpa/gradish/y;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    return v1
.end method

.method private static c()Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "com.ihoc.mgpa.deviceid.DeviceIDHelper"

    invoke-static {v0}, Lcom/ihoc/mgpa/toolkit/util/Reflect;->onClass(Ljava/lang/String;)Lcom/ihoc/mgpa/toolkit/util/Reflect;

    move-result-object v0

    const-string v1, "getVersionName"

    invoke-virtual {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/Reflect;->call(Ljava/lang/String;)Lcom/ihoc/mgpa/toolkit/util/Reflect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ihoc/mgpa/toolkit/util/Reflect;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static d()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/ihoc/mgpa/gradish/y;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/ihoc/mgpa/gradish/y;->a:Ljava/lang/String;

    const-string v1, "device token module is not available!"

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    new-instance v0, Lcom/ihoc/mgpa/gradish/y$a;

    invoke-direct {v0}, Lcom/ihoc/mgpa/gradish/y$a;-><init>()V

    .line 21
    new-instance v1, Lcom/ihoc/mgpa/gradish/y$b;

    invoke-direct {v1}, Lcom/ihoc/mgpa/gradish/y$b;-><init>()V

    .line 33
    :try_start_0
    invoke-static {v0, v1}, Lcom/ihoc/mgpa/gradish/y;->a(Lcom/ihoc/mgpa/reflectinterface/IDeviceTokenLog;Lcom/ihoc/mgpa/reflectinterface/IDeviceTokenOS;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 35
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
