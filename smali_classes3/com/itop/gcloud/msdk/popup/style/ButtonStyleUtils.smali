.class public Lcom/itop/gcloud/msdk/popup/style/ButtonStyleUtils;
.super Ljava/lang/Object;
.source "ButtonStyleUtils.java"


# static fields
.field private static final KEY_NEGATIVE_NAME:Ljava/lang/String; = "negative_button_name"

.field private static final KEY_POSITIVE_NAME:Ljava/lang/String; = "positive_button_name"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getButtons(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/itop/gcloud/msdk/popup/style/ButtonStyle;",
            ">;"
        }
    .end annotation

    .line 19
    const-string v0, ""

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 23
    const-string p0, "positive_button_name"

    invoke-static {v2, p0, v0}, Lcom/itop/gcloud/msdk/popup/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 24
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 25
    new-instance v3, Lcom/itop/gcloud/msdk/popup/style/ButtonStyle;

    invoke-direct {v3}, Lcom/itop/gcloud/msdk/popup/style/ButtonStyle;-><init>()V

    .line 26
    sget-object v4, Lcom/itop/gcloud/msdk/popup/style/ButtonStyle$ButtonType;->POSITIVE:Lcom/itop/gcloud/msdk/popup/style/ButtonStyle$ButtonType;

    iput-object v4, v3, Lcom/itop/gcloud/msdk/popup/style/ButtonStyle;->buttonType:Lcom/itop/gcloud/msdk/popup/style/ButtonStyle$ButtonType;

    .line 27
    iput-object p0, v3, Lcom/itop/gcloud/msdk/popup/style/ButtonStyle;->text:Ljava/lang/String;

    .line 28
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    :cond_0
    const-string p0, "negative_button_name"

    invoke-static {v2, p0, v0}, Lcom/itop/gcloud/msdk/popup/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 32
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 33
    new-instance v0, Lcom/itop/gcloud/msdk/popup/style/ButtonStyle;

    invoke-direct {v0}, Lcom/itop/gcloud/msdk/popup/style/ButtonStyle;-><init>()V

    .line 34
    sget-object v2, Lcom/itop/gcloud/msdk/popup/style/ButtonStyle$ButtonType;->NEGATIVE:Lcom/itop/gcloud/msdk/popup/style/ButtonStyle$ButtonType;

    iput-object v2, v0, Lcom/itop/gcloud/msdk/popup/style/ButtonStyle;->buttonType:Lcom/itop/gcloud/msdk/popup/style/ButtonStyle$ButtonType;

    .line 35
    iput-object p0, v0, Lcom/itop/gcloud/msdk/popup/style/ButtonStyle;->text:Ljava/lang/String;

    .line 36
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 39
    invoke-virtual {p0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v0, v2

    const-string p0, "getButtons fail: %s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/itop/gcloud/msdk/popup/utils/MSDKPopupLog;->e(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object v1
.end method
