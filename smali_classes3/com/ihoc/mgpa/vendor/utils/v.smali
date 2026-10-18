.class public final Lcom/ihoc/mgpa/vendor/utils/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ihoc/mgpa/vendor/utils/k;


# instance fields
.field public final synthetic a:Lcom/ihoc/mgpa/vendor/utils/u;


# direct methods
.method public constructor <init>(Lcom/ihoc/mgpa/vendor/utils/u;)V
    .locals 0

    iput-object p1, p0, Lcom/ihoc/mgpa/vendor/utils/v;->a:Lcom/ihoc/mgpa/vendor/utils/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 6

    const-string v0, "cpuLevel"

    iget-object v1, p0, Lcom/ihoc/mgpa/vendor/utils/v;->a:Lcom/ihoc/mgpa/vendor/utils/u;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    .line 1
    :try_start_0
    const-string v3, "oppo callback content: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-static {v3, v4}, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "IsSupport"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v0, v1, Lcom/ihoc/mgpa/vendor/utils/b;->a:Lcom/ihoc/mgpa/vendor/utils/a0;

    sget-object v1, Lcom/ihoc/mgpa/vendor/VendorKey;->STRATEGY_SUPPORT:Lcom/ihoc/mgpa/vendor/VendorKey;

    :goto_0
    invoke-interface {v0, v1, p1}, Lcom/ihoc/mgpa/vendor/utils/a0;->onUpdatePhoneInfo(Lcom/ihoc/mgpa/vendor/VendorKey;Ljava/lang/String;)V

    goto :goto_2

    :cond_0
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, v1, Lcom/ihoc/mgpa/vendor/utils/b;->a:Lcom/ihoc/mgpa/vendor/utils/a0;

    sget-object v1, Lcom/ihoc/mgpa/vendor/VendorKey;->TEMPERATURE_LEVEL:Lcom/ihoc/mgpa/vendor/VendorKey;

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/ihoc/mgpa/vendor/VendorKey;->getVendorKey(Ljava/lang/String;)Lcom/ihoc/mgpa/vendor/VendorKey;

    move-result-object v4

    sget-object v5, Lcom/ihoc/mgpa/vendor/VendorKey;->UNKNOWN:Lcom/ihoc/mgpa/vendor/VendorKey;

    if-eq v4, v5, :cond_2

    iget-object v5, v1, Lcom/ihoc/mgpa/vendor/utils/b;->a:Lcom/ihoc/mgpa/vendor/utils/a0;

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v4, v0}, Lcom/ihoc/mgpa/vendor/utils/a0;->onUpdatePhoneInfo(Lcom/ihoc/mgpa/vendor/VendorKey;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v4, v1, Lcom/ihoc/mgpa/vendor/utils/b;->a:Lcom/ihoc/mgpa/vendor/utils/a0;

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Lcom/ihoc/mgpa/vendor/utils/a0;->onUpdatePhoneInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "oppo callback content parse json exception."

    invoke-static {v0, p1}, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_2
    return-void
.end method
