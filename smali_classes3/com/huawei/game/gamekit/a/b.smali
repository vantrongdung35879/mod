.class public final Lcom/huawei/game/gamekit/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/huawei/game/gamekit/a/g;


# static fields
.field private static final a:Ljava/lang/String; = "DownstreamTranslatorFactory"

.field private static final b:I = 0x0

.field private static final c:I = 0x270f


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/game/gamekit/a/e;
    .locals 2

    const-string v0, "DownstreamTranslatorFactory"

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-static {}, Lcom/huawei/game/gamekit/a/c;->a()Lcom/huawei/game/gamekit/a/c;

    move-result-object p1

    return-object p1

    :cond_0
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "MessageType"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_1

    const/16 p2, 0x270f

    if-gt p1, p2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "GameDeliver message: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/huawei/game/gamekit/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/huawei/game/gamekit/a/d;->a()Lcom/huawei/game/gamekit/a/d;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Do not translate MessageTypeID: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/huawei/game/gamekit/b/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/huawei/game/gamekit/a/c;->a()Lcom/huawei/game/gamekit/a/c;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const-string p1, "getManager JSONObject operation exception"

    invoke-static {v0, p1}, Lcom/huawei/game/gamekit/b/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/huawei/game/gamekit/a/c;->a()Lcom/huawei/game/gamekit/a/c;

    move-result-object p1

    return-object p1
.end method
