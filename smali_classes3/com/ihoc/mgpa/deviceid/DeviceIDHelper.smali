.class public Lcom/ihoc/mgpa/deviceid/DeviceIDHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile hasInvoked:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOAID(Landroid/content/Context;Lcom/ihoc/mgpa/deviceid/IDeviceIDGetter;)V
    .locals 2

    const-string v0, "start to get the device\'s oaid by auto check vendor."

    invoke-static {v0}, Lcom/ihoc/mgpa/deviceid/utils/LogUtil;->print(Ljava/lang/String;)V

    sget-object v0, Lcom/ihoc/mgpa/deviceid/VendorType;->UNSUPPORT:Lcom/ihoc/mgpa/deviceid/VendorType;

    invoke-static {}, Lcom/ihoc/mgpa/deviceid/utils/OSUtil;->isXiaomi()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/ihoc/mgpa/deviceid/VendorType;->XIAOMI:Lcom/ihoc/mgpa/deviceid/VendorType;

    goto/16 :goto_1

    :cond_0
    invoke-static {}, Lcom/ihoc/mgpa/deviceid/utils/OSUtil;->isHonor()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/ihoc/mgpa/deviceid/VendorType;->HONOR:Lcom/ihoc/mgpa/deviceid/VendorType;

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/ihoc/mgpa/deviceid/utils/OSUtil;->isHuawei()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Lcom/ihoc/mgpa/deviceid/VendorType;->HUAWEI:Lcom/ihoc/mgpa/deviceid/VendorType;

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/ihoc/mgpa/deviceid/utils/OSUtil;->isOppo()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v0, Lcom/ihoc/mgpa/deviceid/VendorType;->OPPO:Lcom/ihoc/mgpa/deviceid/VendorType;

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/ihoc/mgpa/deviceid/utils/OSUtil;->isVivo()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v0, Lcom/ihoc/mgpa/deviceid/VendorType;->VIVO:Lcom/ihoc/mgpa/deviceid/VendorType;

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/ihoc/mgpa/deviceid/utils/OSUtil;->isMeizu()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/ihoc/mgpa/deviceid/utils/OSUtil;->isASUS()Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v0, Lcom/ihoc/mgpa/deviceid/VendorType;->ASUS:Lcom/ihoc/mgpa/deviceid/VendorType;

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/ihoc/mgpa/deviceid/utils/OSUtil;->isSamsung()Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v0, Lcom/ihoc/mgpa/deviceid/VendorType;->SAMSUNG:Lcom/ihoc/mgpa/deviceid/VendorType;

    goto :goto_1

    :cond_7
    invoke-static {}, Lcom/ihoc/mgpa/deviceid/utils/OSUtil;->isLenovo()Z

    move-result v1

    if-eqz v1, :cond_8

    :goto_0
    sget-object v0, Lcom/ihoc/mgpa/deviceid/VendorType;->MEIZU:Lcom/ihoc/mgpa/deviceid/VendorType;

    goto :goto_1

    :cond_8
    invoke-static {}, Lcom/ihoc/mgpa/deviceid/utils/OSUtil;->isNubia()Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object v0, Lcom/ihoc/mgpa/deviceid/VendorType;->NUBIA:Lcom/ihoc/mgpa/deviceid/VendorType;

    goto :goto_1

    :cond_9
    invoke-static {}, Lcom/ihoc/mgpa/deviceid/utils/OSUtil;->isFreemeOS()Z

    move-result v1

    if-eqz v1, :cond_a

    sget-object v0, Lcom/ihoc/mgpa/deviceid/VendorType;->FREEMEOS:Lcom/ihoc/mgpa/deviceid/VendorType;

    goto :goto_1

    :cond_a
    invoke-static {}, Lcom/ihoc/mgpa/deviceid/utils/OSUtil;->isZTE()Z

    move-result v1

    if-eqz v1, :cond_b

    sget-object v0, Lcom/ihoc/mgpa/deviceid/VendorType;->ZTE:Lcom/ihoc/mgpa/deviceid/VendorType;

    :cond_b
    :goto_1
    invoke-static {p0, p1, v0}, Lcom/ihoc/mgpa/deviceid/DeviceIDHelper;->getOAID(Landroid/content/Context;Lcom/ihoc/mgpa/deviceid/IDeviceIDGetter;Lcom/ihoc/mgpa/deviceid/VendorType;)V

    return-void
.end method

