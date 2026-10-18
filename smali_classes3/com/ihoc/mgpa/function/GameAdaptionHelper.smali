.class public Lcom/ihoc/mgpa/function/GameAdaptionHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAndStart()V
    .locals 2

    .line 1
    :try_start_0
    const-string v0, "com.ihoc.mgpa.selfadaption.GameAdaptionManager"

    invoke-static {v0}, Lcom/ihoc/mgpa/toolkit/util/Reflect;->onClass(Ljava/lang/String;)Lcom/ihoc/mgpa/toolkit/util/Reflect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ihoc/mgpa/toolkit/util/Reflect;->create()Lcom/ihoc/mgpa/toolkit/util/Reflect;

    move-result-object v0

    const-string v1, "prepare"

    invoke-virtual {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/Reflect;->call(Ljava/lang/String;)Lcom/ihoc/mgpa/toolkit/util/Reflect;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 3
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "gameadaption module do not exist!"

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static getConfig()Lorg/json/JSONObject;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ihoc/mgpa/gradish/H;->a()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public static getVendorConfig()Lorg/json/JSONObject;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ihoc/mgpa/gradish/o1;->a()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public static isFuncOpen()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/ihoc/mgpa/gradish/L;->c()Lcom/ihoc/mgpa/gradish/L;

    move-result-object v0

    iget-object v0, v0, Lcom/ihoc/mgpa/gradish/L;->b:Lcom/ihoc/mgpa/gradish/L$b;

    iget-boolean v0, v0, Lcom/ihoc/mgpa/gradish/L$b;->i0:Z

    return v0
.end method
