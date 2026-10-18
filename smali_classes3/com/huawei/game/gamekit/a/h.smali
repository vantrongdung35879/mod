.class public final Lcom/huawei/game/gamekit/a/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/huawei/game/gamekit/a/g;


# static fields
.field private static final a:Ljava/lang/String; = "UpstreamTranslatorFactory"

.field private static final b:Ljava/lang/String; = "temperature"

.field private static final c:Ljava/lang/String; = "cpu_level"

.field private static final d:Ljava/lang/String; = "MessageType"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/game/gamekit/a/e;
    .locals 4

    const-string p2, "UpstreamTranslatorFactory"

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo p1, "temperature"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "cpu_level"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    const-string v1, "MessageType"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isSystemInfo:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",isOldProtocl:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/huawei/game/gamekit/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    if-nez v0, :cond_2

    invoke-static {}, Lcom/huawei/game/gamekit/a/f;->a()Lcom/huawei/game/gamekit/a/f;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-static {}, Lcom/huawei/game/gamekit/a/c;->a()Lcom/huawei/game/gamekit/a/c;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const-string p1, "getManager JSONObject operation exception"

    invoke-static {p2, p1}, Lcom/huawei/game/gamekit/b/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/huawei/game/gamekit/a/c;->a()Lcom/huawei/game/gamekit/a/c;

    move-result-object p1

    return-object p1
.end method
