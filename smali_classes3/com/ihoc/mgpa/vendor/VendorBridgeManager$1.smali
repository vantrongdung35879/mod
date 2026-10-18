.class Lcom/ihoc/mgpa/vendor/VendorBridgeManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ihoc/mgpa/vendor/utils/a0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ihoc/mgpa/vendor/VendorBridgeManager;->checkAvailableVendorBridge(Landroid/content/Context;Ljava/util/ArrayList;Lcom/ihoc/mgpa/vendor/ServerConnectionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/ihoc/mgpa/vendor/ServerConnectionListener;


# direct methods
.method public constructor <init>(Lcom/ihoc/mgpa/vendor/ServerConnectionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ihoc/mgpa/vendor/VendorBridgeManager$1;->val$listener:Lcom/ihoc/mgpa/vendor/ServerConnectionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectFail(Lcom/ihoc/mgpa/vendor/IVendorBridge;)V
    .locals 2

    invoke-interface {p1}, Lcom/ihoc/mgpa/vendor/IVendorBridge;->getBridgeType()Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ihoc/mgpa/vendor/VendorBridgeType;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string/jumbo p1, "vendor bridge check failed! type: %s"

    invoke-static {p1, v0}, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/ihoc/mgpa/vendor/VendorBridgeManager$1;->val$listener:Lcom/ihoc/mgpa/vendor/ServerConnectionListener;

    invoke-interface {p1}, Lcom/ihoc/mgpa/vendor/ServerConnectionListener;->onConnectFail()V

    return-void
.end method

.method public onConnectFinished()V
    .locals 1

    iget-object v0, p0, Lcom/ihoc/mgpa/vendor/VendorBridgeManager$1;->val$listener:Lcom/ihoc/mgpa/vendor/ServerConnectionListener;

    invoke-interface {v0}, Lcom/ihoc/mgpa/vendor/ServerConnectionListener;->onConnectFinished()V

    return-void
.end method

.method public onConnectSuccess(Lcom/ihoc/mgpa/vendor/IVendorBridge;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "vendor bridge check success! type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/ihoc/mgpa/vendor/IVendorBridge;->getBridgeType()Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ihoc/mgpa/vendor/VendorBridgeType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->print(Ljava/lang/String;[Ljava/lang/Object;)V

    const-class v0, Lcom/ihoc/mgpa/vendor/VendorBridgeManager;

    monitor-enter v0

    :try_start_0
    invoke-static {p1}, Lcom/ihoc/mgpa/vendor/VendorBridgeManager;->access$002(Lcom/ihoc/mgpa/vendor/IVendorBridge;)Lcom/ihoc/mgpa/vendor/IVendorBridge;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/ihoc/mgpa/vendor/VendorBridgeManager$1;->val$listener:Lcom/ihoc/mgpa/vendor/ServerConnectionListener;

    invoke-static {}, Lcom/ihoc/mgpa/vendor/VendorBridgeManager;->getAvailableVendorBridgeType()Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/ihoc/mgpa/vendor/ServerConnectionListener;->onConnectSuccess(Lcom/ihoc/mgpa/vendor/VendorBridgeType;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onConnectionBroken(Lcom/ihoc/mgpa/vendor/IVendorBridge;)V
    .locals 2

    invoke-interface {p1}, Lcom/ihoc/mgpa/vendor/IVendorBridge;->getBridgeType()Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ihoc/mgpa/vendor/VendorBridgeType;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string/jumbo p1, "vendor bridge is broken! type: %s"

    invoke-static {p1, v0}, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/ihoc/mgpa/vendor/VendorBridgeManager$1;->val$listener:Lcom/ihoc/mgpa/vendor/ServerConnectionListener;

    invoke-interface {p1}, Lcom/ihoc/mgpa/vendor/ServerConnectionListener;->onConnectionBroken()V

    return-void
.end method

.method public onUpdatePhoneInfo(Lcom/ihoc/mgpa/vendor/VendorKey;Ljava/lang/String;)V
    .locals 13

    const-string v0, "]"

    const-string v1, "SupportScene"

    const-string v2, "["

    const-string v3, "SupportFunc"

    const-string v4, ""

    sget-object v5, Lcom/ihoc/mgpa/vendor/VendorBridgeManager$2;->$SwitchMap$com$ihoc$mgpa$vendor$VendorKey:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v5, v7, :cond_f

    const/4 v8, 0x2

    if-eq v5, v8, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-static {}, Lcom/ihoc/mgpa/vendor/utils/q0;->a()Lcom/ihoc/mgpa/vendor/utils/q0;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    new-array v0, v6, [Ljava/lang/Object;

    const-string/jumbo v1, "the vendor strategy get null, maybe device is not support!"

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_1
    :try_start_0
    const-string/jumbo v8, "the vendor strategy json: %s"

    new-array v9, v7, [Ljava/lang/Object;

    aput-object p2, v9, v6

    invoke-static {v8, v9}, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v9, Lcom/ihoc/mgpa/vendor/utils/r0;

    invoke-direct {v9}, Lcom/ihoc/mgpa/vendor/utils/r0;-><init>()V

    iput-object v9, v5, Lcom/ihoc/mgpa/vendor/utils/q0;->b:Lcom/ihoc/mgpa/vendor/utils/r0;

    const-string v9, "Version"

    invoke-virtual {v8, v9, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, v5, Lcom/ihoc/mgpa/vendor/utils/q0;->b:Lcom/ihoc/mgpa/vendor/utils/r0;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    :cond_2
    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, v5, Lcom/ihoc/mgpa/vendor/utils/q0;->b:Lcom/ihoc/mgpa/vendor/utils/r0;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    .line 4
    :cond_3
    sget-object v3, Lcom/ihoc/mgpa/vendor/VendorKey;->STRATEGY_SUPPORT:Lcom/ihoc/mgpa/vendor/VendorKey;

    invoke-virtual {v3}, Lcom/ihoc/mgpa/vendor/VendorKey;->getKeyStr()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, v5, Lcom/ihoc/mgpa/vendor/utils/q0;->b:Lcom/ihoc/mgpa/vendor/utils/r0;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Lcom/ihoc/mgpa/vendor/VendorKey;->getKeyStr()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_4
    move-object v3, v4

    .line 5
    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v10, ","

    if-nez v9, :cond_8

    :try_start_1
    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 6
    :cond_5
    iget-object v0, v5, Lcom/ihoc/mgpa/vendor/utils/q0;->b:Lcom/ihoc/mgpa/vendor/utils/r0;

    .line 7
    invoke-virtual {v3, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v3, :cond_8

    aget-object v11, v2, v9

    invoke-static {v11}, Lcom/ihoc/mgpa/vendor/VendorStrategy;->getStrategy(Ljava/lang/String;)Lcom/ihoc/mgpa/vendor/VendorStrategy;

    move-result-object v11

    sget-object v12, Lcom/ihoc/mgpa/vendor/VendorStrategy;->NOT_FOUND:Lcom/ihoc/mgpa/vendor/VendorStrategy;

    if-eq v11, v12, :cond_7

    .line 8
    iget-object v12, v0, Lcom/ihoc/mgpa/vendor/utils/r0;->b:Ljava/util/ArrayList;

    if-nez v12, :cond_6

    .line 9
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, v0, Lcom/ihoc/mgpa/vendor/utils/r0;->b:Ljava/util/ArrayList;

    .line 10
    :cond_6
    iget-object v12, v0, Lcom/ihoc/mgpa/vendor/utils/r0;->b:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 11
    :cond_8
    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_3

    .line 12
    :cond_9
    sget-object v0, Lcom/ihoc/mgpa/vendor/VendorKey;->SCENE_SUPPORT:Lcom/ihoc/mgpa/vendor/VendorKey;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/vendor/VendorKey;->getKeyStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Lcom/ihoc/mgpa/vendor/VendorKey;->getKeyStr()Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 13
    :cond_a
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, v5, Lcom/ihoc/mgpa/vendor/utils/q0;->b:Lcom/ihoc/mgpa/vendor/utils/r0;

    .line 14
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_5

    :cond_b
    invoke-virtual {v4, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v2, :cond_d

    aget-object v4, v1, v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 15
    iget-object v9, v0, Lcom/ihoc/mgpa/vendor/utils/r0;->a:Ljava/util/ArrayList;

    if-nez v9, :cond_c

    .line 16
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v0, Lcom/ihoc/mgpa/vendor/utils/r0;->a:Ljava/util/ArrayList;

    .line 17
    :cond_c
    iget-object v9, v0, Lcom/ihoc/mgpa/vendor/utils/r0;->a:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 18
    :cond_d
    :goto_5
    :try_start_3
    const-string v0, "IsSupport"

    invoke-virtual {v8, v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v7, :cond_e

    iget-object v0, v5, Lcom/ihoc/mgpa/vendor/utils/q0;->b:Lcom/ihoc/mgpa/vendor/utils/r0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_6

    :cond_e
    const-string/jumbo v0, "this vendor device don\'t support any strategy!"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_6

    :catch_1
    const-string/jumbo v0, "the vendor strategy json parse exception!"

    invoke-static {v0}, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->error(Ljava/lang/String;)V

    goto :goto_6

    .line 19
    :cond_f
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string/jumbo v0, "the vendor unique id is empty, ple check!"

    invoke-static {v0}, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->error(Ljava/lang/String;)V

    goto :goto_6

    :cond_10
    invoke-static {}, Lcom/ihoc/mgpa/vendor/utils/q0;->a()Lcom/ihoc/mgpa/vendor/utils/q0;

    move-result-object v0

    .line 20
    iput-object p2, v0, Lcom/ihoc/mgpa/vendor/utils/q0;->a:Ljava/lang/String;

    .line 21
    :goto_6
    invoke-virtual {p1}, Lcom/ihoc/mgpa/vendor/VendorKey;->block()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p1}, Lcom/ihoc/mgpa/vendor/VendorKey;->getKey()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array p2, v7, [Ljava/lang/Object;

    aput-object p1, p2, v6

    const-string/jumbo p1, "this vendor data shouldn\'t send to app, key: %d"

    invoke-static {p1, p2}, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_7

    :cond_11
    iget-object v0, p0, Lcom/ihoc/mgpa/vendor/VendorBridgeManager$1;->val$listener:Lcom/ihoc/mgpa/vendor/ServerConnectionListener;

    invoke-interface {v0, p1, p2}, Lcom/ihoc/mgpa/vendor/ServerConnectionListener;->onUpdatePhoneInfo(Lcom/ihoc/mgpa/vendor/VendorKey;Ljava/lang/String;)V

    :goto_7
    return-void
.end method

.method public onUpdatePhoneInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ihoc/mgpa/vendor/VendorBridgeManager$1;->val$listener:Lcom/ihoc/mgpa/vendor/ServerConnectionListener;

    invoke-interface {v0, p1, p2}, Lcom/ihoc/mgpa/vendor/ServerConnectionListener;->onUpdatePhoneInfo(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string/jumbo p1, "the callback key is not definition, key: %s, value: %s"

    invoke-static {p1, v0}, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
