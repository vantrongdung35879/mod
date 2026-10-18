.class public Lcom/ihoc/mgpa/vendor/VendorBridgeManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CONFIG_KEY_VIVO_GAME_FLAGS:I = 0x2

.field public static final CONFIG_KEY_VIVO_PERMISSION_CODE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "VendorBridge"

.field private static volatile sAvailableVendorBridge:Lcom/ihoc/mgpa/vendor/IVendorBridge;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$002(Lcom/ihoc/mgpa/vendor/IVendorBridge;)Lcom/ihoc/mgpa/vendor/IVendorBridge;
    .locals 0

    sput-object p0, Lcom/ihoc/mgpa/vendor/VendorBridgeManager;->sAvailableVendorBridge:Lcom/ihoc/mgpa/vendor/IVendorBridge;

    return-object p0
.end method

.method public static checkAvailableVendorBridge(Landroid/content/Context;Lcom/ihoc/mgpa/vendor/ServerConnectionListener;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ihoc/mgpa/vendor/VendorBridgeManager;->getDefaultBridgeTypeList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/ihoc/mgpa/vendor/VendorBridgeManager;->checkAvailableVendorBridge(Landroid/content/Context;Ljava/util/ArrayList;Lcom/ihoc/mgpa/vendor/ServerConnectionListener;)V

    return-void
.end method

.method public static checkAvailableVendorBridge(Landroid/content/Context;Ljava/util/ArrayList;Lcom/ihoc/mgpa/vendor/ServerConnectionListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/ihoc/mgpa/vendor/VendorBridgeType;",
            ">;",
            "Lcom/ihoc/mgpa/vendor/ServerConnectionListener;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/ihoc/mgpa/vendor/VendorBridgeManager;->getAvailableVendorBridgeAdapter()Lcom/ihoc/mgpa/vendor/IVendorBridge;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ihoc/mgpa/vendor/VendorBridgeManager;->getAvailableVendorBridgeType()Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ihoc/mgpa/vendor/VendorBridgeType;->getName()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    aput-object p0, p1, v1

    const-string/jumbo p0, "vendor bridge is connected, needn\'t check again! bridge type: %s"

    invoke-static {p0, p1}, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    if-nez p0, :cond_1

    const-string/jumbo p0, "the context for check vendor bridge should not be null!"

    invoke-static {p0}, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->error(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {p0}, Lcom/ihoc/mgpa/vendor/utils/AppUtil;->init(Landroid/content/Context;)V

    if-nez p2, :cond_2

    const-string/jumbo p0, "the listener should not be null!"

    invoke-static {p0}, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->error(Ljava/lang/String;)V

    return-void

    :cond_2
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    new-instance p0, Lcom/ihoc/mgpa/vendor/VendorBridgeManager$1;

    invoke-direct {p0, p2}, Lcom/ihoc/mgpa/vendor/VendorBridgeManager$1;-><init>(Lcom/ihoc/mgpa/vendor/ServerConnectionListener;)V

    new-instance p2, Lcom/ihoc/mgpa/vendor/utils/b;

    invoke-direct {p2}, Lcom/ihoc/mgpa/vendor/utils/b;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v0, p2

    :cond_4
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    invoke-static {v1}, Lcom/ihoc/mgpa/vendor/VendorBridgeManager;->getVendorBridge(Lcom/ihoc/mgpa/vendor/VendorBridgeType;)Lcom/ihoc/mgpa/vendor/utils/b;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 2
    iput-object p0, v1, Lcom/ihoc/mgpa/vendor/utils/b;->a:Lcom/ihoc/mgpa/vendor/utils/a0;

    .line 3
    iput-object v1, v0, Lcom/ihoc/mgpa/vendor/utils/b;->b:Lcom/ihoc/mgpa/vendor/IVendorBridge;

    move-object v0, v1

    goto :goto_0

    .line 4
    :cond_5
    invoke-virtual {p2}, Lcom/ihoc/mgpa/vendor/utils/b;->checkVendorServer()V

    return-void

    .line 5
    :cond_6
    :goto_1
    new-array p0, v1, [Ljava/lang/Object;

    const-string/jumbo p1, "vendor bridge list is null or empty, use local default to check!"

    invoke-static {p1, p0}, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->print(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static getAvailableVendorBridgeAdapter()Lcom/ihoc/mgpa/vendor/IVendorBridge;
    .locals 1

    sget-object v0, Lcom/ihoc/mgpa/vendor/VendorBridgeManager;->sAvailableVendorBridge:Lcom/ihoc/mgpa/vendor/IVendorBridge;

    return-object v0
.end method

.method public static getAvailableVendorBridgeType()Lcom/ihoc/mgpa/vendor/VendorBridgeType;
    .locals 1

    sget-object v0, Lcom/ihoc/mgpa/vendor/VendorBridgeManager;->sAvailableVendorBridge:Lcom/ihoc/mgpa/vendor/IVendorBridge;

    if-nez v0, :cond_0

    sget-object v0, Lcom/ihoc/mgpa/vendor/VendorBridgeType;->NONE:Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    return-object v0

    :cond_0
    sget-object v0, Lcom/ihoc/mgpa/vendor/VendorBridgeManager;->sAvailableVendorBridge:Lcom/ihoc/mgpa/vendor/IVendorBridge;

    invoke-interface {v0}, Lcom/ihoc/mgpa/vendor/IVendorBridge;->getBridgeType()Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    move-result-object v0

    return-object v0
.end method

.method private static getDefaultBridgeTypeList()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/ihoc/mgpa/vendor/VendorBridgeType;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/ihoc/mgpa/vendor/utils/OSUtil;->getManufacturer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lcom/ihoc/mgpa/vendor/VendorBridgeType;->TGPABINDER_INTERNATIONAL:Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/ihoc/mgpa/vendor/VendorBridgeType;->TGPABINDER_COMMON:Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/ihoc/mgpa/vendor/VendorBridgeType;->STANDARD_BINDER_V2:Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/ihoc/mgpa/vendor/VendorBridgeType;->STANDARD_BINDER_V1:Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, -0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "samsung"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_1
    const-string/jumbo v2, "vivo"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_2
    const-string v2, "oppo"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_3
    const-string/jumbo v2, "xiaomi"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_4
    const-string v2, "realme"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_5
    const-string v2, "oneplus"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_6
    const-string v2, "blackshark"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    sget-object v0, Lcom/ihoc/mgpa/vendor/VendorBridgeType;->SAMSUNG_INTERNATIONAL:Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    goto :goto_2

    :pswitch_1
    sget-object v0, Lcom/ihoc/mgpa/vendor/VendorBridgeType;->VIVO_SOCKET:Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/ihoc/mgpa/vendor/VendorBridgeType;->VIVO_KOG_BINDER:Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/ihoc/mgpa/vendor/VendorBridgeType;->VIVO_BINDER:Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    goto :goto_2

    :pswitch_2
    sget-object v0, Lcom/ihoc/mgpa/vendor/VendorBridgeType;->OPPO_COSA:Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/ihoc/mgpa/vendor/VendorBridgeType;->OPPO:Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/ihoc/mgpa/vendor/VendorBridgeType;->KOGSOCKET:Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    goto :goto_2

    :pswitch_3
    sget-object v0, Lcom/ihoc/mgpa/vendor/VendorBridgeType;->XIAOMI:Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    sget-object v0, Lcom/ihoc/mgpa/vendor/VendorBridgeType;->SOCKET:Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    :goto_2
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x608d18ba -> :sswitch_6
        -0x4eb36700 -> :sswitch_5
        -0x37ba884a -> :sswitch_4
        -0x2d450b45 -> :sswitch_3
        0x3427a0 -> :sswitch_2
        0x373cac -> :sswitch_1
        0x6f28bffa -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getSSPHardwareData()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/ihoc/mgpa/vendor/VendorBridgeManager;->getAvailableVendorBridgeAdapter()Lcom/ihoc/mgpa/vendor/IVendorBridge;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ihoc/mgpa/vendor/VendorBridgeManager;->getAvailableVendorBridgeAdapter()Lcom/ihoc/mgpa/vendor/IVendorBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/ihoc/mgpa/vendor/IVendorBridge;->getSSPHardwareData()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "no vendor bridge is available!"

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "ERROR"

    return-object v0
.end method

.method public static getSystemData(Lcom/ihoc/mgpa/vendor/VendorKey;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/ihoc/mgpa/vendor/VendorBridgeManager$2;->$SwitchMap$com$ihoc$mgpa$vendor$VendorKey:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/ihoc/mgpa/vendor/utils/q0;->a()Lcom/ihoc/mgpa/vendor/utils/q0;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lcom/ihoc/mgpa/vendor/utils/q0;->a:Ljava/lang/String;

    if-nez v0, :cond_1

    move-object v0, v2

    :cond_1
    if-eqz v0, :cond_2

    return-object v0

    .line 3
    :cond_2
    :goto_0
    invoke-static {}, Lcom/ihoc/mgpa/vendor/VendorBridgeManager;->getAvailableVendorBridgeAdapter()Lcom/ihoc/mgpa/vendor/IVendorBridge;

    move-result-object v0

    if-nez v0, :cond_3

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "no vendor bridge is available!"

    invoke-static {p1, p0}, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    :cond_3
    invoke-static {}, Lcom/ihoc/mgpa/vendor/VendorBridgeManager;->getAvailableVendorBridgeAdapter()Lcom/ihoc/mgpa/vendor/IVendorBridge;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/ihoc/mgpa/vendor/IVendorBridge;->getSystemData(Lcom/ihoc/mgpa/vendor/VendorKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSystemData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/ihoc/mgpa/vendor/VendorKey;->getVendorKey(Ljava/lang/String;)Lcom/ihoc/mgpa/vendor/VendorKey;

    move-result-object v0

    sget-object v1, Lcom/ihoc/mgpa/vendor/VendorKey;->UNKNOWN:Lcom/ihoc/mgpa/vendor/VendorKey;

    if-ne v0, v1, :cond_0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p0, p1, v0

    const-string p0, "don\'t support this vendor key to get system data! key: %s"

    invoke-static {p0, p1}, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {v0, p1}, Lcom/ihoc/mgpa/vendor/VendorBridgeManager;->getSystemData(Lcom/ihoc/mgpa/vendor/VendorKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getVendorBridge(Lcom/ihoc/mgpa/vendor/VendorBridgeType;)Lcom/ihoc/mgpa/vendor/utils/b;
    .locals 1

    sget-object v0, Lcom/ihoc/mgpa/vendor/VendorBridgeManager$2;->$SwitchMap$com$ihoc$mgpa$vendor$VendorBridgeType:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const-string/jumbo p0, "vendor bridge get instance failed, no bridge type is found, ple check the config!"

    invoke-static {p0}, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->error(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    new-instance p0, Lcom/ihoc/mgpa/vendor/utils/w;

    invoke-direct {p0}, Lcom/ihoc/mgpa/vendor/utils/w;-><init>()V

    return-object p0

    :pswitch_1
    new-instance p0, Lcom/ihoc/mgpa/vendor/utils/f0;

    invoke-direct {p0}, Lcom/ihoc/mgpa/vendor/utils/f0;-><init>()V

    return-object p0

    :pswitch_2
    new-instance p0, Lcom/ihoc/mgpa/vendor/utils/i0;

    invoke-direct {p0}, Lcom/ihoc/mgpa/vendor/utils/i0;-><init>()V

    return-object p0

    :pswitch_3
    new-instance p0, Lcom/ihoc/mgpa/vendor/utils/m0;

    invoke-direct {p0}, Lcom/ihoc/mgpa/vendor/utils/m0;-><init>()V

    return-object p0

    :pswitch_4
    new-instance p0, Lcom/ihoc/mgpa/vendor/utils/l0;

    invoke-direct {p0}, Lcom/ihoc/mgpa/vendor/utils/l0;-><init>()V

    return-object p0

    :pswitch_5
    new-instance p0, Lcom/ihoc/mgpa/vendor/utils/n0;

    invoke-direct {p0}, Lcom/ihoc/mgpa/vendor/utils/n0;-><init>()V

    return-object p0

    :pswitch_6
    new-instance p0, Lcom/ihoc/mgpa/vendor/utils/s;

    invoke-direct {p0}, Lcom/ihoc/mgpa/vendor/utils/s;-><init>()V

    return-object p0

    :pswitch_7
    new-instance p0, Lcom/ihoc/mgpa/vendor/utils/u;

    invoke-direct {p0}, Lcom/ihoc/mgpa/vendor/utils/u;-><init>()V

    return-object p0

    :pswitch_8
    new-instance p0, Lcom/ihoc/mgpa/vendor/utils/x0;

    invoke-direct {p0}, Lcom/ihoc/mgpa/vendor/utils/x0;-><init>()V

    return-object p0

    :pswitch_9
    new-instance p0, Lcom/ihoc/mgpa/vendor/utils/o;

    invoke-direct {p0}, Lcom/ihoc/mgpa/vendor/utils/o;-><init>()V

    return-object p0

    :pswitch_a
    new-instance p0, Lcom/ihoc/mgpa/vendor/utils/q;

    invoke-direct {p0}, Lcom/ihoc/mgpa/vendor/utils/q;-><init>()V

    return-object p0

    :pswitch_b
    new-instance p0, Lcom/ihoc/mgpa/vendor/utils/c0;

    invoke-direct {p0}, Lcom/ihoc/mgpa/vendor/utils/c0;-><init>()V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static isSSPAvailable()Z
    .locals 3

    invoke-static {}, Lcom/ihoc/mgpa/vendor/VendorBridgeManager;->getAvailableVendorBridgeAdapter()Lcom/ihoc/mgpa/vendor/IVendorBridge;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ihoc/mgpa/vendor/VendorBridgeManager;->getAvailableVendorBridgeAdapter()Lcom/ihoc/mgpa/vendor/IVendorBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/ihoc/mgpa/vendor/IVendorBridge;->isSSPAvailable()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "no vendor bridge is available!"

    invoke-static {v2, v1}, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method public static isSceneSupported(I)Z
    .locals 1

    invoke-static {}, Lcom/ihoc/mgpa/vendor/utils/q0;->a()Lcom/ihoc/mgpa/vendor/utils/q0;

    move-result-object v0

    .line 1
    iget-object v0, v0, Lcom/ihoc/mgpa/vendor/utils/q0;->b:Lcom/ihoc/mgpa/vendor/utils/r0;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, v0, Lcom/ihoc/mgpa/vendor/utils/r0;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    :goto_0
    const/4 p0, 0x0

    goto :goto_1

    .line 3
    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    :goto_1
    return p0
.end method

.method public static isStrategySupported(Lcom/ihoc/mgpa/vendor/VendorStrategy;)Z
    .locals 1

    invoke-static {}, Lcom/ihoc/mgpa/vendor/utils/q0;->a()Lcom/ihoc/mgpa/vendor/utils/q0;

    move-result-object v0

    .line 1
    iget-object v0, v0, Lcom/ihoc/mgpa/vendor/utils/q0;->b:Lcom/ihoc/mgpa/vendor/utils/r0;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, v0, Lcom/ihoc/mgpa/vendor/utils/r0;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    :goto_0
    const/4 p0, 0x0

    goto :goto_1

    .line 3
    :cond_1
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    :goto_1
    return p0
.end method

.method public static setConfigData(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/ihoc/mgpa/vendor/utils/ConfigUtil;->setVivoGameFlags(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {p1}, Lcom/ihoc/mgpa/vendor/utils/ConfigUtil;->setVivoPermissionCode(Ljava/lang/String;)V

    return-void
.end method

.method public static setProxyUtils(Lcom/ihoc/mgpa/vendor/IVendorBridge$LogTool;Lcom/ihoc/mgpa/vendor/IVendorBridge$OSTool;)V
    .locals 0

    invoke-static {p0}, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->setProxy(Lcom/ihoc/mgpa/vendor/IVendorBridge$LogTool;)V

    invoke-static {p1}, Lcom/ihoc/mgpa/vendor/utils/OSUtil;->setProxy(Lcom/ihoc/mgpa/vendor/IVendorBridge$OSTool;)V

    return-void
.end method

.method public static updateGameInfo(ILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ihoc/mgpa/vendor/VendorBridgeManager;->getAvailableVendorBridgeAdapter()Lcom/ihoc/mgpa/vendor/IVendorBridge;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ihoc/mgpa/vendor/VendorBridgeManager;->getAvailableVendorBridgeAdapter()Lcom/ihoc/mgpa/vendor/IVendorBridge;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/ihoc/mgpa/vendor/IVendorBridge;->updateGameInfo(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "no vendor bridge is available!"

    invoke-static {p1, p0}, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static updateGameInfo(Lcom/ihoc/mgpa/vendor/GameKey;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/ihoc/mgpa/vendor/GameKey;->getKey()I

    move-result p0

    invoke-static {p0, p1}, Lcom/ihoc/mgpa/vendor/VendorBridgeManager;->updateGameInfo(ILjava/lang/String;)V

    return-void
.end method

.method public static updateGameInfo(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/ihoc/mgpa/vendor/VendorBridgeManager;->getAvailableVendorBridgeAdapter()Lcom/ihoc/mgpa/vendor/IVendorBridge;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/ihoc/mgpa/vendor/VendorBridgeManager;->getAvailableVendorBridgeAdapter()Lcom/ihoc/mgpa/vendor/IVendorBridge;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/ihoc/mgpa/vendor/IVendorBridge;->updateGameInfo(Ljava/util/HashMap;)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "no vendor bridge is available!"

    invoke-static {v0, p0}, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static updateGameInfoToSSP(ILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ihoc/mgpa/vendor/VendorBridgeManager;->getAvailableVendorBridgeAdapter()Lcom/ihoc/mgpa/vendor/IVendorBridge;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ihoc/mgpa/vendor/VendorBridgeManager;->getAvailableVendorBridgeAdapter()Lcom/ihoc/mgpa/vendor/IVendorBridge;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/ihoc/mgpa/vendor/IVendorBridge;->updateGameInfoToSSP(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "no vendor bridge is available!"

    invoke-static {p1, p0}, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static updateGameInfoToSSP(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/ihoc/mgpa/vendor/VendorBridgeManager;->getAvailableVendorBridgeAdapter()Lcom/ihoc/mgpa/vendor/IVendorBridge;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/ihoc/mgpa/vendor/VendorBridgeManager;->getAvailableVendorBridgeAdapter()Lcom/ihoc/mgpa/vendor/IVendorBridge;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/ihoc/mgpa/vendor/IVendorBridge;->updateGameInfoToSSP(Ljava/util/HashMap;)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "no vendor bridge is available!"

    invoke-static {v0, p0}, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
