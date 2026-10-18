.class public final Lcom/ihoc/mgpa/vendor/utils/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/game/gamelibnew/GameServiceHelper$ToTGPACallback;


# instance fields
.field public final synthetic a:Lcom/ihoc/mgpa/vendor/utils/w;


# direct methods
.method public constructor <init>(Lcom/ihoc/mgpa/vendor/utils/w;)V
    .locals 0

    iput-object p1, p0, Lcom/ihoc/mgpa/vendor/utils/y;->a:Lcom/ihoc/mgpa/vendor/utils/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final totgpa(Ljava/lang/String;)V
    .locals 5

    const-string v0, "rpic_set"

    iget-object v1, p0, Lcom/ihoc/mgpa/vendor/utils/y;->a:Lcom/ihoc/mgpa/vendor/utils/w;

    .line 1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    .line 2
    :try_start_0
    const-string v3, "samsung scenesdk: spa callback: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-static {v3, v4}, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, v1, Lcom/ihoc/mgpa/vendor/utils/b;->a:Lcom/ihoc/mgpa/vendor/utils/a0;

    sget-object v1, Lcom/ihoc/mgpa/vendor/VendorKey;->SPA_PERF_CONFIG:Lcom/ihoc/mgpa/vendor/VendorKey;

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/ihoc/mgpa/vendor/utils/a0;->onUpdatePhoneInfo(Lcom/ihoc/mgpa/vendor/VendorKey;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/ihoc/mgpa/vendor/VendorKey;->SPA_PERF_CONFIG:Lcom/ihoc/mgpa/vendor/VendorKey;

    invoke-virtual {p1}, Lcom/ihoc/mgpa/vendor/VendorKey;->getKeyStr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/ihoc/mgpa/vendor/utils/b;->a:Lcom/ihoc/mgpa/vendor/utils/a0;

    invoke-virtual {p1}, Lcom/ihoc/mgpa/vendor/VendorKey;->getKeyStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/ihoc/mgpa/vendor/utils/a0;->onUpdatePhoneInfo(Lcom/ihoc/mgpa/vendor/VendorKey;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "samsung scenesdk: spa callback exception. "

    invoke-static {v0, p1}, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