.method public static getOAID(Landroid/content/Context;Lcom/ihoc/mgpa/deviceid/IDeviceIDGetter;Lcom/ihoc/mgpa/deviceid/VendorType;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "start to get the device\'s oaid by vendor type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/ihoc/mgpa/deviceid/VendorType;->getVendorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ihoc/mgpa/deviceid/utils/LogUtil;->print(Ljava/lang/String;)V

    if-nez p0, :cond_0

    const-string p0, "context is null, please set it first!"

    invoke-static {p0}, Lcom/ihoc/mgpa/deviceid/utils/LogUtil;->error(Ljava/lang/String;)V

    sget-object p0, Lcom/ihoc/mgpa/deviceid/DeviceIDResult;->CONTEXT_IS_NULL:Lcom/ihoc/mgpa/deviceid/DeviceIDResult;

    const/4 p2, 0x0

    invoke-interface {p1, p0, p2}, Lcom/ihoc/mgpa/deviceid/IDeviceIDGetter;->onComplete(Lcom/ihoc/mgpa/deviceid/DeviceIDResult;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string p0, "getter is null, please set it first!"

    invoke-static {p0}, Lcom/ihoc/mgpa/deviceid/utils/LogUtil;->error(Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v0, Lcom/ihoc/mgpa/deviceid/DeviceIDHelper$1;

    invoke-direct {v0, p1}, Lcom/ihoc/mgpa/deviceid/DeviceIDHelper$1;-><init>(Lcom/ihoc/mgpa/deviceid/IDeviceIDGetter;)V

    invoke-static {p0, v0, p2}, Lcom/ihoc/mgpa/deviceid/DeviceIDHelper;->getOAIDOnce(Landroid/content/Context;Lcom/ihoc/mgpa/deviceid/IDeviceIDGetter;Lcom/ihoc/mgpa/deviceid/VendorType;)V

    return-void
.end method

.method private static declared-synchronized getOAIDOnce(Landroid/content/Context;Lcom/ihoc/mgpa/deviceid/IDeviceIDGetter;Lcom/ihoc/mgpa/deviceid/VendorType;)V
    .locals 2

    const-class v0, Lcom/ihoc/mgpa/deviceid/DeviceIDHelper;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/ihoc/mgpa/deviceid/DeviceIDHelper;->hasInvoked:Z

    if-eqz v1, :cond_0

    const-string p0, "already invoke to get oaid, just ignore for privacy!"

    invoke-static {p0}, Lcom/ihoc/mgpa/deviceid/utils/LogUtil;->print(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    :try_start_1
    sput-boolean v1, Lcom/ihoc/mgpa/deviceid/DeviceIDHelper;->hasInvoked:Z

    sget-object v1, Lcom/ihoc/mgpa/deviceid/DeviceIDHelper$2;->$SwitchMap$com$ihoc$mgpa$deviceid$VendorType:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v1, p2

    packed-switch p2, :pswitch_data_0

    new-instance p2, Lcom/ihoc/mgpa/deviceid/base/l;

    goto :goto_0

    :pswitch_0
    new-instance p2, Lcom/ihoc/mgpa/deviceid/base/l;

    invoke-direct {p2, p0, p1}, Lcom/ihoc/mgpa/deviceid/base/l;-><init>(Landroid/content/Context;Lcom/ihoc/mgpa/deviceid/IDeviceIDGetter;)V

    invoke-virtual {p2}, Lcom/ihoc/mgpa/deviceid/base/l;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :pswitch_1
    :try_start_2
    new-instance p2, Lcom/ihoc/mgpa/deviceid/base/c;

    invoke-direct {p2, p0, p1}, Lcom/ihoc/mgpa/deviceid/base/c;-><init>(Landroid/content/Context;Lcom/ihoc/mgpa/deviceid/IDeviceIDGetter;)V

    invoke-virtual {p2}, Lcom/ihoc/mgpa/deviceid/base/c;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-void

    :pswitch_2
    :try_start_3
    new-instance p2, Lcom/ihoc/mgpa/deviceid/base/o;

    invoke-direct {p2, p0, p1}, Lcom/ihoc/mgpa/deviceid/base/o;-><init>(Landroid/content/Context;Lcom/ihoc/mgpa/deviceid/IDeviceIDGetter;)V

    invoke-virtual {p2}, Lcom/ihoc/mgpa/deviceid/base/o;->a()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v0

    return-void

    :pswitch_3
    :try_start_4
    new-instance p2, Lcom/ihoc/mgpa/deviceid/base/j;

    invoke-direct {p2, p0, p1}, Lcom/ihoc/mgpa/deviceid/base/j;-><init>(Landroid/content/Context;Lcom/ihoc/mgpa/deviceid/IDeviceIDGetter;)V

    invoke-virtual {p2}, Lcom/ihoc/mgpa/deviceid/base/j;->a()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v0

    return-void

    :pswitch_4
    :try_start_5
    new-instance p2, Lcom/ihoc/mgpa/deviceid/base/r;

    invoke-direct {p2, p0, p1}, Lcom/ihoc/mgpa/deviceid/base/r;-><init>(Landroid/content/Context;Lcom/ihoc/mgpa/deviceid/IDeviceIDGetter;)V

    invoke-virtual {p2}, Lcom/ihoc/mgpa/deviceid/base/r;->a()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit v0

    return-void

    :pswitch_5
    :try_start_6
    new-instance p2, Lcom/ihoc/mgpa/deviceid/base/a;

    invoke-direct {p2, p0, p1}, Lcom/ihoc/mgpa/deviceid/base/a;-><init>(Landroid/content/Context;Lcom/ihoc/mgpa/deviceid/IDeviceIDGetter;)V

    invoke-virtual {p2}, Lcom/ihoc/mgpa/deviceid/base/a;->a()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit v0

    return-void

    :pswitch_6
    :try_start_7
    new-instance p2, Lcom/ihoc/mgpa/deviceid/base/n;

    invoke-direct {p2, p0, p1}, Lcom/ihoc/mgpa/deviceid/base/n;-><init>(Landroid/content/Context;Lcom/ihoc/mgpa/deviceid/IDeviceIDGetter;)V

    invoke-virtual {p2}, Lcom/ihoc/mgpa/deviceid/base/n;->b()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit v0

    return-void

    :pswitch_7
    :try_start_8
    new-instance p2, Lcom/ihoc/mgpa/deviceid/base/t;

    invoke-direct {p2, p0, p1}, Lcom/ihoc/mgpa/deviceid/base/t;-><init>(Landroid/content/Context;Lcom/ihoc/mgpa/deviceid/IDeviceIDGetter;)V

    invoke-virtual {p2}, Lcom/ihoc/mgpa/deviceid/base/t;->b()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit v0

    return-void

    :pswitch_8
    :try_start_9
    new-instance p2, Lcom/ihoc/mgpa/deviceid/base/p;

    invoke-direct {p2, p0, p1}, Lcom/ihoc/mgpa/deviceid/base/p;-><init>(Landroid/content/Context;Lcom/ihoc/mgpa/deviceid/IDeviceIDGetter;)V

    invoke-virtual {p2}, Lcom/ihoc/mgpa/deviceid/base/p;->d()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    monitor-exit v0

    return-void

    :pswitch_9
    :try_start_a
    new-instance p2, Lcom/ihoc/mgpa/deviceid/base/g;

    invoke-direct {p2, p0, p1}, Lcom/ihoc/mgpa/deviceid/base/g;-><init>(Landroid/content/Context;Lcom/ihoc/mgpa/deviceid/IDeviceIDGetter;)V

    invoke-virtual {p2}, Lcom/ihoc/mgpa/deviceid/base/g;->c()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    monitor-exit v0

    return-void

    :pswitch_a
    :try_start_b
    new-instance p2, Lcom/ihoc/mgpa/deviceid/base/e;

    invoke-direct {p2, p0, p1}, Lcom/ihoc/mgpa/deviceid/base/e;-><init>(Landroid/content/Context;Lcom/ihoc/mgpa/deviceid/IDeviceIDGetter;)V

    invoke-virtual {p2}, Lcom/ihoc/mgpa/deviceid/base/e;->c()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    monitor-exit v0

    return-void

    :pswitch_b
    :try_start_c
    new-instance p2, Lcom/ihoc/mgpa/deviceid/base/w;

    invoke-direct {p2, p0, p1}, Lcom/ihoc/mgpa/deviceid/base/w;-><init>(Landroid/content/Context;Lcom/ihoc/mgpa/deviceid/IDeviceIDGetter;)V

    invoke-virtual {p2}, Lcom/ihoc/mgpa/deviceid/base/w;->c()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    monitor-exit v0

    return-void

    :goto_0
    :try_start_d
    invoke-direct {p2, p0, p1}, Lcom/ihoc/mgpa/deviceid/base/l;-><init>(Landroid/content/Context;Lcom/ihoc/mgpa/deviceid/IDeviceIDGetter;)V

    invoke-virtual {p2}, Lcom/ihoc/mgpa/deviceid/base/l;->a()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_e
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getVersionName()Ljava/lang/String;
    .locals 1

    const-string v0, "1.0.3"

    return-object v0
.end method

.method public static registerTool(Lcom/ihoc/mgpa/deviceid/IDeviceIDGetter$LogTool;Lcom/ihoc/mgpa/deviceid/IDeviceIDGetter$OSTool;)V
    .locals 0

    invoke-static {p0}, Lcom/ihoc/mgpa/deviceid/utils/LogUtil;->setProxy(Lcom/ihoc/mgpa/deviceid/IDeviceIDGetter$LogTool;)V

    invoke-static {p1}, Lcom/ihoc/mgpa/deviceid/utils/OSUtil;->setProxy(Lcom/ihoc/mgpa/deviceid/IDeviceIDGetter$OSTool;)V

    return-void
.end method
