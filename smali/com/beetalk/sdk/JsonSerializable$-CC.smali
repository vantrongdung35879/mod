.class public final synthetic Lcom/beetalk/sdk/JsonSerializable$-CC;
.super Ljava/lang/Object;
.source "JsonSerializable.java"


# direct methods
.method public static $default$toJson(Lcom/beetalk/sdk/JsonSerializable;)Ljava/lang/String;
    .locals 1
    .param p0, "_this"    # Lcom/beetalk/sdk/JsonSerializable;

    .line 10
    :try_start_0
    sget-object v0, Lcom/beetalk/sdk/networking/HttpRequestTask;->GLOBAL_GSON:Lcom/google/gson/Gson;

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 12
    invoke-static {v0}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/Exception;)V

    .line 13
    const-string/jumbo v0, "{}"

    return-object v0
.end method
